package com.bareapps.barebackup.intro

import android.content.Context
import android.content.res.ColorStateList
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.ImageView
import android.widget.TextView
import androidx.core.graphics.ColorUtils
import com.bareapps.barebackup.R
import com.google.android.material.button.MaterialButton
import com.google.android.material.card.MaterialCardView

/**
 * Resource-backed permission card used by the intro screen.
 * Attribute indices follow attrs.xml: action text, bulleted subtitle,
 * button id, icon, icon background tint, subtitle, tint, title.
 */
class IntroPermissionCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = R.attr.materialCardViewStyle
) : MaterialCardView(context, attrs, defStyleAttr) {

    private lateinit var actionButton: MaterialButton

    init {
        LayoutInflater.from(context).inflate(R.layout.intro_permission_card_view, this, true)

        val iconView = findViewById<ImageView>(R.id.iv_permission_icon)
        val titleView = findViewById<TextView>(R.id.tv_permission_title)
        val subtitleView = findViewById<TextView>(R.id.tv_permission_subtitle)
        actionButton = findViewById(R.id.btn_permission_action)

        val values = context.obtainStyledAttributes(
            attrs,
            intArrayOf(
                R.attr.introPermissionActionText,
                R.attr.introPermissionBulletedSubtitle,
                R.attr.introPermissionButtonId,
                R.attr.introPermissionIcon,
                R.attr.introPermissionIconBackgroundTint,
                R.attr.introPermissionSubtitle,
                R.attr.introPermissionTint,
                R.attr.introPermissionTitle
            ),
            defStyleAttr,
            0
        )

        try {
            actionButton.text = values.getText(0)

            val icon = values.getResourceId(3, 0)
            if (icon != 0) iconView.setImageResource(icon)

            titleView.text = values.getText(7)
            val subtitle = values.getText(5) ?: ""
            subtitleView.text = if (
                values.getBoolean(1, false) && subtitle.isNotEmpty()
            ) "• $subtitle" else subtitle

            values.getColorStateList(4)?.let { iconView.backgroundTintList = it }

            values.getColorStateList(6)?.let { tint ->
                iconView.imageTintList = tint
                actionButton.setTextColor(tint)
                actionButton.iconTint = tint

                val color = tint.defaultColor
                actionButton.strokeColor = ColorStateList.valueOf(
                    ColorUtils.setAlphaComponent(color, 50)
                )
                actionButton.backgroundTintList = ColorStateList.valueOf(
                    ColorUtils.setAlphaComponent(color, 8)
                )
                actionButton.rippleColor = ColorStateList.valueOf(
                    ColorUtils.setAlphaComponent(color, 20)
                )
            }

            val buttonId = values.getResourceId(2, -1)
            if (buttonId != -1) actionButton.id = buttonId
        } finally {
            values.recycle()
        }
    }

    fun getActionButton(): MaterialButton = actionButton
}
