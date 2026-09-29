package com.bare.detail;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;

/**
 * P3 shell for the Reference app backup/detail surface.
 *
 * Backup/restore operations are intentionally not implemented here; the screen
 * is a navigation boundary for the later P4 engine.
 */
public final class DetailActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.detail_activity);

        androidx.appcompat.widget.Toolbar toolbar = findViewById(R.id.toolbar);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
            findViewById(R.id.btn_backup).setOnClickListener(v -> showEngineBoundary(R.string.backup));
            findViewById(R.id.btn_restore).setOnClickListener(v -> showEngineBoundary(R.string.restore));
            if (getSupportActionBar() != null) {
                getSupportActionBar().setDisplayHomeAsUpEnabled(true);
                getSupportActionBar().setTitle(R.string.app_detail);
            }
            toolbar.setNavigationOnClickListener(v -> finish());
        }
    }

    private void showEngineBoundary(int actionRes) {
        new com.google.android.material.dialog.MaterialAlertDialogBuilder(this)
                .setTitle(actionRes)
                .setMessage(R.string.apps_engine_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
