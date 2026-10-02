package com.bare.appconfigs.settings;

public final class AppCachePolicy {
    private Integer value;
    public AppCachePolicy(Integer value){this.value=value;}
    public Integer getValue(){return value;}
    public void setValue(Integer value){this.value=value;}
    public boolean isCacheBackupEnabled(){return value != null && value.intValue() == 1;}
    public boolean effectiveCacheBackup(){return isCacheBackupEnabled();}
}