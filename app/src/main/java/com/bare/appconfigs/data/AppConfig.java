package com.bare.appconfigs.data;

public final class AppConfig {
    public final int version;
    public final String id;
    public final String name;
    public final long updateDate;

    public AppConfig(int version, String id, String name, long updateDate) {
        if (id == null || id.isEmpty()) throw new IllegalArgumentException("id");
        this.version = version;
        this.id = id;
        this.name = name;
        this.updateDate = updateDate;
    }

    public String getName() {
        return name == null || name.trim().isEmpty() ? id : name;
    }

    public String getItemId() { return id; }
}