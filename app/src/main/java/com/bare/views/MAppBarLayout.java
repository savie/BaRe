package com.bare.views;

import android.content.Context;
import android.util.AttributeSet;

import com.google.android.material.appbar.AppBarLayout;

/**
 * Java/View boundary for the Reference MAppBarLayout role.
 * Reference-specific lift/scroll behavior remains evidence-bound.
 */
public class MAppBarLayout extends AppBarLayout {
    public MAppBarLayout(Context context) { super(context); }
    public MAppBarLayout(Context context, AttributeSet attrs) { super(context, attrs); }
}
