package com.bare.intro

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.ImageView
import android.widget.TextView
import com.bare.R
import com.google.android.material.button.MaterialButton
import com.google.android.material.card.MaterialCardView

class IntroPermissionCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = com.google.android.material.R.attr.materialCardViewStyle
) : MaterialCardView(context, attrs, defStyleAttr) {
    private val actionButton: MaterialButton

    init {
        LayoutInflater.from(context).inflate(R.layout.intro_permission_card_view, this, true)
        val icon = findViewById<ImageView>(R.id.iv_permission_icon)
        val title = findViewById<TextView>(R.id.tv_permission_title)
        val subtitle = findViewById<TextView>(R.id.tv_permission_subtitle)
        actionButton = findViewById(R.id.btn_permission_action)

        context.obtainStyledAttributes(attrs, R.styleable.IntroPermissionCardView).use { a ->
            val iconRes = a.getResourceId(R.styleable.IntroPermissionCardView_introPermissionIcon, 0)
            if (iconRes != 0) icon.setImageResource(iconRes)
            title.text = a.getText(R.styleable.IntroPermissionCardView_introPermissionTitle)
            subtitle.text = a.getText(R.styleable.IntroPermissionCardView_introPermissionSubtitle)
            actionButton.text = a.getText(R.styleable.IntroPermissionCardView_introPermissionActionText)

            a.getColorStateList(R.styleable.IntroPermissionCardView_introPermissionIconBackgroundTint)?.let {
                icon.backgroundTintList = it
            }
            a.getColorStateList(R.styleable.IntroPermissionCardView_introPermissionTint)?.let {
                icon.imageTintList = it
                actionButton.setTextColor(it)
                actionButton.iconTint = it
                actionButton.strokeColor = android.content.res.ColorStateList.valueOf(it.defaultColor)
                actionButton.backgroundTintList = android.content.res.ColorStateList.valueOf(it.defaultColor and 0x14FFFFFF)
            }
            val buttonId = a.getResourceId(R.styleable.IntroPermissionCardView_introPermissionButtonId, ViewId.INVALID)
            if (buttonId != ViewId.INVALID) actionButton.id = buttonId
        }
    }

    fun getActionButton(): MaterialButton = actionButton

    private object ViewId { const val INVALID = -1 }
}