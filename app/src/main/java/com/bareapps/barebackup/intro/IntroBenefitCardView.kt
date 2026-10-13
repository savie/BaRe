package com.bareapps.barebackup.intro

import android.content.Context
import android.content.res.ColorStateList
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import com.bareapps.barebackup.R
import com.google.android.material.card.MaterialCardView

/** XML-backed informational benefit card used by the intro screen. */
class IntroBenefitCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : LinearLayout(context, attrs, defStyleAttr) {

    init {
        orientation = VERTICAL
        LayoutInflater.from(context).inflate(R.layout.intro_benefit_card_view, this, true)
        if (attrs != null) {
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
                val backgroundTint: ColorStateList? = values.getColorStateList(1)
                val iconTint: ColorStateList? = values.getColorStateList(2)
                val subtitle = values.getText(3)
                val title = values.getText(4)

                findViewById<ImageView>(R.id.iv_benefit_icon).apply {
                    if (icon != 0) setImageResource(icon)
                    imageTintList = iconTint
                }
                findViewById<MaterialCardView>(R.id.card_benefit_icon)
                    .setCardBackgroundColor(backgroundTint ?: ColorStateList.valueOf(0x00000000))
                findViewById<TextView>(R.id.tv_benefit_title).text = title
                findViewById<TextView>(R.id.tv_benefit_subtitle).text = subtitle
            } finally {
                values.recycle()
            }
        }
    }
}
