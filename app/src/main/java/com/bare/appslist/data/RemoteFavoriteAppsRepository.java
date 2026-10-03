package com.bare.appslist.data;

import java.util.List;

/** Account-scoped remote boundary; packageName remains the canonical item identity. */
public interface RemoteFavoriteAppsRepository {
    List<FavoriteApp> load();
    void add(FavoriteApp app);
    void remove(String packageName);
    void deleteAll();
}
