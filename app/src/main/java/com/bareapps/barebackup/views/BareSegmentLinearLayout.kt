package com.bareapps.barebackup.views

import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.view.ViewParent
import android.widget.LinearLayout

class BareSegmentLinearLayout @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : LinearLayout(context, attrs, defStyleAttr), SegmentContent {
    override fun setVisibility(visibility: Int) {
        val changed = visibility != getVisibility()
        super.setVisibility(visibility)
        if (changed) {
            var parent: ViewParent? = parent
            while (parent != null) {
                if (parent is BareSegmentedCardGroup) {
                    parent.d()
                    return
                }
                parent = parent.parent
            }
        }
    }
}
