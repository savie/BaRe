package com.bare.views
import android.content.Context
import android.util.AttributeSet
import android.view.View
import android.view.ViewParent
import android.widget.LinearLayout
class BareSegmentLinearLayout(context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0) : LinearLayout(context, attrs, defStyleAttr) {
    override fun setVisibility(visibility: Int) {
        val changed = visibility != getVisibility()
        super.setVisibility(visibility)
        if (changed) {
            var parent: ViewParent? = parent
            while (parent != null) {
                if (parent is SwiftSegmentedCardGroup) { parent.recalculateSegments(); break }
                parent = parent.parent
            }
        }
    }
}