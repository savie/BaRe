package com.bareapps.barebackup.views

import android.content.Context
import android.util.AttributeSet
import android.view.ViewParent
import androidx.constraintlayout.widget.ConstraintLayout

class SwiftSegmentConstraintLayout @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : ConstraintLayout(context, attrs, defStyleAttr), SegmentContent {
    override fun setVisibility(visibility: Int) {
        val changed = visibility != getVisibility()
        super.setVisibility(visibility)
        if (changed) {
            var parent: ViewParent? = parent
            while (parent != null) {
                if (parent is SwiftSegmentedCardGroup) {
                    parent.d()
                    return
                }
                parent = parent.parent
            }
        }
    }
}
