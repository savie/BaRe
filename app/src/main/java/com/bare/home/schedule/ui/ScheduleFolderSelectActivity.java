package com.bare.home.schedule.ui;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

/**
 * P3 Reference-shaped folder-selection surface.
 *
 * Folder inventory, selection persistence, and schedule mutation remain outside
 * this UI boundary until their Reference data/engine contracts are reconstructed.
 */
public final class ScheduleFolderSelectActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.schedule_folder_select_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        findViewById(R.id.btn_create_folder_setup).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.local_folder_setups)
                        .setMessage(R.string.p3_schedule_folder_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());

        findViewById(R.id.btn_save).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.save)
                        .setMessage(R.string.p3_schedule_folder_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
