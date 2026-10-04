package com.bare.tasks.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.core.model.TaskSnapshot;
import com.bare.core.model.TaskState;
import com.bare.slog.SLogEntry;
import com.bare.slog.SLogRepository;
import com.bare.tasks.TaskStateRegistry;
import com.bare.tasks.TaskStateRepository;
import com.bare.tasks.TaskStateService;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class TaskActivity extends AppCompatActivity {
    private boolean showingSlog;
    private MaterialButtonState actionState = MaterialButtonState.CANCEL;
    private TaskStateService taskStateService;
    private TaskSnapshotAdapter taskAdapter;
    private SLogRepository slogRepository;
    private SLogAdapter slogAdapter;
    private SLogRepository.Observer slogObserver;

    private enum MaterialButtonState { CANCEL, DONE }

    private final TaskStateRepository.Observer taskObserver = this::renderTaskState;

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

        taskStateService = new TaskStateService(TaskStateRegistry.getInstance());
        taskAdapter = new TaskSnapshotAdapter();
        RecyclerView tasks = findViewById(R.id.rv_tasks);
        tasks.setAdapter(taskAdapter);

        slogAdapter = new SLogAdapter();
        RecyclerView slog = findViewById(R.id.rv_slog);
        slog.setAdapter(slogAdapter);
        slogRepository = new SLogRepository(this);
        slogObserver = entries -> runOnUiThread(() -> slogAdapter.submit(entries));
        slogRepository.observeAfter(0L, slogObserver);

        findViewById(R.id.btn_action).setOnClickListener(v -> {
            if (actionState == MaterialButtonState.DONE) {
                finish();
            } else {
                taskStateService.requestCancel();
            }
        });

        if (state != null) {
            showingSlog = state.getBoolean("showing_slog", false);
        }
        taskStateService.addObserver(taskObserver);
        renderTaskState();
        renderSlog();
    }

    @Override
    protected void onDestroy() {
        if (taskStateService != null) taskStateService.removeObserver(taskObserver);
        if (slogRepository != null && slogObserver != null) {
            slogRepository.removeObserver(slogObserver);
        }
        super.onDestroy();
    }

    private void renderTaskState() {
        if (taskStateService == null) return;
        taskAdapter.submit(taskStateService.getTasks());
        TaskState serviceState = taskStateService.getServiceState();
        boolean complete = serviceState == TaskState.COMPLETE
                || serviceState == TaskState.CANCEL_COMPLETE;
        actionState = complete ? MaterialButtonState.DONE : MaterialButtonState.CANCEL;
        ((android.widget.Button) findViewById(R.id.btn_action)).setText(
                complete ? R.string.done : R.string.cancel);
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
                    .setPositiveButton(R.string.yes, (dialog, which) -> taskStateService.requestForceStop())
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

    private static final class TaskSnapshotAdapter extends RecyclerView.Adapter<TaskSnapshotAdapter.Holder> {
        private final List<TaskSnapshot> items = new ArrayList<>();

        void submit(List<TaskSnapshot> snapshots) {
            items.clear();
            if (snapshots != null) items.addAll(snapshots);
            notifyDataSetChanged();
        }

        @Override public Holder onCreateViewHolder(ViewGroup parent, int type) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.task_card, parent, false);
            return new Holder(view);
        }

        @Override public void onBindViewHolder(Holder holder, int position) {
            TaskSnapshot snapshot = items.get(position);
            holder.header.setText(snapshot.getState().name());
            holder.title.setText(snapshot.getTaskType());
            holder.progressMessage.setText(snapshot.getProgressMessage());
            int total = Math.max(snapshot.getTotal(), 0);
            int progress = Math.max(0, snapshot.getProgress());
            if (total > 0) {
                holder.progressBar.setMax(total);
                holder.progressBar.setProgress(Math.min(progress, total));
                holder.percent.setText(String.valueOf((progress * 100) / total).concat("%"));
            } else {
                holder.progressBar.setMax(1);
                holder.progressBar.setProgress(0);
                holder.percent.setText("");
            }
        }

        @Override public int getItemCount() { return items.size(); }

        static final class Holder extends RecyclerView.ViewHolder {
            final TextView header;
            final TextView percent;
            final TextView title;
            final TextView progressMessage;
            final LinearProgressIndicator progressBar;

            Holder(View item) {
                super(item);
                item.setVisibility(View.VISIBLE);
                header = item.findViewById(R.id.tv_header);
                percent = item.findViewById(R.id.tv_percent);
                title = item.findViewById(R.id.tv_card_title);
                progressMessage = item.findViewById(R.id.tv_progress_message);
                progressBar = item.findViewById(R.id.progress_bar);
            }
        }
    }

    private static final class SLogAdapter extends RecyclerView.Adapter<SLogAdapter.Holder> {
        private final List<SLogEntry> items = new ArrayList<>();
        private final DateFormat timeFormat = DateFormat.getTimeInstance(DateFormat.MEDIUM);

        void submit(List<SLogEntry> entries) {
            items.clear();
            if (entries != null) items.addAll(entries);
            notifyDataSetChanged();
        }

        @Override public Holder onCreateViewHolder(ViewGroup parent, int type) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.slog_item, parent, false);
            return new Holder(view);
        }

        @Override public void onBindViewHolder(Holder holder, int position) {
            SLogEntry entry = items.get(position);
            holder.time.setText(timeFormat.format(new Date(entry.time)));
            holder.message.setText(entry.title.isEmpty()
                    ? entry.message
                    : entry.title + ": " + entry.message);
        }

        @Override public int getItemCount() { return items.size(); }

        static final class Holder extends RecyclerView.ViewHolder {
            final TextView time;
            final TextView message;

            Holder(View item) {
                super(item);
                time = item.findViewById(R.id.tv_time);
                message = item.findViewById(R.id.tv_message);
            }
        }
    }
}
