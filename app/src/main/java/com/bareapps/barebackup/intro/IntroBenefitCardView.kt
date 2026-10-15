package com.bareapps.barebackup.intro

import android.content.Context
import android.content.res.ColorStateList
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import com.bareapps.barebackup.R
import com.google.android.material.card.MaterialCardView

/** Reference-compatible benefit card used by the intro layout. */
class IntroBenefitCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = R.attr.materialCardViewStyle
) : MaterialCardView(context, attrs, defStyleAttr) {

    init {
        LayoutInflater.from(context).inflate(R.layout.intro_benefit_card_view, this, true)

        val iconCard = findViewById<MaterialCardView>(R.id.card_benefit_icon)
        val icon = findViewById<ImageView>(R.id.iv_benefit_icon)
        val title = findViewById<TextView>(R.id.tv_benefit_title)
        val subtitle = findViewById<TextView>(R.id.tv_benefit_subtitle)

        val styleable = intArrayOf(
            R.attr.introBenefitIcon,
            R.attr.introBenefitIconBackgroundTint,
            R.attr.introBenefitIconTint,
            R.attr.introBenefitSubtitle,
            R.attr.introBenefitTitle
        )
        val values = context.obtainStyledAttributes(attrs, styleable, defStyleAttr, 0)
        try {
            val iconRes = values.getResourceId(0, 0)
            if (iconRes != 0) icon.setImageResource(iconRes)

            title.text = values.getText(4)
            subtitle.text = values.getText(3)

            values.getColorStateList(1)?.let { tint: ColorStateList ->
                iconCard.setCardBackgroundColor(tint)
            }
            values.getColorStateList(2)?.let(icon::setImageTintList)
        } finally {
            values.recycle()
        }
    }
}
