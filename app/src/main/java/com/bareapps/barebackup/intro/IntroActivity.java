package com.bareapps.barebackup.intro;

import android.app.Activity;
import android.app.AlertDialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.bareapps.barebackup.R;

/**
 * Reference-shaped onboarding UI. Actions are UI-only for now; no account,
 * permission, Root, or Shizuku operation is executed.
 */
public final class IntroActivity extends Activity {
    private View menuAnchor;
    private IntroFlowController flowController;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        flowController = new IntroFlowController();
        showAccountSetup();
    }

    private void showAccountSetup() {
        setContentView(R.layout.intro_activity);
        menuAnchor = findViewById(R.id.iv_menu);
        if (menuAnchor != null) menuAnchor.setOnClickListener(this::showOverflowMenu);
        View google = findViewById(R.id.btn_google);
        if (google != null) google.setOnClickListener(v -> showSignInExplanation());
        View skip = findViewById(R.id.btn_anonymous);
        if (skip != null) skip.setOnClickListener(v -> showPermissions());
    }

    private void showPermissions() {
        flowController.moveTo(IntroFlowController.Step.REQUIRED_PERMISSIONS);
        setContentView(R.layout.intro_activity_permissions);
        View menu = findViewById(R.id.iv_menu);
        if (menu != null) menu.setOnClickListener(this::showOverflowMenu);
        View root = findViewById(R.id.btn_root_permissions);
        if (root != null) root.setOnClickListener(v -> showRootPermissionExplanation());
    }

    private void showOverflowMenu(View anchor) {
        String[] items = {"Language", "BareLogger", "Restart app"};
        new AlertDialog.Builder(this)
                .setItems(items, (dialog, which) -> {
                    // Deliberately inert until the referenced feature is ported.
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
        new AlertDialog.Builder(this)
                .setTitle(R.string.account_chooser_title)
                .setMessage(R.string.account_chooser_unavailable)
                .setPositiveButton(android.R.string.ok, (d, w) -> { })
                .show();
    }

    private void showRootPermissionExplanation() {
        new AlertDialog.Builder(this)
                .setTitle(R.string.root_permission_dialog_title)
                .setMessage(R.string.root_permission_dialog_message)
                .setNegativeButton(R.string.cancel, (d, w) -> d.dismiss())
                .setPositiveButton(R.string.grant_permissions, (d, w) -> d.dismiss())
                .show();
    }
}