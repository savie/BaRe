package com.bare.walls;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class WallsManageActivity extends AppCompatActivity {
    private static final String KEY_CLOUD = "walls_manage_cloud";
    private static final String KEY_SELECTED = "walls_manage_selected";

    private boolean cloudMode;
    private int selectedCount;
    private RecyclerView recycler;
    private TextView empty;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.walls_manage_activity);

        if (state != null) {
            cloudMode = state.getBoolean(KEY_CLOUD, false);
            selectedCount = state.getInt(KEY_SELECTED, 0);
        } else {
            cloudMode = getIntent().getBooleanExtra("EXTRA_CLOUD_MODE", false);
        }

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        recycler = findViewById(R.id.recycler_view);
        empty = findViewById(R.id.empty_view);
        recycler.setLayoutManager(new GridLayoutManager(this, 4));
        recycler.setAdapter(new EmptyAdapter());

        renderState();
        invalidateOptionsMenu();
    }

    private void renderState() {
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle(cloudMode ? R.string.cloud_backups : R.string.device_backups);
            if (selectedCount > 0) {
                getSupportActionBar().setSubtitle(selectedCount + "/0");
            } else {
                getSupportActionBar().setSubtitle(null);
            }
        }
        empty.setText(R.string.no_wallpapers_found);
        empty.setVisibility(View.VISIBLE);
        recycler.setVisibility(View.GONE);
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
            selectedCount = 0;
            renderState();
            return true;
        }
        if (id == R.id.action_delete || id == R.id.action_download_all || id == R.id.action_sync) {
            if (selectedCount == 0) {
                new MaterialAlertDialogBuilder(this)
                        .setMessage(R.string.select_some_items)
                        .setPositiveButton(R.string.close, null)
                        .show();
                return true;
            }
            showBoundary(id);
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private void showBoundary(int actionId) {
        int title = actionId == R.id.action_delete ? R.string.delete_backup
                : actionId == R.id.action_download_all ? R.string.download : R.string.sync_in_cloud;
        new MaterialAlertDialogBuilder(this)
                .setTitle(title)
                .setMessage(R.string.p3_wallpapers_engine_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean(KEY_CLOUD, cloudMode);
        outState.putInt(KEY_SELECTED, selectedCount);
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onSupportNavigateUp() {
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