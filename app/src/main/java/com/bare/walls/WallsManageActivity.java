package com.bare.walls;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.FileProvider;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class WallsManageActivity extends AppCompatActivity {
    private boolean cloudMode;
    private RecyclerView recycler;
    private WallpaperLocalRepository localRepository;
    private WallAdapter adapter;

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
        recycler.setLayoutManager(new GridLayoutManager(this, 4));

        localRepository = new WallpaperLocalRepository();
        adapter = new WallAdapter();
        recycler.setAdapter(adapter);

        if (!cloudMode) {
            loadLocalInventory();
        }

        invalidateOptionsMenu();
    }

    private void loadLocalInventory() {
        new Thread(() -> {
            List<WallpaperLocalRepository.Item> items =
                    localRepository.list(this);
            runOnUiThread(() -> adapter.submit(items));
        }).start();
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
            if (!cloudMode) adapter.selectAll();
            return true;
        }
        if (id == R.id.action_delete) {
            if (!cloudMode) {
                deleteSelected();
            } else {
                showCloudBoundary();
            }
            return true;
        }
        if (id == R.id.action_download_all || id == R.id.action_sync) {
            showCloudBoundary();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private void deleteSelected() {
        List<WallpaperLocalRepository.Item> selected = adapter.selectedItems();
        if (selected.isEmpty()) {
            new MaterialAlertDialogBuilder(this)
                    .setMessage(R.string.select_some_items)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return;
        }

        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.delete_backup)
                .setMessage(R.string.sure_to_proceed)
                .setNegativeButton(R.string.cancel, null)
                .setPositiveButton(R.string.yes, (dialog, which) -> {
                    for (WallpaperLocalRepository.Item item : selected) {
                        localRepository.delete(item);
                    }
                    loadLocalInventory();
                })
                .show();
    }

    private void showCloudBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setMessage(R.string.p3_wallpapers_engine_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
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

    private final class WallAdapter extends RecyclerView.Adapter<WallAdapter.Holder> {
        private final List<WallpaperLocalRepository.Item> items = new ArrayList<>();
        private final Set<String> selected = new HashSet<>();

        void submit(List<WallpaperLocalRepository.Item> values) {
            items.clear();
            selected.clear();
            if (values != null) items.addAll(values);
            notifyDataSetChanged();
        }

        void selectAll() {
            selected.clear();
            for (WallpaperLocalRepository.Item item : items) selected.add(item.getFile().getAbsolutePath());
            notifyDataSetChanged();
        }

        List<WallpaperLocalRepository.Item> selectedItems() {
            List<WallpaperLocalRepository.Item> result = new ArrayList<>();
            for (WallpaperLocalRepository.Item item : items) {
                if (selected.contains(item.getFile().getAbsolutePath())) result.add(item);
            }
            return result;
        }

        @Override
        public Holder onCreateViewHolder(ViewGroup parent, int type) {
            View view = LayoutInflater.from(parent.getContext())
                    .inflate(R.layout.wall_item, parent, false);
            return new Holder(view);
        }

        @Override
        public void onBindViewHolder(Holder holder, int position) {
            WallpaperLocalRepository.Item item = items.get(position);
            String key = item.getFile().getAbsolutePath();
            boolean isSelected = selected.contains(key);

            if (item.getFile().isFile()) {
                holder.wall.setImageBitmap(BitmapFactory.decodeFile(item.getFile().getAbsolutePath()));
                holder.wall.setVisibility(View.VISIBLE);
            } else {
                holder.wall.setVisibility(View.GONE);
            }
            holder.selected.setVisibility(isSelected ? View.VISIBLE : View.INVISIBLE);
            holder.download.setVisibility(View.GONE);

            holder.itemView.setOnClickListener(v -> {
                if (!selected.isEmpty()) {
                    toggle(item);
                    return;
                }
                Uri uri = FileProvider.getUriForFile(
                        WallsManageActivity.this,
                        getPackageName() + ".fileprovider",
                        item.getFile());
                Intent intent = new Intent(WallsManageActivity.this, WallApplyActivity.class);
                intent.setData(uri);
                intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                startActivity(intent);
            });
            holder.itemView.setOnLongClickListener(v -> {
                toggle(item);
                return true;
            });
        }

        private void toggle(WallpaperLocalRepository.Item item) {
            String key = item.getFile().getAbsolutePath();
            if (!selected.add(key)) selected.remove(key);
            notifyDataSetChanged();
        }

        @Override public int getItemCount() { return items.size(); }

        final class Holder extends RecyclerView.ViewHolder {
            final ImageView download;
            final ImageView selected;
            final ImageView wall;

            Holder(View item) {
                super(item);
                download = item.findViewById(R.id.iv_download_indicator);
                selected = item.findViewById(R.id.iv_selected_indicator);
                wall = item.findViewById(R.id.iv_wall);
            }
        }
    }
}
