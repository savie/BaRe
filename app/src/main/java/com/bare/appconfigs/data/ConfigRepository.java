package com.bare.appconfigs.data;

import java.util.List;

/** Persistence boundary for the user-owned configuration aggregate. */
public interface ConfigRepository {
    ConfigsData load();
    void save(ConfigSettings config);
    void remove(String id);
    List<ConfigSettings> valid();
}
