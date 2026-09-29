package com.bare.settings;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.preference.PreferenceFragmentCompat;

import com.bare.R;

/**
 * Reference-shaped Settings preference surface.
 *
 * Preference keys are ported from the Reference resource contract.
 * Click behavior remains deliberately evidence-bound.
 */
public final class SettingsFragment extends PreferenceFragmentCompat {
    @Override
    public void onCreatePreferences(@Nullable Bundle savedInstanceState, @Nullable String rootKey) {
        setPreferencesFromResource(R.xml.settings, rootKey);
    }
}
