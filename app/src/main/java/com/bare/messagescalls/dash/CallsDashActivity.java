package com.bare.messagescalls.dash;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.NestedScrollView;

import com.bare.R;
import com.bare.messagescalls.backuprestore.CallsBackupRestoreActivity;
import com.bare.messagescalls.backups.CallsBackupsActivity;
import com.bare.settings.SettingsActivity;
import com.bare.settings.SettingsDetailActivity;

public final class CallsDashActivity extends AppCompatActivity {
    private static final int PERMISSION_REQUEST = 9785;
    private static final String EXTRA_HIGHLIGHT_CLOUD_CARD = "highlight_cloud_card";
    private static final String STATE_HIGHLIGHT_CLOUD = "calls_dash.highlight_cloud";
    private boolean highlightCloudCard;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.smscalls_dash_activity);
        Toolbar toolbar = findViewById(R.id.toolbar);
        toolbar.setTitle(R.string.calls);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        highlightCloudCard = state != null
                ? state.getBoolean(STATE_HIGHLIGHT_CLOUD, false)
                : getIntent().getBooleanExtra(EXTRA_HIGHLIGHT_CLOUD_CARD, false);

        findViewById(R.id.btn_create_backup).setOnClickListener(
                v -> startActivity(new Intent(this, CallsBackupRestoreActivity.class)));
        findViewById(R.id.tv_local_state).setOnClickListener(
                v -> startActivity(new Intent(this, CallsBackupsActivity.class)));
        findViewById(R.id.local_shortcut).setOnClickListener(
                v -> startActivity(new Intent(this, CallsBackupsActivity.class)));
        findViewById(R.id.cloud_shortcut).setOnClickListener(v -> openCallLogSettings());

        if (highlightCloudCard) {
            NestedScrollView scrollView = findViewById(R.id.scroll_view);
            findViewById(R.id.cloud_card).post(() ->
                    scrollView.smoothScrollTo(0, findViewById(R.id.cloud_card).getTop()));
        }
        requestCallPermissions();
    }

    private void requestCallPermissions() {
        if (checkSelfPermission(Manifest.permission.WRITE_CALL_LOG) == PackageManager.PERMISSION_GRANTED
                && checkSelfPermission(Manifest.permission.READ_CALL_LOG) == PackageManager.PERMISSION_GRANTED
                && checkSelfPermission(Manifest.permission.READ_CONTACTS) == PackageManager.PERMISSION_GRANTED) return;
        requestPermissions(new String[]{
                Manifest.permission.WRITE_CALL_LOG, Manifest.permission.READ_CALL_LOG,
                Manifest.permission.READ_CONTACTS
        }, PERMISSION_REQUEST);
    }

    @Override public void onRequestPermissionsResult(int requestCode,String[] permissions,int[] grantResults){
        super.onRequestPermissionsResult(requestCode,permissions,grantResults);
        if(requestCode!=PERMISSION_REQUEST)return;
        for(int result:grantResults) if(result!=PackageManager.PERMISSION_GRANTED){
            ((TextView)findViewById(R.id.tv_local_state)).setText(R.string.call_logs_permission_required);
            return;
        }
        ((TextView)findViewById(R.id.tv_local_state)).setText(R.string.no_call_logs_found);
    }

    private void openCallLogSettings(){
        Intent intent=new Intent(this,SettingsDetailActivity.class);
        intent.putExtra("category",3);
        intent.putExtra("category_title",getString(R.string.call_logs_backups));
        startActivity(intent);
    }

    @Override public boolean onCreateOptionsMenu(Menu menu){
        getMenuInflater().inflate(R.menu.menu_calls_dash,menu); return true;
    }
    @Override public boolean onOptionsItemSelected(MenuItem item){
        if(item.getItemId()==R.id.action_calls_settings){openCallLogSettings();return true;}
        if(item.getItemId()==R.id.action_settings){startActivity(new Intent(this,SettingsActivity.class));return true;}
        return super.onOptionsItemSelected(item);
    }
    @Override protected void onSaveInstanceState(Bundle outState){
        outState.putBoolean(STATE_HIGHLIGHT_CLOUD,highlightCloudCard); super.onSaveInstanceState(outState);
    }
    @Override public boolean onSupportNavigateUp(){setResult(Activity.RESULT_CANCELED);finish();return true;}
}
