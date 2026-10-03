package com.bare.password;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;

public final class PasswordStrategyActivity extends AppCompatActivity {
    private PasswordStateRepository passwordState;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.password_strategy_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        passwordState = new PasswordStateRepository(this);
        bindItem(R.id.password_item_app_based, R.string.password_mode_standard,
                "Use the standard password strategy.", () -> {
                    passwordState.selectStandardPassword();
                    refresh();
                });
        bindItem(R.id.password_item_user_based, R.string.password_mode_user,
                "Use a user password.", () ->
                        startActivity(new Intent(this, UserPasswordActivity.class)));
        refresh();
    }

    private void bindItem(int rootId, int titleId, String subtitle, Runnable action) {
        android.view.View root = findViewById(rootId);
        TextView title = root.findViewById(R.id.tv_title);
        TextView sub = root.findViewById(R.id.tv_subtitle);
        title.setText(titleId);
        sub.setText(subtitle);
        root.setOnClickListener(v -> action.run());
    }

    private void refresh() {
        int mode = passwordState.getMode();
        TextView standard = findViewById(R.id.password_item_app_based).findViewById(R.id.tv_subtitle);
        TextView user = findViewById(R.id.password_item_user_based).findViewById(R.id.tv_subtitle);
        standard.setText(mode == PasswordStateRepository.STANDARD_PASSWORD
                ? "Selected"
                : "Use the standard password strategy.");
        user.setText(passwordState.hasActiveUserPassword()
                ? "Password saved"
                : "Set a user password.");
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (passwordState != null) refresh();
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
