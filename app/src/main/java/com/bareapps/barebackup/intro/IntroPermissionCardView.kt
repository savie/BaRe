package com.bareapps.barebackup.intro

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.ImageView
import android.widget.TextView
import com.bareapps.barebackup.R
import com.google.android.material.button.MaterialButton
import com.google.android.material.card.MaterialCardView

class IntroPermissionCardView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = com.google.android.material.R.attr.materialCardViewStyle
) : MaterialCardView(context, attrs, defStyleAttr) {
    private lateinit var actionButton: MaterialButton

    init {
        LayoutInflater.from(context).inflate(R.layout.intro_permission_card_view, this, true)
        val icon = findViewById<ImageView>(R.id.iv_permission_icon)
        val title = findViewById<TextView>(R.id.tv_permission_title)
        val subtitle = findViewById<TextView>(R.id.tv_permission_subtitle)
        actionButton = findViewById(R.id.btn_permission_action)
        val values = context.obtainStyledAttributes(attrs, intArrayOf(
            R.attr.introPermissionActionText, R.attr.introPermissionBulletedSubtitle,
            R.attr.introPermissionButtonId, R.attr.introPermissionIcon,
            R.attr.introPermissionIconBackgroundTint, R.attr.introPermissionSubtitle,
            R.attr.introPermissionTint, R.attr.introPermissionTitle
        ))
        try {
            values.getResourceId(3, 0).takeIf { it != 0 }?.let(icon::setImageResource)
            values.getText(7)?.let(title::setText)
            values.getText(0)?.let(actionButton::setText)
            values.getColorStateList(4)?.let(icon::setBackgroundTintList)
            values.getColorStateList(6)?.let {
                icon.imageTintList = it
                actionButton.setTextColor(it)
                actionButton.iconTint = it
            }
            values.getText(5)?.let(subtitle::setText)
            val buttonId = values.getResourceId(2, ViewId.INVALID)
            if (buttonId != ViewId.INVALID) actionButton.id = buttonId
        } finally {
            values.recycle()
        }
    }

    fun getActionButton(): MaterialButton = actionButton

    private object ViewId { const val INVALID = -1 }
}
