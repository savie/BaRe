package com.bare.settings;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;

import com.bare.R;

public final class SettingsContactFragment extends SettingsDetailBaseFragment {
    private static final String SUPPORT_URL = "https://github.com/savie/BaRe/issues/new";
    private static final String PROJECT_URL = "https://github.com/savie/BaRe";

    @Override
    protected void build(PreferenceScreen s) {
        item(s, "email", getString(R.string.settings_support), getString(R.string.settings_contact_bare_support));
        item(s, "telegram_group", getString(R.string.settings_project_page), null);

        Preference email = s.findPreference("email");
        if (email != null) {
            email.setOnPreferenceClickListener(p -> {
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(SUPPORT_URL));
                intent.putExtra(Intent.EXTRA_SUBJECT, appLabel() + " (From App)");
                try {
                    startActivity(intent);
                } catch (Exception ignored) {
                    new AlertDialog.Builder(requireContext())
                            .setMessage(R.string.no_browser_found_error)
                            .setPositiveButton(android.R.string.ok, null)
                            .show();
                }
                return true;
            });
        }

        Preference telegram = s.findPreference("telegram_group");
        if (telegram != null) {
            telegram.setOnPreferenceClickListener(p -> {
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(PROJECT_URL));
                try {
                    startActivity(intent);
                } catch (Exception ignored) {
                    new AlertDialog.Builder(requireContext())
                            .setMessage(R.string.no_browser_found_error)
                            .setPositiveButton(android.R.string.ok, null)
                            .show();
                }
                return true;
            });
        }
    }

    private String appLabel() {
        PackageManager pm = requireContext().getPackageManager();
        try {
            ApplicationInfo info = pm.getApplicationInfo(requireContext().getPackageName(), 0);
            CharSequence label = pm.getApplicationLabel(info);
            return label == null ? requireContext().getPackageName() : label.toString();
        } catch (PackageManager.NameNotFoundException e) {
            return requireContext().getPackageName();
        }
    }
}
