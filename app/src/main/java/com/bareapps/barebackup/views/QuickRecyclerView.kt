package com.bareapps.barebackup.views

import android.content.Context
import android.util.AttributeSet
import android.view.MotionEvent
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class QuickRecyclerView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : RecyclerView(context, attrs, defStyleAttr) {
    var touchDisabled: Boolean = false

    init {
        setHasFixedSize(true)
        overScrollMode = OVER_SCROLL_NEVER
        isNestedScrollingEnabled = false
    }

    override fun onTouchEvent(event: MotionEvent): Boolean =
        if (touchDisabled) false else super.onTouchEvent(event)

    fun setLinearLayoutManager(orientation: Int) {
        layoutManager = LinearLayoutManager(context, orientation, false)
    }

    fun setGridLayoutManager(spanCount: Int) {
        layoutManager = androidx.recyclerview.widget.GridLayoutManager(context, spanCount)
    }

    override fun isPaddingOffsetRequired(): Boolean = !clipToPadding
    override fun getTopPaddingOffset(): Int = if (clipToPadding) 0 else -paddingTop
    override fun getBottomPaddingOffset(): Int = if (clipToPadding) 0 else paddingBottom
    override fun getLeftPaddingOffset(): Int = if (clipToPadding) 0 else -paddingLeft
    override fun getRightPaddingOffset(): Int = if (clipToPadding) 0 else paddingRight
}
