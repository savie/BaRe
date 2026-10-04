package com.bare.folders.ui.batch;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.bare.folders.data.FolderItem;
import com.bare.folders.ui.FolderEditActivity;
import com.bare.folders.repository.LocalFolderSetupRepository;
import com.bare.folders.backup.FolderLocalBackupEngine;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class FoldersBatchActivity extends AppCompatActivity {
    public static final String EXTRA_FOLDER_BATCH_ACTION_ITEM = "EXTRA_FOLDER_BATCH_ACTION_ITEM";
    private static final int REQUEST_EDIT_FOLDER = 4988;
    private final List<FolderItem> folders = new ArrayList<>();
    private final Set<String> selectedIds = new LinkedHashSet<>();
    private FolderAdapter adapter;
    private ExtendedFloatingActionButton actionButton;
    private TextView emptyView;
    private String actionId = "Backup";
    private String actionTitle;

    @Override protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.folders_batch_activity);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.select_folder_setups);
        }
        if (state != null) {
            actionId = state.getString("action_id", "Backup");
            actionTitle = state.getString("action_title");
            ArrayList<String> ids = state.getStringArrayList("selected_ids");
            if (ids != null) selectedIds.addAll(ids);
        } else {
            Intent intent = getIntent();
            actionId = intent == null ? "Backup" : intent.getStringExtra("action_id");
            if (actionId == null || actionId.trim().isEmpty()) actionId = "Backup";
            actionTitle = intent == null ? null : intent.getStringExtra("action_title");
            if (intent != null) {
                String legacyAction = intent.getStringExtra(EXTRA_FOLDER_BATCH_ACTION_ITEM);
                if (legacyAction != null && !legacyAction.trim().isEmpty()) actionId = legacyAction;
            }
        }

        folders.addAll(new LocalFolderSetupRepository(this).list());
        adapter = new FolderAdapter();
        RecyclerView list = findViewById(R.id.rv_folders);
        list.setLayoutManager(new LinearLayoutManager(this));
        list.setAdapter(adapter);
        emptyView = findViewById(R.id.tv_empty);
        actionButton = findViewById(R.id.btn_actions);
        actionButton.setText(actionTitle == null ? actionLabel(actionId) : actionTitle);
        actionButton.setOnClickListener(v -> performAction());
        render();
    }

    private void render() {
        adapter.notifyDataSetChanged();
        emptyView.setVisibility(folders.isEmpty() ? View.VISIBLE : View.GONE);
        actionButton.setEnabled(!selectedIds.isEmpty());
        invalidateOptionsMenu();
    }

    private String actionLabel(String action) {
        if ("Restore".equals(action)) return getString(R.string.restore_folders);
        if ("Delete backups".equals(action)) return getString(R.string.delete_folder_backups);
        if ("Copy folder setups".equals(action)) return getString(R.string.copy_folder_setup_to_device);
        return getString(R.string.backup_folders);
    }

    private void performAction() {
        if (selectedIds.isEmpty()) {
            new MaterialAlertDialogBuilder(this).setTitle(R.string.select_folder_setups)
                    .setMessage(R.string.select_some_items).setPositiveButton(R.string.close, null).show();
            return;
        }
        if ("Backup".equals(actionId)) {
            actionButton.setEnabled(false);
            new Thread(() -> {
                int success = 0, noChange = 0;
                String error = null;
                FolderLocalBackupEngine engine = new FolderLocalBackupEngine(this);
                for (FolderItem item : folders) {
                    if (!selectedIds.contains(item.getId())) continue;
                    try {
                        FolderLocalBackupEngine.Result result = engine.backup(item);
                        if (result.kind == FolderLocalBackupEngine.Result.Kind.SUCCESS) success++;
                        else noChange++;
                    } catch (Exception e) {
                        error = e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage();
                    }
                }
                final int ok = success, unchanged = noChange;
                final String failure = error;
                runOnUiThread(() -> {
                    actionButton.setEnabled(true);
                    String message = getString(R.string.folder_backup_result, ok, unchanged);
                    if (failure != null) message += "\n" + getString(R.string.folder_backup_failed, failure);
                    new MaterialAlertDialogBuilder(this).setTitle(R.string.backup_folders)
                            .setMessage(message).setPositiveButton(R.string.close, null).show();
                });
            }, "folder-backup").start();
            return;
        }
        if ("Delete backups".equals(actionId)) {
            new MaterialAlertDialogBuilder(this).setTitle(R.string.delete_folder_backups)
                    .setMessage(R.string.p3_folder_delete_boundary)
                    .setNegativeButton(R.string.cancel, null)
                    .setPositiveButton(R.string.delete, (d, w) -> deleteSelectedBackups()).show();
            return;
        }
        int message = "Restore".equals(actionId) ? R.string.p3_folder_restore_boundary
                : R.string.p3_folder_copy_boundary;
        new MaterialAlertDialogBuilder(this).setTitle(actionLabel(actionId))
                .setMessage(message).setPositiveButton(R.string.close, null).show();
    }

    private void deleteSelectedBackups() {
        new Thread(() -> {
            int deleted = 0;
            FolderLocalBackupEngine engine = new FolderLocalBackupEngine(this);
            for (FolderItem item : folders) {
                if (!selectedIds.contains(item.getId())) continue;
                for (FolderLocalBackupEngine.BackupInfo info : engine.listBackups(item)) {
                    if (info.manifestFile.delete()) deleted++;
                    if (info.archiveFile.delete()) deleted++;
                }
            }
            final int count = deleted;
            runOnUiThread(() -> new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.delete_folder_backups)
                    .setMessage(getString(R.string.folder_deleted_artifacts, count))
                    .setPositiveButton(R.string.close, null).show());
        }, "folder-delete-backups").start();
    }

    private void editFolder(FolderItem item) {
        Intent intent = new Intent(this, FolderEditActivity.class);
        intent.putExtra("extra_folder_item", item);
        startActivityForResult(intent, REQUEST_EDIT_FOLDER);
    }

    @Override public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_folders_batch_activity, menu);
        MenuItem selectAll = menu.findItem(R.id.action_select_all);
        selectAll.setVisible(!folders.isEmpty());
        selectAll.setChecked(!folders.isEmpty() && selectedIds.size() == folders.size());
        return true;
    }

    @Override public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_select_all) {
            if (folders.isEmpty()) return true;
            if (selectedIds.size() == folders.size()) selectedIds.clear();
            else for (FolderItem folder : folders) selectedIds.add(folder.getId());
            render();
            return true;
        }
        if (id == R.id.action_folder_settings) {
            Intent intent = new Intent(this, com.bare.settings.SettingsDetailActivity.class);
            intent.putExtra("category", 8);
            intent.putExtra("category_title", getString(R.string.folder_backup_settings));
            startActivity(intent);
            return true;
        }
        if (id == R.id.action_settings) {
            startActivity(new Intent(this, com.bare.settings.SettingsActivity.class));
            return true;
        }
        if (id == android.R.id.home) {
            setResult(Activity.RESULT_CANCELED); finish(); return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == REQUEST_EDIT_FOLDER && resultCode == RESULT_OK && data != null) {
            FolderItem item = data.getParcelableExtra("extra_folder_item");
            if (item != null && item.isValid()) {
                boolean replaced = false;
                for (int i = 0; i < folders.size(); i++) {
                    if (folders.get(i).getId().equals(item.getId())) {
                        folders.set(i, item); replaced = true; break;
                    }
                }
                if (!replaced) folders.add(item);
                new LocalFolderSetupRepository(this).save(item);
                render();
            }
            return;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override protected void onSaveInstanceState(Bundle outState) {
        outState.putString("action_id", actionId);
        outState.putString("action_title", actionTitle);
        outState.putStringArrayList("selected_ids", new ArrayList<>(selectedIds));
        super.onSaveInstanceState(outState);
    }

    @Override public boolean onSupportNavigateUp() {
        setResult(Activity.RESULT_CANCELED); finish(); return true;
    }

    private final class FolderAdapter extends RecyclerView.Adapter<FolderHolder> {
        @Override public FolderHolder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            return new FolderHolder(getLayoutInflater().inflate(R.layout.folders_batch_item, parent, false));
        }
        @Override public void onBindViewHolder(FolderHolder holder, int position) {
            FolderItem item = folders.get(position);
            holder.title.setText(item.getDisplayName());
            holder.path.setText(item.getSourceFolder());
            holder.check.setText(selectedIds.contains(item.getId()) ? R.string.selected : R.string.select);
            holder.itemView.setOnClickListener(v -> {
                if (selectedIds.contains(item.getId())) selectedIds.remove(item.getId());
                else selectedIds.add(item.getId());
                render();
            });
            holder.edit.setOnClickListener(v -> editFolder(item));
        }
        @Override public int getItemCount() { return folders.size(); }
    }

    private static final class FolderHolder extends RecyclerView.ViewHolder {
        final TextView title, path, check; final View edit;
        FolderHolder(View itemView) {
            super(itemView);
            title = itemView.findViewById(R.id.tv_title);
            path = itemView.findViewById(R.id.tv_subtitle);
            check = itemView.findViewById(R.id.tv_selected);
            edit = itemView.findViewById(R.id.btn_edit);
        }
    }
}