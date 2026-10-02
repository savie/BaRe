package com.bare.slog;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.List;

public final class SLogActivity extends AppCompatActivity {
    private LogAdapter adapter;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.slog_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.barelogger);
            getSupportActionBar().setSubtitle(R.string.barelogger_info);
        }
        toolbar.setNavigationOnClickListener(v -> finish());

        RecyclerView logs = findViewById(R.id.rv_slog);
        adapter = new LogAdapter();
        logs.setAdapter(adapter);

        findViewById(R.id.btn_send_slogs).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.share_logs)
                        .setMessage(R.string.p3_slog_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());
    }

    /**
     * F35 presentation input. F84 owns log persistence/collection.
     */
    public void renderLogs(@Nullable List<String> entries) {
        adapter.setItems(entries);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_slog, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_clear_slog) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.clear_logs)
                    .setMessage(R.string.sure_to_proceed)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private static final class LogAdapter extends RecyclerView.Adapter<LogAdapter.Holder> {
        private final List<String> entries = new ArrayList<>();

        void setItems(@Nullable List<String> values) {
            entries.clear();
            if (values != null) {
                entries.addAll(values);
            }
            notifyDataSetChanged();
        }

        @Override
        public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            android.widget.TextView view = new android.widget.TextView(parent.getContext());
            view.setPadding(24, 16, 24, 16);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            ((android.widget.TextView) holder.itemView).setText(entries.get(position));
        }

        @Override
        public int getItemCount() {
            return entries.size();
        }

        static final class Holder extends RecyclerView.ViewHolder {
            Holder(View itemView) {
                super(itemView);
            }
        }
    }
}
