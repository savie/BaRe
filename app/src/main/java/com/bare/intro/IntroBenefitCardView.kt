package com.bare.intro

import android.content.Context
import android.graphics.Color
import android.util.AttributeSet
import android.view.LayoutInflater
import androidx.constraintlayout.widget.ConstraintLayout
import com.bare.R
import com.google.android.material.card.MaterialCardView
import android.widget.ImageView
import android.widget.TextView

class IntroBenefitCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null
) : ConstraintLayout(context, attrs) {
    init {
        LayoutInflater.from(context).inflate(R.layout.intro_benefit_card_view, this, true)
        val a = context.obtainStyledAttributes(attrs, R.styleable.IntroBenefitCardView)
        val icon = findViewById<ImageView>(R.id.iv_benefit_icon)
        val iconCard = findViewById<MaterialCardView>(R.id.card_benefit_icon)
        val title = findViewById<TextView>(R.id.tv_benefit_title)
        val subtitle = findViewById<TextView>(R.id.tv_benefit_subtitle)

        val iconRes = a.getResourceId(R.styleable.IntroBenefitCardView_introBenefitIcon, 0)
        if (iconRes != 0) icon.setImageResource(iconRes)
        if (a.hasValue(R.styleable.IntroBenefitCardView_introBenefitIconTint)) {
            icon.imageTintList = android.content.res.ColorStateList.valueOf(
                a.getColor(R.styleable.IntroBenefitCardView_introBenefitIconTint, Color.WHITE)
            )
        }
        if (a.hasValue(R.styleable.IntroBenefitCardView_introBenefitIconBackgroundTint)) {
            iconCard.setCardBackgroundColor(
                a.getColor(R.styleable.IntroBenefitCardView_introBenefitIconBackgroundTint, Color.TRANSPARENT)
            )
        }
        title.text = a.getString(R.styleable.IntroBenefitCardView_introBenefitTitle)
        subtitle.text = a.getString(R.styleable.IntroBenefitCardView_introBenefitSubtitle)
        a.recycle()
    }
}