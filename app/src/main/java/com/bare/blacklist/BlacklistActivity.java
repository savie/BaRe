package com.bare.blacklist;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class BlacklistActivity extends AppCompatActivity {
    private BlacklistRepository blacklistRepository;
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.blacklist_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        blacklistRepository = new BlacklistRepository(this);
        RecyclerView list = findViewById(R.id.rv_blacklist);
        list.setAdapter(new RecyclerView.Adapter<RecyclerView.ViewHolder>() {
            @Override public RecyclerView.ViewHolder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
                View v = new View(parent.getContext());
                v.setLayoutParams(new RecyclerView.LayoutParams(1, 1));
                return new RecyclerView.ViewHolder(v) {};
            }
            @Override public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {}
            @Override public int getItemCount() { return 0; }
        });

        View add = findViewById(R.id.btn_add_apps);
        if (add != null) add.setOnClickListener(v -> addAppsBoundary());
        View fab = findViewById(R.id.fab_add);
        if (fab != null) fab.setOnClickListener(v -> addAppsBoundary());
    }

    private void addAppsBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.add_apps)
                .setMessage(R.string.p3_blacklist_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_blacklist_apps, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_clear) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.clear_all)
                    .setMessage(R.string.p3_blacklist_clear_boundary)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
    public static final class BlacklistRepository {
        public enum Mode { HIDE, NO_DATA }
        public static final int MAX_APPS=100;
        private final android.content.SharedPreferences prefs;
        public BlacklistRepository(android.content.Context c){prefs=c.getApplicationContext().getSharedPreferences("blacklist_v1",android.content.Context.MODE_PRIVATE);}
        private org.json.JSONObject root(){try{return new org.json.JSONObject(prefs.getString("data","{}"));}catch(Exception e){return new org.json.JSONObject();}}
        public synchronized java.util.Map<String,Mode> list(){java.util.Map<String,Mode> out=new java.util.LinkedHashMap<>();org.json.JSONObject o=root();for(String k:o.keySet()){try{out.put(k,Mode.valueOf(o.optString(k,Mode.HIDE.name())));}catch(Exception e){out.put(k,Mode.HIDE);}}return out;}
        public synchronized boolean add(String packageName,Mode mode){if(packageName==null||packageName.trim().isEmpty())return false;java.util.Map<String,Mode> m=list();if(!m.containsKey(packageName)&&m.size()>=MAX_APPS)return false;m.put(packageName,mode==null?Mode.HIDE:mode);save(m);return true;}
        public synchronized void remove(String packageName){java.util.Map<String,Mode> m=list();m.remove(packageName);save(m);}
        public synchronized void clear(){prefs.edit().remove("data").apply();}
        public synchronized void setMode(String packageName,Mode mode){java.util.Map<String,Mode> m=list();if(m.containsKey(packageName)){m.put(packageName,mode);save(m);}}
        public synchronized boolean excluded(String packageName,Mode mode){Mode x=list().get(packageName);return x==mode;}
        private void save(java.util.Map<String,Mode> m){org.json.JSONObject o=new org.json.JSONObject();try{for(java.util.Map.Entry<String,Mode> e:m.entrySet())o.put(e.getKey(),e.getValue().name());prefs.edit().putString("data",o.toString()).apply();}catch(Exception e){throw new IllegalStateException(e);}}
    }

}
