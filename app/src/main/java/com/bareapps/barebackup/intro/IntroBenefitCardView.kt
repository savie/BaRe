package com.bareapps.barebackup.intro

import android.content.Context
import android.content.res.ColorStateList
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.ImageView
import android.widget.TextView
import com.bareapps.barebackup.R
import com.google.android.material.card.MaterialCardView

class IntroBenefitCardView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = com.google.android.material.R.attr.materialCardViewStyle
) : MaterialCardView(context, attrs, defStyleAttr) {
    init {
        LayoutInflater.from(context).inflate(R.layout.intro_benefit_card_view, this, true)
        val iconCard = findViewById<MaterialCardView>(R.id.card_benefit_icon)
        val icon = findViewById<ImageView>(R.id.iv_benefit_icon)
        val title = findViewById<TextView>(R.id.tv_benefit_title)
        val subtitle = findViewById<TextView>(R.id.tv_benefit_subtitle)
        val values = context.obtainStyledAttributes(attrs, intArrayOf(
            R.attr.introBenefitIcon, R.attr.introBenefitIconBackgroundTint,
            R.attr.introBenefitIconTint, R.attr.introBenefitSubtitle, R.attr.introBenefitTitle
        ))
        try {
            values.getResourceId(0, 0).takeIf { it != 0 }?.let(icon::setImageResource)
            values.getText(4)?.let(title::setText)
            values.getText(3)?.let(subtitle::setText)
            values.getColorStateList(1)?.let(iconCard::setCardBackgroundColor)
            values.getColorStateList(2)?.let(icon::setImageTintList)
        } finally {
            values.recycle()
        }
    }
}
