package com.bare.backend;

/**
 * Evidence-only Reference backend path shapes recovered from Reference 5.1.0 (620).
 *
 * This class is not a Supabase schema, is not an application backend implementation,
 * and must not be used as the target database model. Phase 6 derives the target
 * backend model from approved BaRe contracts and target policy.
 */
public final class ReferenceBackendContract {
    private ReferenceBackendContract() { }
    public static final String ROOT_APP_DATA = "appData";
    public static final String ROOT_USERS = "users";
    public static final String ROOT_TAGS = "tags";
    public static final String ROOT_PURCHASE_VERIFICATIONS = "purchase_verifications";
    public static final String USER_INFO = "userInfo";
    public static final String USER_CLOUD_V1 = "cloud_v1";
    public static final String CLOUD_APPS = "apps";
    public static final String CLOUD_FOLDERS = "folders";
    public static final String CLOUD_SMS_BACKUPS_COUNT = "smsBackupsCount";
    public static final String CLOUD_CALL_LOG_BACKUPS_COUNT = "callLogBackupsCount";
    public static String userInfoPath(String uid) { return userPath(uid) + "/" + USER_INFO; }
    public static String userCloudPath(String uid) { return userPath(uid) + "/" + USER_CLOUD_V1; }
    public static String userPath(String uid) {
        if (uid == null || uid.length() == 0) throw new IllegalArgumentException("uid required");
        return ROOT_USERS + "/" + uid;
    }
    public static String tagAppsPath(String cloudTag) { return tagPath(cloudTag) + "/" + CLOUD_APPS; }
    public static String tagFoldersPath(String cloudTag) { return tagPath(cloudTag) + "/" + CLOUD_FOLDERS; }
    public static String tagSmsBackupsCountPath(String cloudTag) { return tagPath(cloudTag) + "/" + CLOUD_SMS_BACKUPS_COUNT; }
    public static String tagCallLogBackupsCountPath(String cloudTag) { return tagPath(cloudTag) + "/" + CLOUD_CALL_LOG_BACKUPS_COUNT; }
    private static String tagPath(String cloudTag) {
        if (cloudTag == null || cloudTag.length() == 0) throw new IllegalArgumentException("cloudTag required");
        return ROOT_TAGS + "/" + cloudTag;
    }
}
