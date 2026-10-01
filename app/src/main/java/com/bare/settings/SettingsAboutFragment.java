package com.bare.settings;

import android.content.Intent;
import android.net.Uri;

import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

import com.bare.notice.NoticeListActivity;

public final class SettingsAboutFragment extends SettingsDetailBaseFragment {
    @Override
    protected void build(PreferenceScreen s) {
        item(s, "version", "Version", "5.1.0 (620)");
        item(s, "changelog", "Changelog", null);
        item(s, "notes_from_developer", "Announcements from developer", null);

        PreferenceCategory legal = category(s, "Privacy & legal");
        item(legal, "privacy_policy", "Privacy policy", null);
        item(legal, "tos", "Terms of service", null);
        item(legal, "notices", "Notices", null);

        Preference notes = s.findPreference("notes_from_developer");
        if (notes != null) {
            notes.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), NoticeListActivity.class));
                return true;
            });
        }

        Preference privacy = s.findPreference("privacy_policy");
        if (privacy != null) {
            privacy.setOnPreferenceClickListener(p -> openUrl("https://www.bareapps.org/privacy-policy"));
        }

        Preference tos = s.findPreference("tos");
        if (tos != null) {
            tos.setOnPreferenceClickListener(p -> openUrl("https://www.bareapps.org/tos"));
        }

        Preference notices = s.findPreference("notices");
        if (notices != null) {
            notices.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), LicensesActivity.class));
                return true;
            });
        }
    }

    private boolean openUrl(String url) {
        try {
            startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
        } catch (Exception ignored) {
            return false;
        }
        return true;
    }
}
