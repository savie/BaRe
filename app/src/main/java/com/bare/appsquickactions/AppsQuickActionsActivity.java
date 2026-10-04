package com.bare.appsquickactions;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bare.R;
import com.bare.appslist.ui.listbatch.AppsBatchActivity;
import com.bare.settings.SettingsActivity;
import com.bare.settings.SettingsDetailActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

/**
 * P3 Apps Quick Actions surface reconstructed from the Reference action
 * catalog. Selecting an action reaches the engine boundary only.
 */
public final class AppsQuickActionsActivity extends AppCompatActivity {
    private static final String[] REFERENCE_ACTIONS = {"ID_BACKUP_ALL_APPS","ID_BACKUP_PENDING_APPS","ID_BACKUP_UPDATED_APPS","ID_BACKUP_REDO_APPS","ID_BACKUP_SYNC_APPS","ID_RESTORE_ALL_APPS","ID_RESTORE_MISSING_APPS","ID_RESTORE_NEW_VERSIONS_APPS","ID_DELETE_BACKUPS_UNINSTALLED_APPS","ID_ENABLE_DISABLE_APPS_APPS"};
    private static final int[] ACTION_IDS = {
            R.id.action_backup_all, R.id.action_backup_missing, R.id.action_backup_updated,
            R.id.action_backup_redo, R.id.action_backup_sync,
            R.id.action_restore_all, R.id.action_restore_missing, R.id.action_restore_newer,
            R.id.action_delete_uninstalled, R.id.action_enable_disable
    };

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.apps_quick_actions_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setTitle(R.string.quick_actions_apps);
        }
        toolbar.setNavigationOnClickListener(v -> finish());

        for (int id : ACTION_IDS) {
            View action = findViewById(id);
            if (action != null) action.setOnClickListener(v -> launchQuickAction(v.getId()));
        }
    }

    private void launchQuickAction(int viewId) {
        String actionId = null;
        for (int i = 0; i < ACTION_IDS.length; i++) {
            if (ACTION_IDS[i] == viewId) {
                actionId = REFERENCE_ACTIONS[i];
                break;
            }
        }
        if (actionId == null) return;
        try {
            AppsQuickActionRequest request = AppsQuickActionRequest.fromReferenceId(actionId);
            Intent intent = new Intent(this, AppsBatchActivity.class);
            intent.putExtra("quick_action_request", request);
            startActivity(intent);
        } catch (IllegalArgumentException ignored) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(actionId)
                    .setMessage(R.string.p3_quick_action_boundary)
                    .setPositiveButton(R.string.close, null)
                    .show();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_apps_dash, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        if (id == R.id.action_app_backup_settings) {
            Intent i = new Intent(this, SettingsDetailActivity.class);
            i.putExtra("category", 1);
            i.putExtra("category_title", getString(R.string.app_backups));
            startActivity(i);
            return true;
        }
        if (id == R.id.action_settings) {
            startActivity(new Intent(this, SettingsActivity.class));
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public boolean onSupportNavigateUp() {
        finish();
        return true;
    }
    public static final class QuickActionCatalog {
        public java.util.List<String> backup(){return java.util.Arrays.asList("ID_BACKUP_ALL_APPS","ID_BACKUP_PENDING_APPS","ID_BACKUP_UPDATED_APPS","ID_BACKUP_REDO_APPS","ID_BACKUP_SYNC_APPS");}
        public java.util.List<String> restore(){return java.util.Arrays.asList("ID_RESTORE_ALL_APPS","ID_RESTORE_MISSING_APPS","ID_RESTORE_NEW_VERSIONS_APPS");}
        public java.util.List<String> other(){return java.util.Arrays.asList("ID_DELETE_BACKUPS_UNINSTALLED_APPS","ID_ENABLE_DISABLE_APPS_APPS");}
    }

}
