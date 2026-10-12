package com.bareapps.barebackup.ui;

import android.app.Activity;
import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

/** Applies system-bar insets to activity content so layouts remain below status/navigation bars. */
public final class SystemBarInsets {
    private SystemBarInsets() {}

    public static void apply(Activity activity) {
        View content = activity.findViewById(android.R.id.content);
        if (content == null) return;

        final int initialLeft = content.getPaddingLeft();
        final int initialTop = content.getPaddingTop();
        final int initialRight = content.getPaddingRight();
        final int initialBottom = content.getPaddingBottom();

        content.setOnApplyWindowInsetsListener((view, windowInsets) -> {
            int top;
            int bottom;
            int left;
            int right;
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                Insets bars = windowInsets.getInsets(WindowInsets.Type.systemBars());
                top = bars.top;
                bottom = bars.bottom;
                left = bars.left;
                right = bars.right;
            } else {
                top = windowInsets.getSystemWindowInsetTop();
                bottom = windowInsets.getSystemWindowInsetBottom();
                left = windowInsets.getSystemWindowInsetLeft();
                right = windowInsets.getSystemWindowInsetRight();
            }
            view.setPadding(initialLeft + left, initialTop + top,
                    initialRight + right, initialBottom + bottom);
            return windowInsets;
        });
        content.requestApplyInsets();
    }
}
