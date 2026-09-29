package com.bare.home.schedule.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

import androidx.annotation.Nullable;

/**
 * Reference component boundary for the schedule FAB menu.
 * Behavior remains UNKNOWN until the corresponding Reference implementation is audited.
 */
public class ScheduleFabMenuView extends FrameLayout {
    public ScheduleFabMenuView(Context context) { super(context); }
    public ScheduleFabMenuView(Context context, @Nullable AttributeSet attrs) { super(context, attrs); }
    public ScheduleFabMenuView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}