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
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.blacklist_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

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
}
