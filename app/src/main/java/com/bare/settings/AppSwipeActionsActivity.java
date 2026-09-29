package com.bare.settings;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;

public final class AppSwipeActionsActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.app_swipe_actions_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.swipe_actions);
        }

        if (state == null) {
            getSupportFragmentManager().beginTransaction()
                    .replace(R.id.container, new AppSwipeActionsFragment())
                    .commit();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_app_swipe_actions, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_reset) {
            AppSwipeActionsFragment fragment =
                    (AppSwipeActionsFragment) getSupportFragmentManager().findFragmentById(R.id.container);
            if (fragment != null) {
                fragment.resetToReferenceDefaults();
            }
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
