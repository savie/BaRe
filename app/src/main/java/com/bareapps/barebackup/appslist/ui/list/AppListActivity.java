package com.bareapps.barebackup.appslist.ui.list;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.MotionEvent;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.ArrayAdapter;
import android.widget.Toast;

import com.bareapps.barebackup.R;
import com.bareapps.barebackup.appslist.data.AppCatalogRepository;
import com.bareapps.barebackup.appslist.data.AppFilter;
import com.bareapps.barebackup.appslist.data.InstalledApp;
import com.bareapps.barebackup.ui.LocaleHelper;
import com.bareapps.barebackup.ui.SystemBarInsets;

import java.util.ArrayList;
import java.util.List;

/** Installed Apps catalog. Header search/filter are wired; backup/restore actions are not yet wired. */
public final class AppListActivity extends Activity {
    private AppCatalogRepository repository;
    private AppListAdapter adapter;
    private final List<InstalledApp> allApps = new ArrayList<>();
    private EditText searchInput;
    private TextView searchClear;
    private View searchPanel;
    private Spinner filterSpinner;
    private TextView countView;
    private TextView emptyView;
    private AppFilter selectedFilter = AppFilter.ALL;
    private float pullStartY;
    private boolean pullRefreshTriggered;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.wrap(newBase));
    }

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.app_list_activity);
        SystemBarInsets.apply(this);

        repository = new AppCatalogRepository(this);
        adapter = new AppListAdapter(this);

        ListView list = findViewById(R.id.apps_list);
        list.setAdapter(adapter);
        list.setEmptyView(findViewById(R.id.apps_empty));

        countView = findViewById(R.id.apps_count);
        emptyView = findViewById(R.id.apps_empty);
        searchInput = findViewById(R.id.apps_search);
        searchClear = findViewById(R.id.apps_search_clear);
        searchPanel = findViewById(R.id.apps_search_panel);
        filterSpinner = findViewById(R.id.apps_filter);

        ArrayAdapter<AppFilter> filters = new ArrayAdapter<>(this,
                android.R.layout.simple_spinner_item, AppFilter.values());
        filters.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        filterSpinner.setAdapter(filters);
        filterSpinner.setSelection(AppFilter.ALL.ordinal(), false);
        filterSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                selectedFilter = AppFilter.values()[position];
                applyFilter();
            }
            @Override public void onNothingSelected(AdapterView<?> parent) { }
        });

        searchInput.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) { }
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                searchClear.setVisibility(s.length() == 0 ? View.GONE : View.VISIBLE);
                applyFilter();
            }
            @Override public void afterTextChanged(Editable s) { }
        });
        searchClear.setOnClickListener(v -> searchInput.setText(""));

        findViewById(R.id.apps_back).setOnClickListener(v -> finish());
        findViewById(R.id.apps_search_toggle).setOnClickListener(v -> {
            boolean opening = searchPanel.getVisibility() != View.VISIBLE;
            searchPanel.setVisibility(opening ? View.VISIBLE : View.GONE);
            if (opening) {
                searchInput.requestFocus();
            } else {
                searchInput.setText("");
            }
        });
        findViewById(R.id.apps_filter_toggle).setOnClickListener(v -> showFilterMenu(v));
        // The reference menu button opens a navigation drawer. This screen has no drawer
        // implementation yet, so don't attach a misleading placeholder action to the icon.

        findViewById(R.id.apps_title_container).setOnClickListener(v ->
                Toast.makeText(this, "Section switching is not implemented yet.", Toast.LENGTH_SHORT).show());
        findViewById(R.id.apps_batch_actions).setOnClickListener(v ->
                Toast.makeText(this, "Batch backup actions will be added in a later phase.", Toast.LENGTH_SHORT).show());

        list.setOnTouchListener((view, event) -> {
            if (event.getActionMasked() == MotionEvent.ACTION_DOWN) {
                pullStartY = event.getY();
                pullRefreshTriggered = false;
            } else if (event.getActionMasked() == MotionEvent.ACTION_MOVE) {
                float distance = event.getY() - pullStartY;
                boolean atTop = list.getFirstVisiblePosition() == 0
                        && (list.getChildCount() == 0 || list.getChildAt(0).getTop() >= list.getPaddingTop());
                if (!pullRefreshTriggered && atTop && distance > 96f * getResources().getDisplayMetrics().density) {
                    pullRefreshTriggered = true;
                    loadApps();
                }
            }
            return false;
        });

        list.setOnItemClickListener((parent, view, position, id) -> {
            InstalledApp app = adapter.getItem(position);
            Toast.makeText(this, app.getLabel() + "\n" + app.getPackageName(),
                    Toast.LENGTH_SHORT).show();
        });
        loadApps();
    }

    private void showFilterMenu(View anchor) {
        PopupMenu menu = new PopupMenu(this, anchor);
        for (AppFilter filter : AppFilter.values()) {
            menu.getMenu().add(0, filter.ordinal(), filter.ordinal(), filter.toString());
        }
        menu.setOnMenuItemClickListener(item -> {
            int position = item.getItemId();
            if (position < 0 || position >= AppFilter.values().length) return false;
            filterSpinner.setSelection(position);
            return true;
        });
        menu.show();
    }

    private void loadApps() {
        TextView loading = findViewById(R.id.apps_loading);
        loading.setVisibility(View.VISIBLE);
        findViewById(R.id.apps_list).setVisibility(View.INVISIBLE);
        new Thread(() -> {
            List<InstalledApp> loaded;
            String error = null;
            try {
                loaded = repository.loadInstalledApps();
            } catch (RuntimeException failure) {
                loaded = new ArrayList<>();
                error = failure.getMessage() == null ? "Could not read installed apps." : failure.getMessage();
            }
            final List<InstalledApp> result = loaded;
            final String message = error;
            runOnUiThread(() -> {
                loading.setVisibility(View.GONE);
                findViewById(R.id.apps_list).setVisibility(View.VISIBLE);
                if (message != null) {
                    emptyView.setText("Unable to load installed apps. " + message);
                    Toast.makeText(this, "Could not load installed apps.", Toast.LENGTH_LONG).show();
                } else {
                    emptyView.setText("No apps match this search.");
                }
                allApps.clear();
                allApps.addAll(result);
                applyFilter();
            });
        }, "bare-app-catalog").start();
    }

    private void applyFilter() {
        if (adapter == null || searchInput == null || countView == null) return;
        List<InstalledApp> filtered = repository.filter(allApps, searchInput.getText().toString(), selectedFilter);
        adapter.submit(filtered);
        countView.setText(filtered.size() + (filtered.size() == 1 ? " app" : " apps"));
    }
}
