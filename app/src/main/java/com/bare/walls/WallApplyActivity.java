package com.bare.walls;

import android.app.WallpaperManager;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
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
import java.io.InputStream;

public final class WallApplyActivity extends AppCompatActivity {
    private static final String KEY_WALL_URI = "wall_apply_uri";
    private static final String KEY_SELECTED_TARGET = "wall_apply_target";

    private ImageView image;
    private TextView target;
    private TextView status;
    private MaterialButton setButton;
    private Uri wallUri;
    private String selectedTarget = "home";

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

        image = findViewById(R.id.iv_wall);
        target = findViewById(R.id.tv_target);
        status = findViewById(R.id.tv_status);
        setButton = findViewById(R.id.btn_set);

        if (state != null) {
            String raw = state.getString(KEY_WALL_URI);
            if (raw != null) wallUri = Uri.parse(raw);
            selectedTarget = state.getString(KEY_SELECTED_TARGET, "home");
        }

        Intent incoming = getIntent();
        if (wallUri == null && incoming != null && incoming.getData() != null) {
            wallUri = incoming.getData();
        }

        findViewById(R.id.btn_target).setOnClickListener(v -> chooseTarget());
        setButton.setOnClickListener(v -> requestApply());

        render();
    }

    private void chooseTarget() {
        String[] targets = {getString(R.string.home_screen), getString(R.string.lock_screen), getString(R.string.home_and_lock_screen)};
        int checked = "lock".equals(selectedTarget) ? 1 : "both".equals(selectedTarget) ? 2 : 0;
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.wallpaper_target)
                .setSingleChoiceItems(targets, checked, (dialog, which) -> {
                    selectedTarget = which == 0 ? "home" : which == 1 ? "lock" : "both";
                    dialog.dismiss();
                    render();
                })
                .show();
    }

    private void render() {
        target.setText("home".equals(selectedTarget) ? R.string.home_screen
                : "lock".equals(selectedTarget) ? R.string.lock_screen : R.string.home_and_lock_screen);

        boolean ready = false;
        if (wallUri != null) {
            try (InputStream in = getContentResolver().openInputStream(wallUri)) {
                if (in != null) {
                    image.setImageBitmap(BitmapFactory.decodeStream(in));
                    ready = image.getDrawable() != null;
                }
            } catch (Exception ignored) {
                image.setImageDrawable(null);
            }
        }
        if (!ready) {
            image.setImageResource(android.R.drawable.ic_menu_gallery);
            status.setText(R.string.wallpaper_image_unavailable);
        } else {
            status.setText(R.string.wallpaper_ready_to_apply);
        }
        setButton.setEnabled(ready);
    }

    private void requestApply() {
        if (wallUri == null) return;
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.set_wallpaper)
                .setMessage(getString(R.string.wallpaper_apply_confirmation, target.getText()))
                .setPositiveButton(R.string.set_wallpaper, (d, w) -> applyBoundary())
                .setNegativeButton(R.string.close, null)
                .show();
    }

    private void applyBoundary() {
        Intent intent = new Intent(WallpaperManager.ACTION_CHANGE_LIVE_WALLPAPER);
        showBoundary(R.string.wallpaper_apply_boundary);
    }

    private void showBoundary(int titleRes) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(titleRes)
                .setMessage(R.string.p3_wallpapers_engine_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        if (wallUri != null) outState.putString(KEY_WALL_URI, wallUri.toString());
        outState.putString(KEY_SELECTED_TARGET, selectedTarget);
        super.onSaveInstanceState(outState);
    }

    @Override public boolean onSupportNavigateUp() { finish(); return true; }
}