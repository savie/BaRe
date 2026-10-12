package com.bareapps.barebackup.account;

import android.app.Activity;
import android.content.Context;
import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.bareapps.barebackup.BuildConfig;
import com.bareapps.barebackup.R;
import com.bareapps.barebackup.home.HomeActivity;
import com.bareapps.barebackup.intro.IntroActivity;
import com.bareapps.barebackup.model.account.LocalAccountManager;
import com.bareapps.barebackup.model.supabase.SupabaseAuthManager;
import com.bareapps.barebackup.ui.SystemBarInsets;
import com.bareapps.barebackup.ui.LocaleHelper;

public final class AccountActivity extends Activity {
    private LocalAccountManager accounts;
    private SupabaseAuthManager auth;
    private boolean signingOut;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.account_activity);
        SystemBarInsets.apply(this);
        accounts = new LocalAccountManager(this);
        accounts.ensureLocalUid();
        auth = new SupabaseAuthManager(this, BuildConfig.SUPABASE_URL, BuildConfig.SUPABASE_PUBLISHABLE_KEY);
        bind(R.id.account_search, () -> showMessage("Search", "Search across backups and settings."));
        bind(R.id.account_premium, () -> showMessage("Premium", "Premium purchase and entitlement flow is not implemented yet."));
        bind(R.id.account_open_settings, () -> showMessage("Settings", "Settings screen placeholder."));
        bind(R.id.account_open_logger, () -> showMessage("SwiftLogger", "Logger screen placeholder."));
        bind(R.id.account_language, this::showLanguage);
        bind(R.id.account_help, () -> showMessage("Help center", "Help articles are not connected yet."));
        bind(R.id.account_contact, () -> openEmail());
        bind(R.id.account_rate, () -> showMessage("Rate", "Store listing is not configured yet."));
        bind(R.id.account_share, this::shareApp);
        bind(R.id.account_about, () -> showMessage("About BΛR☰", "BΛR☰ backup and restore."));
        bind(R.id.account_nav_home, () -> startActivity(new Intent(this, HomeActivity.class).addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP)));
        bind(R.id.account_nav_cloud, () -> showMessage("Cloud sync", "Cloud provider setup is not implemented yet."));
        bind(R.id.account_nav_schedule, () -> showMessage("Schedules", "Backup schedules are not implemented yet."));
        bind(R.id.account_nav_account, () -> {});
        findViewById(R.id.account_sign_out).setOnClickListener(v -> confirmSignOut());
        populateAccount();
    }

    private void populateAccount() {
        boolean google = "supabase".equals(accounts.getActiveKind()) && auth.hasSession();
        String email = google ? auth.getCurrentEmail() : null;
        String name = google ? "Google account" : "Anonymous user";
        ((TextView)findViewById(R.id.account_name)).setText(name);
        TextView emailView = findViewById(R.id.account_email);
        emailView.setText(google ? (email == null ? "" : email) : "Local account · limited features");
        emailView.setVisibility(google ? View.VISIBLE : View.VISIBLE);
        String deviceId = Settings.Secure.getString(getContentResolver(), Settings.Secure.ANDROID_ID);
        ((TextView)findViewById(R.id.account_device_id)).setText(deviceId == null ? "Unknown device" : deviceId.toUpperCase(java.util.Locale.ROOT));
        ((TextView)findViewById(R.id.account_avatar_small)).setText(google && email != null && !email.isEmpty()
                ? email.substring(0, 1).toUpperCase(java.util.Locale.ROOT) : "S");
    }

    private void confirmSignOut() {
        boolean google = "supabase".equals(accounts.getActiveKind()) && auth.hasSession();
        String message = google ? "Sign out of this Google account and return to account setup?"
                : "Return to account setup? Your local backup identity and files will be kept.";
        new AlertDialog.Builder(this).setTitle("Sign out").setMessage(message)
                .setNegativeButton("Cancel", null)
                .setPositiveButton("Sign out", (d, w) -> performSignOut(google)).show();
    }

    private void performSignOut(boolean google) {
        if (signingOut) return;
        signingOut = true;
        if (google) {
            auth.signOut(new SupabaseAuthManager.Callback() {
                @Override public void onSuccess(SupabaseAuthManager.Session session) {
                    runOnUiThread(() -> finishSignOut());
                }
                @Override public void onError(String message) {
                    runOnUiThread(() -> {
                        signingOut = false;
                        new AlertDialog.Builder(AccountActivity.this).setTitle("Sign out failed")
                                .setMessage(message).setPositiveButton(android.R.string.ok, null).show();
                    });
                }
            });
        } else {
            finishSignOut();
        }
    }

    private void finishSignOut() {
        accounts.useLocalAccount();
        accounts.resetSetup();
        Intent intent = new Intent(this, IntroActivity.class);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
        startActivity(intent);
        finish();
    }

    private void showLanguage() {
        String[] languages = {"English", "Bahasa Indonesia"};
        new AlertDialog.Builder(this).setTitle("Language").setItems(languages, (d, which) -> {
            getSharedPreferences("bare_settings", MODE_PRIVATE).edit()
                    .putString("language", which == 1 ? "id" : "en").apply();
            recreate();
        }).show();
    }

    private void openEmail() {
        Intent intent = new Intent(Intent.ACTION_SENDTO, android.net.Uri.parse("mailto:support@example.com"));
        try { startActivity(intent); }
        catch (RuntimeException error) { showMessage("Contact", "Support email is not configured yet."); }
    }

    private void shareApp() {
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.setType("text/plain");
        intent.putExtra(Intent.EXTRA_TEXT, "BΛR☰ — local backup and restore");
        try { startActivity(Intent.createChooser(intent, "Share BΛR☰")); }
        catch (RuntimeException error) { showMessage("Share", "Sharing is unavailable."); }
    }

    private void showMessage(String title, String message) {
        new AlertDialog.Builder(this).setTitle(title).setMessage(message).setPositiveButton(android.R.string.ok, null).show();
    }

    private void bind(int id, Runnable action) {
        View view = findViewById(id);
        if (view != null) view.setOnClickListener(v -> action.run());
    }
}
