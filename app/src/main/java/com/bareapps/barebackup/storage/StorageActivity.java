package com.bareapps.barebackup.storage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.bareapps.barebackup.R;
import com.bareapps.barebackup.model.storage.StorageInfoLocal;
import com.bareapps.barebackup.ui.SystemBarInsets;
import com.bareapps.barebackup.ui.LocaleHelper;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/** Dedicated details screen for local backup storage; keeps storage UI out of HomeActivity. */
public final class StorageActivity extends Activity {
    private final ExecutorService storageWorker = Executors.newSingleThreadExecutor();
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final AtomicInteger refreshGeneration = new AtomicInteger();
    private boolean destroyed;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.wrap(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.storage_activity);
        SystemBarInsets.apply(this);
        View back = findViewById(R.id.storage_back);
        if (back != null) back.setOnClickListener(v -> finish());
        View card = findViewById(R.id.storage_detail_card);
        if (card != null) card.setOnClickListener(v -> refreshStorageInfo());
        refreshStorageInfo();
    }

    @Override
    protected void onResume() {
        super.onResume();
        refreshStorageInfo();
    }

    private void refreshStorageInfo() {
        final int generation = refreshGeneration.incrementAndGet();
        storageWorker.execute(() -> {
            try {
                StorageInfoLocal info = StorageInfoLocal.read(getApplicationContext());
                mainHandler.post(() -> {
                    if (destroyed || generation != refreshGeneration.get()) return;
                    TextView used = findViewById(R.id.storage_used_summary);
                    TextView appUsage = findViewById(R.id.storage_app_usage);
                    TextView path = findViewById(R.id.storage_folder_path);
                    ProgressBar progress = findViewById(R.id.storage_used_progress);
                    if (used != null) used.setText(info.getUsedSummary(this));
                    if (appUsage != null) appUsage.setText(info.getAccountSummary(this));
                    if (path != null) path.setText(info.getFolderPath());
                    if (progress != null) progress.setProgress(info.getUsedPercent());
                });
            } catch (RuntimeException error) {
                final String message = error.getMessage() == null ? error.getClass().getSimpleName() : error.getMessage();
                mainHandler.post(() -> {
                    if (destroyed || generation != refreshGeneration.get()) return;
                    TextView used = findViewById(R.id.storage_used_summary);
                    TextView appUsage = findViewById(R.id.storage_app_usage);
                    TextView path = findViewById(R.id.storage_folder_path);
                    if (used != null) used.setText("Storage information unavailable");
                    if (appUsage != null) appUsage.setText("Could not calculate BΛR☰ account usage");
                    if (path != null) path.setText("Account folder unavailable");
                    Toast.makeText(this, "Unable to read local storage: " + message,
                            Toast.LENGTH_LONG).show();
                });
            }
        });
    }

    @Override
    protected void onDestroy() {
        destroyed = true;
        refreshGeneration.incrementAndGet();
        storageWorker.shutdownNow();
        mainHandler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}
