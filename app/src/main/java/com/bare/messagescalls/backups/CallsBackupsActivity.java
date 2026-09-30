package com.bare.messagescalls.backups;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

/**
 * P3 reconstruction of the Reference CallsBackupsActivity surface.
 *
 * The Reference Activity is ViewModel-backed and uses the shared SMS/call
 * backup list layout. The actual call-log backup/delete engine remains a
 * separate data-layer contract and is not invented here.
 */
public final class CallsBackupsActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.smscalls_backups_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        toolbar.setTitle(R.string.device_backups);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_smscalls_backups, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_delete) {
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.delete_all)
                    .setMessage(R.string.p3_activity_boundary)
                    .setPositiveButton(R.string.close, null)
                    .show();
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