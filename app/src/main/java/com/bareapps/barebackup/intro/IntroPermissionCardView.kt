package com.bareapps.barebackup.intro

import android.content.Context
import android.content.res.ColorStateList
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import com.bareapps.barebackup.R
import com.google.android.material.button.MaterialButton

/** XML-backed permission card. Action callbacks are wired by the screen controller later. */
class IntroPermissionCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : LinearLayout(context, attrs, defStyleAttr) {

    init {
        orientation = VERTICAL
        LayoutInflater.from(context).inflate(R.layout.intro_permission_card_view, this, true)
        if (attrs != null) {
            val values = context.obtainStyledAttributes(
                attrs,
                intArrayOf(
                    R.attr.introPermissionActionText,
                    R.attr.introPermissionButtonId,
                    R.attr.introPermissionIcon,
                    R.attr.introPermissionIconBackgroundTint,
                    R.attr.introPermissionSubtitle,
                    R.attr.introPermissionTint,
                    R.attr.introPermissionTitle,
                    R.attr.introPermissionBulletedSubtitle
                ),
                defStyleAttr,
                0
            )
            try {
                val actionText = values.getText(0)
                val buttonId = values.getResourceId(1, ViewIdFallback)
                val icon = values.getResourceId(2, 0)
                val iconBackgroundTint = values.getColorStateList(3)
                val subtitle = values.getText(4)
                val tint = values.getColorStateList(5)
                val title = values.getText(6)
                val bulletSubtitle = values.getBoolean(7, false)

                findViewById<ImageView>(R.id.iv_permission_icon).apply {
                    if (icon != 0) setImageResource(icon)
                    imageTintList = tint
                    backgroundTintList = iconBackgroundTint
                }
                findViewById<TextView>(R.id.tv_permission_title).text = title
                findViewById<TextView>(R.id.tv_permission_subtitle).text =
                    if (bulletSubtitle && !subtitle.isNullOrEmpty()) "• $subtitle" else subtitle
                findViewById<MaterialButton>(R.id.btn_permission_action).apply {
                    if (buttonId != ViewIdFallback) id = buttonId
                    text = actionText
                    backgroundTintList = tint
                }
            } finally {
                values.recycle()
            }
        }
    }

    private companion object {
        const val ViewIdFallback = 0
    }
}
