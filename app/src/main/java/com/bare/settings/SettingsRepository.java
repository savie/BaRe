package com.bare.settings;

import com.bare.core.state.LocalState;
import com.bare.settings.appbackuplimits.AppBackupLimitItem;
import com.bare.settings.model.AppSettings;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.List;

/** Canonical local settings boundary. Remote sync remains outside this class. */
public final class SettingsRepository {
    private static final String KEY_SNAPSHOT = "bare_app_settings_v1";
    private final LocalState localState;

    public SettingsRepository(LocalState localState) {
        if (localState == null) throw new NullPointerException("localState");
        this.localState = localState;
    }

    public synchronized AppSettings read() {
        String raw = localState.getString(KEY_SNAPSHOT, null);
        if (raw == null || raw.isEmpty()) {
            return new AppSettings(localState.getBoolean(
                    LocalState.KEY_PLAY_NOTIFICATION_SOUNDS, true));
        }
        try {
            return decode(new JSONObject(raw));
        } catch (Exception ignored) {
            return new AppSettings(localState.getBoolean(
                    LocalState.KEY_PLAY_NOTIFICATION_SOUNDS, true));
        }
    }

    public synchronized void save(AppSettings settings) {
        if (settings == null) throw new IllegalArgumentException("settings");
        try {
            JSONObject o = new JSONObject();
            put(o, "themeModeId", settings.getThemeModeId());
            put(o, "useAmoledTheme", settings.getUseAmoledTheme());
            put(o, "pinnedQuickActions", settings.getPinnedQuickActions());
            put(o, "restorePermissionsMode", settings.getRestorePermissionsMode());
            put(o, "restoreSpecialAppPerms", settings.getRestoreSpecialAppPerms());
            put(o, "passwordStrategy", settings.getPasswordStrategy());
            put(o, "appsCompressionLevel", settings.getAppsCompressionLevel());
            putStrategy(o, "appsMultipleBackupStrategy", settings.getAppsMultipleBackupStrategy());
            put(o, "isAppCacheBackupReq", settings.getIsAppCacheBackupReq());
            put(o, "isAppBackupArchivingEnabled", settings.getIsAppBackupArchivingEnabled());
            putLimits(o, "appBackupLimits", settings.getAppBackupLimits());
            put(o, "isRestoreSsaids", settings.getIsRestoreSsaids());
            put(o, "isInPlaceApkDowngradeEnabled", settings.getIsInPlaceApkDowngradeEnabled());
            put(o, "isPlayNotificationSounds", settings.isPlayNotificationSounds());
            put(o, "isDynamicColors", settings.getIsDynamicColors());
            put(o, "language", settings.getLanguage());
            put(o, "maxSmsBackups", settings.getMaxSmsBackups());
            put(o, "msgsCompressionLevel", settings.getMsgsCompressionLevel());
            put(o, "backupMms", settings.getBackupMms());
            put(o, "maxCallBackups", settings.getMaxCallBackups());
            put(o, "callsCompressionLevel", settings.getCallsCompressionLevel());
            put(o, "isShowSystemApps", settings.getIsShowSystemApps());
            put(o, "appListRightSwipeActions", settings.getAppListRightSwipeActions());
            put(o, "appListLeftSwipeActions", settings.getAppListLeftSwipeActions());
            put(o, "foldersCompressionLevel", settings.getFoldersCompressionLevel());
            put(o, "cloudConnection", settings.getCloudConnection());
            put(o, "isParallelCloudTransfers", settings.getIsParallelCloudTransfers());
            put(o, "isMultithreadedDownloads", settings.getIsMultithreadedDownloads());
            put(o, "multiThreadChunksCount", settings.getMultiThreadChunksCount());
            put(o, "dropboxChunkSize", settings.getDropboxChunkSize());
            put(o, "oneDriveChunkSize", settings.getOneDriveChunkSize());
            put(o, "nextCloudChunkSize", settings.getNextCloudChunkSize());
            put(o, "nextCloudForcedChunking", settings.getNextCloudForcedChunking());
            put(o, "s3ChunkSize", settings.getS3ChunkSize());
            localState.putString(KEY_SNAPSHOT, o.toString());
            if (settings.isPlayNotificationSounds() != null) {
                localState.putBoolean(LocalState.KEY_PLAY_NOTIFICATION_SOUNDS,
                        settings.isPlayNotificationSounds());
            }
        } catch (Exception e) {
            throw new IllegalStateException("settings serialization failed", e);
        }
    }

    public void setPlayNotificationSounds(boolean enabled) {
        AppSettings settings = read();
        settings.setPlayNotificationSounds(enabled);
        save(settings);
    }

    private static AppSettings decode(JSONObject o) {
        return new AppSettings(
                nullableInt(o, "themeModeId"), nullableBool(o, "useAmoledTheme"),
                nullableString(o, "pinnedQuickActions"), nullableInt(o, "restorePermissionsMode"),
                nullableBool(o, "restoreSpecialAppPerms"), nullableInt(o, "passwordStrategy"),
                nullableInt(o, "appsCompressionLevel"),
                readStrategy(o.optJSONObject("appsMultipleBackupStrategy")),
                nullableBool(o, "isAppCacheBackupReq"), nullableBool(o, "isAppBackupArchivingEnabled"),
                readLimits(o.optJSONArray("appBackupLimits")), nullableBool(o, "isRestoreSsaids"),
                nullableBool(o, "isInPlaceApkDowngradeEnabled"),
                nullableBool(o, "isPlayNotificationSounds"), nullableBool(o, "isDynamicColors"),
                nullableString(o, "language"), nullableInt(o, "maxSmsBackups"),
                nullableInt(o, "msgsCompressionLevel"), nullableBool(o, "backupMms"),
                nullableInt(o, "maxCallBackups"), nullableInt(o, "callsCompressionLevel"),
                nullableBool(o, "isShowSystemApps"), nullableString(o, "appListRightSwipeActions"),
                nullableString(o, "appListLeftSwipeActions"), nullableInt(o, "foldersCompressionLevel"),
                nullableString(o, "cloudConnection"), nullableBool(o, "isParallelCloudTransfers"),
                nullableBool(o, "isMultithreadedDownloads"), nullableInt(o, "multiThreadChunksCount"),
                nullableInt(o, "dropboxChunkSize"), nullableInt(o, "oneDriveChunkSize"),
                nullableInt(o, "nextCloudChunkSize"), nullableBool(o, "nextCloudForcedChunking"),
                nullableInt(o, "s3ChunkSize"));
    }

    private static void put(JSONObject o, String key, Object value) throws Exception {
        o.put(key, value == null ? JSONObject.NULL : value);
    }

    private static void putStrategy(JSONObject o, String key, MultipleBackupStrategy value) throws Exception {
        o.put(key, value == null ? JSONObject.NULL : value.toJson());
    }

    private static void putLimits(JSONObject o, String key, List<AppBackupLimitItem> values) throws Exception {
        JSONArray array = new JSONArray();
        if (values != null) for (AppBackupLimitItem item : values) if (item != null) {
            array.put(new JSONObject()
                    .put("part", item.getPart())
                    .put("localLimitMBs", item.getLocalLimitMBs() == null ? JSONObject.NULL : item.getLocalLimitMBs())
                    .put("cloudLimitMBs", item.getCloudLimitMBs() == null ? JSONObject.NULL : item.getCloudLimitMBs()));
        }
        o.put(key, array);
    }

    private static List<AppBackupLimitItem> readLimits(JSONArray array) {
        if (array == null) return null;
        List<AppBackupLimitItem> result = new ArrayList<>();
        for (int i = 0; i < array.length(); i++) {
            JSONObject item = array.optJSONObject(i);
            if (item == null) continue;
            String part = item.optString("part", "");
            if (!part.isEmpty()) result.add(new AppBackupLimitItem(part,
                    nullableLong(item, "localLimitMBs"), nullableLong(item, "cloudLimitMBs")));
        }
        return result;
    }

    private static MultipleBackupStrategy readStrategy(JSONObject o) {
        if (o == null) return null;
        int type = o.optInt("typeInt", 0);
        int count = o.isNull("maxNumOfBackups") ? 2 : o.optInt("maxNumOfBackups", 2);
        int condition = o.isNull("conditionInt") ? 0 : o.optInt("conditionInt", 0);
        if (type == MultipleBackupStrategy.TYPE_DATED_BACKUPS) return MultipleBackupStrategy.datedBackups(count);
        if (type == MultipleBackupStrategy.TYPE_CONDITIONAL_BACKUP) return MultipleBackupStrategy.conditionalBackup(count, condition);
        return MultipleBackupStrategy.singleBackup();
    }

    private static Integer nullableInt(JSONObject o, String key) { return o.isNull(key) ? null : o.optInt(key); }
    private static Long nullableLong(JSONObject o, String key) { return o.isNull(key) ? null : o.optLong(key); }
    private static Boolean nullableBool(JSONObject o, String key) { return o.isNull(key) ? null : o.optBoolean(key); }
    private static String nullableString(JSONObject o, String key) { return o.isNull(key) ? null : o.optString(key, null); }
}