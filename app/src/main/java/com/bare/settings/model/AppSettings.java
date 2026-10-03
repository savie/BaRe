package com.bare.settings.model;

import com.bare.settings.MultipleBackupStrategy;
import com.bare.settings.appbackuplimits.AppBackupLimitItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * App settings model aligned with the recovered Reference AppSettings fields.
 * Cloud transport is intentionally outside this local model.
 */
public final class AppSettings {
    private Integer themeModeId;
    private Boolean useAmoledTheme;
    private String pinnedQuickActions;
    private Integer restorePermissionsMode;
    private Boolean restoreSpecialAppPerms;
    private Integer passwordStrategy;
    private Integer appsCompressionLevel;
    private MultipleBackupStrategy appsMultipleBackupStrategy;
    private Boolean isAppCacheBackupReq;
    private Boolean isAppBackupArchivingEnabled;
    private List<AppBackupLimitItem> appBackupLimits;
    private Boolean isRestoreSsaids;
    private Boolean isInPlaceApkDowngradeEnabled;
    private Boolean isPlayNotificationSounds;
    private Boolean isDynamicColors;
    private String language;
    private Integer maxSmsBackups;
    private Integer msgsCompressionLevel;
    private Boolean backupMms;
    private Integer maxCallBackups;
    private Integer callsCompressionLevel;
    private Boolean isShowSystemApps;
    private String appListRightSwipeActions;
    private String appListLeftSwipeActions;
    private Integer foldersCompressionLevel;
    private String cloudConnection;
    private Boolean isParallelCloudTransfers;
    private Boolean isMultithreadedDownloads;
    private Integer multiThreadChunksCount;
    private Integer dropboxChunkSize;
    private Integer oneDriveChunkSize;
    private Integer nextCloudChunkSize;
    private Boolean nextCloudForcedChunking;
    private Integer s3ChunkSize;

    public AppSettings() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null, null, null, null,
                null, null, null, null, null, null, null, null, null);
    }

    /** Backward-compatible constructor retained for existing local consumers. */
    public AppSettings(Boolean isPlayNotificationSounds) {
        this();
        this.isPlayNotificationSounds = isPlayNotificationSounds;
    }

    public AppSettings(
            Integer themeModeId,
            Boolean useAmoledTheme,
            String pinnedQuickActions,
            Integer restorePermissionsMode,
            Boolean restoreSpecialAppPerms,
            Integer passwordStrategy,
            Integer appsCompressionLevel,
            MultipleBackupStrategy appsMultipleBackupStrategy,
            Boolean isAppCacheBackupReq,
            Boolean isAppBackupArchivingEnabled,
            List<AppBackupLimitItem> appBackupLimits,
            Boolean isRestoreSsaids,
            Boolean isInPlaceApkDowngradeEnabled,
            Boolean isPlayNotificationSounds,
            Boolean isDynamicColors,
            String language,
            Integer maxSmsBackups,
            Integer msgsCompressionLevel,
            Boolean backupMms,
            Integer maxCallBackups,
            Integer callsCompressionLevel,
            Boolean isShowSystemApps,
            String appListRightSwipeActions,
            String appListLeftSwipeActions,
            Integer foldersCompressionLevel,
            String cloudConnection,
            Boolean isParallelCloudTransfers,
            Boolean isMultithreadedDownloads,
            Integer multiThreadChunksCount,
            Integer dropboxChunkSize,
            Integer oneDriveChunkSize,
            Integer nextCloudChunkSize,
            Boolean nextCloudForcedChunking,
            Integer s3ChunkSize) {
        this.themeModeId = themeModeId;
        this.useAmoledTheme = useAmoledTheme;
        this.pinnedQuickActions = pinnedQuickActions;
        this.restorePermissionsMode = restorePermissionsMode;
        this.restoreSpecialAppPerms = restoreSpecialAppPerms;
        this.passwordStrategy = passwordStrategy;
        this.appsCompressionLevel = appsCompressionLevel;
        this.appsMultipleBackupStrategy = appsMultipleBackupStrategy;
        this.isAppCacheBackupReq = isAppCacheBackupReq;
        this.isAppBackupArchivingEnabled = isAppBackupArchivingEnabled;
        this.appBackupLimits = appBackupLimits == null
                ? null : Collections.unmodifiableList(new ArrayList<>(appBackupLimits));
        this.isRestoreSsaids = isRestoreSsaids;
        this.isInPlaceApkDowngradeEnabled = isInPlaceApkDowngradeEnabled;
        this.isPlayNotificationSounds = isPlayNotificationSounds;
        this.isDynamicColors = isDynamicColors;
        this.language = language;
        this.maxSmsBackups = maxSmsBackups;
        this.msgsCompressionLevel = msgsCompressionLevel;
        this.backupMms = backupMms;
        this.maxCallBackups = maxCallBackups;
        this.callsCompressionLevel = callsCompressionLevel;
        this.isShowSystemApps = isShowSystemApps;
        this.appListRightSwipeActions = appListRightSwipeActions;
        this.appListLeftSwipeActions = appListLeftSwipeActions;
        this.foldersCompressionLevel = foldersCompressionLevel;
        this.cloudConnection = cloudConnection;
        this.isParallelCloudTransfers = isParallelCloudTransfers;
        this.isMultithreadedDownloads = isMultithreadedDownloads;
        this.multiThreadChunksCount = multiThreadChunksCount;
        this.dropboxChunkSize = dropboxChunkSize;
        this.oneDriveChunkSize = oneDriveChunkSize;
        this.nextCloudChunkSize = nextCloudChunkSize;
        this.nextCloudForcedChunking = nextCloudForcedChunking;
        this.s3ChunkSize = s3ChunkSize;
    }

    public Integer getThemeModeId() { return themeModeId; }
    public Boolean getUseAmoledTheme() { return useAmoledTheme; }
    public String getPinnedQuickActions() { return pinnedQuickActions; }
    public Integer getRestorePermissionsMode() { return restorePermissionsMode; }
    public Boolean getRestoreSpecialAppPerms() { return restoreSpecialAppPerms; }
    public Integer getPasswordStrategy() { return passwordStrategy; }
    public Integer getAppsCompressionLevel() { return appsCompressionLevel; }
    public MultipleBackupStrategy getAppsMultipleBackupStrategy() { return appsMultipleBackupStrategy; }
    public Boolean getIsAppCacheBackupReq() { return isAppCacheBackupReq; }
    public Boolean getIsAppBackupArchivingEnabled() { return isAppBackupArchivingEnabled; }
    public List<AppBackupLimitItem> getAppBackupLimits() { return appBackupLimits; }
    public Boolean getIsRestoreSsaids() { return isRestoreSsaids; }
    public Boolean getIsInPlaceApkDowngradeEnabled() { return isInPlaceApkDowngradeEnabled; }
    public Boolean isPlayNotificationSounds() { return isPlayNotificationSounds; }
    public Boolean getIsDynamicColors() { return isDynamicColors; }
    public String getLanguage() { return language; }
    public Integer getMaxSmsBackups() { return maxSmsBackups; }
    public Integer getMsgsCompressionLevel() { return msgsCompressionLevel; }
    public Boolean getBackupMms() { return backupMms; }
    public Integer getMaxCallBackups() { return maxCallBackups; }
    public Integer getCallsCompressionLevel() { return callsCompressionLevel; }
    public Boolean getIsShowSystemApps() { return isShowSystemApps; }
    public String getAppListRightSwipeActions() { return appListRightSwipeActions; }
    public String getAppListLeftSwipeActions() { return appListLeftSwipeActions; }
    public Integer getFoldersCompressionLevel() { return foldersCompressionLevel; }
    public String getCloudConnection() { return cloudConnection; }
    public Boolean getIsParallelCloudTransfers() { return isParallelCloudTransfers; }
    public Boolean getIsMultithreadedDownloads() { return isMultithreadedDownloads; }
    public Integer getMultiThreadChunksCount() { return multiThreadChunksCount; }
    public Integer getDropboxChunkSize() { return dropboxChunkSize; }
    public Integer getOneDriveChunkSize() { return oneDriveChunkSize; }
    public Integer getNextCloudChunkSize() { return nextCloudChunkSize; }
    public Boolean getNextCloudForcedChunking() { return nextCloudForcedChunking; }
    public Integer getS3ChunkSize() { return s3ChunkSize; }

    public void setPlayNotificationSounds(Boolean value) { isPlayNotificationSounds = value; }
    public void setThemeModeId(Integer value) { themeModeId = value; }
    public void setUseAmoledTheme(Boolean value) { useAmoledTheme = value; }
    public void setPinnedQuickActions(String value) { pinnedQuickActions = value; }
    public void setRestorePermissionsMode(Integer value) { restorePermissionsMode = value; }
    public void setRestoreSpecialAppPerms(Boolean value) { restoreSpecialAppPerms = value; }
    public void setPasswordStrategy(Integer value) { passwordStrategy = value; }
    public void setAppsCompressionLevel(Integer value) { appsCompressionLevel = value; }
    public void setAppsMultipleBackupStrategy(MultipleBackupStrategy value) { appsMultipleBackupStrategy = value; }
    public void setIsAppCacheBackupReq(Boolean value) { isAppCacheBackupReq = value; }
    public void setIsAppBackupArchivingEnabled(Boolean value) { isAppBackupArchivingEnabled = value; }
    public void setAppBackupLimits(List<AppBackupLimitItem> value) {
        appBackupLimits = value == null ? null : Collections.unmodifiableList(new ArrayList<>(value));
    }
    public void setIsRestoreSsaids(Boolean value) { isRestoreSsaids = value; }
    public void setIsInPlaceApkDowngradeEnabled(Boolean value) { isInPlaceApkDowngradeEnabled = value; }
    public void setIsDynamicColors(Boolean value) { isDynamicColors = value; }
    public void setLanguage(String value) { language = value; }
    public void setMaxSmsBackups(Integer value) { maxSmsBackups = value; }
    public void setMsgsCompressionLevel(Integer value) { msgsCompressionLevel = value; }
    public void setBackupMms(Boolean value) { backupMms = value; }
    public void setMaxCallBackups(Integer value) { maxCallBackups = value; }
    public void setCallsCompressionLevel(Integer value) { callsCompressionLevel = value; }
    public void setIsShowSystemApps(Boolean value) { isShowSystemApps = value; }
    public void setAppListRightSwipeActions(String value) { appListRightSwipeActions = value; }
    public void setAppListLeftSwipeActions(String value) { appListLeftSwipeActions = value; }
    public void setFoldersCompressionLevel(Integer value) { foldersCompressionLevel = value; }
    public void setCloudConnection(String value) { cloudConnection = value; }
    public void setIsParallelCloudTransfers(Boolean value) { isParallelCloudTransfers = value; }
    public void setIsMultithreadedDownloads(Boolean value) { isMultithreadedDownloads = value; }
    public void setMultiThreadChunksCount(Integer value) { multiThreadChunksCount = value; }
    public void setDropboxChunkSize(Integer value) { dropboxChunkSize = value; }
    public void setOneDriveChunkSize(Integer value) { oneDriveChunkSize = value; }
    public void setNextCloudChunkSize(Integer value) { nextCloudChunkSize = value; }
    public void setNextCloudForcedChunking(Boolean value) { nextCloudForcedChunking = value; }
    public void setS3ChunkSize(Integer value) { s3ChunkSize = value; }
}
