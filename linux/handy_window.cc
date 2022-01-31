#include "handy_window.h"

#ifdef HAVE_LIBHANDY
#include <handy.h>
#endif

GtkWindow* handy_window_new(GtkApplication* application) {
  GtkWindow* window = nullptr;
#ifdef HAVE_LIBHANDY
  window = GTK_WINDOW(hdy_application_window_new());
  gtk_window_set_application(window, application);
  GtkBox* box = GTK_BOX(gtk_box_new(GTK_ORIENTATION_VERTICAL, 0));
  gtk_widget_show(GTK_WIDGET(box));
  gtk_container_add(GTK_CONTAINER(window), GTK_WIDGET(box));
  HdyHeaderBar* header_bar = HDY_HEADER_BAR(hdy_header_bar_new());
  gtk_widget_show(GTK_WIDGET(header_bar));
  hdy_header_bar_set_show_close_button(header_bar, TRUE);
  hdy_header_bar_set_decoration_layout(header_bar, ":close");
  gtk_box_pack_start(GTK_BOX(box), GTK_WIDGET(header_bar), false, true, 0);
#else
  window = GTK_WINDOW(gtk_application_window_new(application));
  GtkHeaderBar* header_bar = GTK_HEADER_BAR(gtk_header_bar_new());
  gtk_widget_show(GTK_WIDGET(header_bar));
  gtk_header_bar_set_show_close_button(header_bar, TRUE);
  gtk_header_bar_set_decoration_layout(header_bar, ":close");
  gtk_window_set_titlebar(window, GTK_WIDGET(header_bar));
#endif
  return window;
}

static GtkWidget* handy_window_get_header_bar(GtkWindow* window) {
#ifdef HAVE_LIBHANDY
  if (HDY_IS_WINDOW(window) || HDY_IS_APPLICATION_WINDOW(window)) {
    GtkWidget* deck = gtk_bin_get_child(GTK_BIN(window));
    g_autoptr(GList) content = gtk_container_get_children(GTK_CONTAINER(deck));
    g_autoptr(GList) children =
        gtk_container_get_children(GTK_CONTAINER(content->data));
    return GTK_WIDGET(children->data);
  }
#endif
  return gtk_window_get_titlebar(window);
}

const gchar* handy_window_get_title(GtkWindow* window) {
  GtkWidget* header_bar = handy_window_get_header_bar(window);
  g_return_val_if_fail(header_bar != nullptr, nullptr);
#ifdef HAVE_LIBHANDY
  if (HDY_IS_HEADER_BAR(header_bar)) {
    return hdy_header_bar_get_title(HDY_HEADER_BAR(header_bar));
  }
#endif
  return gtk_header_bar_get_title(GTK_HEADER_BAR(header_bar));
}

void handy_window_set_title(GtkWindow* window, const gchar* title) {
  GtkWidget* header_bar = handy_window_get_header_bar(window);
  g_return_if_fail(header_bar != nullptr);
#ifdef HAVE_LIBHANDY
  if (HDY_IS_HEADER_BAR(header_bar)) {
    hdy_header_bar_set_title(HDY_HEADER_BAR(header_bar), title);
    return;
  }
#endif
  gtk_header_bar_set_title(GTK_HEADER_BAR(header_bar), title);
}

GtkWidget* handy_window_get_view(GtkWindow* window) {
#ifdef HAVE_LIBHANDY
  if (HDY_IS_WINDOW(window) || HDY_IS_APPLICATION_WINDOW(window)) {
    GtkWidget* deck = gtk_bin_get_child(GTK_BIN(window));
    g_autoptr(GList) content = gtk_container_get_children(GTK_CONTAINER(deck));
    g_autoptr(GList) children =
        gtk_container_get_children(GTK_CONTAINER(content->data));
    return GTK_WIDGET(g_list_last(children)->data);
  }
#endif
  return gtk_bin_get_child(GTK_BIN(window));
}

void handy_window_set_view(GtkWindow* window, GtkWidget* view) {
#ifdef HAVE_LIBHANDY
  if (HDY_IS_WINDOW(window) || HDY_IS_APPLICATION_WINDOW(window)) {
    GtkWidget* deck = gtk_bin_get_child(GTK_BIN(window));
    g_autoptr(GList) children = gtk_container_get_children(GTK_CONTAINER(deck));
    GtkWidget* box = GTK_WIDGET(g_list_last(children)->data);
    gtk_box_pack_end(GTK_BOX(box), GTK_WIDGET(view), true, true, 0);
    return;
  }
#endif
  gtk_container_add(GTK_CONTAINER(window), view);
}
