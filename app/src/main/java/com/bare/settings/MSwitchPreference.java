package com.bare.settings;

import android.content.Context;
import android.util.AttributeSet;

import androidx.annotation.Nullable;
import androidx.preference.SwitchPreferenceCompat;

/**
 * Reference MSwitchPreference boundary.
 * Rendering/interaction beyond the standard switch remains evidence-bound.
 */
public class MSwitchPreference extends SwitchPreferenceCompat {
    public MSwitchPreference(Context context) {
        super(context);
    }

    public MSwitchPreference(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public MSwitchPreference(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
