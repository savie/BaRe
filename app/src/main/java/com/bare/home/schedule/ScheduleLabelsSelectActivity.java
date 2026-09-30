package com.bare.home.schedule;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.appslist.ui.labels.LabelEditActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.List;

public final class ScheduleLabelsSelectActivity extends AppCompatActivity {
    public static final String EXTRA_SELECTED_LABELS = "extra_selected_labels";
    public static final String EXTRA_ALREADY_USED_LABELS = "extra_already_used_labels";

    private static final int REQUEST_CREATE_LABEL = 264;
    private static final String STATE_SELECTED = "schedule_labels_selected";
    private static final String STATE_USER = "schedule_labels_user";
    private static final String STATE_BUILT_IN = "schedule_labels_builtin";
    private static final String STATE_ALREADY_USED = "schedule_labels_already_used";

    private final ArrayList<String> selected = new ArrayList<>();
    private final ArrayList<String> userLabels = new ArrayList<>();
    private final ArrayList<String> builtInLabels = new ArrayList<>();
    private final ArrayList<String> alreadyUsed = new ArrayList<>();

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.schedule_labels_select_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.labels);
        }

        if (state != null) {
            copy(state.getStringArrayList(STATE_SELECTED), selected);
            copy(state.getStringArrayList(STATE_USER), userLabels);
            copy(state.getStringArrayList(STATE_BUILT_IN), builtInLabels);
            copy(state.getStringArrayList(STATE_ALREADY_USED), alreadyUsed);
        } else {
            copy(getIntent().getStringArrayListExtra(EXTRA_SELECTED_LABELS), selected);
            copy(getIntent().getStringArrayListExtra(EXTRA_ALREADY_USED_LABELS), alreadyUsed);
        }

        refresh();

        findViewById(R.id.iv_clear).setOnClickListener(v -> clearSelection());
        findViewById(R.id.btn_create_label).setOnClickListener(v ->
                startActivityForResult(
                        new Intent(this, LabelEditActivity.class),
                        REQUEST_CREATE_LABEL));
    }

    private void refresh() {
        RecyclerView selectedView = findViewById(R.id.rv_selected_labels);
        RecyclerView userView = findViewById(R.id.rv_labels);
        RecyclerView builtInView = findViewById(R.id.rv_labels_built_in);
        RecyclerView usedView = findViewById(R.id.rv_labels_already_used);
        TextView empty = findViewById(R.id.tv_no_labels_selected);

        selectedView.setAdapter(new ChipAdapter(selected, this::remove));
        userView.setAdapter(new ChipAdapter(userLabels, this::toggle));
        builtInView.setAdapter(new ChipAdapter(builtInLabels, this::toggle));
        usedView.setAdapter(new ChipAdapter(alreadyUsed, id -> { }));

        configure(selectedView);
        configure(userView);
        configure(builtInView);
        configure(usedView);

        selectedView.setVisibility(selected.isEmpty() ? View.GONE : View.VISIBLE);
        empty.setVisibility(selected.isEmpty() ? View.VISIBLE : View.GONE);
        findViewById(R.id.container_user_labels)
                .setVisibility(userLabels.isEmpty() ? View.GONE : View.VISIBLE);
        findViewById(R.id.container_built_in_labels)
                .setVisibility(builtInLabels.isEmpty() ? View.GONE : View.VISIBLE);
        findViewById(R.id.container_already_used_labels)
                .setVisibility(alreadyUsed.isEmpty() ? View.GONE : View.VISIBLE);
    }

    private static void configure(RecyclerView view) {
        view.setLayoutManager(
                new LinearLayoutManager(view.getContext(), RecyclerView.HORIZONTAL, false));
        view.setItemAnimator(null);
    }

    private void toggle(String id) {
        if (selected.contains(id)) {
            selected.remove(id);
        } else {
            selected.add(id);
        }
        refresh();
    }

    private void remove(String id) {
        selected.remove(id);
        refresh();
    }

    private void clearSelection() {
        if (selected.isEmpty()) return;
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.clear_all)
                .setMessage(R.string.no_labels_selected)
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                    selected.clear();
                    refresh();
                })
                .show();
    }

    private void returnSelection() {
        Intent result = new Intent();
        result.putStringArrayListExtra(EXTRA_SELECTED_LABELS, new ArrayList<>(selected));
        setResult(Activity.RESULT_OK, result);
        finish();
    }

    @Override
    public boolean onSupportNavigateUp() {
        returnSelection();
        return true;
    }

    @Override
    public void onBackPressed() {
        returnSelection();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != REQUEST_CREATE_LABEL || resultCode != Activity.RESULT_OK || data == null) {
            return;
        }
        String id = data.getStringExtra(LabelEditActivity.RESULT_LABEL_ID);
        if (id != null && !id.trim().isEmpty() && !userLabels.contains(id)) {
            userLabels.add(id);
        }
        refresh();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putStringArrayList(STATE_SELECTED, new ArrayList<>(selected));
        outState.putStringArrayList(STATE_USER, new ArrayList<>(userLabels));
        outState.putStringArrayList(STATE_BUILT_IN, new ArrayList<>(builtInLabels));
        outState.putStringArrayList(STATE_ALREADY_USED, new ArrayList<>(alreadyUsed));
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

    private interface ChipClick { void onClick(String id); }

    private static final class ChipAdapter extends RecyclerView.Adapter<ChipAdapter.Holder> {
        private final ArrayList<String> values;
        private final ChipClick click;

        ChipAdapter(ArrayList<String> values, ChipClick click) {
            this.values = values;
            this.click = click;
        }

        @Override
        public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            TextView chip = new TextView(parent.getContext());
            int h = (int) (36 * parent.getResources().getDisplayMetrics().density);
            int side = (int) (14 * parent.getResources().getDisplayMetrics().density);
            RecyclerView.LayoutParams lp = new RecyclerView.LayoutParams(
                    RecyclerView.LayoutParams.WRAP_CONTENT, h);
            lp.setMargins(0, 0, side, 0);
            chip.setLayoutParams(lp);
            chip.setMinHeight(h);
            chip.setGravity(Gravity.CENTER_VERTICAL);
            chip.setPadding(side, 0, side, 0);
            chip.setTextSize(14);
            chip.setAllCaps(true);
            chip.setBackgroundResource(R.drawable.ring_ripple);
            return new Holder(chip);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            String id = values.get(position);
            holder.text.setText(id);
            holder.text.setOnClickListener(v -> click.onClick(id));
        }

        @Override
        public int getItemCount() { return values.size(); }

        static final class Holder extends RecyclerView.ViewHolder {
            final TextView text;
            Holder(View itemView) {
                super(itemView);
                text = (TextView) itemView;
            }
        }
    }
}
