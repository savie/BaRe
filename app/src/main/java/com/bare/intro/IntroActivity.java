package com.bare.intro;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.widget.Toast;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.bare.R;
import com.bare.home.HomeActivity;
import com.google.android.material.button.MaterialButton;

public final class IntroActivity extends Activity {
    private static final int REQUEST_NOTIFICATIONS = 1003;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.intro_activity);

        IntroPermissionCardView storage = findViewById(R.id.container_storage_perm);
        IntroPermissionCardView notifications = findViewById(R.id.container_notifications_perm);
        MaterialButton continueButton = findViewById(R.id.btn_continue);
        MaterialButton anonymousButton = findViewById(R.id.btn_anonymous);

        storage.getActionButton().setOnClickListener(v -> requestStorageAccess());
        notifications.getActionButton().setOnClickListener(v -> requestNotificationAccess());

        continueButton.setOnClickListener(v -> completeIntro());
        anonymousButton.setOnClickListener(v -> completeIntro());

        updatePermissionState(storage, notifications);
    }

    private void requestNotificationAccess() {
        if (Build.VERSION.SDK_INT >= 33) {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.POST_NOTIFICATIONS)
                    != PackageManager.PERMISSION_GRANTED) {
                ActivityCompat.requestPermissions(
                        this,
                        new String[]{Manifest.permission.POST_NOTIFICATIONS},
                        REQUEST_NOTIFICATIONS);
            } else {
                Toast.makeText(this, "Notifications permission already granted", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private void requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= 30) {
            if (!Environment.isExternalStorageManager()) {
                Intent intent = new Intent(
                        Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        Uri.parse("package:" + getPackageName()));
                startActivity(intent);
            } else {
                Toast.makeText(this, "Storage permission already granted", Toast.LENGTH_SHORT).show();
            }
        } else {
            ActivityCompat.requestPermissions(
                    this,
                    new String[]{
                            Manifest.permission.READ_EXTERNAL_STORAGE,
                            Manifest.permission.WRITE_EXTERNAL_STORAGE
                    },
                    1004);
        }
    }

    private void updatePermissionState(
            IntroPermissionCardView storage,
            IntroPermissionCardView notifications) {
        if (Build.VERSION.SDK_INT >= 30 && Environment.isExternalStorageManager()) {
            storage.getActionButton().setText("Granted");
        }
        if (Build.VERSION.SDK_INT >= 33
                && ContextCompat.checkSelfPermission(this, Manifest.permission.POST_NOTIFICATIONS)
                == PackageManager.PERMISSION_GRANTED) {
            notifications.getActionButton().setText("Granted");
        }
    }

    private void completeIntro() {
        getSharedPreferences(getPackageName() + "_preferences", MODE_PRIVATE)
                .edit()
                .putBoolean("KEY_FIRST_START", false)
                .apply();

        startActivity(new Intent(this, HomeActivity.class));
        finish();
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        IntroPermissionCardView storage = findViewById(R.id.container_storage_perm);
        IntroPermissionCardView notifications = findViewById(R.id.container_notifications_perm);
        updatePermissionState(storage, notifications);
    }
}
