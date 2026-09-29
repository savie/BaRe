package com.bare.settings;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;

/**
 * Reference-shaped settings category router.
 *
 * The Reference passes:
 *   - "category_title" for the toolbar title
 *   - "category" as an integer category selector (1..8)
 *
 * The concrete category fragment mappings remain unresolved because the
 * decompiled implementation uses obfuscated fragment classes. We preserve
 * the routing inputs without inventing those implementations.
 */
public final class SettingsDetailActivity extends AppCompatActivity {
    public static final String EXTRA_CATEGORY = "category";
    public static final String EXTRA_CATEGORY_TITLE = "category_title";

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.settings_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(getIntent().getStringExtra(EXTRA_CATEGORY_TITLE));
        }

        if (state == null) {
            int category = getIntent().getIntExtra(EXTRA_CATEGORY, 1);
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, SettingsCategoryBoundaryFragment.newInstance(category))
                    .commit();
        }
    }

    @Override
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }
}
