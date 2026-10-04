package com.bare.messagescalls.backuprestore;

import android.Manifest;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import com.bare.R;
import com.bare.messagescalls.backups.CallsBackupRepository;
import com.bare.messagescalls.model.CallLogItem;
import com.bare.messagescalls.restore.CallLogProviderRepository;
import com.bare.messagescalls.restore.CallsRestoreRepository;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class CallsBackupRestoreActivity extends AppCompatActivity {
    public static final String EXTRA_BACKUP_FILE_PATH = "EXTRA_BACKUP_FILE_PATH";
    private static final int PERMISSION_REQUEST = 7851;

    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private CallsAdapter adapter;
    private ExtendedFloatingActionButton actionButton;
    private SwipeRefreshLayout refreshLayout;
    private TextView stateView;
    private MenuItem selectAllItem;
    private boolean restoreMode;
    private String backupFilePath;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.smscalls_backup_restore_activity);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        refreshLayout = findViewById(R.id.swipe_layout);
        RecyclerView recyclerView = findViewById(R.id.recycler_view);
        actionButton = findViewById(R.id.btn_action);
        stateView = findViewById(R.id.tv_state);

        if (state != null) {
            restoreMode = state.getBoolean("restore_mode", false);
            backupFilePath = state.getString("backup_file_path");
        } else {
            backupFilePath = getIntent().getStringExtra(EXTRA_BACKUP_FILE_PATH);
            restoreMode = !TextUtils.isEmpty(backupFilePath) && new File(backupFilePath).isFile();
        }

        adapter = new CallsAdapter();
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(adapter);
        refreshLayout.setEnabled(false);

        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle(
                    restoreMode ? R.string.restore_call_logs : R.string.call_logs_backup);
        }
        actionButton.setText(restoreMode ? R.string.restore : R.string.backup_options);
        actionButton.setIconResource(
                restoreMode ? R.drawable.ic_restore : R.drawable.ic_edit_pencil);
        actionButton.setOnClickListener(v -> onPrimaryAction());

        requestCallPermissions();
        loadItems();
    }

    private void loadItems() {
        stateView.setText(R.string.loading);
        stateView.setVisibility(View.VISIBLE);
        actionButton.setEnabled(false);
        executor.execute(() -> {
            try {
                List<CallLogItem> items = restoreMode
                        ? new CallsRestoreRepository(this).readBackup(new File(backupFilePath))
                        : new CallLogProviderRepository(this).readCurrent();
                runOnUiThread(() -> {
                    adapter.submit(items);
                    adapter.selectAll(true);
                    boolean empty = items.isEmpty();
                    stateView.setVisibility(empty ? View.VISIBLE : View.GONE);
                    if (empty) stateView.setText(R.string.no_call_logs_available);
                    actionButton.setEnabled(!empty);
                    setSelectAllChecked(adapter.allSelected());
                });
            } catch (Exception e) {
                runOnUiThread(() -> {
                    adapter.submit(null);
                    stateView.setText(R.string.call_logs_operation_failed);
                    stateView.setVisibility(View.VISIBLE);
                    actionButton.setEnabled(false);
                    Toast.makeText(this,
                            e.getMessage() == null ? getString(R.string.call_logs_operation_failed) : e.getMessage(),
                            Toast.LENGTH_LONG).show();
                });
            }
        });
    }

    private void onPrimaryAction() {
        List<CallLogItem> selected = adapter.selectedItems();
        if (selected.isEmpty()) {
            Toast.makeText(this, R.string.select_some_call_logs, Toast.LENGTH_SHORT).show();
            return;
        }
        actionButton.setEnabled(false);
        stateView.setText(restoreMode ? R.string.restoring : R.string.backing_up);
        stateView.setVisibility(View.VISIBLE);
        executor.execute(() -> {
            try {
                if (restoreMode) {
                    CallsRestoreRepository.Result result =
                            new CallsRestoreRepository(this).restore(selected);
                    runOnUiThread(() -> {
                        Toast.makeText(this, getString(R.string.call_logs_restore_result,
                                result.getRestored(), result.getSkipped()), Toast.LENGTH_LONG).show();
                        setResult(Activity.RESULT_OK);
                        finish();
                    });
                } else {
                    new CallsBackupRepository(this).createLocalBackup(selected);
                    runOnUiThread(() -> {
                        Toast.makeText(this, R.string.call_logs_backup_created, Toast.LENGTH_LONG).show();
                        setResult(Activity.RESULT_OK);
                        finish();
                    });
                }
            } catch (Exception e) {
                runOnUiThread(() -> {
                    actionButton.setEnabled(true);
                    stateView.setText(R.string.call_logs_operation_failed);
                    Toast.makeText(this,
                            e.getMessage() == null ? getString(R.string.call_logs_operation_failed) : e.getMessage(),
                            Toast.LENGTH_LONG).show();
                });
            }
        });
    }

    private void requestCallPermissions() {
        if (checkSelfPermission(Manifest.permission.READ_CALL_LOG) == PackageManager.PERMISSION_GRANTED
                && checkSelfPermission(Manifest.permission.WRITE_CALL_LOG) == PackageManager.PERMISSION_GRANTED) {
            return;
        }
        requestPermissions(new String[]{
                Manifest.permission.READ_CALL_LOG,
                Manifest.permission.WRITE_CALL_LOG
        }, PERMISSION_REQUEST);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == PERMISSION_REQUEST) loadItems();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_select_all, menu);
        selectAllItem = menu.findItem(R.id.action_select_all);
        setSelectAllChecked(adapter != null && adapter.allSelected());
        return true;
    }

    private void setSelectAllChecked(boolean checked) {
        if (selectAllItem == null) return;
        selectAllItem.setChecked(checked);
        selectAllItem.setIconResource(
                checked ? R.drawable.checkbox_marked : R.drawable.checkbox_blank_outline);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_select_all) {
            boolean checked = !item.isChecked();
            adapter.selectAll(checked);
            setSelectAllChecked(adapter.allSelected());
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean("restore_mode", restoreMode);
        outState.putString("backup_file_path", backupFilePath);
        outState.putBooleanArray("selected_calls",
                adapter == null ? null : adapter.selectionState());
        super.onSaveInstanceState(outState);
    }

    @Override
    protected void onDestroy() {
        executor.shutdownNow();
        super.onDestroy();
    }

    @Override
    public boolean onSupportNavigateUp() {
        setResult(Activity.RESULT_CANCELED);
        finish();
        return true;
    }

    private static final class CallsAdapter extends RecyclerView.Adapter<CallsAdapter.Holder> {
        private final List<CallLogItem> items = new ArrayList<>();
        private final Set<Integer> selected = new LinkedHashSet<>();

        void submit(List<CallLogItem> value) {
            items.clear();
            selected.clear();
            if (value != null) items.addAll(value);
            notifyDataSetChanged();
        }

        void selectAll(boolean checked) {
            selected.clear();
            if (checked) for (int i = 0; i < items.size(); i++) selected.add(i);
            notifyDataSetChanged();
        }

        boolean allSelected() {
            return !items.isEmpty() && selected.size() == items.size();
        }

        List<CallLogItem> selectedItems() {
            ArrayList<CallLogItem> result = new ArrayList<>();
            for (Integer index : selected) {
                if (index >= 0 && index < items.size()) result.add(items.get(index));
            }
            return result;
        }

        boolean[] selectionState() {
            boolean[] result = new boolean[items.size()];
            for (Integer index : selected) {
                if (index >= 0 && index < result.length) result[index] = true;
            }
            return result;
        }

        @Override
        public Holder onCreateViewHolder(ViewGroup parent, int viewType) {
            LinearLayout row = new LinearLayout(parent.getContext());
            row.setOrientation(LinearLayout.HORIZONTAL);
            int p = (int) (16 * parent.getResources().getDisplayMetrics().density);
            row.setPadding(p, p / 2, p, p / 2);
            CheckBox check = new CheckBox(parent.getContext());
            TextView text = new TextView(parent.getContext());
            text.setLayoutParams(new LinearLayout.LayoutParams(
                    0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            row.addView(check);
            row.addView(text);
            return new Holder(row, check, text);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            CallLogItem item = items.get(position);
            String number = item.number == null
                    ? holder.itemView.getContext().getString(R.string.unknown_number)
                    : item.number;
            holder.text.setText(holder.itemView.getContext().getString(
                    R.string.call_log_row, number, item.date));
            holder.check.setChecked(selected.contains(position));
            holder.check.setOnClickListener(v -> toggle(position));
            holder.itemView.setOnClickListener(v -> toggle(position));
        }

        private void toggle(int position) {
            if (!selected.add(position)) selected.remove(position);
            notifyItemChanged(position);
        }

        @Override public int getItemCount() { return items.size(); }

        static final class Holder extends RecyclerView.ViewHolder {
            final CheckBox check;
            final TextView text;
            Holder(View view, CheckBox check, TextView text) {
                super(view); this.check = check; this.text = text;
            }
        }
    }
}
