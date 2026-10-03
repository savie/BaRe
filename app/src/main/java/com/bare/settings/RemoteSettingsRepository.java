package com.bare.settings;

import com.bare.settings.model.AppSettings;

/** Account-scoped remote boundary; implementation belongs to the backend layer. */
public interface RemoteSettingsRepository {
    AppSettings load();
    void save(AppSettings settings);
    void delete();
}
