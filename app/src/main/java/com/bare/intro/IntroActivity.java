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
import android.widget.PopupMenu;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.bare.R;
import com.bare.home.HomeActivity;
import com.bare.locale.LocaleActivity;
import com.bare.slog.SLogActivity;
import com.bare.home.repository.AnonymousIdentityStore;
import com.bare.password.PasswordStateRepository;
import com.bare.password.UserPasswordActivity;
import com.bare.permission.PermissionAccessService;
import com.bare.permission.PermissionCapability;
import com.bare.permission.PermissionState;
import com.bare.permission.RootPermissionCoordinator;
import com.bare.core.state.LocalState;
import com.bare.account.repository.AccountMigrationRepository;
import com.bare.account.repository.LocalAccountMigrationRepository;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageVolumeInfo;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.List;

public final class IntroActivity extends Activity {
    private boolean restoreFlow;

    private static final String KEY_SIGNED_IN = "P3_SIGNED_IN";
    private static final String KEY_PASSWORD_MODE = PasswordStateRepository.KEY_PASSWORD_MODE;
    private static final int REQUEST_USER_PASSWORD = 1981811;

    private static final int REQUEST_NOTIFICATIONS = 1003;
    private static final int REQUEST_STORAGE = 1004;

    private SharedPreferences prefs;
    private LocalState localState;
    private AccountMigrationRepository accountMigrationRepository;
    private FirstRunCloudRestoreCoordinator firstRunCloudRestoreCoordinator;
    private PermissionAccessService permissionAccessService;
    private RootPermissionCoordinator rootPermissionCoordinator;

    private View signInContainer;
    private View permissionsContainer;
    private IntroPermissionCardView storageCard;
    private IntroPermissionCardView notificationsCard;
    private IntroPermissionCardView installedAppsCard;
    private MaterialButton rootButton;
    private MaterialButton continueButton;
    private MaterialButton anonymousButton;
    private View privacyPolicy;
    private View signInWarning;
    private View menuButton;
    private android.widget.TextView flowStatus;
    private boolean gettingStartedShown;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        if (getIntent() != null) {
            restoreFlow = getIntent().getBooleanExtra("extra_is_restoring", false);
        }


        localState = new LocalState(this);
        accountMigrationRepository = new LocalAccountMigrationRepository(localState);
        firstRunCloudRestoreCoordinator = new FirstRunCloudRestoreCoordinator(localState);
        permissionAccessService = new PermissionAccessService(this);
        rootPermissionCoordinator = new RootPermissionCoordinator(this);
        prefs = getSharedPreferences(getPackageName() + "_preferences", MODE_PRIVATE);
        if (!localState.getBoolean(LocalState.KEY_FIRST_START, true)) {
            boolean hasLocalAnonymousIdentity =
                    new AnonymousIdentityStore(this).getStoredUid() != null
                            && prefs.getBoolean(KEY_SIGNED_IN, false);
            if (hasLocalAnonymousIdentity) {
                openHome();
                return;
            }

            // Reference re-enters onboarding when persisted first-start state
            // no longer has a usable local identity.
            localState.remove(LocalState.KEY_FIRST_START);
            firstRunCloudRestoreCoordinator.reset();
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
        signInWarning = findViewById(R.id.tv_sign_in_subtitle2);
        menuButton = findViewById(R.id.iv_menu);
        flowStatus = findViewById(R.id.tv_flow_status);

        menuButton.setOnClickListener(v -> showIntroMenu());
        privacyPolicy.setOnClickListener(v -> showInfoDialog(
                getString(R.string.tos_privacy_title),
                getString(R.string.tos_privacy_body)));

        storageCard.getActionButton().setOnClickListener(v -> requestStorageAccess());
        notificationsCard.getActionButton().setOnClickListener(v -> requestNotificationAccess());
        installedAppsCard.getActionButton().setOnClickListener(v -> refreshState());
        rootButton.setOnClickListener(v -> grantRootPermissions());

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
        if (storageCard != null) {
            refreshState();
            if (rootPermissionCoordinator != null) rootPermissionCoordinator.refresh((stateValue, ready) -> refreshState());
        }
    }

    private void resumeGoogleMigrationIfNeeded() {
        if (!accountMigrationRepository.isMigratingToGoogleSignIn()) return;

        // Reference IntroActivity clears the guard, then re-enters its sign-in action.
        accountMigrationRepository.setMigratingToGoogleSignIn(false);
        continueButton.callOnClick();
    }

    private void beginP3SignIn(boolean anonymous) {
        if (anonymous) {
            new AnonymousIdentityStore(this).getOrCreateUid();
            prefs.edit().putBoolean(KEY_SIGNED_IN, true).apply();

            // Reference d.l(): anonymous identity bypasses backend/cloud-settings
            // restore and returns terminal success. C10 owns the completion key.
            firstRunCloudRestoreCoordinator.recordResult(FirstRunCloudRestoreResult.SUCCESS);

            showPermissionsStage();
            return;
        }
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.continue_with_google)
                .setMessage(R.string.p3_google_stub)
                .setNegativeButton(R.string.close, null)
                .show();
    }

    private void showPermissionsStage() {
        findViewById(R.id.intro_bottom_actions).setVisibility(View.GONE);
        findViewById(R.id.intro_bottom_actions).setVisibility(View.GONE);
        signInContainer.setVisibility(View.GONE);
        permissionsContainer.setVisibility(View.VISIBLE);
        signInWarning.setVisibility(View.GONE);
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

    private void showStorageSetupRecovery() {
        AndroidStorageInventory inventory = new AndroidStorageInventory(this);
        LocalStorageCoordinator coordinator = new LocalStorageCoordinator(this, inventory);
        List<StorageVolumeInfo> volumes = coordinator.listVolumes();
        com.bare.storage.StorageSelection selection = coordinator.resolveSelection();
        StorageVolumeInfo selected = selection == null ? null : selection.selected;

        boolean internalAvailable = false;
        for (StorageVolumeInfo volume : volumes) {
            if (!volume.removable && volume.isValid()) {
                internalAvailable = true;
                break;
            }
        }

        String location = selected == null ? getString(R.string.internal_storage)
                : selected.displayName;
        StorageSetupRecovery recovery = new StorageSetupRecovery(
                location,
                selected != null && selected.removable,
                internalAvailable);

        List<String> actions = new ArrayList<>();
        actions.add(getString(R.string.exit));
        actions.add(getString(R.string.retry));
        actions.add(getString(R.string.review_storage_access));
        if (recovery.supports(StorageSetupRecovery.Action.USE_INTERNAL_STORAGE)) {
            actions.add(getString(R.string.internal_storage));
        }

        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.backup_storage_unavailable)
                .setMessage(recovery.location)
                .setItems(actions.toArray(new String[0]), (dialog, which) -> {
                    String action = actions.get(which);
                    if (action.equals(getString(R.string.exit))) {
                        finishAffinity();
                    } else if (action.equals(getString(R.string.retry))) {
                        requestStorageAccess();
                    } else if (action.equals(getString(R.string.review_storage_access))) {
                        try {
                            Intent intent = new Intent(
                                    Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                                    Uri.parse("package:" + getPackageName()));
                            startActivityForResult(intent, REQUEST_STORAGE);
                        } catch (Exception ignored) {
                            refreshState();
                        }
                    } else {
                        for (StorageVolumeInfo volume : volumes) {
                            if (!volume.removable && volume.isValid()) {
                                coordinator.persistPreferredStorageDir(volume.rootPath);
                                refreshState();
                                break;
                            }
                        }
                    }
                })
                .show();
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
                    showStorageSetupRecovery();
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

    private void grantRootPermissions() {
        if (rootPermissionCoordinator == null) return;
        rootPermissionCoordinator.grantAll((stateValue, ready) -> {
            if (stateValue == RootPermissionCoordinator.State.AWAITING_SHIZUKU) {
                rootButton.setText(R.string.root_grant_permissions);
                return;
            }
            if (stateValue == RootPermissionCoordinator.State.GRANTING_PERMISSIONS) {
                rootButton.setText(R.string.grant_permissions);
                return;
            }
            refreshState();
            if (!ready) {
                Toast.makeText(this, R.string.p3_permission_not_granted, Toast.LENGTH_SHORT).show();
            }
        });
    }

    private void refreshState() {
        if (prefs == null || storageCard == null) return;

        boolean signedIn = prefs.getBoolean(KEY_SIGNED_IN, false);
        if (!signedIn) {
            findViewById(R.id.intro_bottom_actions).setVisibility(View.VISIBLE);
            signInContainer.setVisibility(View.VISIBLE);
            permissionsContainer.setVisibility(View.GONE);
            signInWarning.setVisibility(View.VISIBLE);
            anonymousButton.setVisibility(View.VISIBLE);
            continueButton.setText(R.string.continue_with_google);
            flowStatus.setText(R.string.intro_flow_status_sign_in);
            return;
        }

        signInContainer.setVisibility(View.GONE);
        permissionsContainer.setVisibility(View.VISIBLE);
        signInWarning.setVisibility(View.GONE);
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

        if (!gettingStartedShown
                && storage.isReady()
                && notifications.isReady()
                && installedApps.isReady()) {
            gettingStartedShown = true;
            showGettingStarted();
        }
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
        PasswordStateRepository passwordState = new PasswordStateRepository(this);
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.password_setup_title)
                .setMessage(R.string.p3_password_boundary)
                .setSingleChoiceItems(
                        new String[]{
                                getString(R.string.password_mode_standard),
                                getString(R.string.password_mode_user)
                        },
                        passwordState.getMode(),
                        (dialog, which) -> prefs.edit().putInt(KEY_PASSWORD_MODE, which).apply())
                .setNegativeButton(R.string.keep_setup, null)
                .setPositiveButton(R.string.continue_label, (dialog, which) -> {
                    if (passwordState.getMode() == PasswordStateRepository.USER_PASSWORD) {
                        startActivityForResult(
                                new Intent(this, UserPasswordActivity.class)
                                        .putExtra("extra_is_restoring", restoreFlow),
                                REQUEST_USER_PASSWORD);
                    } else {
                        showGettingStarted();
                    }
                })
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
        // C10 owns cloud-restore completion; anonymous onboarding records terminal
        // success from the Reference-equivalent anonymous bypass path.
        openHome();
    }

    private void openHome() {
        startActivity(new Intent(this, HomeActivity.class));
        finish();
    }

    private void showIntroMenu() {
        PopupMenu menu = new PopupMenu(this, menuButton);
        menu.getMenuInflater().inflate(R.menu.menu_intro, menu.getMenu());
        menu.setOnMenuItemClickListener(item -> {
            int id = item.getItemId();
            if (id == R.id.action_language) {
                startActivity(new Intent(this, LocaleActivity.class));
                return true;
            }
            if (id == R.id.action_barelogger) {
                startActivity(new Intent(this, SLogActivity.class));
                return true;
            }
            if (id == R.id.action_restart) {
                Intent launch = getPackageManager().getLaunchIntentForPackage(getPackageName());
                if (launch != null) {
                    launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
                    startActivity(launch);
                } else {
                    recreate();
                }
                return true;
            }
            return false;
        });
        menu.show();
    }

    private void showInfoDialog(int title, int message) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(title)
                .setMessage(message)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_USER_PASSWORD) {
            PasswordStateRepository passwordState = new PasswordStateRepository(this);
            if (passwordState.getMode() == PasswordStateRepository.USER_PASSWORD
                    && passwordState.hasActiveUserPassword()) {
                showGettingStarted();
            }
        }
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
            if (!isStorageGranted()) showStorageSetupRecovery();
        }
    }
}
