package com.bare.views
import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import com.google.android.material.card.MaterialCardView
import com.bare.R
class BareSegmentedCardGroup(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : LinearLayout(context, attrs, defStyleAttr) {
    private val gap = resources.getDimensionPixelSize(R.dimen.segmented_card_gap)
    private val radius = resources.getDimension(R.dimen.card_corner_radius)
    private val smallRadius = resources.getDimension(R.dimen.corner_radius_small)
    init { orientation = VERTICAL; clipChildren = false; clipToPadding = false }
    override fun onAttachedToWindow() { super.onAttachedToWindow(); recalculateSegments() }
    override fun onFinishInflate() { super.onFinishInflate(); recalculateSegments() }
    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) { recalculateSegments(); super.onMeasure(widthMeasureSpec, heightMeasureSpec) }
    override fun onViewRemoved(child: View) { super.onViewRemoved(child); recalculateSegments() }
    fun recalculateSegments() {
        val cards = (0 until childCount).mapNotNull { getChildAt(it) as? MaterialCardView }.filter { it.visibility != View.GONE }
        cards.forEachIndexed { index, card ->
            val lp = card.layoutParams as? ViewGroup.MarginLayoutParams
            if (lp != null) { lp.bottomMargin = if (index == cards.lastIndex) 0 else gap; card.layoutParams = lp }
            val r = if (cards.size == 1 || index == 0 || index == cards.lastIndex) radius else smallRadius
            card.radius = r
        }
    }
}