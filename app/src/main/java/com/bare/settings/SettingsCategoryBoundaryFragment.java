package com.bare.settings;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.bare.R;

/**
 * Explicit boundary for the eight Reference SettingsDetail categories.
 *
 * The Reference category-to-fragment mapping is currently obfuscated.
 * This fragment therefore carries only the verified category selector.
 */
public final class SettingsCategoryBoundaryFragment extends Fragment {
    private static final String ARG_CATEGORY = "category";

    public static SettingsCategoryBoundaryFragment newInstance(int category) {
        SettingsCategoryBoundaryFragment f = new SettingsCategoryBoundaryFragment();
        Bundle b = new Bundle();
        b.putInt(ARG_CATEGORY, category);
        f.setArguments(b);
        return f;
    }

    public SettingsCategoryBoundaryFragment() {
        super();
    }

    @Override
    public View onCreateView(android.view.LayoutInflater inflater, ViewGroup container, Bundle state) {
        TextView v = new TextView(requireContext());
        v.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        v.setText(String.valueOf(requireArguments().getInt(ARG_CATEGORY, 1)));
        v.setGravity(android.view.Gravity.CENTER);
        return v;
    }
}
