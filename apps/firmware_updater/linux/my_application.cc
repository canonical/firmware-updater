#include "my_application.h"

#include <flutter_linux/flutter_linux.h>
#include <gdk/gdkcairo.h>
#ifdef GDK_WINDOWING_X11
#include <gdk/gdkx.h>
#endif

#include "flutter/generated_plugin_registrant.h"

struct _MyApplication {
  GtkApplication parent_instance;
  char** dart_entrypoint_arguments;
};

G_DEFINE_TYPE(MyApplication, my_application, GTK_TYPE_APPLICATION)

struct SplashData {
  FlView* view;
  GdkPixbuf* icon;
  gulong draw_handler;
};

constexpr guint kSplashMaxVisibleDurationSeconds = 5;
constexpr gint kSplashIconMaxSize = 256;

static gboolean draw_splash(GtkWidget* widget, cairo_t* context,
                            gpointer user_data) {
  SplashData* splash_data = static_cast<SplashData*>(user_data);
  const gint width = gtk_widget_get_allocated_width(widget);
  const gint height = gtk_widget_get_allocated_height(widget);

  GtkStyleContext* style_context = gtk_widget_get_style_context(widget);
  gtk_render_background(style_context, context, 0, 0, width, height);

  const gint source_width = gdk_pixbuf_get_width(splash_data->icon);
  const gint source_height = gdk_pixbuf_get_height(splash_data->icon);
  const gdouble scale = MIN(1.0,
                            static_cast<gdouble>(kSplashIconMaxSize) /
                            MAX(source_width, source_height));
  const gint icon_width = static_cast<gint>(source_width * scale);
  const gint icon_height = static_cast<gint>(source_height * scale);
  const gint x = (width - icon_width) / 2;
  const gint y = (height - icon_height) / 2;
  cairo_save(context);
  cairo_translate(context, x, y);
  cairo_scale(context, scale, scale);
  gdk_cairo_set_source_pixbuf(context, splash_data->icon, 0, 0);
  cairo_paint(context);
  cairo_restore(context);
  return FALSE;
}

static gboolean hide_splash(gpointer user_data) {
  SplashData* splash_data = static_cast<SplashData*>(user_data);
  g_signal_handler_disconnect(splash_data->view, splash_data->draw_handler);
  gtk_widget_queue_draw(GTK_WIDGET(splash_data->view));
  return G_SOURCE_REMOVE;
}

static void destroy_splash_data(gpointer user_data) {
  SplashData* splash_data = static_cast<SplashData*>(user_data);
  g_object_unref(splash_data->icon);
  g_object_unref(splash_data->view);
  delete splash_data;
}

// Implements GApplication::activate.
static void my_application_activate(GApplication* application) {
  MyApplication* self = MY_APPLICATION(application);

  GList* windows = gtk_application_get_windows(GTK_APPLICATION(application));
  if (windows) {
    gtk_window_present(GTK_WINDOW(windows->data));
    return;
  }

  GtkWindow* window =
      GTK_WINDOW(gtk_application_window_new(GTK_APPLICATION(application)));

  // Use a header bar when running in GNOME as this is the common style used
  // by applications and is the setup most users will be using (e.g. Ubuntu
  // desktop).
  // If running on X and not using GNOME then just use a traditional title bar
  // in case the window manager does more exotic layout, e.g. tiling.
  // If running on Wayland assume the header bar will work (may need changing
  // if future cases occur).
  gboolean use_header_bar = FALSE;
#ifdef GDK_WINDOWING_X11
  GdkScreen* screen = gtk_window_get_screen(window);
  if (GDK_IS_X11_SCREEN(screen)) {
    const gchar* wm_name = gdk_x11_screen_get_window_manager_name(screen);
    if (g_strcmp0(wm_name, "GNOME Shell") != 0) {
      use_header_bar = FALSE;
    }
  }
#endif
  if (use_header_bar) {
    GtkHeaderBar* header_bar = GTK_HEADER_BAR(gtk_header_bar_new());
    gtk_widget_show(GTK_WIDGET(header_bar));
    gtk_header_bar_set_title(header_bar, "Firmware Updater");
    gtk_header_bar_set_show_close_button(header_bar, TRUE);
    gtk_window_set_titlebar(window, GTK_WIDGET(header_bar));
  } else {
    // gtk_window_set_title(window, "firmware_updater");
  }

  GdkGeometry geometry;
  geometry.min_width = 400;
  geometry.min_height = 700;
  gtk_window_set_geometry_hints(window, nullptr, &geometry, GDK_HINT_MIN_SIZE);
  gtk_window_set_default_size(window, 800, 600);

  g_autoptr(FlDartProject) project = fl_dart_project_new();
  fl_dart_project_set_dart_entrypoint_arguments(
      project, self->dart_entrypoint_arguments);

  FlView* view = fl_view_new(project);

  const GdkRGBA bg_color{};
  fl_view_set_background_color(view, &bg_color);

  gtk_container_add(GTK_CONTAINER(window), GTK_WIDGET(view));

  fl_register_plugins(FL_PLUGIN_REGISTRY(view));

  g_autoptr(GError) error = nullptr;
  GdkPixbuf* icon = gdk_pixbuf_new_from_resource(
      "/com/canonical/firmware_updater/assets/firmware-updater.png", &error);
  if (icon == nullptr) {
    g_warning("Failed to load splash icon: %s", error->message);
  } else {
    auto* splash_data = new SplashData{FL_VIEW(g_object_ref(view)), icon, 0};
    splash_data->draw_handler = g_signal_connect(
        view, "draw", G_CALLBACK(draw_splash), splash_data);
    g_timeout_add_seconds_full(G_PRIORITY_DEFAULT, kSplashMaxVisibleDurationSeconds,
                               hide_splash, splash_data, destroy_splash_data);
  }

  gtk_widget_show(GTK_WIDGET(window));
  gtk_widget_show(GTK_WIDGET(view));
  gtk_widget_grab_focus(GTK_WIDGET(view));
}

static gint my_application_command_line(GApplication *application, GApplicationCommandLine *command_line) {
  MyApplication *self = MY_APPLICATION(application);
  gchar **arguments = g_application_command_line_get_arguments(command_line, nullptr);
  self->dart_entrypoint_arguments = g_strdupv(arguments + 1);

  g_autoptr(GError) error = nullptr;
  if (!g_application_register(application, nullptr, &error)) {
    g_warning("Failed to register: %s", error->message);
    return 1;
  }
  g_application_activate(application);
  return 0;
}

// Implements GObject::dispose.
static void my_application_dispose(GObject* object) {
  MyApplication* self = MY_APPLICATION(object);
  g_clear_pointer(&self->dart_entrypoint_arguments, g_strfreev);
  G_OBJECT_CLASS(my_application_parent_class)->dispose(object);
}

static void my_application_class_init(MyApplicationClass* klass) {
  G_APPLICATION_CLASS(klass)->activate = my_application_activate;
  G_APPLICATION_CLASS(klass)->command_line = my_application_command_line;
  G_OBJECT_CLASS(klass)->dispose = my_application_dispose;
}

static void my_application_init(MyApplication* self) {}

MyApplication* my_application_new() {
  return MY_APPLICATION(g_object_new(
      my_application_get_type(), "application-id", APPLICATION_ID, "flags",
      G_APPLICATION_HANDLES_COMMAND_LINE | G_APPLICATION_HANDLES_OPEN,
      nullptr));
}
