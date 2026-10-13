package com.bareapps.barebackup.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/** Home pages are changed by bottom navigation, not by swiping. */
public final class NoSwipeViewPager extends ViewPager {
    public NoSwipeViewPager(Context context) { super(context); }
    public NoSwipeViewPager(Context context, AttributeSet attrs) { super(context, attrs); }
    @Override public boolean onInterceptTouchEvent(MotionEvent event) { return false; }
    @Override public boolean onTouchEvent(MotionEvent event) { return false; }
}
