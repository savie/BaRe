package com.bare.views
import android.content.Context
import android.util.AttributeSet
import android.view.ViewGroup
import com.bare.R
import com.google.android.material.card.MaterialCardView
class BareListItemCardView(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = R.attr.listItemCardViewStyle) : MaterialCardView(context, attrs, defStyleAttr) {
    override fun setLayoutParams(params: ViewGroup.LayoutParams?) {
        if (params is ViewGroup.MarginLayoutParams) params.bottomMargin = resources.getDimensionPixelSize(R.dimen.segmented_list_item_bottom_margin)
        super.setLayoutParams(params)
    }
}