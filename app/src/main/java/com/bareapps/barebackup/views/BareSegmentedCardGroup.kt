package com.bareapps.barebackup.views

import android.content.Context
import android.graphics.Color
import android.util.AttributeSet
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.LinearLayout
import com.bareapps.barebackup.R
import com.google.android.material.card.MaterialCardView

class BareSegmentedCardGroup @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : LinearLayout(context, attrs, defStyleAttr) {
    private val largeCorner = resources.getDimension(R.dimen.card_corner_radius)
    private val smallCorner = resources.getDimension(R.dimen.corner_radius_small)
    private val segmentGap = resources.getDimensionPixelSize(R.dimen.segmented_card_gap)
    private var wrappingChild = false

    init {
        orientation = VERTICAL
        clipChildren = false
        clipToPadding = false
    }

    override fun addView(child: View, index: Int, params: ViewGroup.LayoutParams?) {
        if (wrappingChild || child !is SegmentContent) {
            super.addView(child, index, params)
            d()
            return
        }

        val width = params?.width ?: LayoutParams.MATCH_PARENT
        val height = params?.height ?: LayoutParams.WRAP_CONTENT
        val cardParams = LayoutParams(width, height)
        if (params is ViewGroup.MarginLayoutParams) {
            cardParams.setMargins(params.leftMargin, params.topMargin, params.rightMargin, params.bottomMargin)
            cardParams.marginStart = params.marginStart
            cardParams.marginEnd = params.marginEnd
        }

        val card = MaterialCardView(context).apply {
            layoutParams = cardParams
            cardElevation = 0f
            useCompatPadding = false
            clipChildren = true
            clipToPadding = true
            clipToOutline = true
            setCardBackgroundColor(com.google.android.material.color.MaterialColors.getColor(
                context, R.attr.cardBackgroundColor, Color.TRANSPARENT
            ))
        }
        card.addView(child, FrameLayout.LayoutParams(width, height))
        wrappingChild = true
        super.addView(card, index, cardParams)
        wrappingChild = false
        d()
    }

    fun d() {
        val cards = (0 until childCount).mapNotNull { getChildAt(it) as? MaterialCardView }
        cards.forEach { card ->
            val content = if (card.childCount > 0) card.getChildAt(0) else null
            if (content != null && card.visibility != content.visibility) card.visibility = content.visibility
            if (card.visibility == View.GONE) {
                (card.layoutParams as? ViewGroup.MarginLayoutParams)?.let {
                    if (it.bottomMargin != 0) {
                        it.bottomMargin = 0
                        card.layoutParams = it
                    }
                }
            }
        }
        val visible = cards.filter { it.visibility != View.GONE }
        visible.forEachIndexed { index, card ->
            val top = if (visible.size == 1 || index == 0) largeCorner else smallCorner
            val bottom = if (visible.size == 1 || index == visible.lastIndex) largeCorner else smallCorner
            card.shapeAppearanceModel = card.shapeAppearanceModel.toBuilder()
                .setTopLeftCornerSize(top).setTopRightCornerSize(top)
                .setBottomLeftCornerSize(bottom).setBottomRightCornerSize(bottom)
                .build()
            val desiredBottomMargin = if (index == visible.lastIndex) 0 else segmentGap
            (card.layoutParams as? ViewGroup.MarginLayoutParams)?.let {
                if (it.bottomMargin != desiredBottomMargin) {
                    it.bottomMargin = desiredBottomMargin
                    card.layoutParams = it
                }
            }
        }
    }

    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        d()
    }

    override fun onFinishInflate() {
        super.onFinishInflate()
        d()
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        d()
        super.onMeasure(widthMeasureSpec, heightMeasureSpec)
    }

    override fun onViewRemoved(child: View) {
        super.onViewRemoved(child)
        d()
    }
}
