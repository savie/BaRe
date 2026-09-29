package com.bare.home.schedule;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

/**
 * P3 Reference-shaped label selection surface.
 *
 * The Reference screen owns selected-label state and label catalogs. Those data
 * contracts are not reconstructed here, so RecyclerViews remain empty and all
 * mutations stop at explicit P3 boundaries.
 */
public final class ScheduleLabelsSelectActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.schedule_labels_select_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        findViewById(R.id.iv_clear).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.clear_labels)
                        .setMessage(R.string.p3_schedule_labels_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());

        findViewById(R.id.btn_create_label).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.create_new_label)
                        .setMessage(R.string.p3_schedule_labels_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
