package com.bare.settings;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;

public final class SettingsContactFragment extends SettingsDetailBaseFragment {
    private static final String SUPPORT_EMAIL = "support@swiftapps.org";
    private static final String TELEGRAM_URL = "https://t.me/swiftbackupsupport";

    @Override
    protected void build(PreferenceScreen s) {
        item(s, "email", "Email", "Contact Swift Backup by email");
        item(s, "telegram_group", "Telegram group", null);

        Preference email = s.findPreference("email");
        if (email != null) {
            email.setOnPreferenceClickListener(p -> {
                Intent intent = new Intent(Intent.ACTION_SENDTO, Uri.fromParts("mailto", SUPPORT_EMAIL, null));
                intent.putExtra(Intent.EXTRA_SUBJECT, appLabel() + " (From App)");
                try {
                    startActivity(intent);
                } catch (Exception ignored) {
                    new AlertDialog.Builder(requireContext())
                            .setMessage("No email app found.")
                            .setPositiveButton(android.R.string.ok, null)
                            .show();
                }
                return true;
            });
        }

        Preference telegram = s.findPreference("telegram_group");
        if (telegram != null) {
            telegram.setOnPreferenceClickListener(p -> {
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(TELEGRAM_URL));
                try {
                    startActivity(intent);
                } catch (Exception ignored) {
                    new AlertDialog.Builder(requireContext())
                            .setMessage("No browser found.")
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
