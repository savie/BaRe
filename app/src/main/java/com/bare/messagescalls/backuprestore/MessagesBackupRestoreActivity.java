package com.bare.messagescalls.backuprestore;

import android.app.Activity;
import android.app.role.RoleManager;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.provider.Telephony;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class MessagesBackupRestoreActivity extends AppCompatActivity {
    public static final String EXTRA_BACKUP_FILE_PATH = "EXTRA_BACKUP_FILE_PATH";
    private static final int SMS_ROLE_REQUEST = 12458;
    private static final int SMS_ROLE_LEGACY_REQUEST = 54789;

    private MessagesAdapter adapter;
    private ExtendedFloatingActionButton actionButton;
    private TextView stateView;
    private boolean restoreMode;
    private String backupFilePath;
    private MenuItem selectAllItem;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.smscalls_backup_restore_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        SwipeRefreshLayout refresh = findViewById(R.id.swipe_layout);
        RecyclerView recyclerView = findViewById(R.id.recycler_view);
        actionButton = findViewById(R.id.btn_action);
        stateView = findViewById(R.id.tv_state);

        if (state != null) {
            restoreMode = state.getBoolean("restore_mode", false);
            backupFilePath = state.getString("backup_file_path");
        } else {
            backupFilePath = getIntent().getStringExtra(EXTRA_BACKUP_FILE_PATH);
            restoreMode = backupFilePath != null && !backupFilePath.trim().isEmpty()
                    && new File(backupFilePath).isFile();
        }

        adapter = new MessagesAdapter();
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setHasFixedSize(true);
        recyclerView.setAdapter(adapter);

        refresh.setEnabled(false);
        stateView.setText(R.string.loading);
        stateView.setVisibility(View.VISIBLE);

        updateModeUi();
    }

    private void updateModeUi() {
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle(restoreMode
                    ? R.string.restore_messages
                    : R.string.backup_messages);
        }
        actionButton.setText(restoreMode ? R.string.restore : R.string.backup_options);
        actionButton.setIconResource(restoreMode
                ? R.drawable.ic_restore
                : R.drawable.ic_edit_pencil);
        stateView.setText(adapter.items.isEmpty()
                ? R.string.no_messages_available
                : "");
        stateView.setVisibility(adapter.items.isEmpty() ? View.VISIBLE : View.GONE);
    }

    private void onPrimaryAction() {
        if (adapter.items.isEmpty()) {
            Toast.makeText(this, R.string.select_some_messages, Toast.LENGTH_SHORT).show();
            return;
        }
        if (!restoreMode) {
            showBoundary(R.string.backup_options);
            return;
        }
        requestDefaultSmsApp();
    }

    private void requestDefaultSmsApp() {
        if (isDefaultSmsApp()) {
            showBoundary(R.string.restore_messages);
            return;
        }

        if (Build.VERSION.SDK_INT >= 29) {
            RoleManager roleManager = getSystemService(RoleManager.class);
            if (roleManager != null && roleManager.isRoleAvailable(RoleManager.ROLE_SMS)) {
                try {
                    startActivityForResult(
                            roleManager.createRequestRoleIntent(RoleManager.ROLE_SMS),
                            SMS_ROLE_REQUEST);
                    return;
                } catch (Exception ignored) {
                    // Fall through to the legacy contract.
                }
            }
        }

        try {
            Intent legacy = new Intent("android.provider.Telephony.ACTION_CHANGE_DEFAULT");
            legacy.putExtra("package", getPackageName());
            startActivityForResult(legacy, SMS_ROLE_REQUEST);
        } catch (Exception ignored) {
            showDefaultSmsRationale(false);
        }
    }

    private boolean isDefaultSmsApp() {
        String packageName = Telephony.Sms.getDefaultSmsPackage(getApplicationContext());
        return getPackageName().equals(packageName);
    }

    private void showDefaultSmsRationale(boolean allowChangeAction) {
        MaterialAlertDialogBuilder dialog = new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.note)
                .setMessage(R.string.default_sms_app_rationale)
                .setPositiveButton(R.string.got_it, null);
        if (allowChangeAction) {
            dialog.setNegativeButton(R.string.change_sms_app,
                    (d, which) -> requestDefaultSmsApp());
        }
        dialog.show();
    }

    private void showResetWarning() {
        MaterialAlertDialogBuilder dialog = new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.warning)
                .setMessage(R.string.reset_sms_app_warning_q)
                .setNegativeButton(R.string.close, null)
                .setPositiveButton(R.string.change_sms_app,
                        (d, which) -> requestDefaultSmsApp());
        dialog.show();
    }

    private void showBoundary(int title) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(title)
                .setMessage(R.string.p3_messages_backup_restore_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == SMS_ROLE_REQUEST || requestCode == SMS_ROLE_LEGACY_REQUEST) {
            if (isDefaultSmsApp() || resultCode == RESULT_OK) {
                showBoundary(R.string.restore_messages);
            } else {
                showDefaultSmsRationale(true);
            }
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_select_all, menu);
        selectAllItem = menu.findItem(R.id.action_select_all);
        setSelectAllChecked(false);
        actionButton.setOnClickListener(v -> onPrimaryAction());
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_select_all) {
            if (adapter.items.isEmpty()) {
                Toast.makeText(this, R.string.select_some_messages, Toast.LENGTH_SHORT).show();
            } else {
                adapter.selectAll(!item.isChecked());
                setSelectAllChecked(adapter.allSelected());
            }
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private void setSelectAllChecked(boolean checked) {
        if (selectAllItem == null) return;
        selectAllItem.setChecked(checked);
        selectAllItem.setIconResource(checked
                ? R.drawable.checkbox_marked
                : R.drawable.checkbox_blank_outline);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean("restore_mode", restoreMode);
        outState.putString("backup_file_path", backupFilePath);
        outState.putBooleanArray("selected_messages",
                adapter == null ? null : adapter.selectionState());
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onSupportNavigateUp() {
        setResult(Activity.RESULT_CANCELED);
        finish();
        return true;
    }

    private static final class MessagesAdapter
            extends RecyclerView.Adapter<MessagesAdapter.Holder> {
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
