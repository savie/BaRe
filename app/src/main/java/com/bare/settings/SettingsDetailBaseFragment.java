package com.bare.settings;

import android.os.Bundle;
import android.view.View;

import androidx.annotation.Nullable;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;

import com.bare.R;

public abstract class SettingsDetailBaseFragment extends PreferenceFragmentCompat {
    protected abstract void build(PreferenceScreen screen);

    @Override
    public void onCreatePreferences(@Nullable Bundle state, @Nullable String rootKey) {
        PreferenceScreen screen = getPreferenceManager().createPreferenceScreen(requireContext());
        build(screen);
        setPreferenceScreen(screen);
    }

    protected PreferenceCategory category(PreferenceScreen screen, String title) {
        PreferenceCategory c = new PreferenceCategory(requireContext());
        c.setTitle(title);
        screen.addPreference(c);
        return c;
    }

    protected Preference item(PreferenceCategory parent, String key, String title, String summary) {
        Preference p = new Preference(requireContext());
        p.setKey(key);
        p.setTitle(title);
        if (summary != null) p.setSummary(summary);
        parent.addPreference(p);
        return p;
    }

    protected Preference item(PreferenceScreen screen, String key, String title, String summary) {
        Preference p = new Preference(requireContext());
        p.setKey(key);
        p.setTitle(title);
        if (summary != null) p.setSummary(summary);
        screen.addPreference(p);
        return p;
    }

    protected MSwitchPreference toggle(PreferenceCategory parent, String key, String title, String summary, boolean checked) {
        MSwitchPreference p = new MSwitchPreference(requireContext());
        p.setKey(key);
        p.setTitle(title);
        if (summary != null) p.setSummary(summary);
        p.setChecked(checked);
        parent.addPreference(p);
        return p;
    }

    protected void disabled(Preference p) {
        p.setEnabled(false);
    }

    protected void hidden(Preference p) {
        p.setVisible(false);
    }
}
