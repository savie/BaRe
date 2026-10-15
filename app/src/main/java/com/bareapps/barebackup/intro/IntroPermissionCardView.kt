package com.bareapps.barebackup.intro

import android.content.Context
import android.content.res.ColorStateList
import android.util.AttributeSet
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import com.bareapps.barebackup.R
import com.google.android.material.button.MaterialButton
import com.google.android.material.card.MaterialCardView

/** Reference-compatible permission card; permission actions are wired by the activity. */
class IntroPermissionCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = R.attr.materialCardViewStyle
) : MaterialCardView(context, attrs, defStyleAttr) {

    val actionButton: MaterialButton

    init {
        LayoutInflater.from(context).inflate(R.layout.intro_permission_card_view, this, true)

        val icon = findViewById<ImageView>(R.id.iv_permission_icon)
        val title = findViewById<TextView>(R.id.tv_permission_title)
        val subtitle = findViewById<TextView>(R.id.tv_permission_subtitle)
        actionButton = findViewById(R.id.btn_permission_action)

        val styleable = intArrayOf(
            R.attr.introPermissionActionText,
            R.attr.introPermissionBulletedSubtitle,
            R.attr.introPermissionButtonId,
            R.attr.introPermissionIcon,
            R.attr.introPermissionIconBackgroundTint,
            R.attr.introPermissionSubtitle,
            R.attr.introPermissionTint,
            R.attr.introPermissionTitle
        )
        val values = context.obtainStyledAttributes(attrs, styleable, defStyleAttr, 0)
        try {
            val iconRes = values.getResourceId(3, 0)
            if (iconRes != 0) icon.setImageResource(iconRes)

            title.text = values.getText(7)
            actionButton.text = values.getText(0)

            values.getColorStateList(4)?.let(icon::setBackgroundTintList)
            values.getColorStateList(6)?.let { tint: ColorStateList ->
                icon.imageTintList = tint
                actionButton.setTextColor(tint)
                actionButton.iconTint = tint
            }

            subtitle.text = values.getText(5) ?: ""
            val buttonId = values.getResourceId(2, ViewGroup.NO_ID)
            if (buttonId != ViewGroup.NO_ID) actionButton.id = buttonId
        } finally {
            values.recycle()
        }
    }
}
