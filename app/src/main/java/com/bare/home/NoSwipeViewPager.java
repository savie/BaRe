package com.bare.home;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;

public final class NoSwipeViewPager extends ViewPager {
    public NoSwipeViewPager(@NonNull Context context) { super(context); }
    public NoSwipeViewPager(@NonNull Context context, @Nullable AttributeSet attrs) { super(context, attrs); }

    @Override public boolean onTouchEvent(MotionEvent event) { return false; }
    @Override public boolean onInterceptTouchEvent(MotionEvent event) { return false; }
}