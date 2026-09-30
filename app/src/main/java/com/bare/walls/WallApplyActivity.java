package com.bare.walls;

import android.content.Intent;
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