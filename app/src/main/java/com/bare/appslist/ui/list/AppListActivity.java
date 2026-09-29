package com.bare.appslist.ui.list;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ImageView;
import android.widget.SearchView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;

import com.bare.R;
import com.bare.appconfigs.list.ConfigListActivity;
import com.bare.appslist.ui.labels.LabelsActivity;
import com.bare.appslist.ui.listbatch.AppsBatchActivity;
import com.bare.detail.DetailActivity;
import com.bare.appinfo.AppInfoActivity;
import com.bare.blacklist.BlacklistActivity;
import com.bare.settings.SettingsActivity;
import com.bare.settings.SettingsDetailActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

import java.util.Arrays;
import java.util.List;

/**
 * P3 Apps-list flow boundary.
 *
 * Reference-owned navigation, search presentation, drawer actions, refresh
 * presentation and batch entry are live. App inventory/filter/sort/search
 * semantics and persistence remain deferred to their owning contracts.
 */
public final class AppListActivity extends AppCompatActivity {
    private SearchView searchView;
    private DrawerLayout drawer;
    private boolean searchOpen;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.app_list_activity);

        Toolbar toolbar = findViewById(R.id.toolbar_mini);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
            if (getSupportActionBar() != null) {
                getSupportActionBar().setDisplayHomeAsUpEnabled(true);
                getSupportActionBar().setTitle(R.string.apps);
            }
            toolbar.setNavigationOnClickListener(v -> {
                if (searchOpen) closeSearch();
                else finish();
            });
        }

        drawer = findViewById(R.id.drawer_container) != null
                ? (DrawerLayout) findViewById(R.id.drawer_container).getParent() : null;

        RecyclerView apps = findViewById(R.id.apps_recycler_view);
        if (apps != null) {
            apps.setAdapter(new EmptyAppsAdapter());
        }

        View error = findViewById(R.id.error_layout);
        if (error != null) {
            error.setVisibility(View.GONE);
        }

        ExtendedFloatingActionButton actions = findViewById(R.id.btn_actions);
        if (actions != null) {
            actions.setOnClickListener(v ->
                    startActivity(new Intent(this, AppsBatchActivity.class)));
        }

        searchView = findViewById(R.id.search_view);
        if (searchView != null) {
            searchView.setQueryHint(getString(R.string.search_hint_apps));
            searchView.setIconifiedByDefault(false);
            searchView.setVisibility(View.GONE);
            searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
                @Override public boolean onQueryTextSubmit(String query) {
                    showSearchBoundary(query);
                    return true;
                }

                @Override public boolean onQueryTextChange(String newText) {
                    return false;
                }
            });
        }

        SwipeRefreshLayout refresh = findViewById(R.id.swipe_layout);
        if (refresh != null) {
            refresh.setOnRefreshListener(() -> {
                refresh.setRefreshing(false);
                Toast.makeText(this, R.string.apps_refresh_boundary, Toast.LENGTH_SHORT).show();
            });
        }

        RecyclerView drawerTop = findViewById(R.id.rv_drawer_top);
        RecyclerView drawerBottom = findViewById(R.id.rv_drawer_bottom);
        if (drawerTop != null) {
            drawerTop.setAdapter(new DrawerAdapter(Arrays.asList(
                    new DrawerEntry(R.drawable.ic_search, R.string.quick_actions, R.string.quick_actions,
                            () -> startActivity(new Intent(this, com.bare.appsquickactions.AppsQuickActionsActivity.class))),
                    new DrawerEntry(R.drawable.ic_search, R.string.app_labels, R.string.app_labels_description,
                            () -> {
                                Intent i = new Intent(this, LabelsActivity.class);
                                i.putExtra("labels_activity_mode", 0);
                                startActivity(i);
                            }),
                    new DrawerEntry(R.drawable.ic_search, R.string.custom_configurations,
                            R.string.custom_configurations_description,
                            () -> startActivity(new Intent(this, ConfigListActivity.class))),
                    new DrawerEntry(R.drawable.ic_search, R.string.blacklist, R.string.blacklist_apps_msg,
                            () -> startActivity(new Intent(this, BlacklistActivity.class)))
            )));
        }
        if (drawerBottom != null) {
            drawerBottom.setAdapter(new DrawerAdapter(Arrays.asList(
                    new DrawerEntry(R.drawable.ic_search, R.string.app_backup_settings, 0,
                            () -> {
                                Intent i = new Intent(this, SettingsDetailActivity.class);
                                i.putExtra("category", 1);
                                i.putExtra("category_title", getString(R.string.app_backups));
                                startActivity(i);
                            }),
                    new DrawerEntry(R.drawable.ic_search, R.string.settings, 0,
                            () -> startActivity(new Intent(this, SettingsActivity.class)))
            )));
        }

        if (drawer != null) {
            View drawerView = findViewById(R.id.drawer_container);
            drawer.setDrawerLockMode(DrawerLayout.LOCK_MODE_UNLOCKED, drawerView);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_apps, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_search) {
            openSearch();
            return true;
        }
        if (id == R.id.action_filter) {
            showFilterBoundary();
            return true;
        }
        if (id == R.id.action_drawer) {
            toggleDrawer();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private void openSearch() {
        if (searchView == null) return;
        searchOpen = true;
        searchView.setVisibility(View.VISIBLE);
        searchView.requestFocus();
    }

    private void closeSearch() {
        if (searchView == null) {
            finish();
            return;
        }
        searchView.setQuery("", false);
        searchView.clearFocus();
        searchView.setVisibility(View.GONE);
        searchOpen = false;
    }

    private void showSearchBoundary(String query) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.search)
                .setMessage(getString(R.string.apps_search_boundary, query))
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void showFilterBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.filter)
                .setMessage(R.string.apps_filter_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void toggleDrawer() {
        if (drawer == null) return;
        View drawerView = findViewById(R.id.drawer_container);
        if (drawer.isDrawerOpen(drawerView)) {
            drawer.closeDrawer(drawerView);
        } else {
            drawer.openDrawer(drawerView);
        }
    }

    @Override
    public void onBackPressed() {
        if (searchOpen) {
            closeSearch();
            return;
        }
        if (drawer != null) {
            View drawerView = findViewById(R.id.drawer_container);
            if (drawer.isDrawerOpen(drawerView)) {
                drawer.closeDrawer(drawerView);
                return;
            }
        }
        super.onBackPressed();
    }

    @Override
    public boolean onSupportNavigateUp() {
        if (searchOpen) {
            closeSearch();
        } else {
            finish();
        }
        return true;
    }

    private final class EmptyAppsAdapter extends RecyclerView.Adapter<EmptyAppsAdapter.Holder> {
        @Override
        public Holder onCreateViewHolder(ViewGroup parent, int viewType) {
            View view = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.app_item, parent, false);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            View root = holder.itemView;
            View card = root.findViewById(R.id.item_card);
            View menu = root.findViewById(R.id.iv_menu_click_listener);
            View menuIcon = root.findViewById(R.id.iv_menu);
            View favorite = root.findViewById(R.id.iv_favorite);

            card.setOnClickListener(v -> openDetailBoundary());
            root.findViewById(R.id.btn_swipe_start_primary)
                    .setOnClickListener(v -> showEngineBoundary(R.string.backup));
            root.findViewById(R.id.btn_swipe_start_secondary)
                    .setOnClickListener(v -> showEngineBoundary(R.string.restore));
            root.findViewById(R.id.btn_swipe_end_primary)
                    .setOnClickListener(v -> openDetailBoundary());
            root.findViewById(R.id.btn_swipe_end_secondary)
                    .setOnClickListener(v -> openAppInfoBoundary());
            menu.setOnClickListener(v -> showAppActionsBoundary());
            menuIcon.setOnClickListener(v -> showAppActionsBoundary());
            favorite.setOnClickListener(v -> showFavoriteBoundary());

            TextView title = root.findViewById(R.id.tv_title);
            TextView subtitle = root.findViewById(R.id.tv_subtitle1);
            title.setText(R.string.apps_list_pending);
            subtitle.setText(R.string.app_item_pending_subtitle);
        }

        @Override public int getItemCount() { return 1; }

        final class Holder extends RecyclerView.ViewHolder {
            Holder(View itemView) { super(itemView); }
        }
    }

    private void openDetailBoundary() {
        startActivity(new Intent(this, DetailActivity.class));
    }

    private void showEngineBoundary(int actionRes) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(actionRes)
                .setMessage(R.string.apps_engine_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void openAppInfoBoundary() {
        startActivity(new Intent(this, AppInfoActivity.class));
    }

    private void showFavoriteBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.favorite)
                .setMessage(R.string.app_favorite_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void showAppActionsBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.app_item_menu)
                .setItems(new String[]{
                        getString(R.string.app_detail),
                        getString(R.string.app_info),
                        getString(R.string.favorite),
                        getString(R.string.backup),
                        getString(R.string.restore)
                }, (dialog, which) -> {
                    switch (which) {
                        case 0: openDetailBoundary(); break;
                        case 1: openAppInfoBoundary(); break;
                        case 2: showFavoriteBoundary(); break;
                        case 3: showEngineBoundary(R.string.backup); break;
                        default: showEngineBoundary(R.string.restore); break;
                    }
                })
                .show();
    }

    private static final class DrawerEntry {
        final int icon;
        final int title;
        final int subtitle;
        final Runnable action;

        DrawerEntry(int icon, int title, int subtitle, Runnable action) {
            this.icon = icon;
            this.title = title;
            this.subtitle = subtitle;
            this.action = action;
        }
    }

    private static final class DrawerAdapter extends RecyclerView.Adapter<DrawerAdapter.Holder> {
        private final List<DrawerEntry> items;

        DrawerAdapter(List<DrawerEntry> items) {
            this.items = items;
        }

        @Override
        public Holder onCreateViewHolder(ViewGroup parent, int viewType) {
            View view = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.drawer_item, parent, false);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            DrawerEntry entry = items.get(position);
            holder.icon.setImageResource(entry.icon);
            holder.title.setText(entry.title);
            if (entry.subtitle != 0) {
                holder.subtitle.setVisibility(View.VISIBLE);
                holder.subtitle.setText(entry.subtitle);
            } else {
                holder.subtitle.setVisibility(View.GONE);
            }
            holder.click.setOnClickListener(v -> entry.action.run());
        }

        @Override public int getItemCount() { return items.size(); }

        static final class Holder extends RecyclerView.ViewHolder {
            final View click;
            final ImageView icon;
            final TextView title;
            final TextView subtitle;

            Holder(View itemView) {
                super(itemView);
                click = itemView.findViewById(R.id.click_listener);
                icon = itemView.findViewById(R.id.ivIcon);
                title = itemView.findViewById(R.id.tvTitle);
                subtitle = itemView.findViewById(R.id.tvSubtitle);
            }
        }
    }
}
