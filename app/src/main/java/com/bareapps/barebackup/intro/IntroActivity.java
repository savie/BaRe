package com.bareapps.barebackup.intro;

import android.app.Activity;
import android.app.AlertDialog;
import android.os.Bundle;
import android.os.Build;
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
                                "Root was not granted. Continuing with " + status.mode + " mode.",
                                Toast.LENGTH_LONG).show();
                        }
                        openHome();
                    });
                } else if (which == 1) {
                    actionHandler.requestShizukuAccess();
                    openHome();
                } else {
                    openHome();
                }
            })
            .show();
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