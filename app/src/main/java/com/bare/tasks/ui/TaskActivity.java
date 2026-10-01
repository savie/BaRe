package com.bare.tasks.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.slog.SLogActivity;
import com.bare.tasks.PreconditionsActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class TaskActivity extends AppCompatActivity {
    private boolean showingSlog;
    private MaterialButtonState actionState = MaterialButtonState.CANCEL;

    private enum MaterialButtonState { CANCEL, DONE }

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.task_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        String title = getIntent().getStringExtra("task_chain_title");
        if (title == null || title.isEmpty()) title = getString(R.string.task_execution);
        ((TextView) findViewById(R.id.tv_task_chain_title)).setText(title);

        String email = getIntent().getStringExtra("user_email");
        if (email != null && !email.isEmpty()) {
            TextView emailView = findViewById(R.id.tv_user_email);
            emailView.setText(email);
            emailView.setVisibility(View.VISIBLE);
        }

        RecyclerView tasks = findViewById(R.id.rv_tasks);
        tasks.setAdapter(new EmptyTaskAdapter());

        RecyclerView slog = findViewById(R.id.rv_slog);
        slog.setAdapter(new EmptyTaskAdapter());

        findViewById(R.id.btn_action).setOnClickListener(v -> {
            if (actionState == MaterialButtonState.DONE) {
                finish();
            } else {
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.cancel)
                        .setMessage(R.string.p3_task_boundary)
                        .setPositiveButton(R.string.close, null)
                        .show();
            }
        });

        if (state != null) {
            showingSlog = state.getBoolean("showing_slog", false);
        }
        renderSlog();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_task_activity, menu);
        MenuItem slog = menu.findItem(R.id.action_barelogger);
        slog.setChecked(showingSlog);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_force_stop) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.force_stop)
                    .setMessage(R.string.p3_task_force_stop_boundary)
                    .setNegativeButton(R.string.close, null)
                    .show();
            return true;
        }
        if (item.getItemId() == R.id.action_barelogger) {
            showingSlog = !showingSlog;
            item.setChecked(showingSlog);
            renderSlog();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private void renderSlog() {
        findViewById(R.id.rv_tasks).setVisibility(showingSlog ? View.GONE : View.VISIBLE);
        findViewById(R.id.rv_slog).setVisibility(showingSlog ? View.VISIBLE : View.GONE);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean("showing_slog", showingSlog);
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    private static final class EmptyTaskAdapter extends RecyclerView.Adapter<EmptyTaskAdapter.Holder> {
        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent, int type) {
            android.view.View v = new android.view.View(parent.getContext());
            v.setLayoutParams(new RecyclerView.LayoutParams(1, 1));
            return new Holder(v);
        }
        @Override public void onBindViewHolder(Holder holder, int position) {}
        @Override public int getItemCount() { return 0; }
        static final class Holder extends RecyclerView.ViewHolder {
            Holder(android.view.View item) { super(item); }
        }
    }
}
