package com.bare.appslist.ui.listbatch;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import com.bare.ReferenceActivityBoundary;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public class AppsBatchActivity extends ReferenceActivityBoundary {
    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        findViewById(android.R.id.content).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.apps_batch_actions)
                        .setItems(new String[]{
                                getString(R.string.apps_batch_backup),
                                getString(R.string.apps_batch_restore),
                                getString(R.string.apps_batch_boundary)
                        }, null)
                        .show());
    }
}
