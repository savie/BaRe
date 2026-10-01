package com.bare.intro;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.bare.R;
import com.bare.home.HomeActivity;
import com.bare.core.state.LocalState;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.List;

public final class IntroActivity extends Activity {
    private boolean restoreFlow;

    private static final String KEY_SIGNED_IN = "P3_SIGNED_IN";
    private static final String KEY_STORAGE_READY = "P3_STORAGE_READY";
    private static final String KEY_NOTIFICATIONS_READY = "P3_NOTIFICATIONS_READY";
    private static final String KEY_INSTALLED_APPS_READY = "P3_INSTALLED_APPS_READY";
    private static final String KEY_ROOT_READY = "P3_ROOT_READY";
    private static final String KEY_PASSWORD_MODE = "P3_PASSWORD_MODE";

    private static final int REQUEST_NOTIFICATIONS = 1003;
    private static final int REQUEST_STORAGE = 1004;

    private SharedPreferences prefs;
    private LocalState localState;

    private View signInContainer;
    private View permissionsContainer;
    private IntroPermissionCardView storageCard;
    private IntroPermissionCardView notificationsCard;
    private IntroPermissionCardView installedAppsCard;
    private MaterialButton rootButton;
    private MaterialButton continueButton;
    private MaterialButton anonymousButton;
    private View privacyPolicy;
    private View menuButton;
    private android.widget.TextView flowStatus;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        if (getIntent() != null) {
            restoreFlow = getIntent().getBooleanExtra("extra_is_restoring", false);
        }


        localState = new LocalState(this);
        prefs = getSharedPreferences(getPackageName() + "_preferences", MODE_PRIVATE);
        if (!localState.getBoolean(LocalState.KEY_FIRST_START, true)) {
            openHome();
            return;
        }

        setContentView(R.layout.intro_activity);

        signInContainer = findViewById(R.id.container_sign_in);
        permissionsContainer = findViewById(R.id.container_permissions);
        storageCard = findViewById(R.id.container_storage_perm);
        notificationsCard = findViewById(R.id.container_notifications_perm);
        installedAppsCard = findViewById(R.id.container_installed_apps_perm);
        rootButton = findViewById(R.id.btn_root_permissions);
        continueButton = findViewById(R.id.btn_continue);
        anonymousButton = findViewById(R.id.btn_anonymous);
        privacyPolicy = findViewById(R.id.tv_privacy_policy);
        menuButton = findViewById(R.id.iv_menu);
        flowStatus = findViewById(R.id.tv_flow_status);

        menuButton.setOnClickListener(v -> showIntroMenu());
        privacyPolicy.setOnClickListener(v -> showInfoDialog(
                getString(R.string.tos_privacy_title),
                getString(R.string.tos_privacy_body)));

        storageCard.getActionButton().setOnClickListener(v -> requestStorageAccess());
        notificationsCard.getActionButton().setOnClickListener(v -> requestNotificationAccess());
        installedAppsCard.getActionButton().setOnClickListener(v -> markInstalledAppsReady());
        rootButton.setOnClickListener(v -> grantRootBoundary());

        continueButton.setOnClickListener(v -> {
            if (prefs.getBoolean(KEY_SIGNED_IN, false)) {
                continueFromPermissions();
            } else {
                beginP3SignIn(false);
            }
        });
        anonymousButton.setOnClickListener(v -> beginP3SignIn(true));

        refreshState();
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (prefs == null || localState == null || !localState.getBoolean(LocalState.KEY_FIRST_START, true)) return;
        if (storageCard != null) refreshState();
    }

    private void beginP3SignIn(boolean anonymous) {
        // P3 boundary: real Google/Supabase/anonymous auth belongs to P4.
        prefs.edit().putBoolean(KEY_SIGNED_IN, true).apply();
        if (anonymous) {
            Toast.makeText(this, R.string.p3_anonymous_stub, Toast.LENGTH_SHORT).show();
        } else {
            Toast.makeText(this, R.string.p3_google_stub, Toast.LENGTH_SHORT).show();
        }
        showPermissionsStage();
    }

    private void showPermissionsStage() {
        signInContainer.setVisibility(View.GONE);
        permissionsContainer.setVisibility(View.VISIBLE);
        anonymousButton.setVisibility(View.GONE);
        continueButton.setText(R.string.continue_setup);
        flowStatus.setText(R.string.intro_flow_status_permissions);
        refreshState();
    }

    private void requestNotificationAccess() {
        if (Build.VERSION.SDK_INT >= 33) {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.POST_NOTIFICATIONS)
                    != PackageManager.PERMISSION_GRANTED) {
                ActivityCompat.requestPermissions(
                        this,
                        new String[]{Manifest.permission.POST_NOTIFICATIONS},
                        REQUEST_NOTIFICATIONS);
            } else {
                markNotificationsReady();
            }
        } else {
            markNotificationsReady();
        }
    }

    private void requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= 30) {
            if (!Environment.isExternalStorageManager()) {
                try {
                    Intent intent = new Intent(
                            Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                            Uri.parse("package:" + getPackageName()));
                    startActivityForResult(intent, REQUEST_STORAGE);
                } catch (Exception e) {
                    markStorageReady();
                }
            } else {
                markStorageReady();
            }
        } else {
            ActivityCompat.requestPermissions(
                    this,
                    new String[]{
                            Manifest.permission.READ_EXTERNAL_STORAGE,
                            Manifest.permission.WRITE_EXTERNAL_STORAGE
                    },
                    REQUEST_STORAGE);
        }
    }

    private void markStorageReady() {
        prefs.edit().putBoolean(KEY_STORAGE_READY, true).apply();
        storageCard.getActionButton().setText(R.string.ready_p3);
        storageCard.getSubtitleView().setText(R.string.p3_storage_boundary);
        refreshState();
    }

    private void markNotificationsReady() {
        prefs.edit().putBoolean(KEY_NOTIFICATIONS_READY, true).apply();
        notificationsCard.getActionButton().setText(R.string.ready_p3);
        notificationsCard.getSubtitleView().setText(R.string.p3_notifications_boundary);
        refreshState();
    }

    private void markInstalledAppsReady() {
        prefs.edit().putBoolean(KEY_INSTALLED_APPS_READY, true).apply();
        installedAppsCard.getActionButton().setText(R.string.ready_p3);
        installedAppsCard.getSubtitleView().setText(R.string.p3_installed_apps_boundary);
        refreshState();
    }

    private void grantRootBoundary() {
        // P3 boundary: actual Root/Shizuku detection, grant and callbacks belong to P4.
        prefs.edit().putBoolean(KEY_ROOT_READY, true).apply();
        rootButton.setText(R.string.ready_p3);
        Toast.makeText(this, R.string.p3_root_stub, Toast.LENGTH_SHORT).show();
        refreshState();
    }

    private void refreshState() {
        if (prefs == null || storageCard == null) return;

        boolean signedIn = prefs.getBoolean(KEY_SIGNED_IN, false);
        if (!signedIn) {
            signInContainer.setVisibility(View.VISIBLE);
            permissionsContainer.setVisibility(View.GONE);
            anonymousButton.setVisibility(View.VISIBLE);
            continueButton.setText(R.string.continue_with_google);
            flowStatus.setText(R.string.intro_flow_status_sign_in);
            return;
        }

        signInContainer.setVisibility(View.GONE);
        permissionsContainer.setVisibility(View.VISIBLE);
        anonymousButton.setVisibility(View.GONE);
        continueButton.setText(R.string.continue_setup);
        flowStatus.setText(R.string.intro_flow_status_permissions);

        if (isStorageGranted() && !prefs.getBoolean(KEY_STORAGE_READY, false)) {
            prefs.edit().putBoolean(KEY_STORAGE_READY, true).apply();
        }
        if (isNotificationsGranted() && !prefs.getBoolean(KEY_NOTIFICATIONS_READY, false)) {
            prefs.edit().putBoolean(KEY_NOTIFICATIONS_READY, true).apply();
        }

        storageCard.getActionButton().setText(
                prefs.getBoolean(KEY_STORAGE_READY, false)
                        ? R.string.ready_p3 : R.string.grant_storage_permission);
        notificationsCard.getActionButton().setText(
                prefs.getBoolean(KEY_NOTIFICATIONS_READY, false)
                        ? R.string.ready_p3 : R.string.grant_notifications_permission);
        installedAppsCard.getActionButton().setText(
                prefs.getBoolean(KEY_INSTALLED_APPS_READY, false)
                        ? R.string.ready_p3 : R.string.grant_installed_apps_permission);
        rootButton.setText(
                prefs.getBoolean(KEY_ROOT_READY, false)
                        ? R.string.ready_p3 : R.string.root_grant_permissions);
    }

    private boolean isStorageGranted() {
        if (Build.VERSION.SDK_INT >= 30) return Environment.isExternalStorageManager();
        return ContextCompat.checkSelfPermission(this, Manifest.permission.READ_EXTERNAL_STORAGE)
                == PackageManager.PERMISSION_GRANTED;
    }

    private boolean isNotificationsGranted() {
        return Build.VERSION.SDK_INT < 33
                || ContextCompat.checkSelfPermission(this, Manifest.permission.POST_NOTIFICATIONS)
                == PackageManager.PERMISSION_GRANTED;
    }

    private void continueFromPermissions() {
        List<String> missing = new ArrayList<>();
        if (!prefs.getBoolean(KEY_STORAGE_READY, false)) missing.add(getString(R.string.storage_perm_title));
        if (!prefs.getBoolean(KEY_NOTIFICATIONS_READY, false)) missing.add(getString(R.string.notifications_perm_title));
        if (!prefs.getBoolean(KEY_INSTALLED_APPS_READY, false)) missing.add(getString(R.string.installed_apps_perm_title));
        if (!prefs.getBoolean(KEY_ROOT_READY, false)) missing.add(getString(R.string.root_grant_permissions));

        if (!missing.isEmpty()) {
            StringBuilder message = new StringBuilder(getString(R.string.p3_permissions_missing));
            for (String item : missing) message.append("\n• ").append(item);
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.required_permissions)
                    .setMessage(message.toString())
                    .setNegativeButton(R.string.keep_setup, null)
                    .setPositiveButton(R.string.continue_anyway, (d, w) -> showPasswordBoundary())
                    .show();
            return;
        }

        showPasswordBoundary();
    }

    private void showPasswordBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.password_setup_title)
                .setMessage(R.string.p3_password_boundary)
                .setSingleChoiceItems(
                        new String[]{
                                getString(R.string.password_mode_standard),
                                getString(R.string.password_mode_user)
                        },
                        prefs.getInt(KEY_PASSWORD_MODE, 0),
                        (dialog, which) -> prefs.edit().putInt(KEY_PASSWORD_MODE, which).apply())
                .setNegativeButton(R.string.keep_setup, null)
                .setPositiveButton(R.string.continue_label, (dialog, which) -> showGettingStarted())
                .show();
    }

    private void showGettingStarted() {
        flowStatus.setText(R.string.intro_flow_status_getting_started);
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.getting_started)
                .setMessage(R.string.p3_getting_started_body)
                .setPositiveButton(R.string.continue_to_home, (dialog, which) -> completeIntro())
                .setCancelable(false)
                .show();
    }

    private void completeIntro() {
        localState.putBoolean(LocalState.KEY_FIRST_START, false);
        localState.putBoolean(LocalState.KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED, true);
        openHome();
    }

    private void openHome() {
        startActivity(new Intent(this, HomeActivity.class));
        finish();
    }

    private void showIntroMenu() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.intro_menu_title)
                .setItems(new String[]{
                        getString(R.string.reset_onboarding),
                        getString(R.string.close)
                }, (dialog, which) -> {
                    if (which == 0) {
                        prefs.edit()
                                .remove(LocalState.KEY_FIRST_START)
                                .remove(KEY_SIGNED_IN)
                                .remove(KEY_STORAGE_READY)
                                .remove(KEY_NOTIFICATIONS_READY)
                                .remove(KEY_INSTALLED_APPS_READY)
                                .remove(KEY_ROOT_READY)
                                .remove(KEY_PASSWORD_MODE)
                                .apply();
                        recreate();
                    }
                })
                .show();
    }

    private void showInfoDialog(int title, int message) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(title)
                .setMessage(message)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    public void onRequestPermissionsResult(
            int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQUEST_NOTIFICATIONS) {
            if (isNotificationsGranted()) markNotificationsReady();
            else Toast.makeText(this, R.string.p3_permission_not_granted, Toast.LENGTH_SHORT).show();
        } else if (requestCode == REQUEST_STORAGE) {
            if (isStorageGranted()) markStorageReady();
            else Toast.makeText(this, R.string.p3_permission_not_granted, Toast.LENGTH_SHORT).show();
        }
    }
}
