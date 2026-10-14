package com.bareapps.barebackup.intro

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.ImageView
import android.widget.TextView
import com.bareapps.barebackup.R
import com.google.android.material.card.MaterialCardView

/**
 * MaterialCardView implementation of the intro benefit component.
 * Attribute indices follow attrs.xml: icon, background tint, icon tint,
 * subtitle, title.
 */
class IntroBenefitCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = R.attr.materialCardViewStyle
) : MaterialCardView(context, attrs, defStyleAttr) {

    init {
        LayoutInflater.from(context).inflate(R.layout.intro_benefit_card_view, this, true)

        val iconCard = findViewById<MaterialCardView>(R.id.card_benefit_icon)
        val iconView = findViewById<ImageView>(R.id.iv_benefit_icon)
        val titleView = findViewById<TextView>(R.id.tv_benefit_title)
        val subtitleView = findViewById<TextView>(R.id.tv_benefit_subtitle)

        val values = context.obtainStyledAttributes(
            attrs,
            intArrayOf(
                R.attr.introBenefitIcon,
                R.attr.introBenefitIconBackgroundTint,
                R.attr.introBenefitIconTint,
                R.attr.introBenefitSubtitle,
                R.attr.introBenefitTitle
            ),
            defStyleAttr,
            0
        )

        try {
            val icon = values.getResourceId(0, 0)
            if (icon != 0) iconView.setImageResource(icon)

            titleView.text = values.getText(4)
            subtitleView.text = values.getText(3)

            values.getColorStateList(1)?.let(iconCard::setCardBackgroundColor)
            values.getColorStateList(2)?.let { iconView.imageTintList = it }
        } finally {
            values.recycle()
        }
    }
}
