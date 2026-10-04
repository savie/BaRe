package com.bare.home.search;

import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.content.Context;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.view.ViewGroup;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.bare.detail.DetailActivity;
import com.bare.folders.data.FolderItem;
import com.bare.folders.repository.LocalFolderSetupRepository;
import com.bare.folders.ui.FolderDetailActivity;
import com.bare.appslist.ui.listbatch.AppsBatchActivity;
import com.bare.appsquickactions.AppsQuickActionRequest;
import com.bare.messagescalls.backuprestore.CallsBackupRestoreActivity;
import com.bare.messagescalls.backups.CallsBackupsActivity;
import com.bare.messagescalls.dash.CallsDashActivity;
import com.bare.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import com.bare.messagescalls.backups.MessagesBackupsActivity;
import com.bare.messagescalls.dash.MessagesDashActivity;
import com.bare.walls.WallsDashActivity;
import com.bare.wifi.WifiActivity;

/**
 * F03 Home search consumer. Search semantics are delegated to HomeSearchEngine;
 * the Activity owns the Reference-shaped result surfaces and dispatch origin.
 */
public final class HomeSearchActivity extends AppCompatActivity {
    private int[] sourceBounds;
    private final HomeSearchEngine searchEngine = new HomeSearchEngine();
    private HomeSearchEngine.State lastSearchState;
    private final java.util.List<com.bare.appslist.data.AppInventoryItem> searchApps=new java.util.ArrayList<>();
    private final java.util.List<FolderItem> searchFolders = new java.util.ArrayList<>();
    private final Map<String, FolderItem> foldersById = new HashMap<>();
    private ResultAdapter quickActionsAdapter;
    private ResultAdapter appsAdapter;
    private ResultAdapter foldersAdapter;
    private EditText query;
    private ImageButton clear;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        if (getIntent() != null) {
            sourceBounds = getIntent().getIntArrayExtra("source_bounds");
        }

        setContentView(R.layout.home_search_activity);

        androidx.appcompat.widget.Toolbar toolbar = findViewById(R.id.search_toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        toolbar.setNavigationOnClickListener(v -> closeSearch(true));

        query = findViewById(R.id.et_search);
        clear = findViewById(R.id.btn_clear);
        clear.setOnClickListener(v -> {
            query.setText("");
            query.requestFocus();
        });

        RecyclerView shortcuts = findViewById(R.id.rv_home_search_shortcuts);
        RecyclerView quickActions = findViewById(R.id.rv_home_search_quick_actions);
        RecyclerView apps = findViewById(R.id.rv_home_search_apps);
        RecyclerView folders = findViewById(R.id.rv_home_search_folders);

        // P3 owns the result surfaces and their presentation containers.
        // Data adapters/indexing are intentionally deferred to P4.
        shortcuts.setLayoutManager(new LinearLayoutManager(this, RecyclerView.HORIZONTAL, false));
        quickActions.setLayoutManager(new LinearLayoutManager(this));
        apps.setLayoutManager(new LinearLayoutManager(this));
        folders.setLayoutManager(new LinearLayoutManager(this));

        shortcuts.setItemAnimator(null);
        quickActions.setItemAnimator(null);
        apps.setItemAnimator(null);
        folders.setItemAnimator(null);

        quickActionsAdapter = new ResultAdapter(HomeSearchEngine.Category.QUICK_ACTIONS);
        appsAdapter = new ResultAdapter(HomeSearchEngine.Category.APPS);
        foldersAdapter = new ResultAdapter(HomeSearchEngine.Category.FOLDERS);
        quickActions.setAdapter(quickActionsAdapter);
        apps.setAdapter(appsAdapter);
        folders.setAdapter(foldersAdapter);

        android.content.SharedPreferences prefs = getSharedPreferences("home_search", MODE_PRIVATE);
        searchEngine.setShowSystemApps(prefs.getBoolean("home_search_show_system_apps", true));
        loadIndexes();

        TextView systemToggle = findViewById(R.id.btn_home_search_apps_system_toggle);
        systemToggle.setOnClickListener(v -> {
            boolean next = !prefs.getBoolean("home_search_show_system_apps", true);
            prefs.edit().putBoolean("home_search_show_system_apps", next).apply();
            searchEngine.setShowSystemApps(next);
            refreshSearch();
        });

        query.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}

            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                clear.setVisibility(s != null && s.length() > 0 ? View.VISIBLE : View.GONE);
                refreshSearch();
            }

            @Override public void afterTextChanged(android.text.Editable s) {}
        });

        query.requestFocus();
        query.postDelayed(() -> {
            InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
            if (imm != null) {
                imm.showSoftInput(query, InputMethodManager.SHOW_IMPLICIT);
            }
        }, 120);
    }

    private void loadIndexes() {
        new Thread(() -> {
            try {
                java.util.List<com.bare.appslist.data.AppInventoryItem> apps =
                        new com.bare.appslist.data.AppInventoryLoader(this).load();
                java.util.List<FolderItem> folders =
                        new LocalFolderSetupRepository(this).list();
                runOnUiThread(() -> {
                    searchApps.clear();
                    searchApps.addAll(apps);
                    searchFolders.clear();
                    searchFolders.addAll(folders);
                    foldersById.clear();
                    for (FolderItem item : folders) foldersById.put(item.getId(), item);
                    refreshSearch();
                });
            } catch (RuntimeException ignored) {
                runOnUiThread(this::refreshSearch);
            }
        }, "bare-home-search-index").start();
    }

    private void refreshSearch() {
        if (query == null || quickActionsAdapter == null) return;

        java.util.List<HomeSearchEngine.Result> folderResults = new java.util.ArrayList<>();
        for (FolderItem item : searchFolders) {
            folderResults.add(new HomeSearchEngine.Result(
                    HomeSearchEngine.Category.FOLDERS,
                    item.getId(), item.getDisplayName(), item.getSourceFolder(), false));
        }

        java.util.List<HomeSearchEngine.Result> quickActions = new java.util.ArrayList<>();
        String[] backup = {
                "ID_BACKUP_ALL_APPS", "ID_BACKUP_MESSAGES",
                "ID_BACKUP_CALLS", "ID_BACKUP_FOLDERS"
        };
        String[] restore = {
                "ID_RESTORE_ALL_APPS", "ID_RESTORE_MESSAGES",
                "ID_RESTORE_CALLS", "ID_RESTORE_FOLDERS"
        };
        for (String id : backup) quickActions.add(new HomeSearchEngine.Result(
                HomeSearchEngine.Category.QUICK_ACTIONS, id, id, id, false));
        for (String id : restore) quickActions.add(new HomeSearchEngine.Result(
                HomeSearchEngine.Category.QUICK_ACTIONS, id, id, id, false));

        lastSearchState = searchEngine.search(
                query.getText() == null ? "" : query.getText().toString(),
                searchApps, folderResults, java.util.Collections.emptyList(), quickActions);

        quickActionsAdapter.setItems(lastSearchState.quickActions);
        appsAdapter.setItems(lastSearchState.apps);
        foldersAdapter.setItems(lastSearchState.folders);

        boolean hasQuick = !lastSearchState.quickActions.isEmpty();
        boolean hasApps = !lastSearchState.apps.isEmpty();
        boolean hasFolders = !lastSearchState.folders.isEmpty();
        findViewById(R.id.quick_actions_card).setVisibility(hasQuick ? View.VISIBLE : View.GONE);
        findViewById(R.id.apps_card).setVisibility(hasApps ? View.VISIBLE : View.GONE);
        findViewById(R.id.folders_card).setVisibility(hasFolders ? View.VISIBLE : View.GONE);

        View systemToggle = findViewById(R.id.btn_home_search_apps_system_toggle);
        boolean showSystemToggle = lastSearchState.hasBundledMatches && hasApps;
        systemToggle.setVisibility(showSystemToggle ? View.VISIBLE : View.GONE);
        if (showSystemToggle) {
            boolean showingSystem = searchEngine.isShowSystemApps();
            ((TextView) systemToggle).setText(
                    showingSystem ? R.string.hide_system_apps : R.string.show_system_apps);
            systemToggle.setContentDescription(((TextView) systemToggle).getText());
        }

        View empty = findViewById(R.id.home_search_empty);
        empty.setVisibility(hasQuick || hasApps || hasFolders ? View.GONE : View.VISIBLE);
    }

    private void performResult(HomeSearchEngine.Result result) {
        if (result == null) return;
        if (result.category == HomeSearchEngine.Category.APPS) {
            hideKeyboard();
            startActivity(new android.content.Intent(this, DetailActivity.class)
                    .putExtra("detail_launched_from_shortcut", true)
                    .setPackage(result.id));
            return;
        }
        if (result.category == HomeSearchEngine.Category.FOLDERS) {
            FolderItem item = foldersById.get(result.id);
            if (item != null) {
                hideKeyboard();
                startActivity(new android.content.Intent(this, FolderDetailActivity.class)
                        .putExtra("extra_folder_info", item));
            }
            return;
        }
        if (result.category == HomeSearchEngine.Category.QUICK_ACTIONS) {
            performQuickAction(result.id);
        }
    }

    private void performQuickAction(String id) {
        if ("ID_BACKUP_ALL_APPS".equals(id) || "ID_RESTORE_ALL_APPS".equals(id)) {
            try {
                AppsQuickActionRequest request = AppsQuickActionRequest.fromReferenceId(id);
                startActivity(new android.content.Intent(this, AppsBatchActivity.class)
                        .putExtra("quick_action_request", request));
            } catch (IllegalArgumentException ignored) {
                return;
            }
            closeSearch(false);
            return;
        }
        if ("ID_BACKUP_MESSAGES".equals(id) || "ID_RESTORE_MESSAGES".equals(id)) {
            if (!getPackageManager().hasSystemFeature("android.hardware.telephony")) {
                showFeatureUnavailable();
                return;
            }
            startActivity(new android.content.Intent(this,
                    id.startsWith("ID_RESTORE_") ? MessagesBackupsActivity.class
                            : MessagesBackupRestoreActivity.class));
            closeSearch(false);
            return;
        }
        if ("ID_BACKUP_CALLS".equals(id) || "ID_RESTORE_CALLS".equals(id)) {
            if (!getPackageManager().hasSystemFeature("android.hardware.telephony")) {
                showFeatureUnavailable();
                return;
            }
            startActivity(new android.content.Intent(this,
                    id.startsWith("ID_RESTORE_") ? CallsBackupsActivity.class
                            : CallsBackupRestoreActivity.class));
            closeSearch(false);
            return;
        }
        if ("ID_BACKUP_FOLDERS".equals(id) || "ID_RESTORE_FOLDERS".equals(id)) {
            startActivity(new android.content.Intent(this, com.bare.folders.ui.FoldersDashActivity.class)
                    .putExtra("action_id", id.contains("RESTORE") ? "Restore" : "Backup"));
            closeSearch(false);
            return;
        }
    }

    private void showFeatureUnavailable() {
        new com.google.android.material.dialog.MaterialAlertDialogBuilder(this)
                .setMessage(R.string.feature_not_supported_on_this_device)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void hideKeyboard() {
        if (query == null) return;
        InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        if (imm != null) {
            imm.hideSoftInputFromWindow(query.getWindowToken(), 0);
        }
    }

    private void closeSearch(boolean animated) {
        if (isFinishing()) return;
        hideKeyboard();
        finish();
        if (animated) {
            overridePendingTransition(R.anim.home_search_close_enter, R.anim.home_search_close_exit);
        } else {
            overridePendingTransition(0, 0);
        }
    }

    @Override
    public void onBackPressed() {
        closeSearch(true);
    }

    @Override
    public boolean onSupportNavigateUp() {
        closeSearch(true);
        return true;
    }

    private final class ResultAdapter extends RecyclerView.Adapter<ResultAdapter.Holder> {
        private final HomeSearchEngine.Category category;
        private final java.util.List<HomeSearchEngine.Result> items = new java.util.ArrayList<>();

        ResultAdapter(HomeSearchEngine.Category category) {
            this.category = category;
        }

        void setItems(java.util.List<HomeSearchEngine.Result> values) {
            items.clear();
            if (values != null) items.addAll(values);
            notifyDataSetChanged();
        }

        @NonNull
        @Override public Holder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            TextView view = new TextView(parent.getContext());
            view.setPadding(32, 20, 32, 20);
            view.setTextSize(15);
            return new Holder(view);
        }

        @Override public void onBindViewHolder(@NonNull Holder holder, int position) {
            HomeSearchEngine.Result item = items.get(position);
            holder.view.setText(item.secondary == null || item.secondary.isEmpty()
                    ? item.title : item.title + "\n" + item.secondary);
            holder.view.setOnClickListener(v -> performResult(item));
        }

        @Override public int getItemCount() { return items.size(); }

        final class Holder extends RecyclerView.ViewHolder {
            final TextView view;
            Holder(TextView view) { super(view); this.view = view; }
        }
    }

    public static final class HomeSearchEngine {
        public enum Category { SHORTCUTS, APPS, FOLDERS, QUICK_ACTIONS }
        public static final java.util.Set<String> EMPTY_QUERY_QUICK_ACTIONS =
                java.util.Collections.unmodifiableSet(new java.util.LinkedHashSet<String>(
                        java.util.Arrays.asList("ID_BACKUP_ALL_APPS","ID_RESTORE_ALL_APPS")));
        public static final class Result {
            public final Category category; public final String id,title,secondary; public final boolean bundled;
            public Result(Category c,String i,String t,String s,boolean b){category=c;id=i;title=t;secondary=s;bundled=b;}
        }
        public static final class State {
            public final String query; public final java.util.List<Result> shortcuts,apps,folders,quickActions;
            public final boolean hasBundledMatches,showSystemToggle;
            State(String q,java.util.List<Result>s,java.util.List<Result>a,java.util.List<Result>f,java.util.List<Result>x,boolean b,boolean t){
                query=q;shortcuts=s;apps=a;folders=f;quickActions=x;hasBundledMatches=b;showSystemToggle=t;
            }
        }
        private long generation; private boolean showSystemApps=true;
        public synchronized void setShowSystemApps(boolean value){showSystemApps=value;}
        public synchronized boolean isShowSystemApps(){return showSystemApps;}
        public synchronized State search(String raw,java.util.List<com.bare.appslist.data.AppInventoryItem> apps,
                java.util.List<Result> folders,java.util.List<Result> shortcuts,java.util.List<Result> quickActions){
            final long token=++generation; String q=raw==null?"":raw.trim().toLowerCase(java.util.Locale.ROOT);
            java.util.List<Result> a=new java.util.ArrayList<>();
            if(apps!=null)for(com.bare.appslist.data.AppInventoryItem item:apps){
                if(item==null)continue;
                if(q.isEmpty()||contains(item.name,q)||contains(item.packageName,q))
                    a.add(new Result(Category.APPS,item.packageName,item.name,item.packageName,item.bundled));
            }
            a.sort(java.util.Comparator.comparing(x->x.title,String.CASE_INSENSITIVE_ORDER));
            boolean bundled=false;for(Result x:a)bundled|=x.bundled;
            if(!showSystemApps){java.util.List<Result> v=new java.util.ArrayList<>();for(Result x:a)if(!x.bundled)v.add(x);a=v;}
            java.util.List<Result> f=filter(q,folders),s=filter(q,shortcuts),x=filter(q,quickActions);
            if(q.isEmpty()){java.util.List<Result> only=new java.util.ArrayList<>();for(Result r:x)if(EMPTY_QUERY_QUICK_ACTIONS.contains(r.id))only.add(r);x=only;}
            s=limit(s,q.isEmpty()?8:4);a=limit(a,q.isEmpty()?2:16);f=limit(f,q.isEmpty()?2:8);x=limit(x,q.isEmpty()?2:Integer.MAX_VALUE);
            if(token!=generation)return new State(q,new java.util.ArrayList<>(),new java.util.ArrayList<>(),new java.util.ArrayList<>(),new java.util.ArrayList<>(),false,showSystemApps);
            return new State(q,s,a,f,x,bundled,showSystemApps);
        }
        private static java.util.List<Result> filter(String q,java.util.List<Result> in){
            java.util.List<Result> out=new java.util.ArrayList<>();if(in==null)return out;
            for(Result r:in)if(r!=null&&(q.isEmpty()||contains(r.title,q)||contains(r.secondary,q)||contains(r.id,q)))out.add(r);
            out.sort(java.util.Comparator.comparing(x->x.title,String.CASE_INSENSITIVE_ORDER));return out;
        }
        private static java.util.List<Result> limit(java.util.List<Result> in,int n){return in.size()<=n?in:new java.util.ArrayList<>(in.subList(0,n));}
        private static boolean contains(String s,String q){return s!=null&&s.toLowerCase(java.util.Locale.ROOT).contains(q);}
    }

}
