package com.bareapps.barebackup.intro;

import android.app.Activity;
import android.app.AlertDialog;
import android.os.Bundle;
import android.os.Build;
import android.os.Environment;
import android.content.pm.PackageManager;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.window.OnBackInvokedDispatcher;
import android.view.LayoutInflater;
import android.view.View;

import android.widget.Toast;

import com.bareapps.barebackup.R;
import com.bareapps.rootservice.PrivilegeManager;
import com.bareapps.barebackup.home.HomeActivity;

public final class IntroActivity extends Activity {
    private IntroFlowController flowController;
    private IntroActionHandler actionHandler;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        flowController = new IntroFlowController();
        actionHandler = new IntroActionHandler(this);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(
                OnBackInvokedDispatcher.PRIORITY_DEFAULT,
                this::handleBackNavigation
            );
        }
        showAccountSetup();
    }

    @Override
    protected void onResume() {
        super.onResume();
        View notifications = findViewById(R.id.btn_notifications_perm);
        if (notifications != null) updateNotificationPermissionButton(notifications);
        View storage = findViewById(R.id.btn_storage_perm);
        if (storage != null) updateStoragePermissionButton(storage);
    }

    private void showAccountSetup() {
        flowController.moveTo(IntroFlowController.Step.ACCOUNT_SETUP);
        setContentView(R.layout.intro_activity);
        View menu = findViewById(R.id.iv_menu);
        if (menu != null) menu.setOnClickListener(this::showOverflowMenu);
        View google = findViewById(R.id.btn_google);
        if (google != null) google.setOnClickListener(v -> showSignInExplanation());
        View skip = findViewById(R.id.btn_anonymous);
        if (skip != null) skip.setOnClickListener(v -> showPermissions());
    }

    private void showPermissions() {
        flowController.moveTo(IntroFlowController.Step.REQUIRED_PERMISSIONS);
        setContentView(R.layout.intro_permissions_screen);
        View menu = findViewById(R.id.iv_menu);
        if (menu != null) menu.setOnClickListener(this::showOverflowMenu);
        View root = findViewById(R.id.btn_root_permissions);
        if (root != null) root.setOnClickListener(v -> showRootPermissionExplanation());
        View notifications = findViewById(R.id.btn_notifications_perm);
        if (notifications != null) {
            updateNotificationPermissionButton(notifications);
            notifications.setOnClickListener(v -> requestNotificationPermission());
        }
        View storage = findViewById(R.id.btn_storage_perm);
        if (storage != null) {
            updateStoragePermissionButton(storage);
            storage.setOnClickListener(v -> requestStorageAccess());
        }
    }

    private void requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            if (Environment.isExternalStorageManager()) {
                Toast.makeText(this, "All-files storage access is already granted.", Toast.LENGTH_SHORT).show();
                return;
            }
            PrivilegeManager.Status status = actionHandler.getStatus();
            if (status.rootGranted) {
                actionHandler.execute(new String[]{"appops", "set", getPackageName(),
                        "MANAGE_EXTERNAL_STORAGE", "allow"}, 10000L, (result, mode) -> {
                    boolean ok = result != null && result.getInt("exitCode", -1) == 0
                            && mode == PrivilegeManager.Mode.ROOT;
                    updateStoragePermissionButton(findViewById(R.id.btn_storage_perm));
                    Toast.makeText(this, ok && Environment.isExternalStorageManager()
                            ? "All-files storage access granted."
                            : "Root command ran, but Android has not confirmed all-files access.",
                            Toast.LENGTH_LONG).show();
                });
                return;
            }
            try {
                Intent intent = new Intent(Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                startActivity(intent);
            } catch (RuntimeException error) {
                startActivity(new Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION));
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            String[] requested = Build.VERSION.SDK_INT <= Build.VERSION_CODES.P
                    ? new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}
                    : new String[]{"android.permission.READ_EXTERNAL_STORAGE"};
            requestPermissions(requested, 6207);
        } else {
            Toast.makeText(this, "Storage access is available on this Android version.", Toast.LENGTH_SHORT).show();
        }
    }

    private void updateStoragePermissionButton(View button) {
        if (button == null) return;
        boolean granted;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            granted = Environment.isExternalStorageManager();
        } else {
            granted = Build.VERSION.SDK_INT < Build.VERSION_CODES.M
                    || checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == PackageManager.PERMISSION_GRANTED;
        }
        if (button instanceof android.widget.TextView) {
            ((android.widget.TextView) button).setText(granted
                    ? "Storage access granted" : R.string.grant_storage_permission);
        }
        button.setEnabled(!granted);
    }

    private void requestNotificationPermission() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) {
            Toast.makeText(this, "Runtime notification permission is not required on this Android version.",
                    Toast.LENGTH_LONG).show();
            return;
        }
        if (checkSelfPermission("android.permission.POST_NOTIFICATIONS") == PackageManager.PERMISSION_GRANTED) {
            Toast.makeText(this, "Notifications permission is already granted.", Toast.LENGTH_SHORT).show();
            return;
        }
        requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 6206);
    }

    private void updateNotificationPermissionButton(View button) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU
                && checkSelfPermission("android.permission.POST_NOTIFICATIONS") == PackageManager.PERMISSION_GRANTED) {
            if (button instanceof android.widget.TextView) {
                ((android.widget.TextView) button).setText("Notifications permission granted");
            }
            button.setEnabled(false);
        } else {
            if (button instanceof android.widget.TextView) {
                ((android.widget.TextView) button).setText(R.string.grant_notifications_permission);
            }
            button.setEnabled(true);
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 6207) {
            View storage = findViewById(R.id.btn_storage_perm);
            if (storage != null) updateStoragePermissionButton(storage);
            boolean granted = grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED;
            Toast.makeText(this, granted ? "Storage permission granted." : "Storage permission not granted.",
                    Toast.LENGTH_LONG).show();
            return;
        }
        if (requestCode != 6206) return;
        View button = findViewById(R.id.btn_notifications_perm);
        if (button != null) updateNotificationPermissionButton(button);
        boolean granted = grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED;
        Toast.makeText(this, granted ? "Notifications permission granted." : "Notifications permission not granted.",
                Toast.LENGTH_LONG).show();
    }

    private void showOverflowMenu(View anchor) {
        String[] items = {"Language", "BareLogger", "Restart app"};
        new AlertDialog.Builder(this).setItems(items, (dialog, which) -> {
            if (which == 0) {
                new AlertDialog.Builder(this).setTitle(R.string.language_title)
                    .setItems(new String[]{"English", "Bahasa Indonesia"}, (d, selected) -> {
                        // Visual placeholder only; locale switching is intentionally not wired.
                    }).show();
            } else if (which == 1) {
                new AlertDialog.Builder(this).setTitle(R.string.barelogger_title)
                    .setMessage(R.string.barelogger_placeholder).setPositiveButton(android.R.string.ok, null).show();
            } else {
                new AlertDialog.Builder(this).setTitle(R.string.restart_app_title)
                    .setMessage(R.string.restart_app_placeholder)
                    .setNegativeButton(R.string.cancel, null)
                    .setPositiveButton(R.string.restart_app_action, (d, w) -> showAccountSetup()).show();
            }
        }).show();
    }

    private void showSignInExplanation() {
        View content = LayoutInflater.from(this).inflate(R.layout.intro_sign_in_dialog, null, false);
        AlertDialog dialog = new AlertDialog.Builder(this).setView(content).create();
        View google = content.findViewById(R.id.dialog_google_sign_in);
        View without = content.findViewById(R.id.dialog_continue_without_account);
        if (google != null) google.setOnClickListener(v -> {
            dialog.dismiss();
            showAccountChooserPlaceholder();
        });
        if (without != null) without.setOnClickListener(v -> {
            dialog.dismiss();
            showPermissions();
        });
        dialog.show();
    }

    private void showAccountChooserPlaceholder() {
        String[] accounts = {"Santo Priyono  ·  santo@example.com", "eSPe STP  ·  espe@example.com",
                "Giant Killers  ·  giant@example.com", "Banned  ·  banned@example.com", "Add another account"};
        new AlertDialog.Builder(this).setTitle(R.string.account_chooser_title)
            .setMessage(R.string.account_chooser_subtitle)
            .setItems(accounts, (dialog, which) -> showPermissions()).show();
    }

    private void showRootPermissionExplanation() {
        new AlertDialog.Builder(this)
            .setTitle(R.string.root_permission_dialog_title)
            .setMessage(R.string.root_permission_dialog_message)
            .setNegativeButton(R.string.cancel, (d, w) -> d.dismiss())
            .setPositiveButton(R.string.grant_permissions, (d, w) -> chooseExecutionMode())
            .show();
    }

    private void chooseExecutionMode() {
        String[] modes = {"Root access", "Shizuku", "Continue without root"};
        new AlertDialog.Builder(this)
            .setTitle("Choose execution mode")
            .setItems(modes, (dialog, which) -> {
                if (which == 0) {
                    actionHandler.requestRootAccess(status -> {
                        if (!status.rootGranted) {
                            Toast.makeText(this,
                                "Root was not granted. No privileged permissions were changed.",
                                Toast.LENGTH_LONG).show();
                            openHome();
                            return;
                        }
                        grantPrivilegedPermissions(0, 0, true);
                    });
                } else if (which == 1) {
                    PrivilegeManager.Status status = actionHandler.getStatus();
                    if (!status.shizukuAvailable) {
                        Toast.makeText(this, "Shizuku is not running. No permissions were changed.",
                                Toast.LENGTH_LONG).show();
                        return;
                    }
                    ((com.bareapps.barebackup.BareApp) getApplication()).getPrivilegeManager()
                        .setStatusListener(updated -> {
                            if (updated.shizukuConnected) {
                                ((com.bareapps.barebackup.BareApp) getApplication()).getPrivilegeManager()
                                    .setStatusListener(null);
                                grantPrivilegedPermissions(0, 0, false);
                            }
                        });
                    actionHandler.requestShizukuAccess();
                    Toast.makeText(this, "Waiting for Shizuku authorization…",
                            Toast.LENGTH_LONG).show();
                } else {
                    Toast.makeText(this, "Continuing without privileged permissions.",
                            Toast.LENGTH_LONG).show();
                    openHome();
                }
            })
            .show();
    }

    private void grantPrivilegedPermissions(int index, int granted, boolean rootMode) {
        final java.util.ArrayList<String[]> commands = new java.util.ArrayList<>();
        String pkg = getPackageName();
        commands.add(new String[]{"pm", "grant", pkg, "android.permission.READ_CONTACTS"});
        commands.add(new String[]{"pm", "grant", pkg, "android.permission.READ_SMS"});
        commands.add(new String[]{"pm", "grant", pkg, "android.permission.READ_CALL_LOG"});
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            commands.add(new String[]{"pm", "grant", pkg, "android.permission.POST_NOTIFICATIONS"});
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            commands.add(new String[]{"appops", "set", pkg, "MANAGE_EXTERNAL_STORAGE", "allow"});
        } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            commands.add(new String[]{"pm", "grant", pkg, "android.permission.READ_EXTERNAL_STORAGE"});
            if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.P) {
                commands.add(new String[]{"pm", "grant", pkg, "android.permission.WRITE_EXTERNAL_STORAGE"});
            }
        }

        if (index >= commands.size()) {
            int verified = 0;
            int total = 4;
            if (hasPermission("android.permission.READ_CONTACTS")) verified++;
            if (hasPermission("android.permission.READ_SMS")) verified++;
            if (hasPermission("android.permission.READ_CALL_LOG")) verified++;
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                if (hasPermission("android.permission.POST_NOTIFICATIONS")) verified++;
            } else {
                total--;
            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                total++;
                if (Environment.isExternalStorageManager()) verified++;
            } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                total++;
                if (hasPermission("android.permission.READ_EXTERNAL_STORAGE")) verified++;
            }
            String mode = rootMode ? "ROOT" : "Shizuku";
            Toast.makeText(this, mode + " finished. Verified " + verified + "/" + total
                    + " permission groups. Some access may require Android settings or a default-app role.",
                    Toast.LENGTH_LONG).show();
            openHome();
            return;
        }

        actionHandler.execute(commands.get(index), 10000L, (result, mode) -> {
            boolean expectedExecutor = rootMode
                    ? mode == PrivilegeManager.Mode.ROOT
                    : mode == PrivilegeManager.Mode.SHIZUKU || mode == PrivilegeManager.Mode.ROOT;
            boolean accepted = result != null && result.getInt("exitCode", -1) == 0 && expectedExecutor;
            grantPrivilegedPermissions(index + 1, granted + (accepted ? 1 : 0), rootMode);
        });
    }

    private boolean hasPermission(String permission) {
        return checkSelfPermission(permission) == PackageManager.PERMISSION_GRANTED;
    }

    private void openHome() {
        flowController.moveTo(IntroFlowController.Step.READY);
        startActivity(new android.content.Intent(this, HomeActivity.class));
        finish();
    }

    @Override
    public void onBackPressed() {
        handleBackNavigation();
    }

    private void handleBackNavigation() {
        if (flowController.getCurrentStep() == IntroFlowController.Step.REQUIRED_PERMISSIONS) {
            showAccountSetup();
            return;
        }
        finish();
    }
}