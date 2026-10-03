package com.bare.appconfigs.data;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/** Local implementation of the configuration persistence boundary. */
public final class LocalConfigRepository implements ConfigRepository {
    private static final String PREFS = "bare_configs";
    private final SharedPreferences prefs;
    private final ConfigSettings.TransferCodec codec = new ConfigSettings.TransferCodec();

    public LocalConfigRepository(Context context) {
        prefs = context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    @Override
    public synchronized ConfigsData load() {
        List<ConfigSettings> values = new ArrayList<>();
        for (Map.Entry<String, ?> entry : prefs.getAll().entrySet()) {
            if (!(entry.getValue() instanceof String)) continue;
            ConfigSettings value = codec.decode((String) entry.getValue());
            if (value != null) values.add(value);
        }
        return new ConfigsData(values);
    }

    @Override
    public synchronized void save(ConfigSettings config) {
        if (config == null || config.getId() == null || config.getId().trim().isEmpty()) {
            throw new IllegalArgumentException("config");
        }
        prefs.edit().putString(config.getId(), codec.encode(config)).apply();
    }

    @Override
    public synchronized void remove(String id) {
        if (id != null) prefs.edit().remove(id).apply();
    }

    @Override
    public synchronized List<ConfigSettings> valid() {
        return load().validate(null);
    }
}
