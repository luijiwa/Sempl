#ifndef FLUTTER_semplLICATION_H_
#define FLUTTER_semplLICATION_H_

#include <gtk/gtk.h>

G_DECLARE_FINAL_TYPE(MyApplication, sempllication, MY, APPLICATION,
                     GtkApplication)

/**
 * sempllication_new:
 *
 * Creates a new Flutter-based application.
 *
 * Returns: a new #MyApplication.
 */
MyApplication* sempllication_new();

#endif  // FLUTTER_semplLICATION_H_
