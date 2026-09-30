package com.bare.messagescalls.backuprestore;

import android.Manifest;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import com.bare.R;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class CallsBackupRestoreActivity extends AppCompatActivity {
    public static final String EXTRA_BACKUP_FILE_PATH = "EXTRA_BACKUP_FILE_PATH";
    private static final int PERMISSION_REQUEST = 7851;

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
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

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
        actionButton.setText(restoreMode ? R.string.restore : R.string.backup_options);
        actionButton.setIconResource(restoreMode ? R.drawable.ic_restore : R.drawable.ic_edit_pencil);
        stateView.setText(R.string.loading);
        stateView.setVisibility(View.VISIBLE);

        actionButton.setOnClickListener(v -> onPrimaryAction());
        requestCallPermissions();
        updateState();
    }

    private void updateState() {
        boolean hasItems = !adapter.items.isEmpty();
        stateView.setText(hasItems ? "" : R.string.no_call_logs_available);
        stateView.setVisibility(hasItems ? View.GONE : View.VISIBLE);
        actionButton.setEnabled(true);
        if (selectAllItem != null) {
            setSelectAllChecked(adapter.allSelected());
        }
    }

    private void onPrimaryAction() {
        if (adapter.items.isEmpty()) {
            Toast.makeText(this, R.string.select_some_call_logs, Toast.LENGTH_SHORT).show();
            return;
        }
        showP3Boundary(restoreMode ? R.string.restore_call_logs : R.string.backup_options);
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

    private void showP3Boundary(int title) {
        new com.google.android.material.dialog.MaterialAlertDialogBuilder(this)
                .setTitle(title)
                .setMessage(R.string.p3_calls_backup_restore_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void setSelectAllChecked(boolean checked) {
        if (selectAllItem == null) return;
        selectAllItem.setChecked(checked);
        selectAllItem.setIconResource(checked ? R.drawable.checkbox_marked : R.drawable.checkbox_blank_outline);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_select_all, menu);
        selectAllItem = menu.findItem(R.id.action_select_all);
        setSelectAllChecked(false);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_select_all) {
            if (adapter.items.isEmpty()) {
                Toast.makeText(this, R.string.select_some_call_logs, Toast.LENGTH_SHORT).show();
            } else {
                adapter.selectAll(!item.isChecked());
                setSelectAllChecked(adapter.allSelected());
            }
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean("restore_mode", restoreMode);
        outState.putString("backup_file_path", backupFilePath);
        outState.putBooleanArray("selected_calls", adapter == null ? null : adapter.selectionState());
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onSupportNavigateUp() {
        setResult(Activity.RESULT_CANCELED);
        finish();
        return true;
    }

    private static final class CallsAdapter extends RecyclerView.Adapter<CallsAdapter.Holder> {
        private final List<String> items = new ArrayList<>();
        private final Set<Integer> selected = new LinkedHashSet<>();

        @Override
        public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            View view = new View(parent.getContext());
            view.setLayoutParams(new RecyclerView.LayoutParams(1, 1));
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) { }

        @Override
        public int getItemCount() {
            return items.size();
        }

        void selectAll(boolean checked) {
            selected.clear();
            if (checked) {
                for (int i = 0; i < items.size(); i++) selected.add(i);
            }
            notifyDataSetChanged();
        }

        boolean allSelected() {
            return !items.isEmpty() && selected.size() == items.size();
        }

        boolean[] selectionState() {
            boolean[] result = new boolean[items.size()];
            for (Integer index : selected) {
                if (index >= 0 && index < result.length) result[index] = true;
            }
            return result;
        }

        static final class Holder extends RecyclerView.ViewHolder {
            Holder(View itemView) { super(itemView); }
        }
    }
}
