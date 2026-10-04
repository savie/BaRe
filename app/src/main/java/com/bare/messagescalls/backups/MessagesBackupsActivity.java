package com.bare.messagescalls.backups;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * P3 reconstruction of the Reference MessagesBackupsActivity surface.
 *
 * The Reference Activity owns the toolbar, progress/list presentation and
 * "Delete all" action dispatch. Backup storage/deletion remains a data-layer
 * contract and is not invented here.
 */
public final class MessagesBackupsActivity extends AppCompatActivity {
    private MessagesBackupRepository repository;
    private BackupAdapter adapter;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.smscalls_backups_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        toolbar.setTitle(R.string.messages_backups);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        repository = new MessagesBackupRepository(this);
        RecyclerView list = findViewById(R.id.recycler_view);
        list.setLayoutManager(new LinearLayoutManager(this));
        adapter = new BackupAdapter(repository.listLocal());
        list.setAdapter(adapter);    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_smscalls_backups, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_delete) {
            // Reference delegates the actual deletion to the messages backup
            // ViewModel. That engine is outside this Activity reconstruction.
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.delete_all)
                    .setMessage(R.string.sure_to_proceed)
                    .setNegativeButton(R.string.cancel, null)
                    .setPositiveButton(R.string.yes, (dialog, which) -> {
                        if (repository.deleteAllLocal()) {
                            adapter.submit(repository.listLocal());
                        }
                    }).show();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private static final class BackupAdapter extends RecyclerView.Adapter<BackupAdapter.Holder> {
        private final List<MessageBackupItem> items = new ArrayList<>();
        BackupAdapter(List<MessageBackupItem> value) { submit(value); }
        void submit(List<MessageBackupItem> value) {
            items.clear();
            if (value != null) items.addAll(value);
            notifyDataSetChanged();
        }
        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            android.widget.LinearLayout row = new android.widget.LinearLayout(parent.getContext());
            row.setOrientation(android.widget.LinearLayout.VERTICAL);
            int p = (int)(16 * parent.getResources().getDisplayMetrics().density);
            row.setPadding(p,p,p,p);
            android.widget.TextView title = new android.widget.TextView(parent.getContext());
            android.widget.TextView summary = new android.widget.TextView(parent.getContext());
            row.addView(title); row.addView(summary);
            return new Holder(row,title,summary);
        }
        @Override public void onBindViewHolder(Holder holder,int position) {
            MessageBackupItem item=items.get(position);
            holder.title.setText(holder.itemView.getContext().getString(R.string.x_messages, String.valueOf(item.getTotalSms())));
            holder.summary.setText(DateFormat.getDateTimeInstance().format(new Date(item.getBackupTime())));
        }
        @Override public int getItemCount(){return items.size();}
        static final class Holder extends RecyclerView.ViewHolder {
            final android.widget.TextView title,summary;
            Holder(android.view.View v,android.widget.TextView title,android.widget.TextView summary){super(v);this.title=title;this.summary=summary;}
        }
    }
    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}