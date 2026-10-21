package com.bareapps.barebackup.views

import android.content.Context
import android.util.AttributeSet
import com.google.android.material.R
import com.google.android.material.card.MaterialCardView

/**
 * Compatibility implementation for the reference layouts.
 *
 * The decompiled UI references this class from multiple XML rows. Keep it as a MaterialCardView
 * so those layouts inflate safely; swipe behavior is intentionally not implemented in the UI-preview
 * phase, while MaterialCardView handles its standard card/content-padding attributes.
 */
class BareListItemCardView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = R.attr.materialCardViewStyle
) : MaterialCardView(context, attrs, defStyleAttr)
