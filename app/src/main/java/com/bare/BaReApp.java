package com.bare;

import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;

public final class BaReApp extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        createNotificationChannels();
    }

    private void createNotificationChannels() {
        NotificationManager manager =
                (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        if (manager == null) {
            return;
        }

        create(manager, "backup_restore_channel", "Backup and Restore",
                NotificationManager.IMPORTANCE_LOW, false, null);
        create(manager, "normal_channel", "Normal",
                NotificationManager.IMPORTANCE_LOW, false, null);
        create(manager, "task_completion_channel_success", "Task successful",
                NotificationManager.IMPORTANCE_DEFAULT, true, android.provider.Settings.System.DEFAULT_NOTIFICATION_URI);
        create(manager, "task_completion_channel_error", "Task error",
                NotificationManager.IMPORTANCE_DEFAULT, true, android.provider.Settings.System.DEFAULT_NOTIFICATION_URI);
        create(manager, "task_completion_channel_silent", "Task completion (No sound)",
                NotificationManager.IMPORTANCE_LOW, true, null);
        create(manager, "crash_error_channel", "Crash notification",
                NotificationManager.IMPORTANCE_DEFAULT, true, android.provider.Settings.System.DEFAULT_NOTIFICATION_URI);
    }

    private void create(
            NotificationManager manager,
            String id,
            String name,
            int importance,
            boolean vibration,
            Uri sound) {
        NotificationChannel channel = new NotificationChannel(id, name, importance);
        channel.setShowBadge(false);
        channel.enableVibration(vibration);
        if (sound != null) {
            AudioAttributes attributes = new AudioAttributes.Builder()
                    .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
                    .setUsage(AudioAttributes.USAGE_NOTIFICATION)
                    .build();
            channel.setSound(sound, attributes);
        }
        manager.createNotificationChannel(channel);
    }
}
