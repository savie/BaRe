package com.bare.appinfo;

import android.os.Bundle;
import android.widget.TextView;

import com.google.android.material.appbar.MaterialToolbar;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;

/**
 * P3 shell for the Reference App Info surface.
 *
 * The Reference requires its app parcelable contract before rendering concrete
 * metadata. Without that evidence/state, keep the surface explicit rather than
 * fabricating app data.
 */
public final class AppInfoActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.app_info_activity);

        MaterialToolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar.setNavigationOnClickListener(v -> finish());

        TextView info = findViewById(R.id.tv_info);
        info.setText(R.string.app_info_pending);

        if (state == null) {
            setTitle(R.string.app_info);
        }
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
