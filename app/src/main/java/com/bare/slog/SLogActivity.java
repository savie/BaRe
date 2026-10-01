package com.bare.slog;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

/**
 * P3 BΛR☰Logger surface. Log collection/storage is deliberately not
 * fabricated; the Reference share/clear controls are exposed as boundaries.
 */
public final class SLogActivity extends AppCompatActivity {
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
        logs.setAdapter(new EmptyLogAdapter());
        findViewById(R.id.btn_send_slogs).setOnClickListener(v ->
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.share_logs)
                        .setMessage(R.string.p3_slog_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show());
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

    private static final class EmptyLogAdapter extends RecyclerView.Adapter<EmptyLogAdapter.Holder> {
        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            android.view.View v = new android.view.View(parent.getContext());
            v.setLayoutParams(new RecyclerView.LayoutParams(1, 1));
            return new Holder(v);
        }
        @Override public void onBindViewHolder(Holder holder, int position) {}
        @Override public int getItemCount() { return 0; }
        static final class Holder extends RecyclerView.ViewHolder {
            Holder(android.view.View itemView) { super(itemView); }
        }
    }
}
