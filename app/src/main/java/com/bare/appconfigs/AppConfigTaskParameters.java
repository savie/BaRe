package com.bare.appconfigs;
public final class AppConfigTaskParameters {
 private final String configId; private final boolean backupEnabled,restoreEnabled;
 public AppConfigTaskParameters(String configId,boolean backupEnabled,boolean restoreEnabled){this.configId=configId;this.backupEnabled=backupEnabled;this.restoreEnabled=restoreEnabled;}
 public String getConfigId(){return configId;} public boolean isBackupEnabled(){return backupEnabled;} public boolean isRestoreEnabled(){return restoreEnabled;}
}