package com.bare.walls;

import android.app.WallpaperManager;
import android.content.Intent;
import android.view.View;
import java.io.InputStream;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class WallApplyActivity extends AppCompatActivity {
    private static final String KEY_WALL_URI = "wall_apply_uri";
    private Uri wallUri;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.walls_apply_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.set_wallpaper);
        }

        if (state != null && state.getString(KEY_WALL_URI) != null) {
            wallUri = Uri.parse(state.getString(KEY_WALL_URI));
        }
        if (wallUri == null && getIntent() != null) {
            wallUri = getIntent().getData();
        }

        ImageView image = findViewById(R.id.iv_wall);
        if (wallUri != null) {
            image.setImageURI(wallUri);
            View set = findViewById(R.id.btn_set);
            if (set != null) {
                set.setVisibility(View.VISIBLE);
                set.setOnClickListener(v -> chooseRestoreTarget());
            }
        }
    }

    private void chooseRestoreTarget() {
        String[] choices = {
                getString(R.string.wallpaper_restore_to_home),
                getString(R.string.wallpaper_restore_to_lock),
                getString(R.string.wallpaper_restore_to_both)
        };
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.set_wallpaper)
                .setItems(choices, (dialog, which) -> applyToTarget(which))
                .show();
    }

    private void applyToTarget(int target) {
        if (wallUri == null) return;
        try {
            WallpaperManager manager = WallpaperManager.getInstance(this);
            if (target == 0) {
                setStream(manager, WallpaperManager.FLAG_SYSTEM);
            } else if (target == 1) {
                setStream(manager, WallpaperManager.FLAG_LOCK);
            } else {
                setStream(manager, WallpaperManager.FLAG_SYSTEM);
                setStream(manager, WallpaperManager.FLAG_LOCK);
            }
            android.widget.Toast.makeText(this, R.string.wallpaper_restore_success,
                    android.widget.Toast.LENGTH_SHORT).show();
        } catch (Exception e) {
            android.widget.Toast.makeText(this,
                    getString(R.string.wallpaper_restore_failed,
                            e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage()),
                    android.widget.Toast.LENGTH_LONG).show();
        }
    }

    private void setStream(WallpaperManager manager, int which) throws Exception {
        try (InputStream in = getContentResolver().openInputStream(wallUri)) {
            if (in == null) throw new IllegalStateException("Wallpaper stream unavailable");
            if (android.os.Build.VERSION.SDK_INT >= 24) {
                manager.setStream(in, null, true, which);
            } else {
                manager.setStream(in);
            }
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_walls_apply, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_apply_external) {
            applyExternally();
            return true;
        }
        if (id == R.id.action_share) {
            shareWallpaper();
            return true;
        }
        if (id == R.id.action_delete) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.delete_backup)
                    .setMessage(R.string.p3_wallpapers_engine_boundary)
                    .setPositiveButton(R.string.close, null)
                    .show();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private void applyExternally() {
        if (wallUri == null) return;
        Intent intent = new Intent(Intent.ACTION_ATTACH_DATA);
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        intent.setDataAndType(wallUri, "image/jpeg");
        intent.putExtra("mimeType", "image/jpeg");
        startActivity(Intent.createChooser(intent, getString(R.string.set_wallpaper)));
    }

    private void shareWallpaper() {
        if (wallUri == null) return;
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.setType("image/jpeg");
        intent.putExtra(Intent.EXTRA_STREAM, wallUri);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        startActivity(Intent.createChooser(intent, getString(R.string.share)));
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        if (wallUri != null) outState.putString(KEY_WALL_URI, wallUri.toString());
        super.onSaveInstanceState(outState);
    }

    @Override public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}