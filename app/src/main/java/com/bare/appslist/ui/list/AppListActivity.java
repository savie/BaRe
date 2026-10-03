package com.bare.appslist.ui.list;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
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
import com.bare.appslist.data.AppInventoryItem;
import com.bare.appslist.data.AppInventoryLoader;
import com.bare.appslist.data.AppInventoryCache;
import com.bare.appslist.data.AppInventoryRepository;
import com.bare.appslist.ui.listbatch.AppsBatchActivity;
import com.bare.appslist.ui.AppListItemLayout;
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
    public enum AppSection { LOCAL, CLOUD }

    private AppSection section = AppSection.LOCAL;
    private SearchView searchView;
    private DrawerLayout drawer;
    private boolean searchOpen;
    private AppInventoryRepository inventoryRepository;
    private InventoryAdapter inventoryAdapter;
    private final AppInventoryRepository.Filters filters = new AppInventoryRepository.Filters();
    private AppInventoryRepository.Sort sort = AppInventoryRepository.Sort.NAME;
    private boolean sortAscending = true;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.app_list_activity);

        Intent incoming = getIntent();
        if (incoming != null) {
            Object rawSection = incoming.getSerializableExtra("KEY_SECTION");
            if (rawSection instanceof AppSection) {
                section = (AppSection) rawSection;
            }
        }

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
        inventoryRepository = new AppInventoryRepository();
        loadFilterState();
        inventoryAdapter = new InventoryAdapter();
        if (apps != null) apps.setAdapter(inventoryAdapter);
        loadInventory();

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

    private void loadFilterState(){android.content.SharedPreferences p=getSharedPreferences("apps_list_filters",MODE_PRIVATE);filters.includeSystem=p.getBoolean("include_system",true);filters.favoritesOnly=p.getBoolean("favorites",false);filters.installedOnly=p.getBoolean("installed",false);filters.enabledOnly=p.getBoolean("enabled",false);}
    private void saveFilterState(){getSharedPreferences("apps_list_filters",MODE_PRIVATE).edit().putBoolean("include_system",filters.includeSystem).putBoolean("favorites",filters.favoritesOnly).putBoolean("installed",filters.installedOnly).putBoolean("enabled",filters.enabledOnly).apply();}
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
        if (inventoryAdapter != null) inventoryAdapter.setQuery(query);
    }

    private void loadInventory() {
        new Thread(() -> {
            try {
                AppInventoryCache cache=new AppInventoryCache(this);
                java.util.List<AppInventoryItem> cached=cache.read();
                if(!cached.isEmpty())runOnUiThread(() -> inventoryAdapter.setItems(cached));
                java.util.List<AppInventoryItem> fresh=new AppInventoryLoader(this).load();
                cache.refresh(fresh); inventoryRepository.replace(fresh);
                runOnUiThread(() -> inventoryAdapter.setItems(inventoryRepository.list()));
            } catch (RuntimeException ignored) { runOnUiThread(() -> inventoryAdapter.setItems(java.util.Collections.emptyList())); }
        }).start();
    }

    private void showFilterBoundary() {
        new MaterialAlertDialogBuilder(this).setTitle(R.string.filter)
                .setMultiChoiceItems(new String[]{"System apps","Favorites","Installed only","Enabled only"},new boolean[]{filters.includeSystem,!filters.favoritesOnly,!filters.installedOnly,!filters.enabledOnly},(d,w,c)->{
                    if(w==0)filters.includeSystem=!c;if(w==1)filters.favoritesOnly=c;if(w==2)filters.installedOnly=c;if(w==3)filters.enabledOnly=c;saveFilterState();inventoryAdapter.applyContractFilter();}).setPositiveButton(R.string.close,null).show();
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

    private final class InventoryAdapter extends RecyclerView.Adapter<InventoryAdapter.Holder> {
        private final java.util.ArrayList<AppInventoryItem> all = new java.util.ArrayList<>();
        private final java.util.ArrayList<AppInventoryItem> visible = new java.util.ArrayList<>();
        private String query = "";
        void setItems(List<AppInventoryItem> items){ all.clear(); if(items!=null) all.addAll(items); applyFilter(); }
        void setQuery(String value){ query=value==null?"":value.trim().toLowerCase(java.util.Locale.ROOT); applyFilter(); }
        void applyContractFilter(){applyFilter();}
        private void applyFilter(){ visible.clear(); for(AppInventoryItem item:filters.apply(all)) if(query.isEmpty()||item.name.toLowerCase(java.util.Locale.ROOT).contains(query)||item.packageName.toLowerCase(java.util.Locale.ROOT).contains(query)) visible.add(item); visible.clear(); visible.addAll(AppInventoryRepository.sort(filters.apply(all),sort,sortAscending)); if(!query.isEmpty()){visible.removeIf(x->!x.name.toLowerCase(java.util.Locale.ROOT).contains(query)&&!x.packageName.toLowerCase(java.util.Locale.ROOT).contains(query));} notifyDataSetChanged(); }
        @Override public Holder onCreateViewHolder(ViewGroup parent,int viewType){ View view=LayoutInflater.from(parent.getContext()).inflate(R.layout.app_item,parent,false); return new Holder(view); }
        @Override public void onBindViewHolder(Holder holder,int position){ AppInventoryItem item=visible.get(position); View root=holder.itemView; View card=root.findViewById(R.id.item_card); ((AppListItemLayout)root).bindSwipeTo(card); TextView title=root.findViewById(R.id.tv_title); TextView subtitle=root.findViewById(R.id.tv_subtitle1); if(title!=null) title.setText(item.name); if(subtitle!=null) subtitle.setText(item.packageName); card.setOnClickListener(v->openDetailBoundary(item.packageName)); root.findViewById(R.id.btn_swipe_start_primary).setOnClickListener(v->showRowAction(RowAction.BACKUP,item)); root.findViewById(R.id.btn_swipe_start_secondary).setOnClickListener(v->showRowAction(RowAction.RESTORE,item)); root.findViewById(R.id.btn_swipe_end_primary).setOnClickListener(v->showRowAction(RowAction.APP_INFO,item)); root.findViewById(R.id.btn_swipe_end_secondary).setOnClickListener(v->showRowAction(RowAction.LAUNCH,item)); root.findViewById(R.id.iv_menu_click_listener).setOnClickListener(v->showAppActionsBoundary(item.packageName)); View menuIcon=root.findViewById(R.id.iv_menu); if(menuIcon!=null) menuIcon.setOnClickListener(v->showAppActionsBoundary(item.packageName)); }
        @Override public int getItemCount(){ return visible.size(); }
        final class Holder extends RecyclerView.ViewHolder { Holder(View itemView){super(itemView);} }
    }

    private void openDetailBoundary(){ openDetailBoundary(null); }
    private void openDetailBoundary(String packageName){ Intent intent=new Intent(this,DetailActivity.class); if(packageName!=null) intent.putExtra("package_name",packageName); startActivity(intent); }

    private void showEngineBoundary(int actionRes) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(actionRes)
                .setMessage(R.string.apps_engine_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void openAppInfoBoundary(){ openAppInfoBoundary(null); }
    private void openAppInfoBoundary(String packageName){ Intent intent=new Intent(this,AppInfoActivity.class); if(packageName!=null) intent.putExtra("package_name",packageName); startActivity(intent); }

    private void showRowAction(RowAction action,AppInventoryItem item){ boolean rootAvailable=new com.bare.permission.PermissionAccessService(this).read().get(com.bare.permission.PermissionCapability.ROOT_SHIZUKU).isReady(); if(!action.isAvailable(item,rootAvailable)){new MaterialAlertDialogBuilder(this).setTitle(action.id).setMessage(R.string.apps_engine_boundary).setPositiveButton(R.string.close,null).show();return;} if(action==RowAction.APP_INFO)openAppInfoBoundary(item.packageName);else if(action==RowAction.LAUNCH){Intent i=getPackageManager().getLaunchIntentForPackage(item.packageName);if(i!=null)startActivity(i);}else showEngineBoundary(R.string.backup); }

    public enum RowAction { LAUNCH("launch"),ENABLE_DISABLE("enable_disable"),UNINSTALL("uninstall"),FORCE_STOP("force_stop"),PLAY_STORE("play_store"),CLEAR_DATA("clear_data"),APP_INFO("app_info"),SHARE_APK("share_apk"),BACKUP("backup"),RESTORE("restore"); final String id; RowAction(String i){id=i;} boolean isAvailable(AppInventoryItem a){return isAvailable(a,false);}
        boolean isAvailable(AppInventoryItem a,boolean root){switch(this){case LAUNCH:return a.installed&&a.enabled&&a.launchable;case ENABLE_DISABLE:return root&&a.installed;case UNINSTALL:return a.installed&&!a.bundled;case FORCE_STOP:case PLAY_STORE:return root&&a.installed&&a.enabled;case CLEAR_DATA:return true;case APP_INFO:case SHARE_APK:return a.installed;default:return true;}} }

    private void showFavoriteBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.favorite)
                .setMessage(R.string.app_favorite_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void showAppActionsBoundary(){ showAppActionsBoundary(null); }
    private void showAppActionsBoundary(String packageName){
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
