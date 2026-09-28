package com.bare.views
import android.content.Context
import android.util.AttributeSet
import android.view.MotionEvent
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
class QuickRecyclerView(context: Context, attrs: AttributeSet? = null) : RecyclerView(context, attrs) {
    var touchDisabled: Boolean = false
    init { setHasFixedSize(true); overScrollMode = OVER_SCROLL_NEVER; isNestedScrollingEnabled = false }
    override fun getTopPaddingOffset() = if (clipToPadding) 0 else -paddingTop
    override fun getBottomPaddingOffset() = if (clipToPadding) 0 else paddingBottom
    override fun getLeftPaddingOffset() = if (clipToPadding) 0 else -paddingLeft
    override fun getRightPaddingOffset() = if (clipToPadding) 0 else paddingRight
    override fun isPaddingOffsetRequired() = !clipToPadding
    override fun onTouchEvent(event: MotionEvent): Boolean = if (touchDisabled) false else super.onTouchEvent(event)
    fun setGridLayoutManager(spanCount: Int) { layoutManager = GridLayoutManager(context, spanCount) }
    fun setLinearLayoutManager(orientation: Int) { layoutManager = LinearLayoutManager(context, orientation, false) }
}