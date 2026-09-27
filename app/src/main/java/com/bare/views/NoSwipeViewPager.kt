package com.bare.views

import android.content.Context
import android.util.AttributeSet
import androidx.viewpager.widget.ViewPager

class NoSwipeViewPager @JvmOverloads constructor(context: Context, attrs: AttributeSet? = null) : ViewPager(context, attrs) {
    override fun onInterceptTouchEvent(ev: android.view.MotionEvent) = false
    override fun onTouchEvent(ev: android.view.MotionEvent) = false
}