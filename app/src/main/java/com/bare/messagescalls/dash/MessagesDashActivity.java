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
import com.bare.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import com.bare.messagescalls.conversationsview.ConversationsActivity;
import com.bare.settings.SettingsActivity;
import com.bare.settings.SettingsDetailActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class MessagesDashActivity extends AppCompatActivity {
    private static final int PERMISSION_REQUEST = 9785;
    private static final String EXTRA_HIGHLIGHT_CLOUD_CARD = "highlight_cloud_card";
    private static final String STATE_HIGHLIGHT_CLOUD = "messages_dash.highlight_cloud";

    private boolean highlightCloudCard;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.smscalls_dash_activity);

        Toolbar toolbar = findViewById(R.id.toolbar);
        toolbar.setTitle(R.string.messages);
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        highlightCloudCard = state != null
                ? state.getBoolean(STATE_HIGHLIGHT_CLOUD, false)
                : getIntent().getBooleanExtra(EXTRA_HIGHLIGHT_CLOUD_CARD, false);

        findViewById(R.id.btn_create_backup).setOnClickListener(
                v -> startActivity(new Intent(this, MessagesBackupRestoreActivity.class)));

        findViewById(R.id.tv_local_state).setOnClickListener(
                v -> startActivity(new Intent(this, MessagesBackupRestoreActivity.class)));

        findViewById(R.id.local_shortcut).setOnClickListener(
                v -> startActivity(new Intent(this, MessagesBackupRestoreActivity.class)));

        findViewById(R.id.cloud_shortcut).setOnClickListener(
                v -> openMessageSettings());

        if (highlightCloudCard) {
            NestedScrollView scrollView = findViewById(R.id.scroll_view);
            findViewById(R.id.cloud_card).post(() ->
                    scrollView.smoothScrollTo(0, findViewById(R.id.cloud_card).getTop()));
        }

        requestMessagePermissions();
    }

    private void requestMessagePermissions() {
        if (checkSelfPermission(Manifest.permission.READ_SMS) == PackageManager.PERMISSION_GRANTED
                && checkSelfPermission(Manifest.permission.READ_CONTACTS) == PackageManager.PERMISSION_GRANTED) {
            showContent();
            return;
        }
        requestPermissions(new String[]{
                Manifest.permission.READ_SMS,
                Manifest.permission.READ_CONTACTS
        }, PERMISSION_REQUEST);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode != PERMISSION_REQUEST) {
            return;
        }
        for (int result : grantResults) {
            if (result != PackageManager.PERMISSION_GRANTED) {
                ((TextView) findViewById(R.id.tv_local_state))
                        .setText(R.string.messages_permission_required);
                return;
            }
        }
        showContent();
    }

    private void showContent() {
        findViewById(R.id.scroll_view).setVisibility(android.view.View.VISIBLE);
        findViewById(R.id.content_root).setVisibility(android.view.View.VISIBLE);
    }

    private void openMessageSettings() {
        Intent intent = new Intent(this, SettingsDetailActivity.class);
        intent.putExtra("category", 2);
        intent.putExtra("category_title", getString(R.string.messages_backups));
        startActivity(intent);
    }

    private void boundary(int title) {
        new MaterialAlertDialogBuilder(this)
                .setTitle(title)
                .setMessage(R.string.p3_activity_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_sms_dash, menu);
        MenuItem viewMessages = menu.findItem(R.id.action_view_messages);
        if (viewMessages != null) {
            viewMessages.setVisible(false);
        }
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.action_sms_settings) {
            openMessageSettings();
            return true;
        }
        if (item.getItemId() == R.id.action_view_messages) {
            startActivity(new Intent(this, ConversationsActivity.class));
            return true;
        }
        if (item.getItemId() == R.id.action_settings) {
            startActivity(new Intent(this, SettingsActivity.class));
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean(STATE_HIGHLIGHT_CLOUD, highlightCloudCard);
        super.onSaveInstanceState(outState);
    }

    @Override
    public boolean onSupportNavigateUp() {
        setResult(Activity.RESULT_CANCELED);
        finish();
        return true;
    }
}
