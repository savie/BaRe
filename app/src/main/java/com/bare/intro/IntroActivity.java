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
import com.bare.permission.PermissionAccessService;
import com.bare.permission.PermissionCapability;
import com.bare.permission.PermissionState;
import com.bare.settings.PasswordStrategy;
import com.bare.core.state.LocalState;
import com.bare.account.repository.AccountMigrationRepository;
import com.bare.account.repository.LocalAccountMigrationRepository;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.List;

public final class IntroActivity extends Activity {
    private boolean restoreFlow;

    private static final String KEY_SIGNED_IN = "P3_SIGNED_IN";

    private static final int REQUEST_NOTIFICATIONS = 1003;
    private static final int REQUEST_STORAGE = 1004;

    private SharedPreferences prefs;
    private LocalState localState;
    private AccountMigrationRepository accountMigrationRepository;
    private PermissionAccessService permissionAccessService;

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
        accountMigrationRepository = new LocalAccountMigrationRepository(localState);
        permissionAccessService = new PermissionAccessService(this);
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
        installedAppsCard.getActionButton().setOnClickListener(v -> refreshState());
        rootButton.setOnClickListener(v -> grantRootBoundary());

        continueButton.setOnClickListener(v -> {
            if (prefs.getBoolean(KEY_SIGNED_IN, false)) {
                continueFromPermissions();
            } else {
                beginP3SignIn(false);
            }
        });
        anonymousButton.setOnClickListener(v -> beginP3SignIn(true));

        resumeGoogleMigrationIfNeeded();
        refreshState();
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (prefs == null || localState == null || !localState.getBoolean(LocalState.KEY_FIRST_START, true)) return;
        if (storageCard != null) refreshState();
    }

    private void resumeGoogleMigrationIfNeeded() {
        if (!accountMigrationRepository.isMigratingToGoogleSignIn()) return;

        // Reference IntroActivity clears the guard, then re-enters its sign-in action.
        accountMigrationRepository.setMigratingToGoogleSignIn(false);
        continueButton.callOnClick();
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
                refreshState();
            }
        } else {
            refreshState();
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
                    refreshState();
                }
            } else {
                refreshState();
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

    private void grantRootBoundary() {
        // Root/Shizuku execution is a separate Reference coordinator boundary.
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

        PermissionState storage = permissionAccessService.read().get(PermissionCapability.STORAGE);
        PermissionState notifications = permissionAccessService.read().get(PermissionCapability.NOTIFICATIONS);
        PermissionState installedApps = permissionAccessService.read().get(PermissionCapability.INSTALLED_APPS);
        PermissionState root = permissionAccessService.read().get(PermissionCapability.ROOT_SHIZUKU);

        storageCard.getActionButton().setText(
                storage.isReady() ? R.string.ready_p3 : R.string.grant_storage_permission);
        notificationsCard.getActionButton().setText(
                notifications.isReady() ? R.string.ready_p3 : R.string.grant_notifications_permission);
        installedAppsCard.getActionButton().setText(
                installedApps.isReady() ? R.string.ready_p3 : R.string.grant_installed_apps_permission);
        rootButton.setText(
                root.isReady() ? R.string.ready_p3 : R.string.root_grant_permissions);
    }

    private boolean isStorageGranted() {
        return permissionAccessService.read().get(PermissionCapability.STORAGE).isReady();
    }

    private boolean isNotificationsGranted() {
        return permissionAccessService.read().get(PermissionCapability.NOTIFICATIONS).isReady();
    }

    private void continueFromPermissions() {
        List<String> missing = new ArrayList<>();
        if (!permissionAccessService.read().get(PermissionCapability.STORAGE).isReady()) {
            missing.add(getString(R.string.storage_perm_title));
        }
        if (!permissionAccessService.read().get(PermissionCapability.NOTIFICATIONS).isReady()) {
            missing.add(getString(R.string.notifications_perm_title));
        }
        if (!permissionAccessService.read().get(PermissionCapability.INSTALLED_APPS).isReady()) {
            missing.add(getString(R.string.installed_apps_perm_title));
        }

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
                        localState.getInt(
                                LocalState.KEY_SAVED_PASSWORD_MODE,
                                PasswordStrategy.STANDARD_PASSWORD.ordinal()),
                        (dialog, which) -> localState.putInt(
                                LocalState.KEY_SAVED_PASSWORD_MODE,
                                which))
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
        // Cloud-restore completion is owned by the first-run restore contract (C10).
        // Do not fabricate completion from the Intro UI transition.
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
                        localState.remove(LocalState.KEY_FIRST_START);
                        localState.remove(LocalState.KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED);
                        prefs.edit()
                                .remove(KEY_SIGNED_IN)
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
            refreshState();
            if (!isNotificationsGranted()) Toast.makeText(this, R.string.p3_permission_not_granted, Toast.LENGTH_SHORT).show();
        } else if (requestCode == REQUEST_STORAGE) {
            refreshState();
            if (!isStorageGranted()) Toast.makeText(this, R.string.p3_permission_not_granted, Toast.LENGTH_SHORT).show();
        }
    }
}
