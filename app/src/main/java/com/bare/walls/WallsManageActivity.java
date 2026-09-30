package com.bare.walls;

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

public final class WallsManageActivity extends AppCompatActivity {
    private boolean cloudMode;
    private RecyclerView recycler;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.walls_manage_activity);

        cloudMode = state != null
                ? state.getBoolean("walls_manage_cloud", false)
                : getIntent().getBooleanExtra("EXTRA_CLOUD_MODE", false);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(cloudMode ? R.string.cloud_backups : R.string.device_backups);
        }

        recycler = findViewById(R.id.recycler_view);
        recycler.setLayoutManager(new androidx.recyclerview.widget.GridLayoutManager(this, 4));
        recycler.setAdapter(new EmptyAdapter());
        invalidateOptionsMenu();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_walls_explore, menu);
        MenuItem download = menu.findItem(R.id.action_download_all);
        MenuItem sync = menu.findItem(R.id.action_sync);
        if (download != null) download.setVisible(cloudMode);
        if (sync != null) sync.setVisible(!cloudMode);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_select_all) {
            return true;
        }
        if (id == R.id.action_delete || id == R.id.action_download_all || id == R.id.action_sync) {
            new MaterialAlertDialogBuilder(this)
                    .setMessage(R.string.select_some_items)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean("walls_manage_cloud", cloudMode);
        super.onSaveInstanceState(outState);
    }

    @Override public boolean onSupportNavigateUp() {
        finish();
        return true;
    }

    static final class EmptyAdapter extends RecyclerView.Adapter<EmptyAdapter.Holder> {
        @Override public Holder onCreateViewHolder(android.view.ViewGroup parent, int viewType) {
            View v = new View(parent.getContext());
            v.setLayoutParams(new RecyclerView.LayoutParams(1, 1));
            return new Holder(v);
        }
        @Override public void onBindViewHolder(Holder holder, int position) {}
        @Override public int getItemCount() { return 0; }
        static final class Holder extends RecyclerView.ViewHolder {
            Holder(View itemView) { super(itemView); }
        }
    }
}