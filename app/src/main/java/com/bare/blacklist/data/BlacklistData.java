package com.bare.blacklist.data;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Reference-shaped blacklist aggregate keyed by package identity. */
public final class BlacklistData {
    private final Map<String, BlacklistApp> dataMap;

    public BlacklistData(Map<String, BlacklistApp> dataMap) {
        this.dataMap = dataMap == null
                ? new LinkedHashMap<>()
                : new LinkedHashMap<>(dataMap);
    }

    public Map<String, BlacklistApp> getDataMap() {
        return new LinkedHashMap<>(dataMap);
    }

    public List<BlacklistApp> getItems() {
        Collection<BlacklistApp> values = dataMap.values();
        return new ArrayList<>(values);
    }

    public BlacklistApp get(String packageName) {
        return dataMap.get(packageName);
    }

    public void put(BlacklistApp item) {
        if (item == null) throw new NullPointerException("item");
        dataMap.put(item.getPackageName(), item);
    }

    public void remove(String packageName) {
        if (packageName != null) dataMap.remove(packageName);
    }

    public void clear() {
        dataMap.clear();
    }

    public boolean isEmpty() {
        return dataMap.isEmpty();
    }
}
