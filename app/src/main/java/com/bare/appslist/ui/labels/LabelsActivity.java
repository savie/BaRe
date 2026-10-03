package com.bare.appslist.ui.labels;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public final class LabelsActivity extends AppCompatActivity {
    public static final String EXTRA_MODE = "labels_mode";
    public static final String EXTRA_APP = "labels_extra_app";
    public static final int MODE_MANAGE = 0;
    public static final int MODE_SET_APP = 1;
    public static final int MODE_SELECT = 2;

    private static final int REQUEST_EDIT = 264;
    private static final String STATE_LABELS = "labels_state";
    private static final String STATE_SELECTED = "labels_selected";
    private static final String STATE_APP_LABELS = "labels_app_labels";

    private final ArrayList<LabelItem> labels = new ArrayList<>();
    private final ArrayList<String> selectedIds = new ArrayList<>();
    private final ArrayList<String> appLabelIds = new ArrayList<>();

    private LabelAdapter labelAdapter;
    private LabelAdapter selectedAdapter;
    private LabelAdapter appAdapter;
    private TextView selectedCounter;
    private TextView appCounter;
    private TextView emptyTitle;
    private View emptyView;
    private int mode;
    private boolean appBoundary;
    private com.bare.appslist.data.AppInventoryRepository.Labels labelRepository;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.labels_activity);
        labelRepository = new com.bare.appslist.data.AppInventoryRepository.Labels(this);

        mode = getIntent() == null ? MODE_MANAGE
                : getIntent().getIntExtra(EXTRA_MODE, MODE_MANAGE);
        appBoundary = getIntent() != null && getIntent().hasExtra(EXTRA_APP);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(titleForMode());
        }

        selectedCounter = findViewById(R.id.tv_selected_labels_counter);
        appCounter = findViewById(R.id.tv_app_labels_counter);
        emptyView = findViewById(R.id.empty_labels_view);
        emptyTitle = findViewById(R.id.tv_empty_labels);
        View main = findViewById(R.id.main_view);
        View progress = findViewById(R.id.progress_bar);
        progress.setVisibility(View.GONE);
        main.setVisibility(View.VISIBLE);

        RecyclerView appRecycler = findViewById(R.id.rv_app_labels);
        RecyclerView selectedRecycler = findViewById(R.id.rv_selected_labels);
        RecyclerView labelsRecycler = findViewById(R.id.rv_labels);

        appAdapter = new LabelAdapter(appLabelIds, labels, this::toggleAppLabel);
        selectedAdapter = new LabelAdapter(selectedIds, labels, this::toggleSelectedLabel);
        labelAdapter = new LabelAdapter(null, labels, this::toggleLabel);

        appRecycler.setLayoutManager(new LinearLayoutManager(this, RecyclerView.HORIZONTAL, false));
        selectedRecycler.setLayoutManager(new LinearLayoutManager(this, RecyclerView.HORIZONTAL, false));
        labelsRecycler.setLayoutManager(new LinearLayoutManager(this));
        appRecycler.setAdapter(appAdapter);
        selectedRecycler.setAdapter(selectedAdapter);
        labelsRecycler.setAdapter(labelAdapter);

        findViewById(R.id.iv_clear).setOnClickListener(v -> confirmClear(false));
        findViewById(R.id.iv_clear_app_labels).setOnClickListener(v -> confirmClear(true));
        findViewById(R.id.btn_apply_labels).setOnClickListener(v -> apply());

        View createEmpty = findViewById(R.id.btn_empty_create);
        createEmpty.setOnClickListener(v -> openEditor(null));
        updateModeVisibility();

        if (state != null) {
            restoreLabels(state.getStringArrayList(STATE_LABELS));
            restoreSelection(selectedIds, state.getStringArrayList(STATE_SELECTED));
            restoreSelection(appLabelIds, state.getStringArrayList(STATE_APP_LABELS));
        }

        if (state == null) loadPersistedLabels();
        refresh();
    }

    private void loadPersistedLabels(){ labels.clear(); for(com.bare.appslist.data.AppInventoryRepository.Labels.Label l:labelRepository.list()) labels.add(new LabelItem(l.id,l.name,l.color)); appLabelIds.clear(); java.util.List<String> persisted=new java.util.ArrayList<>(); java.util.Map<String,java.util.List<String>> all=labelRepository.assignments(); if(getIntent()!=null){String pkg=getIntent().getStringExtra(EXTRA_APP); if(pkg!=null&&all.get(pkg)!=null)persisted.addAll(all.get(pkg));} appLabelIds.addAll(persisted); }

    private void persistLabels(){ java.util.List<com.bare.appslist.data.AppInventoryRepository.Labels.Label> ls=new java.util.ArrayList<>(); for(LabelItem x:labels)ls.add(new com.bare.appslist.data.AppInventoryRepository.Labels.Label(x.id,x.name,x.color)); java.util.Map<String,java.util.List<String>> as=labelRepository.assignments(); if(getIntent()!=null){String pkg=getIntent().getStringExtra(EXTRA_APP);if(pkg!=null)as.put(pkg,new java.util.ArrayList<>(appLabelIds));} labelRepository.save(ls,as); }

    private int titleForMode() {
        if (mode == MODE_SET_APP) return R.string.set_app_labels;
        if (mode == MODE_SELECT) return R.string.select_labels;
        return R.string.manage_app_labels;
    }

    private void updateModeVisibility() {
        boolean manage = mode == MODE_MANAGE;
        boolean setApp = mode == MODE_SET_APP;
        boolean select = mode == MODE_SELECT;

        findViewById(R.id.container_app_info).setVisibility(appBoundary || setApp ? View.VISIBLE : View.GONE);
        findViewById(R.id.container_selected_labels).setVisibility(select ? View.VISIBLE : View.GONE);
        findViewById(R.id.btn_apply_labels).setVisibility(select || setApp ? View.VISIBLE : View.GONE);
        findViewById(R.id.iv_clear_app_labels).setVisibility(appBoundary || setApp ? View.VISIBLE : View.GONE);
        findViewById(R.id.error_layout).setVisibility(View.GONE);
        findViewById(R.id.tv_app_boundary).setVisibility(appBoundary ? View.VISIBLE : View.GONE);
        if (appBoundary) {
            ((TextView) findViewById(R.id.tv_app_boundary)).setText(R.string.p3_label_app_boundary);
        }
        if (!manage && emptyView != null) emptyView.setVisibility(View.GONE);
    }

    private void restoreLabels(ArrayList<String> encoded) {
        labels.clear();
        if (encoded == null) return;
        for (String value : encoded) {
            if (value == null) continue;
            String[] parts = value.split("\\|", -1);
            if (parts.length >= 3) {
                try {
                    labels.add(new LabelItem(parts[0], parts[1], Color.parseColor(parts[2])));
                } catch (IllegalArgumentException ignored) {
                    labels.add(new LabelItem(parts[0], parts[1], Color.BLUE));
                }
            }
        }
    }

    private ArrayList<String> encodeLabels() {
        ArrayList<String> encoded = new ArrayList<>();
        for (LabelItem item : labels) {
            encoded.add(item.id + "|" + item.name + "|" + String.format("#%08X", item.color));
        }
        return encoded;
    }

    private void restoreSelection(List<String> target, ArrayList<String> values) {
        target.clear();
        if (values != null) target.addAll(values);
    }

    private void refresh() {
        labelAdapter.notifyDataSetChanged();
        selectedAdapter.notifyDataSetChanged();
        appAdapter.notifyDataSetChanged();

        selectedCounter.setText(getString(R.string.labels_selected_count, selectedIds.size()));
        appCounter.setText(getString(R.string.app_labels_count, appLabelIds.size()));
        findViewById(R.id.rv_selected_labels).setVisibility(selectedIds.isEmpty() ? View.GONE : View.VISIBLE);
        findViewById(R.id.rv_app_labels).setVisibility(appLabelIds.isEmpty() ? View.GONE : View.VISIBLE);

        boolean hasLabels = !labels.isEmpty();
        emptyView.setVisibility(hasLabels || mode != MODE_MANAGE ? View.GONE : View.VISIBLE);
        if (!hasLabels && mode == MODE_MANAGE) {
            emptyTitle.setText(R.string.create_label_message);
        }
    }

    private void toggleLabel(String id) {
        if (mode == MODE_SELECT) {
            toggleSelectedLabel(id);
        } else if (mode == MODE_SET_APP) {
            toggleAppLabel(id);
        } else {
            openEditor(findLabel(id));
        }
    }

    private void toggleSelectedLabel(String id) {
        if (selectedIds.contains(id)) selectedIds.remove(id);
        else {
            if (selectedIds.size() >= 5) {
                new MaterialAlertDialogBuilder(this)
                        .setTitle(R.string.maximum_num_labels_limit_message)
                        .setMessage(R.string.maximum_num_labels_limit_message + " (5/5)")
                        .setPositiveButton(android.R.string.ok, null)
                        .show();
                return;
            }
            selectedIds.add(id);
        }
        refresh();
    }

    private void toggleAppLabel(String id) {
        if (appLabelIds.contains(id)) appLabelIds.remove(id);
        else appLabelIds.add(id);
        refresh();
    }

    private void openEditor(@Nullable LabelItem item) {
        Intent intent = new Intent(this, LabelEditActivity.class);
        if (item != null) {
            intent.putExtra("label_edit", true);
            intent.putExtra("label_id", item.id);
            intent.putExtra("label_name", item.name);
            intent.putExtra("label_color", item.color);
        }
        startActivityForResult(intent, REQUEST_EDIT);
    }

    private void apply() {
        Intent result = new Intent();
        result.putStringArrayListExtra("selected_label_ids", new ArrayList<>(mode == MODE_SET_APP ? appLabelIds : selectedIds));
        setResult(Activity.RESULT_OK, result);
        finish();
    }

    private void confirmClear(boolean appLabels) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.clear_labels)
                .setMessage(R.string.sure_to_proceed)
                .setNegativeButton(R.string.cancel, null)
                .setPositiveButton(android.R.string.ok, (d, which) -> {
                    if (appLabels) appLabelIds.clear();
                    else selectedIds.clear();
                    persistLabels();
                    refresh();
                }).show();
    }

    private void confirmDeleteAll() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.delete_all)
                .setMessage(R.string.sure_to_proceed)
                .setNegativeButton(R.string.cancel, null)
                .setPositiveButton(android.R.string.ok, (d, which) -> {
                    labels.clear();
                    selectedIds.clear();
                    appLabelIds.clear();
                    persistLabels();
                    refresh();
                }).show();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != REQUEST_EDIT || resultCode != Activity.RESULT_OK || data == null) return;

        String id = data.getStringExtra("label_id");
        if (TextUtils.isEmpty(id)) id = UUID.randomUUID().toString();
        if (data.getBooleanExtra("label_deleted", false)) {
            final String deleteId = id;
            labels.removeIf(item -> item.id.equals(deleteId));
            selectedIds.remove(deleteId);
            appLabelIds.remove(deleteId);
        } else {
            String name = data.getStringExtra("label_name");
            if (TextUtils.isEmpty(name)) name = getString(R.string.new_custom_settings);
            int color = data.getIntExtra("label_color", Color.BLUE);
            LabelItem existing = findLabel(id);
            if (existing == null) labels.add(new LabelItem(id, name, color));
            else {
                existing.name = name;
                existing.color = color;
            }
        }
        refresh();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putStringArrayList(STATE_LABELS, encodeLabels());
        outState.putStringArrayList(STATE_SELECTED, new ArrayList<>(selectedIds));
        outState.putStringArrayList(STATE_APP_LABELS, new ArrayList<>(appLabelIds));
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_labels, menu);
        MenuItem create = menu.findItem(R.id.action_create_label);
        MenuItem deleteAll = menu.findItem(R.id.action_delete_all);
        if (create != null) create.setVisible(mode == MODE_MANAGE || mode == MODE_SET_APP);
        if (deleteAll != null) deleteAll.setVisible(mode == MODE_MANAGE);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_create_label) {
            openEditor(null);
            return true;
        }
        if (item.getItemId() == R.id.action_delete_all) {
            confirmDeleteAll();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public boolean onSupportNavigateUp() {
        setResult(Activity.RESULT_CANCELED);
        finish();
        return true;
    }

    private LabelItem findLabel(String id) {
        if (id == null) return null;
        for (LabelItem item : labels) if (id.equals(item.id)) return item;
        return null;
    }

    private static final class LabelItem {
        final String id;
        String name;
        int color;

        LabelItem(String id, String name, int color) {
            this.id = id;
            this.name = name;
            this.color = color;
        }
    }

    private static final class LabelAdapter extends RecyclerView.Adapter<LabelAdapter.Holder> {
        interface Click { void accept(String id); }

        private final List<String> ids;
        private final List<LabelItem> all;
        private final Click click;

        LabelAdapter(@Nullable List<String> ids, List<LabelItem> all, Click click) {
            this.ids = ids;
            this.all = all;
            this.click = click;
        }

        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent, int type) {
            MaterialCardView card = new MaterialCardView(parent.getContext());
            card.setLayoutParams(new RecyclerView.LayoutParams(
                    RecyclerView.LayoutParams.MATCH_PARENT, dp(parent, 52)));
            card.setRadius(dp(parent, 12));
            card.setUseCompatPadding(true);
            TextView text = new TextView(parent.getContext());
            text.setGravity(android.view.Gravity.CENTER_VERTICAL);
            text.setPadding(dp(parent, 14), 0, dp(parent, 14), 0);
            card.addView(text, new MaterialCardView.LayoutParams(
                    MaterialCardView.LayoutParams.MATCH_PARENT,
                    MaterialCardView.LayoutParams.MATCH_PARENT));
            return new Holder(card, text);
        }

        @Override public void onBindViewHolder(Holder holder, int position) {
            LabelItem item = ids == null ? all.get(position) : find(ids.get(position));
            if (item == null) return;
            holder.text.setText(item.name);
            holder.text.setTextColor(contrast(item.color));
            holder.card.setCardBackgroundColor(item.color);
            holder.card.setOnClickListener(v -> click.accept(item.id));
        }

        private LabelItem find(String id) {
            for (LabelItem item : all) if (id.equals(item.id)) return item;
            return null;
        }

        @Override public int getItemCount() {
            if (ids == null) return all.size();
            int count = 0;
            for (String id : ids) if (find(id) != null) count++;
            return count;
        }

        private static int contrast(int color) {
            double y = (Color.red(color) * 0.299) + (Color.green(color) * 0.587) + (Color.blue(color) * 0.114);
            return y > 160 ? Color.BLACK : Color.WHITE;
        }

        private static int dp(android.view.View view, int value) {
            return Math.round(value * view.getResources().getDisplayMetrics().density);
        }

        static final class Holder extends RecyclerView.ViewHolder {
            final MaterialCardView card;
            final TextView text;
            Holder(MaterialCardView card, TextView text) {
                super(card);
                this.card = card;
                this.text = text;
            }
        }
    }
}