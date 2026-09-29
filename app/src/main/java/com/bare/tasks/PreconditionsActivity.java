package com.bare.tasks;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class PreconditionsActivity extends AppCompatActivity {
    private int requestCode;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.preconditions_activity);

        requestCode = getIntent().getIntExtra("request_code", 0);

        MaterialCardView sms = findViewById(R.id.sms_permission_container);
        MaterialCardView calls = findViewById(R.id.calls_permission_container);

        if (requestCode == 2 || requestCode == 589) {
            sms.setVisibility(View.VISIBLE);
            bindBoundary(sms, R.id.sms_icon, R.id.sms_value, R.string.sms_permissions);
        }
        if (requestCode == 3 || requestCode == 589) {
            calls.setVisibility(View.VISIBLE);
            bindBoundary(calls, R.id.calls_icon, R.id.calls_value, R.string.call_logs_permissions);
        }

        findViewById(R.id.iv_back).setOnClickListener(v -> finish());
        findViewById(R.id.btn_done).setOnClickListener(v -> finish());
    }

    private void bindBoundary(MaterialCardView card, int iconId, int valueId, int titleRes) {
        card.setOnClickListener(v -> new MaterialAlertDialogBuilder(this)
                .setTitle(titleRes)
                .setMessage(R.string.p3_preconditions_boundary)
                .setPositiveButton(R.string.close, null)
                .show());
    }

    @Override
    public void onBackPressed() {
        finish();
    }
}
