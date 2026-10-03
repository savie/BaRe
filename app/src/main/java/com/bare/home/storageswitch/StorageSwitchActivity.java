package com.bare.home.storageswitch;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageCoordinator;
import com.bare.storage.StorageSelection;
import com.bare.storage.StorageVolumeInfo;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.io.File;
import java.util.List;

public final class StorageSwitchActivity extends AppCompatActivity {
    private StorageCoordinator storageCoordinator;
    private StorageAdapter adapter;
    private StorageVolumeInfo currentSelection;
    private StorageVolumeInfo pendingSelection;
    private StorageMigrationExecutor migrationExecutor;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.storage_switch_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        storageCoordinator = new LocalStorageCoordinator(
                this,
                new AndroidStorageInventory(this));

        StorageSelection current = storageCoordinator.resolveSelection();
        currentSelection = current == null ? null : current.selected;
        pendingSelection = currentSelection;

        RecyclerView recycler = findViewById(R.id.recycler_view);
        recycler.setLayoutManager(new LinearLayoutManager(this));
        adapter = new StorageAdapter(storageCoordinator.listVolumes(), pendingSelection);
        adapter.onSelectionChanged = volume -> pendingSelection = volume;
        recycler.setAdapter(adapter);

        findViewById(R.id.progress_bar).setVisibility(View.GONE);
        findViewById(R.id.btn_action).setOnClickListener(v -> applySelection());
    }

    /**
     * Injects the downstream filesystem migration owner.
     *
     * P5 does not execute this dependency during static verification.
     */
    public void setMigrationExecutor(StorageMigrationExecutor migrationExecutor) {
        this.migrationExecutor = migrationExecutor;
    }

    private void applySelection() {
        if (pendingSelection == null) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.select_storage)
                    .setMessage(R.string.p3_storage_switch_boundary)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return;
        }

        if (currentSelection != null
                && currentSelection.rootPath.equals(pendingSelection.rootPath)) {
            storageCoordinator.persistPreferredStorageDir(pendingSelection.rootPath);
            finish();
            return;
        }

        File currentBackupRoot = currentSelection == null
                ? null
                : new File(currentSelection.rootPath, "BaRe");
        File destinationBackupRoot = new File(pendingSelection.rootPath, "BaRe");

        long footprint = StorageBackupFootprint.measure(currentBackupRoot);
        long available = new File(pendingSelection.rootPath).getUsableSpace();
        StorageSwitchTransition.Decision decision =
                StorageSwitchTransition.evaluate(
                        available > 0L && footprint >= 0L,
                        available,
                        Math.max(footprint, 0L));

        if (decision == StorageSwitchTransition.Decision.DESTINATION_UNAVAILABLE) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.error)
                    .setMessage(R.string.could_not_get_available_space)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return;
        }

        if (decision == StorageSwitchTransition.Decision.INSUFFICIENT_SPACE) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.warning)
                    .setMessage(R.string.not_enough_free_space_in_new_storage_msg)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return;
        }

        boolean destinationHasFiles = destinationBackupRoot.isDirectory()
                && destinationBackupRoot.list() != null
                && destinationBackupRoot.list().length != 0;

        StorageSwitchTransition.ExistingDestinationDecision defaultAction =
                StorageSwitchTransition.resolveExistingDestination(
                        destinationHasFiles,
                        StorageSwitchTransition.ExistingDestinationDecision.DO_NOTHING);

        if (!destinationHasFiles) {
            requestMigration(currentBackupRoot, destinationBackupRoot, defaultAction);
            return;
        }

        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.move_files)
                .setMessage(R.string.copy_move_files_message)
                .setPositiveButton(
                        R.string.copy,
                        (dialog, which) -> requestMigration(
                                currentBackupRoot,
                                destinationBackupRoot,
                                StorageSwitchTransition.ExistingDestinationDecision.COPY))
                .setNeutralButton(
                        R.string.do_nothing,
                        (dialog, which) -> requestMigration(
                                currentBackupRoot,
                                destinationBackupRoot,
                                StorageSwitchTransition.ExistingDestinationDecision.DO_NOTHING))
                .setNegativeButton(
                        R.string.move,
                        (dialog, which) -> requestMigration(
                                currentBackupRoot,
                                destinationBackupRoot,
                                StorageSwitchTransition.ExistingDestinationDecision.MOVE))
                .show();
    }

    private void requestMigration(
            File source,
            File destination,
            StorageSwitchTransition.ExistingDestinationDecision action) {
        StorageMigrationPlan plan = new StorageMigrationPlan(source, destination, action);

        if (action == StorageSwitchTransition.ExistingDestinationDecision.DO_NOTHING) {
            storageCoordinator.persistPreferredStorageDir(pendingSelection.rootPath);
            finish();
            return;
        }

        if (migrationExecutor == null || !migrationExecutor.execute(plan)) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.apply_and_restart)
                    .setMessage(R.string.p3_storage_switch_boundary)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return;
        }

        storageCoordinator.persistPreferredStorageDir(pendingSelection.rootPath);
        finish();
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private static final class StorageAdapter
            extends RecyclerView.Adapter<StorageAdapter.Holder> {
        interface SelectionChanged {
            void onChanged(StorageVolumeInfo volume);
        }

        private final List<StorageVolumeInfo> items;
        private StorageVolumeInfo selected;
        private SelectionChanged onSelectionChanged;

        StorageAdapter(List<StorageVolumeInfo> items, StorageVolumeInfo selected) {
            this.items = items;
            this.selected = selected;
        }

        @Override
        public Holder onCreateViewHolder(ViewGroup parent, int viewType) {
            TextView view = new TextView(parent.getContext());
            view.setPadding(48, 32, 48, 32);
            view.setTextSize(16);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            StorageVolumeInfo item = items.get(position);
            StringBuilder label = new StringBuilder();
            label.append(item.displayName)
                    .append(" (")
                    .append(item.rootPath)
                    .append(")");

            if (item.filesystemType != null && !item.filesystemType.isEmpty()) {
                label.append(" — ").append(item.filesystemType.toUpperCase());
            }
            if (item.requiresRoot) {
                label.append(" — root access needed");
            }
            if (!item.isValid()) {
                label.append(" — unavailable");
            }

            holder.text.setText(label);
            holder.text.setOnClickListener(v -> {
                selected = item;
                if (onSelectionChanged != null) onSelectionChanged.onChanged(item);
                notifyDataSetChanged();
            });
        }

        @Override
        public int getItemCount() {
            return items.size();
        }

        static final class Holder extends RecyclerView.ViewHolder {
            final TextView text;

            Holder(TextView itemView) {
                super(itemView);
                text = itemView;
            }
        }
    }
}
