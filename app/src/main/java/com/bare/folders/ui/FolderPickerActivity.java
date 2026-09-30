package com.bare.folders.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.TextInputEditText;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

import defpackage.q63;

public final class FolderPickerActivity extends AppCompatActivity {
    private static final String EXTRA_INITIAL_FOLDER = "extra_initial_folder";
    private static final String EXTRA_SELECTED_FOLDER = "extra_selected_folder";
    private static final String EXTRA_SELECTED_FOLDER_PATH = "extra_selected_folder_path";

    private final List<File> folders = new ArrayList<>();
    private final List<File> breadcrumbs = new ArrayList<>();
    private FolderAdapter folderAdapter;
    private BreadcrumbAdapter breadcrumbAdapter;
    private File currentFolder;
    private TextView emptyView;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.folder_picker_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.select_folder);
        }

        folderAdapter = new FolderAdapter();
        breadcrumbAdapter = new BreadcrumbAdapter();

        RecyclerView folderList = findViewById(R.id.rv);
        folderList.setLayoutManager(new LinearLayoutManager(this));
        folderList.setAdapter(folderAdapter);

        RecyclerView navigation = findViewById(R.id.rv_navigation);
        navigation.setLayoutManager(new LinearLayoutManager(this, RecyclerView.HORIZONTAL, false));
        navigation.setAdapter(breadcrumbAdapter);

        emptyView = findViewById(R.id.tv_empty);
        findViewById(R.id.progress_bar).setVisibility(View.GONE);
        findViewById(R.id.btn_select).setOnClickListener(v -> selectCurrentFolder());

        if (state != null && state.getString("current_folder") != null) {
            currentFolder = new File(state.getString("current_folder"));
        } else {
            Object extra = getIntent().getSerializableExtra(EXTRA_INITIAL_FOLDER);
            if (extra instanceof q63) {
                currentFolder = new File(((q63) extra).v());
            } else if (extra instanceof String) {
                currentFolder = new File((String) extra);
            } else {
                currentFolder = Environment.getExternalStorageDirectory();
            }
        }

        if (!currentFolder.isDirectory()) {
            currentFolder = Environment.getExternalStorageDirectory();
        }
        showFolder(currentFolder);
    }

    private void showFolder(File folder) {
        currentFolder = folder;
        folders.clear();
        File[] children = folder.listFiles(File::isDirectory);
        if (children != null) {
            Arrays.sort(children, Comparator.comparing(File::getName, String.CASE_INSENSITIVE_ORDER));
            folders.addAll(Arrays.asList(children));
        }

        breadcrumbs.clear();
        File cursor = currentFolder;
        while (cursor != null) {
            breadcrumbs.add(0, cursor);
            File parent = cursor.getParentFile();
            if (parent == null || parent.equals(cursor)) {
                break;
            }
            cursor = parent;
        }

        folderAdapter.notifyDataSetChanged();
        breadcrumbAdapter.notifyDataSetChanged();
        emptyView.setVisibility(folders.isEmpty() ? View.VISIBLE : View.GONE);
    }

    private void selectCurrentFolder() {
        q63 selected = new q63(currentFolder.getAbsolutePath(), 1);
        Intent result = new Intent();
        result.putExtra(EXTRA_SELECTED_FOLDER, selected);
        result.putExtra(EXTRA_SELECTED_FOLDER_PATH, currentFolder.getAbsolutePath());
        setResult(Activity.RESULT_OK, result);
        finish();
    }

    private void createFolder(String name) {
        String trimmed = name == null ? "" : name.trim();
        if (trimmed.isEmpty()) {
            return;
        }
        File target = new File(currentFolder, trimmed);
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.new_folder)
                .setMessage(getString(R.string.p3_folder_boundary, target.getAbsolutePath()))
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void showNewFolderDialog() {
        View content = getLayoutInflater().inflate(R.layout.folder_picker_new_folder_dialog, null, false);
        TextInputEditText name = content.findViewById(R.id.et_folder_name);
        MaterialAlertDialogBuilder builder = new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.new_folder)
                .setView(content)
                .setNegativeButton(R.string.cancel, null)
                .setPositiveButton(R.string.create, null);

        android.app.AlertDialog dialog = builder.create();
        dialog.setOnShowListener(ignored -> {
            Button positive = dialog.getButton(android.content.DialogInterface.BUTTON_POSITIVE);
            positive.setEnabled(false);
            name.addTextChangedListener(new android.text.TextWatcher() {
                public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
                public void onTextChanged(CharSequence s, int start, int before, int count) {
                    positive.setEnabled(s != null && s.toString().trim().length() > 0);
                }
                public void afterTextChanged(android.text.Editable s) {}
            });
            positive.setOnClickListener(v -> {
                createFolder(name.getText() == null ? "" : name.getText().toString());
                dialog.dismiss();
            });
        });
        dialog.show();
    }

    private void showStorageSwitch() {
        File primary = Environment.getExternalStorageDirectory();
        List<File> candidates = new ArrayList<>();
        candidates.add(primary);
        File[] roots = getExternalFilesDirs(null);
        if (roots != null) {
            for (File root : roots) {
                if (root == null) continue;
                File external = root.getParentFile();
                if (external != null) external = external.getParentFile();
                if (external != null && !candidates.contains(external)) candidates.add(external);
            }
        }

        CharSequence[] labels = new CharSequence[candidates.size()];
        for (int i = 0; i < candidates.size(); i++) labels[i] = candidates.get(i).getAbsolutePath();

        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.select_storage)
                .setSingleChoiceItems(labels, 0, (dialog, which) -> {
                    showFolder(candidates.get(which));
                    dialog.dismiss();
                })
                .show();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_folder_picker, menu);
        MenuItem storage = menu.findItem(R.id.action_storage_switch);
        storage.setVisible(getExternalFilesDirs(null) != null && getExternalFilesDirs(null).length > 1);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_new_folder) {
            showNewFolderDialog();
            return true;
        }
        if (item.getItemId() == R.id.action_storage_switch) {
            showStorageSwitch();
            return true;
        }
        if (item.getItemId() == android.R.id.home) {
            setResult(Activity.RESULT_CANCELED);
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onBackPressed() {
        File parent = currentFolder == null ? null : currentFolder.getParentFile();
        if (parent != null && !parent.equals(currentFolder)) {
            showFolder(parent);
        } else {
            setResult(Activity.RESULT_CANCELED);
            super.onBackPressed();
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putString("current_folder", currentFolder == null ? null : currentFolder.getAbsolutePath());
        super.onSaveInstanceState(outState);
    }

    private final class FolderAdapter extends RecyclerView.Adapter<FolderHolder> {
        @Override public FolderHolder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            return new FolderHolder(getLayoutInflater().inflate(R.layout.folder_picker_item, parent, false));
        }
        @Override public void onBindViewHolder(FolderHolder holder, int position) {
            File folder = folders.get(position);
            holder.title.setText(folder.getName());
            holder.subtitle.setText(folder.getAbsolutePath());
            holder.itemView.setOnClickListener(v -> showFolder(folder));
        }
        @Override public int getItemCount() { return folders.size(); }
    }

    private static final class FolderHolder extends RecyclerView.ViewHolder {
        final TextView title;
        final TextView subtitle;
        FolderHolder(View itemView) {
            super(itemView);
            title = itemView.findViewById(R.id.tv_title);
            subtitle = itemView.findViewById(R.id.tv_subtitle1);
        }
    }

    private final class BreadcrumbAdapter extends RecyclerView.Adapter<BreadcrumbHolder> {
        @Override public BreadcrumbHolder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            return new BreadcrumbHolder(getLayoutInflater().inflate(R.layout.folder_picker_navigation_item, parent, false));
        }
        @Override public void onBindViewHolder(BreadcrumbHolder holder, int position) {
            File folder = breadcrumbs.get(position);
            holder.title.setText(folder.getName().isEmpty() ? folder.getAbsolutePath() : folder.getName());
            holder.itemView.setOnClickListener(v -> showFolder(folder));
            holder.divider.setVisibility(position == 0 ? View.GONE : View.VISIBLE);
        }
        @Override public int getItemCount() { return breadcrumbs.size(); }
    }

    private static final class BreadcrumbHolder extends RecyclerView.ViewHolder {
        final TextView title;
        final TextView divider;
        BreadcrumbHolder(View itemView) {
            super(itemView);
            title = itemView.findViewById(R.id.tv_title);
            divider = itemView.findViewById(R.id.tv_divider);
        }
    }
}
