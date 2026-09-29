package com.bare.settings;

import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;

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
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, fragmentForCategory(
                            getIntent().getIntExtra(EXTRA_CATEGORY, 1)))
                    .commit();
        }
    }

    private androidx.fragment.app.Fragment fragmentForCategory(int category) {
        switch (category) {
            case 1: return new SettingsAppsFragment();
            case 2: return new SettingsMessagesFragment();
            case 3: return new SettingsCallsFragment();
            case 4: return new SettingsLabsFragment();
            case 5: return new SettingsContactFragment();
            case 6: return new SettingsAboutFragment();
            case 7: return new SettingsCloudFragment();
            case 8: return new SettingsFoldersFragment();
            default: return new SettingsAppsFragment();
        }
    }

    @Override
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }
}
