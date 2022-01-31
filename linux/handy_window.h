#ifndef _HANDY_WINDOW_H_
#define _HANDY_WINDOW_H_

#include <gtk/gtk.h>

G_BEGIN_DECLS

#define HANDY_WINDOW_EXPORT __attribute__((visibility("default")))

// Creates a new application window.
//
// This method is a replacement for `gtk_application_window_new()`. The returned
// window is `HdyApplicationWindow` if available, or `GtkApplicationWindow`
// otherwise.
HANDY_WINDOW_EXPORT GtkWindow* handy_window_new(GtkApplication* application);

// Returns the window title.
//
// This method is a replacement for `gtk_window_get_title()`, that takes the
// difference between `GtkHeaderBar` and `HdyHeaderBar` into account.
HANDY_WINDOW_EXPORT const gchar* handy_window_get_title(GtkWindow* window);

// Sets the window title.
//
// This method is a replacement for `gtk_window_set_title()`, that takes the
// difference between `GtkHeaderBar` and `HdyHeaderBar` into account.
HANDY_WINDOW_EXPORT void handy_window_set_title(GtkWindow* window,
                                                const gchar* title);

// Returns the Flutter view (FlView).
//
// This method takes the structure difference between `GtkWindow` and
// `HdyWindow` into account.
HANDY_WINDOW_EXPORT GtkWidget* handy_window_get_view(GtkWindow* window);

// Sets the Flutter view (FlView).
//
// This method takes the structure difference between `GtkWindow` and
// `HdyWindow` into account.
HANDY_WINDOW_EXPORT void handy_window_set_view(GtkWindow* window,
                                               GtkWidget* view);

G_END_DECLS

#endif  // _HANDY_WINDOW_H_
