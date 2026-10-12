package com.bareapps.barebackup.ui;

import android.app.Activity;
import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

import java.util.Map;
import java.util.WeakHashMap;

/**
 * Applies system-bar insets without accumulating padding when an Activity swaps layouts.
 * The decor content view is reused by setContentView(), so its original padding must be
 * captured only once for that View instance.
 */
public final class SystemBarInsets {
    private static final Map<View, int[]> ORIGINAL_PADDING = new WeakHashMap<>();

    private SystemBarInsets() {}

    public static void apply(Activity activity) {
        View content = activity.findViewById(android.R.id.content);
        if (content == null) return;

        final int[] original;
        synchronized (ORIGINAL_PADDING) {
            int[] saved = ORIGINAL_PADDING.get(content);
            if (saved == null) {
                saved = new int[] {
                    content.getPaddingLeft(),
                    content.getPaddingTop(),
                    content.getPaddingRight(),
                    content.getPaddingBottom()
                };
                ORIGINAL_PADDING.put(content, saved);
            }
            original = saved.clone();
        }

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
            view.setPadding(original[0] + left, original[1] + top,
                    original[2] + right, original[3] + bottom);
            return windowInsets;
        });
        content.requestApplyInsets();
    }
}
