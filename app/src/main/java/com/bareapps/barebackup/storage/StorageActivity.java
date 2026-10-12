package com.bareapps.barebackup.storage;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.bareapps.barebackup.R;
import com.bareapps.barebackup.model.storage.StorageInfoLocal;

/** Dedicated details screen for local backup storage; keeps storage UI out of HomeActivity. */
public final class StorageActivity extends Activity {
    private StorageInfoLocal storageInfo;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.storage_activity);
        View back = findViewById(R.id.storage_back);
        if (back != null) back.setOnClickListener(v -> finish());
        View card = findViewById(R.id.storage_detail_card);
        if (card != null) {
            card.setOnClickListener(v -> {
                refreshStorageInfo();
                Toast.makeText(this, "Storage information refreshed", Toast.LENGTH_SHORT).show();
            });
        }
        refreshStorageInfo();
    }

    @Override
    protected void onResume() {
        super.onResume();
        refreshStorageInfo();
    }

    private void refreshStorageInfo() {
        try {
            storageInfo = StorageInfoLocal.read(this);
            TextView used = findViewById(R.id.storage_used_summary);
            TextView appUsage = findViewById(R.id.storage_app_usage);
            TextView path = findViewById(R.id.storage_folder_path);
            ProgressBar progress = findViewById(R.id.storage_used_progress);
            if (used != null) used.setText(storageInfo.getUsedSummary(this));
            if (appUsage != null) appUsage.setText(storageInfo.getAccountSummary(this));
            if (path != null) path.setText(storageInfo.getFolderPath());
            if (progress != null) progress.setProgress(storageInfo.getUsedPercent());
        } catch (RuntimeException error) {
            TextView used = findViewById(R.id.storage_used_summary);
            TextView appUsage = findViewById(R.id.storage_app_usage);
            TextView path = findViewById(R.id.storage_folder_path);
            if (used != null) used.setText("Storage information unavailable");
            if (appUsage != null) appUsage.setText("Could not calculate BΛR☰ account usage");
            if (path != null) path.setText("Account folder unavailable");
            Toast.makeText(this, "Unable to read local storage: " + error.getMessage(),
                    Toast.LENGTH_LONG).show();
        }
    }
}
