package com.bare.messagescalls.backups;

import android.content.Context;

import com.bare.core.state.LocalState;
import com.bare.settings.SettingsRepository;
import com.bare.settings.model.AppSettings;

/** Reference F72 retention policy owner for local Messages backups. */
public final class MessagesBackupRetentionCoordinator {
    private final MessagesBackupRepository repository;
    private final SettingsRepository settings;

    public MessagesBackupRetentionCoordinator(Context context) {
        Context app = context.getApplicationContext();
        repository = new MessagesBackupRepository(app);
        settings = new SettingsRepository(new LocalState(app));
    }

    public int enforceConfiguredLimit() {
        AppSettings value = settings.read();
        Integer max = value.getMaxSmsBackups();
        return max == null || max <= 0 ? 0 : repository.enforceRetention(max);
    }
}
