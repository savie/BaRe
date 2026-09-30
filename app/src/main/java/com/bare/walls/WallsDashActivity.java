package com.bare.walls;

import android.app.WallpaperManager;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.io.File;

public final class WallsDashActivity extends AppCompatActivity {
    private static final String HOME_WALL = "home_wall.wal";
    private static final String LOCK_WALL = "lock_wall.wal";

    private ImageView homePreview;
    private ImageView lockPreview;
    private TextView title;
    private TextView subtitle;
    private MaterialButton refresh;
    private MaterialButton backup;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.walls_dash_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.wallpapers);
        }

        homePreview = findViewById(R.id.iv_image1);
        lockPreview = findViewById(R.id.iv_image2);
        title = findViewById(R.id.tv_title);
        subtitle = findViewById(R.id.tv_subtitle2);
        refresh = findViewById(R.id.btn_shortcut1);
        backup = findViewById(R.id.btn_shortcut2);

        refresh.setOnClickListener(v -> loadCurrentWallpapers());
        backup.setOnClickListener(v -> showBackupLocations());

        loadCurrentWallpapers();
        wireManageCards();
    }

    private void loadCurrentWallpapers() {
        refresh.setEnabled(false);
        title.setText(R.string.currently_applied);
        subtitle.setText(R.string.applied_walls_summary);

        File home = wallpaperFile(HOME_WALL);
        File lock = wallpaperFile(LOCK_WALL);
        boolean hasHome = home.isFile();
        boolean hasLock = lock.isFile();

        if (hasHome) {
            homePreview.setImageBitmap(BitmapFactory.decodeFile(home.getAbsolutePath()));
        } else {
            homePreview.setImageDrawable(null);
        }
        if (hasLock) {
            lockPreview.setImageBitmap(BitmapFactory.decodeFile(lock.getAbsolutePath()));
        } else if (hasHome) {
            lockPreview.setImageBitmap(BitmapFactory.decodeFile(home.getAbsolutePath()));
        } else {
            lockPreview.setImageDrawable(null);
        }

        if (!hasHome && !hasLock) {
            try {
                WallpaperManager manager = WallpaperManager.getInstance(this);
                if (manager.getWallpaperId(WallpaperManager.FLAG_SYSTEM) != -1) {
                    subtitle.setText(R.string.current_wallpaper_is_managed_by_android);
                } else {
                    subtitle.setText(R.string.no_wallpapers_found);
                }
            } catch (RuntimeException ignored) {
                subtitle.setText(R.string.no_wallpapers_found);
            }
        }
        refresh.setEnabled(true);
    }

    private File wallpaperFile(String name) {
        return new File(getFilesDir(), name);
    }

    private void showBackupLocations() {
        String[] items = {getString(R.string.device), getString(R.string.cloud)};
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.select_backup_locations)
                .setMultiChoiceItems(items, new boolean[]{false, false}, null)
                .setPositiveButton(R.string.backup, (d, which) ->
                        showBoundary(R.string.wallpaper_backup_boundary))
                .setNegativeButton(R.string.close, null)
                .show();
    }

    private void wireManageCards() {
        View local = findViewById(R.id.wall_card_local);
        View cloud = findViewById(R.id.wall_card_cloud);
        if (local != null) local.findViewById(R.id.shortcuts_container)
                .setOnClickListener(v -> openManage());
        if (cloud != null) cloud.findViewById(R.id.shortcuts_container)
                .setOnClickListener(v -> openManage());
        configureBackupCard(local, R.string.local_backups, R.string.wallpaper_local_backups_pending);
        configureBackupCard(cloud, R.string.cloud_backups, R.string.wallpaper_cloud_backups_pending);
    }

    private void configureBackupCard(View card, int titleRes, int statusRes) {
        if (card == null) return;
        TextView cardTitle = card.findViewById(R.id.tv_card_title);
        TextView shortcut = card.findViewById(R.id.tv_shortcut);
        if (cardTitle != null) cardTitle.setText(titleRes);
        if (shortcut != null) shortcut.setText(statusRes);
    }

    private void openManage() {
        Intent intent = new Intent(this, WallsManageActivity.class);
        startActivity(intent);
    }

    private void showBoundary(int titleRes) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(titleRes)
                .setMessage(R.string.p3_wallpapers_engine_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}