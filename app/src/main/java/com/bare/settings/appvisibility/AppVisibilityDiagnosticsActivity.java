package com.bare.settings.appvisibility;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.google.android.material.textfield.TextInputEditText;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public final class AppVisibilityDiagnosticsActivity extends AppCompatActivity {
    private static final String KEY_SCROLL_Y = "app_visibility_scroll_y";
    private static final String KEY_SEARCH = "app_visibility_search_query";

    private RecyclerView recyclerView;
    private TextInputEditText searchEdit;
    private CircularProgressIndicator progress;
    private TextView summary;
    private TextView listStatus;
    private TextView empty;
    private MaterialButton refresh;
    private MaterialButton copy;
    private MaterialButton share;

    private final List<PackageRow> packages = new ArrayList<>();
    private PackageAdapter adapter;
    private int rawPackageCount;
    private String ownPackageName = "";
    private String errorMessage;
    private int pendingScrollY;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.app_visibility_diagnostics_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.app_visibility_diagnostics);
        }

        recyclerView = findViewById(R.id.recycler_view);
        searchEdit = findViewById(R.id.et_search);
        progress = findViewById(R.id.progress);
        summary = findViewById(R.id.tv_raw_package_count);
        listStatus = findViewById(R.id.tv_list_status);
        empty = findViewById(R.id.tv_empty);
        refresh = findViewById(R.id.btn_refresh);
        copy = findViewById(R.id.btn_copy);
        share = findViewById(R.id.btn_share);

        adapter = new PackageAdapter();
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(adapter);
        recyclerView.setNestedScrollingEnabled(false);

        ownPackageName = getPackageName();
        refresh.setOnClickListener(v -> queryPackages());
        copy.setOnClickListener(v -> copyResults());
        share.setOnClickListener(v -> shareResults());

        searchEdit.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override public void afterTextChanged(Editable editable) { renderFiltered(); }
        });

        if (state != null) {
            pendingScrollY = state.getInt(KEY_SCROLL_Y, 0);
            String query = state.getString(KEY_SEARCH);
            if (query != null) searchEdit.setText(query);
        }
        queryPackages();
    }

    private void queryPackages() {
        setLoading(true);
        new Thread(() -> {
            List<PackageRow> result = new ArrayList<>();
            int count = 0;
            String failure = null;
            try {
                PackageManager pm = getPackageManager();
                List<PackageInfo> installed = android.os.Build.VERSION.SDK_INT >= 33
                        ? pm.getInstalledPackages(PackageManager.PackageInfoFlags.of(0L))
                        : pm.getInstalledPackages(0);
                count = installed.size();
                for (PackageInfo info : installed) {
                    String packageName = info.packageName;
                    String label = packageName;
                    try {
                        ApplicationInfo appInfo = info.applicationInfo;
                        CharSequence loaded = appInfo != null ? appInfo.loadLabel(pm) : null;
                        if (loaded != null && loaded.length() > 0) label = loaded.toString();
                    } catch (RuntimeException ignored) {}
                    result.add(new PackageRow(label, packageName));
                }
                Collections.sort(result, (a, b) -> {
                    int byLabel = a.label.compareToIgnoreCase(b.label);
                    return byLabel != 0 ? byLabel : a.packageName.compareToIgnoreCase(b.packageName);
                });
            } catch (Throwable t) {
                failure = t.getLocalizedMessage();
                if (failure == null || failure.length() == 0) failure = t.getClass().getSimpleName();
            }

            final int finalCount = count;
            final String finalFailure = failure;
            final List<PackageRow> finalResult = result;
            runOnUiThread(() -> {
                rawPackageCount = finalCount;
                errorMessage = finalFailure;
                packages.clear();
                packages.addAll(finalResult);
                setLoading(false);
                renderFiltered();
                if (pendingScrollY > 0) {
                    recyclerView.post(() -> recyclerView.scrollBy(0, pendingScrollY));
                    pendingScrollY = 0;
                }
            });
        }).start();
    }

    private void renderFiltered() {
        String query = searchEdit.getText() == null ? "" : searchEdit.getText().toString().trim();
        List<PackageRow> filtered = new ArrayList<>();
        if (query.length() == 0) {
            filtered.addAll(packages);
        } else {
            String needle = query.toLowerCase(Locale.ROOT);
            for (PackageRow row : packages) {
                if (row.label.toLowerCase(Locale.ROOT).contains(needle)
                        || row.packageName.toLowerCase(Locale.ROOT).contains(needle)) {
                    filtered.add(row);
                }
            }
        }
        adapter.submit(filtered);

        if (errorMessage != null) {
            listStatus.setText(getString(R.string.app_visibility_query_failed, errorMessage));
            empty.setVisibility(View.GONE);
        } else if (packages.isEmpty()) {
            listStatus.setText(R.string.app_visibility_no_packages);
            empty.setVisibility(View.GONE);
        } else if (filtered.isEmpty()) {
            listStatus.setText("");
            empty.setText(R.string.app_visibility_no_search_matches);
            empty.setVisibility(View.VISIBLE);
        } else {
            listStatus.setText(getString(R.string.app_visibility_visible_count, filtered.size()));
            empty.setVisibility(View.GONE);
        }
        summary.setText(getString(R.string.app_visibility_raw_package_count, rawPackageCount));
    }

    private void setLoading(boolean loading) {
        progress.setVisibility(loading ? View.VISIBLE : View.GONE);
        refresh.setEnabled(!loading);
        copy.setEnabled(!loading && !packages.isEmpty());
        share.setEnabled(!loading && !packages.isEmpty());
        if (loading) {
            listStatus.setText(R.string.app_visibility_querying);
            empty.setVisibility(View.GONE);
        }
    }

    private String buildResultsText() {
        StringBuilder out = new StringBuilder();
        out.append(getString(R.string.app_visibility_diagnostics)).append('\n');
        out.append(getString(R.string.app_visibility_raw_package_count, rawPackageCount)).append('\n');
        out.append("Package owner: ").append(ownPackageName).append('\n').append('\n');
        for (PackageRow row : packages) {
            out.append(row.label).append(" — ").append(row.packageName).append('\n');
        }
        return out.toString();
    }

    private void copyResults() {
        if (packages.isEmpty()) return;
        ClipboardManager clipboard = ContextCompat.getSystemService(this, ClipboardManager.class);
        if (clipboard != null) {
            clipboard.setPrimaryClip(ClipData.newPlainText("App visibility diagnostics", buildResultsText()));
            Toast.makeText(this, R.string.copied_to_clipboard, Toast.LENGTH_SHORT).show();
        }
    }

    private void shareResults() {
        if (packages.isEmpty()) return;
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.setType("text/plain");
        intent.putExtra(Intent.EXTRA_SUBJECT, "Swift Backup app visibility diagnostics");
        intent.putExtra(Intent.EXTRA_TEXT, buildResultsText());
        if (getPackageManager().queryIntentActivities(intent, PackageManager.MATCH_DEFAULT_ONLY).isEmpty()) {
            Toast.makeText(this, R.string.no_app_found_to_handle_action, Toast.LENGTH_SHORT).show();
            return;
        }
        startActivity(Intent.createChooser(intent, getString(R.string.app_visibility_share_chooser)));
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putInt(KEY_SCROLL_Y, recyclerView == null ? 0 : recyclerView.computeVerticalScrollOffset());
        outState.putString(KEY_SEARCH, searchEdit == null || searchEdit.getText() == null ? "" : searchEdit.getText().toString());
        super.onSaveInstanceState(outState);
    }

    @Override public boolean onSupportNavigateUp() { finish(); return true; }

    private static final class PackageRow {
        final String label;
        final String packageName;
        PackageRow(String label, String packageName) {
            this.label = label;
            this.packageName = packageName;
        }
    }

    private final class PackageAdapter extends RecyclerView.Adapter<PackageViewHolder> {
        private final List<PackageRow> visible = new ArrayList<>();
        void submit(List<PackageRow> rows) {
            visible.clear();
            visible.addAll(rows);
            notifyDataSetChanged();
        }
        @Override public PackageViewHolder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            View view = getLayoutInflater().inflate(R.layout.app_visibility_package_item, parent, false);
            return new PackageViewHolder(view);
        }
        @Override public void onBindViewHolder(PackageViewHolder holder, int position) {
            PackageRow row = visible.get(position);
            holder.label.setText(row.label);
            holder.packageName.setText(row.packageName);
        }
        @Override public int getItemCount() { return visible.size(); }
    }

    private static final class PackageViewHolder extends RecyclerView.ViewHolder {
        final TextView label;
        final TextView packageName;
        PackageViewHolder(View itemView) {
            super(itemView);
            label = itemView.findViewById(R.id.tv_app_label);
            packageName = itemView.findViewById(R.id.tv_package_name);
        }
    }
}