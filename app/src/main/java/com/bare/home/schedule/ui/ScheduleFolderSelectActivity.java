package com.bare.home.schedule.ui;

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
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

import java.util.ArrayList;
import java.util.List;

/**
 * P3 reconstruction of the Reference schedule folder selector.
 *
 * The Reference inventory is produced by the folder data/ViewModel layer. BaRe
 * preserves the observable selection/result contract without fabricating that
 * inventory or schedule persistence.
 */
public final class ScheduleFolderSelectActivity extends AppCompatActivity {
    public static final String EXTRA_BACKUP_ALL_FOLDERS = "EXTRA_BACKUP_ALL_FOLDERS";
    public static final String EXTRA_SELECTED_FOLDER_ITEMS = "EXTRA_SELECTED_FOLDER_ITEMS";
    public static final String EXTRA_RESULT = "EXTRA_RESULT";

    private static final String STATE_BACKUP_ALL = "schedule_backup_all_folders";
    private static final String STATE_SELECTED = "schedule_selected_folder_ids";

    private final ArrayList<String> folderIds = new ArrayList<>();
    private final ArrayList<String> selectedIds = new ArrayList<>();
    private boolean backupAllFolders = true;
    private FolderAdapter adapter;
    private MenuItem selectAllItem;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.schedule_folder_select_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.select_folder_setups);
        }

        if (state != null) {
            backupAllFolders = state.getBoolean(STATE_BACKUP_ALL, true);
            copy(state.getStringArrayList(STATE_SELECTED), selectedIds);
        } else {
            Intent intent = getIntent();
            if (intent != null) {
                backupAllFolders = intent.getBooleanExtra(EXTRA_BACKUP_ALL_FOLDERS, true);
                copy(intent.getStringArrayListExtra(EXTRA_SELECTED_FOLDER_ITEMS), selectedIds);
            }
        }

        // Reference folder inventory is a downstream FolderItem/ViewModel contract.
        // Do not invent rows when that contract is unavailable in BaRe.
        adapter = new FolderAdapter(folderIds, selectedIds, this::toggle);
        RecyclerView list = findViewById(R.id.rv_folders);
        list.setLayoutManager(new LinearLayoutManager(this));
        list.setAdapter(adapter);

        updateEmptyState();

        ExtendedFloatingActionButton save = findViewById(R.id.btn_save);
        save.setText(R.string.save);
        save.setIconResource(R.drawable.ic_check);
        save.setOnClickListener(v -> returnSelection());

        findViewById(R.id.btn_create_folder_setup).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.local_folder_setups)
                        .setMessage(R.string.p3_schedule_folder_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());
    }

    private void updateEmptyState() {
        findViewById(R.id.progress_bar).setVisibility(View.GONE);
        findViewById(R.id.empty_state).setVisibility(folderIds.isEmpty() ? View.VISIBLE : View.GONE);
        findViewById(R.id.rv_folders).setVisibility(folderIds.isEmpty() ? View.GONE : View.VISIBLE);
        if (selectAllItem != null) {
            boolean all = !folderIds.isEmpty() && selectedIds.containsAll(folderIds)
                    && selectedIds.size() == folderIds.size();
            selectAllItem.setChecked(all);
            selectAllItem.setIcon(all ? R.drawable.checkbox_marked : R.drawable.checkbox_blank_outline);
        }
        TextView emptyTitle = findViewById(R.id.tv_empty_title);
        if (emptyTitle != null) emptyTitle.setText(R.string.folder_setups);
    }

    private void toggle(String id) {
        if (selectedIds.contains(id)) selectedIds.remove(id);
        else selectedIds.add(id);
        adapter.notifyDataSetChanged();
        updateEmptyState();
    }

    private void selectAll(boolean checked) {
        selectedIds.clear();
        if (checked) selectedIds.addAll(folderIds);
        adapter.notifyDataSetChanged();
        updateEmptyState();
    }

    private void returnSelection() {
        Intent result = new Intent();
        // The Reference EXTRA_RESULT contains ScheduleFolderSelectResult. The
        // concrete FolderItem Parcelable is not reconstructed here, so IDs are
        // exposed as a P3 companion rather than a fabricated FolderItem payload.
        result.putStringArrayListExtra(EXTRA_RESULT, new ArrayList<>(selectedIds));
        result.putStringArrayListExtra(EXTRA_SELECTED_FOLDER_ITEMS, new ArrayList<>(selectedIds));
        result.putExtra(EXTRA_BACKUP_ALL_FOLDERS, backupAllFolders);
        setResult(Activity.RESULT_OK, result);
        finish();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_schedule_folder_select, menu);
        selectAllItem = menu.findItem(R.id.action_select_all);
        updateEmptyState();
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            setResult(Activity.RESULT_CANCELED);
            finish();
            return true;
        }
        if (item.getItemId() == R.id.action_select_all) {
            boolean checked = !item.isChecked();
            item.setChecked(checked);
            selectAll(checked);
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onBackPressed() {
        setResult(Activity.RESULT_CANCELED);
        finish();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean(STATE_BACKUP_ALL, backupAllFolders);
        outState.putStringArrayList(STATE_SELECTED, new ArrayList<>(selectedIds));
        super.onSaveInstanceState(outState);
    }

    private static void copy(List<String> source, List<String> target) {
        if (source == null) return;
        target.clear();
        for (String value : source) {
            if (value != null && !value.trim().isEmpty() && !target.contains(value)) {
                target.add(value);
            }
        }
    }

    private interface FolderClick { void onClick(String id); }

    private static final class FolderAdapter extends RecyclerView.Adapter<FolderAdapter.Holder> {
        private final ArrayList<String> values;
        private final ArrayList<String> selected;
        private final FolderClick click;

        FolderAdapter(ArrayList<String> values, ArrayList<String> selected, FolderClick click) {
            this.values = values;
            this.selected = selected;
            this.click = click;
        }

        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent, int type) {
            TextView view = new TextView(parent.getContext());
            int p = (int) (16 * parent.getResources().getDisplayMetrics().density);
            view.setPadding(p, p, p, p);
            view.setTextSize(16);
            return new Holder(view);
        }

        @Override public void onBindViewHolder(Holder holder, int position) {
            String id = values.get(position);
            holder.text.setText((selected.contains(id) ? "✓ " : "") + id);
            holder.text.setOnClickListener(v -> click.onClick(id));
        }

        @Override public int getItemCount() { return values.size(); }

        static final class Holder extends RecyclerView.ViewHolder {
            final TextView text;
            Holder(View item) { super(item); text = (TextView) item; }
        }
    }
}
