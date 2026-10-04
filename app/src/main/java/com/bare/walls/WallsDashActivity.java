package com.bare.walls;

import android.app.WallpaperManager;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.widget.Toast;
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
        refreshLocalBackupCount();
    }

    private void loadCurrentWallpapers() {
        refresh.setEnabled(false);
        title.setText(R.string.currently_applied);
        subtitle.setText(R.string.applied_walls_summary);

        new Thread(() -> {
            File home = null;
            File lock = null;
            try {
                SystemWallpaperRepository.Result current =
                        new SystemWallpaperRepository(this).capture();
                home = current.getHome();
                lock = current.getLock();
            } catch (Exception ignored) {
            }
            final File homeFile = home;
            final File lockFile = lock;
            runOnUiThread(() -> {
                boolean hasHome = homeFile != null && homeFile.isFile();
                boolean hasLock = lockFile != null && lockFile.isFile();

                if (hasHome) {
                    homePreview.setImageBitmap(BitmapFactory.decodeFile(homeFile.getAbsolutePath()));
                } else {
                    homePreview.setImageDrawable(null);
                }
                if (hasLock) {
                    lockPreview.setImageBitmap(BitmapFactory.decodeFile(lockFile.getAbsolutePath()));
                } else if (hasHome) {
                    lockPreview.setImageBitmap(BitmapFactory.decodeFile(homeFile.getAbsolutePath()));
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
            });
        }, "wallpaper-current-capture").start();
    }

    private void showBackupLocations() {
        String[] items = {getString(R.string.device), getString(R.string.cloud)};
        boolean[] checked = {true, false};
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.select_backup_locations)
                .setMultiChoiceItems(items, checked, (dialog, which, isChecked) -> checked[which] = isChecked)
                .setPositiveButton(R.string.backup, (d, which) -> {
                    if (checked[0]) {
                        backupToDevice();
                    } else if (checked[1]) {
                        showBoundary(R.string.wallpaper_backup_boundary);
                    } else {
                        Toast.makeText(this, R.string.select_some_items, Toast.LENGTH_SHORT).show();
                    }
                })
                .setNegativeButton(R.string.close, null)
                .show();
    }

    private void backupToDevice() {
        backup.setEnabled(false);
        new Thread(() -> {
            try {
                WallpaperBackupRepository.Result result =
                        new WallpaperBackupRepository(this).backupLocal();
                runOnUiThread(() -> {
                    backup.setEnabled(true);
                    Toast.makeText(this,
                            getString(R.string.wallpaper_backup_success, result.getCount()),
                            Toast.LENGTH_LONG).show();
                    refreshLocalBackupCount();
                });
            } catch (Exception e) {
                runOnUiThread(() -> {
                    backup.setEnabled(true);
                    Toast.makeText(this,
                            getString(R.string.wallpaper_backup_failed,
                                    e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage()),
                            Toast.LENGTH_LONG).show();
                });
            }
        }, "wallpaper-backup").start();
    }

    private void refreshLocalBackupCount() {
        new Thread(() -> {
            int count;
            try {
                count = new WallpaperBackupRepository(this).listLocal().size();
            } catch (Exception ignored) {
                count = 0;
            }
            final int finalCount = count;
            runOnUiThread(() -> {
                View card = findViewById(R.id.wall_card_local);
                if (card != null) {
                    TextView shortcut = card.findViewById(R.id.tv_shortcut);
                    if (shortcut != null) {
                        shortcut.setText(getString(R.string.wallpaper_local_backups_count, finalCount));
                    }
                }
            });
        }, "wallpaper-inventory").start();
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