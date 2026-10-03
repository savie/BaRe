package com.bare.password;

import android.os.Bundle;
import android.text.InputType;
import android.widget.EditText;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class UserPasswordActivity extends AppCompatActivity {
    private PasswordStateRepository passwordState;
    private TextView activeStatus;
    private TextView oldStatus;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.user_password_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        passwordState = new PasswordStateRepository(this);
        activeStatus = findViewById(R.id.tv_active_password_status);
        oldStatus = findViewById(R.id.tv_old_passwords_status);

        findViewById(R.id.btn_edit_active_password).setOnClickListener(v -> showPasswordDialog(false));
        findViewById(R.id.btn_add_old_password).setOnClickListener(v -> showPasswordDialog(true));
        refresh();
    }

    private void refresh() {
        boolean active = passwordState.hasActiveUserPassword();
        activeStatus.setText(active ? R.string.password_saved : R.string.no_active_password);
        oldStatus.setText(String.valueOf(passwordState.getOldPasswordCount()));
    }

    private void showPasswordDialog(boolean oldPassword) {
        EditText password = new EditText(this);
        password.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
        password.setHint(R.string.password);

        EditText confirm = new EditText(this);
        confirm.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
        confirm.setHint(R.string.confirm_password);

        android.widget.LinearLayout content = new android.widget.LinearLayout(this);
        content.setOrientation(android.widget.LinearLayout.VERTICAL);
        int padding = (int) (24 * getResources().getDisplayMetrics().density);
        content.setPadding(padding, 0, padding, 0);
        content.addView(password);
        content.addView(confirm);

        new MaterialAlertDialogBuilder(this)
                .setTitle(oldPassword ? R.string.add_old_password : R.string.change_password)
                .setView(content)
                .setNegativeButton(R.string.close, null)
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                    String value = password.getText().toString();
                    String confirmation = confirm.getText().toString();
                    if (value.isEmpty() || !value.equals(confirmation)) return;
                    if (oldPassword) {
                        passwordState.addOldPassword(value);
                    } else {
                        passwordState.selectUserPassword(value);
                    }
                    refresh();
                })
                .show();
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
