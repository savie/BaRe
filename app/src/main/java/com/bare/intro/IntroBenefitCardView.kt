package com.bare.intro

import android.content.Context
import android.content.res.ColorStateList
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.ImageView
import android.widget.TextView
import com.bare.R
import com.google.android.material.card.MaterialCardView

class IntroBenefitCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = com.google.android.material.R.attr.materialCardViewStyle
) : MaterialCardView(context, attrs, defStyleAttr) {
    init {
        LayoutInflater.from(context).inflate(R.layout.intro_benefit_card_view, this, true)
        val iconCard = findViewById<MaterialCardView>(R.id.card_benefit_icon)
        val icon = findViewById<ImageView>(R.id.iv_benefit_icon)
        val title = findViewById<TextView>(R.id.tv_benefit_title)
        val subtitle = findViewById<TextView>(R.id.tv_benefit_subtitle)

        context.obtainStyledAttributes(attrs, R.styleable.IntroBenefitCardView).use { a ->
            val iconRes = a.getResourceId(R.styleable.IntroBenefitCardView_introBenefitIcon, 0)
            if (iconRes != 0) icon.setImageResource(iconRes)

            title.text = a.getText(R.styleable.IntroBenefitCardView_introBenefitTitle)
            subtitle.text = a.getText(R.styleable.IntroBenefitCardView_introBenefitSubtitle)

            a.getColorStateList(R.styleable.IntroBenefitCardView_introBenefitIconBackgroundTint)?.let {
                iconCard.setCardBackgroundColor(it)
            }
            a.getColorStateList(R.styleable.IntroBenefitCardView_introBenefitIconTint)?.let {
                icon.imageTintList = it
            }
        }
    }
}