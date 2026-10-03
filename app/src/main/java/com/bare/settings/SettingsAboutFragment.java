package com.bare.settings;

import android.content.Intent;
import android.net.Uri;

import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

import com.bare.notice.NoticeListActivity;
import com.bare.R;

public final class SettingsAboutFragment extends SettingsDetailBaseFragment {
    @Override
    protected void build(PreferenceScreen s) {
        item(s, "version", getString(R.string.version), getString(R.string.version_value));
        item(s, "changelog", getString(R.string.changelog), null);
        item(s, "notes_from_developer", getString(R.string.announcements_from_developer), null);

        PreferenceCategory legal = category(s, getString(R.string.privacy_legal));
        item(legal, "privacy_policy", getString(R.string.privacy_policy), null);
        item(legal, "tos", getString(R.string.terms_of_service), null);
        item(legal, "notices", getString(R.string.notices), null);

        Preference notes = s.findPreference("notes_from_developer");
        if (notes != null) {
            notes.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), NoticeListActivity.class));
                return true;
            });
        }

        Preference privacy = s.findPreference("privacy_policy");
        if (privacy != null) {
            privacy.setOnPreferenceClickListener(p -> openUrl("https://github.com/savie/BaRe"));
        }

        Preference tos = s.findPreference("tos");
        if (tos != null) {
            tos.setOnPreferenceClickListener(p -> openUrl("https://github.com/savie/BaRe"));
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
