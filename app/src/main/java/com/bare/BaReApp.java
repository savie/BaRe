package com.bare;

import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;

public final class BaReApp extends Application {
    private static BaReApp instance;

    public static BaReApp getInstance() {
        BaReApp app = instance;
        if (app == null) {
            throw new IllegalStateException("BaReApp is not initialized");
        }
        return app;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        instance = this;
        createNotificationChannels();
    }

    private void createNotificationChannels() {
        NotificationManager manager =
                (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        if (manager == null) {
            return;
        }

        create(manager, "backup_restore_channel", getString(R.string.backup_and_restore),
                NotificationManager.IMPORTANCE_LOW, false, null);
        create(manager, "normal_channel", getString(R.string.normal),
                NotificationManager.IMPORTANCE_LOW, false, null);
        create(manager, "task_completion_channel_success", getString(R.string.task_successful),
                NotificationManager.IMPORTANCE_DEFAULT, true,
                resourceUri(R.raw.task_complete_sound_success));
        create(manager, "task_completion_channel_error", getString(R.string.task_error),
                NotificationManager.IMPORTANCE_DEFAULT, true,
                resourceUri(R.raw.task_complete_sound_error));
        create(manager, "task_completion_channel_silent", getString(R.string.task_complete_no_sound),
                NotificationManager.IMPORTANCE_LOW, true, null);
        create(manager, "crash_error_channel", "Crash notification",
                NotificationManager.IMPORTANCE_DEFAULT, true,
                resourceUri(R.raw.task_complete_sound_error));

        // Reference clears stale notifications when the process starts.
        manager.cancelAll();
    }

    private Uri resourceUri(int resourceId) {
        return Uri.parse(
                "android.resource://" + getPackageName() + "/" + resourceId);
    }

    public void refreshLocalizedNotificationChannels() {
        NotificationManager manager =
                (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        if (manager == null) {
            return;
        }

        refresh(manager, "backup_restore_channel", R.string.backup_and_restore);
        refresh(manager, "normal_channel", R.string.normal);
        refresh(manager, "task_completion_channel_success", R.string.task_successful);
        refresh(manager, "task_completion_channel_error", R.string.task_error);
        refresh(manager, "task_completion_channel_silent", R.string.task_complete_no_sound);
    }

    private void refresh(NotificationManager manager, String id, int nameRes) {
        NotificationChannel existing = manager.getNotificationChannel(id);
        if (existing == null) {
            return;
        }
        NotificationChannel channel = new NotificationChannel(
                id, getString(nameRes), existing.getImportance());
        channel.setShowBadge(existing.canShowBadge());
        channel.enableVibration(existing.shouldVibrate());
        channel.setSound(existing.getSound(), existing.getAudioAttributes());
        manager.createNotificationChannel(channel);
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
