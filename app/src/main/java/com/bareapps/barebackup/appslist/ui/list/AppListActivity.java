package com.bareapps.barebackup.appslist.ui.list;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.content.Intent;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.ArrayAdapter;
import android.widget.Toast;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

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
    private SwipeRefreshLayout swipeRefreshLayout;
    private boolean loadingApps;
    private boolean searchMode;
    private String sortMode = "Name";
    private String appType = "User + System";
    private String systemFilter = "All";
    private String favoriteFilter = "All";
    private String labelFilter = "All";

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
        swipeRefreshLayout = findViewById(R.id.apps_swipe_refresh);
        swipeRefreshLayout.setColorSchemeResources(android.R.color.holo_red_light, android.R.color.holo_blue_light);
        swipeRefreshLayout.setOnRefreshListener(this::loadApps);

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

        findViewById(R.id.apps_back).setOnClickListener(v -> {
            if (searchMode) closeSearch();
            else finish();
        });
        findViewById(R.id.apps_search_toggle).setOnClickListener(v -> openSearch());
        findViewById(R.id.apps_filter_toggle).setOnClickListener(v -> showFilterSheet());
        findViewById(R.id.apps_menu_toggle).setOnClickListener(v -> showNavigationDrawer());
        findViewById(R.id.apps_title_container).setOnClickListener(v -> showSectionMenu(v));
        findViewById(R.id.apps_batch_actions).setOnClickListener(v ->
                Toast.makeText(this, "Batch backup actions will be added in a later phase.", Toast.LENGTH_SHORT).show());

        list.setOnItemClickListener((parent, view, position, id) -> {
            InstalledApp app = adapter.getItem(position);
            Toast.makeText(this, app.getLabel() + "\n" + app.getPackageName(),
                    Toast.LENGTH_SHORT).show();
        });
        loadApps();
    }

    private void openSearch() {
        searchMode = true;
        findViewById(R.id.apps_title_container).setVisibility(View.GONE);
        findViewById(R.id.apps_filter_toggle).setVisibility(View.GONE);
        findViewById(R.id.apps_menu_toggle).setVisibility(View.GONE);
        searchPanel.setVisibility(View.VISIBLE);
        searchInput.setHint("Search apps");
        searchInput.requestFocus();
        searchInput.postDelayed(() -> {
            InputMethodManager imm = (InputMethodManager) getSystemService(INPUT_METHOD_SERVICE);
            if (imm != null) imm.showSoftInput(searchInput, InputMethodManager.SHOW_IMPLICIT);
        }, 180);
    }

    private void closeSearch() {
        searchMode = false;
        searchInput.setText("");
        searchPanel.setVisibility(View.GONE);
        findViewById(R.id.apps_title_container).setVisibility(View.VISIBLE);
        findViewById(R.id.apps_filter_toggle).setVisibility(View.VISIBLE);
        findViewById(R.id.apps_menu_toggle).setVisibility(View.VISIBLE);
        InputMethodManager imm = (InputMethodManager) getSystemService(INPUT_METHOD_SERVICE);
        if (imm != null) imm.hideSoftInputFromWindow(searchInput.getWindowToken(), 0);
    }

    private void showSectionMenu(View anchor) {
        PopupMenu menu = new PopupMenu(this, anchor);
        menu.getMenu().add("✓  Local apps");
        menu.getMenu().add("Cloud synced apps");
        menu.setOnMenuItemClickListener(item -> {
            if (item.getTitle().toString().contains("Cloud")) {
                new android.app.AlertDialog.Builder(this)
                        .setTitle("Cloud synced apps")
                        .setMessage("This section is not implemented yet.")
                        .setPositiveButton("OK", null).show();
            }
            return true;
        });
        menu.show();
    }

    private void showNavigationDrawer() {
        Dialog dialog = new Dialog(this);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(22), dp(28), dp(18), dp(18));
        root.setBackgroundColor(Color.BLACK);
        TextView back = text("‹", 34, Color.WHITE, false);
        back.setPadding(0, 0, 0, dp(22));
        root.addView(back, new LinearLayout.LayoutParams(-1, dp(54)));
        back.setOnClickListener(v -> dialog.dismiss());
        addDrawerItem(root, "ϟ", "Quick actions", "", dialog);
        addDrawerItem(root, "◇", "App Labels", "Create and edit custom labels", dialog);
        addDrawerItem(root, "⌕", "Custom configurations", "App-specific backup and restore rules", dialog);
        addDrawerItem(root, "⊘", "Blacklist", "Hide apps or back up APKs only", dialog);
        View spacer = new View(this);
        root.addView(spacer, new LinearLayout.LayoutParams(1, 0, 1));
        root.addView(new View(this), new LinearLayout.LayoutParams(-1, dp(1)));
        addDrawerItem(root, "♟", "App backup settings", "", dialog);
        addDrawerItem(root, "⚙", "Settings", "", dialog);
        dialog.setContentView(root);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
            window.setGravity(Gravity.END);
            window.setLayout(getResources().getDisplayMetrics().widthPixels, -1);
        }
        dialog.show();
        if (window != null) window.setLayout(getResources().getDisplayMetrics().widthPixels, -1);
    }

    private void addDrawerItem(LinearLayout root, String icon, String title, String subtitle, Dialog dialog) {
        LinearLayout item = new LinearLayout(this);
        item.setGravity(Gravity.CENTER_VERTICAL);
        item.setPadding(0, dp(14), 0, dp(14));
        TextView glyph = text(icon, 25, Color.LTGRAY, false);
        item.addView(glyph, new LinearLayout.LayoutParams(dp(42), dp(42)));
        LinearLayout words = new LinearLayout(this);
        words.setOrientation(LinearLayout.VERTICAL);
        words.addView(text(title, 18, Color.WHITE, true));
        if (!subtitle.isEmpty()) words.addView(text(subtitle, 14, 0xffc8c0c2, false));
        item.addView(words, new LinearLayout.LayoutParams(0, -2, 1));
        root.addView(item);
        item.setOnClickListener(v -> {
            dialog.dismiss();
            new android.app.AlertDialog.Builder(this).setTitle(title)
                    .setMessage("This section is not implemented yet.")
                    .setPositiveButton("OK", null).show();
        });
    }

    private void showFilterSheet() {
        Dialog dialog = new Dialog(this);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(18), dp(16), dp(18), dp(18));
        root.setBackground(roundRect(0xff281b1e, dp(28)));
        LinearLayout top = new LinearLayout(this);
        top.setGravity(Gravity.CENTER_VERTICAL);
        TextView close = text("×", 32, 0xffffdce2, false);
        top.addView(close, new LinearLayout.LayoutParams(0, dp(48), 1));
        Button apply = new Button(this);
        apply.setText("✓  APPLY OPTIONS");
        apply.setAllCaps(false);
        apply.setOnClickListener(v -> { applyFilter(); dialog.dismiss(); });
        top.addView(apply);
        root.addView(top);
        close.setOnClickListener(v -> dialog.dismiss());
        ScrollView scroll = new ScrollView(this);
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setPadding(0, dp(8), 0, dp(18));
        scroll.addView(content);
        addSectionTitle(content, "SORT");
        addChipRow(content, new String[]{"Name", "Install date", "Update date", "Backup date", "Backup size"}, sortMode,
                value -> { sortMode = value; });
        addSectionTitle(content, "FILTER");
        addChipRow(content, new String[]{"User + System", "User", "System"}, appType,
                value -> { appType = value; selectedFilter = "User".equals(value) ? AppFilter.USER : "System".equals(value) ? AppFilter.SYSTEM : AppFilter.ALL; filterSpinner.setSelection(selectedFilter.ordinal()); });
        addSubTitle(content, "SYSTEM APP FILTERS");
        addChipRow(content, new String[]{"All", "Launchable", "Updated", "Labelled/Favorites"}, systemFilter, value -> systemFilter = value);
        addDivider(content);
        addSubTitle(content, "Favorites");
        addChipRow(content, new String[]{"All", "Favorites", "Not favorites"}, favoriteFilter, value -> favoriteFilter = value);
        addDivider(content);
        addSubTitle(content, "App Labels");
        addChipRow(content, new String[]{"All", "Select labels to filter", "Labelled"}, labelFilter, value -> labelFilter = value);
        root.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));
        dialog.setContentView(root);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
            window.setGravity(Gravity.BOTTOM);
            window.setLayout(-1, (int) (getResources().getDisplayMetrics().heightPixels * 0.78f));
        }
        dialog.show();
        if (window != null) {
            window.setGravity(Gravity.BOTTOM);
            window.setLayout(-1, (int) (getResources().getDisplayMetrics().heightPixels * 0.78f));
        }
    }

    private interface Choice { void select(String value); }

    private void addChipRow(LinearLayout parent, String[] values, String selected, Choice choice) {
        HorizontalScrollView horizontal = new HorizontalScrollView(this);
        horizontal.setHorizontalScrollBarEnabled(false);
        LinearLayout row = new LinearLayout(this);
        row.setGravity(Gravity.CENTER_VERTICAL);
        for (String value : values) {
            Button chip = new Button(this);
            chip.setText(value);
            chip.setAllCaps(false);
            chip.setTextSize(13);
            chip.setPadding(dp(12), 0, dp(12), 0);
            boolean active = value.equals(selected);
            chip.setTextColor(active ? 0xffffc1cc : 0xffded0d2);
            chip.setBackground(roundRect(active ? 0xff493035 : 0xff281b1e, dp(24)));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, dp(42));
            lp.setMargins(0, dp(5), dp(8), dp(8));
            row.addView(chip, lp);
            chip.setOnClickListener(v -> {
                choice.select(value);
                for (int i = 0; i < row.getChildCount(); i++) {
                    Button b = (Button) row.getChildAt(i);
                    boolean now = b.getText().toString().equals(value);
                    b.setTextColor(now ? 0xffffc1cc : 0xffded0d2);
                    b.setBackground(roundRect(now ? 0xff493035 : 0xff281b1e, dp(24)));
                }
            });
        }
        horizontal.addView(row);
        parent.addView(horizontal);
    }

    private void addSectionTitle(LinearLayout parent, String title) {
        TextView view = text(title, 17, 0xffffe5e8, true);
        view.setPadding(0, dp(20), 0, dp(6));
        parent.addView(view);
    }

    private void addSubTitle(LinearLayout parent, String title) {
        TextView view = text(title, 15, 0xffd5c5c8, false);
        view.setPadding(0, dp(18), 0, dp(4));
        parent.addView(view);
    }

    private void addDivider(LinearLayout parent) {
        View divider = new View(this);
        divider.setBackgroundColor(0xff57484b);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, dp(1));
        lp.setMargins(0, dp(18), 0, dp(4));
        parent.addView(divider, lp);
    }

    private TextView text(String value, int size, int color, boolean bold) {
        TextView view = new TextView(this);
        view.setText(value);
        view.setTextSize(size);
        view.setTextColor(color);
        if (bold) view.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        return view;
    }

    private GradientDrawable roundRect(int color, int radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(radius);
        return drawable;
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }

    private void loadApps() {
        if (loadingApps) return;
        loadingApps = true;
        TextView loading = findViewById(R.id.apps_loading);
        boolean initialLoad = allApps.isEmpty();
        loading.setVisibility(initialLoad ? View.VISIBLE : View.GONE);
        findViewById(R.id.apps_list).setVisibility(initialLoad ? View.INVISIBLE : View.VISIBLE);
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
                loadingApps = false;
                loading.setVisibility(View.GONE);
                swipeRefreshLayout.setRefreshing(false);
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
        if ("Name".equals(sortMode)) {
            filtered.sort((a, b) -> a.getLabel().compareToIgnoreCase(b.getLabel()));
        } // Date/backup sort modes stay visual-only until the catalog model exposes verified metadata.
        adapter.submit(filtered);
        countView.setText(filtered.size() + (filtered.size() == 1 ? " app" : " apps"));
    }
}
