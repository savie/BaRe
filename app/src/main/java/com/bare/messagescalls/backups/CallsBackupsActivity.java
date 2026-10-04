package com.bare.messagescalls.backups;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.messagescalls.backuprestore.CallsBackupRestoreActivity;
import com.bare.messagescalls.model.CallLogBackupItem;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class CallsBackupsActivity extends AppCompatActivity {
    private CallsBackupRepository repository;
    private BackupAdapter adapter;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.smscalls_backups_activity);
        Toolbar toolbar = findViewById(R.id.toolbar);
        toolbar.setTitle(R.string.device_backups);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        repository = new CallsBackupRepository(this);
        RecyclerView list = findViewById(R.id.recycler_view);
        list.setLayoutManager(new LinearLayoutManager(this));
        adapter = new BackupAdapter(repository.listLocal(), item -> {
            Intent intent = new Intent(this, CallsBackupRestoreActivity.class);
            intent.putExtra(CallsBackupRestoreActivity.EXTRA_BACKUP_FILE_PATH,
                    item.getLocalFile().getAbsolutePath());
            startActivity(intent);
        });
        list.setAdapter(adapter);
    }

    @Override protected void onResume() {
        super.onResume();
        if (repository != null && adapter != null) adapter.submit(repository.listLocal());
    }

    @Override public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_smscalls_backups, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_delete) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.delete_all)
                    .setMessage(R.string.sure_to_proceed)
                    .setNegativeButton(R.string.cancel, null)
                    .setPositiveButton(R.string.yes, (dialog, which) -> {
                        if (repository.deleteAllLocal()) adapter.submit(repository.listLocal());
                    }).show();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override public boolean onSupportNavigateUp() { finish(); return true; }

    private static final class BackupAdapter extends RecyclerView.Adapter<BackupAdapter.Holder> {
        private final List<CallLogBackupItem> items = new ArrayList<>();
        private final OnClick listener;

        BackupAdapter(List<CallLogBackupItem> value, OnClick listener) {
            this.listener = listener; submit(value);
        }
        void submit(List<CallLogBackupItem> value) {
            items.clear(); if (value != null) items.addAll(value); notifyDataSetChanged();
        }
        @Override public Holder onCreateViewHolder(ViewGroup parent, int viewType) {
            LinearLayout row = new LinearLayout(parent.getContext());
            row.setOrientation(LinearLayout.VERTICAL);
            int p = (int)(16 * parent.getResources().getDisplayMetrics().density);
            row.setPadding(p,p,p,p);
            TextView title = new TextView(parent.getContext());
            TextView summary = new TextView(parent.getContext());
            row.addView(title); row.addView(summary);
            return new Holder(row,title,summary);
        }
        @Override public void onBindViewHolder(Holder h,int position) {
            CallLogBackupItem item=items.get(position);
            h.title.setText(h.itemView.getContext().getString(
                    R.string.x_calls, String.valueOf(item.getTotalCalls())));
            h.summary.setText(DateFormat.getDateTimeInstance().format(new Date(item.getBackupTime())));
            h.itemView.setOnClickListener(v -> listener.onClick(item));
        }
        @Override public int getItemCount(){return items.size();}
        static final class Holder extends RecyclerView.ViewHolder {
            final TextView title,summary;
            Holder(android.view.View v,TextView title,TextView summary){
                super(v);this.title=title;this.summary=summary;
            }
        }
        interface OnClick { void onClick(CallLogBackupItem item); }
    }
}
