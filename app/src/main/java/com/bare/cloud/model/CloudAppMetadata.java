package com.bare.cloud.model;

/** Reference CloudMetadata field shape. This is a domain DTO, not a Supabase table. */
public final class CloudAppMetadata {
    public String packageName;
    public String name;
    public Long dateBackup;
    public Long dateBackupUpdated;
    public String versionName;
    public Long versionCode;
    public String apkLink;
    public Long apkSize;
    public Long apkBackupDate;
    public String splitsLink;
    public Long splitsSize;
    public Long splitsSizeMirrored;
    public String sharedLibsLink;
    public Long sharedLibsSize;
    public Long sharedLibsSizeMirrored;
    public String dataLink;
    public Long dataSize;
    public Long dataSizeMirrored;
    public Boolean isDataEncrypted;
    public String dataEncryptionMethod;
    public String dataPasswordHash;
    public Long dataBackupDate;
    public String extDataLink;
    public Long extDataSize;
    public Long extDataSizeMirrored;
    public Boolean isExtDataEncrypted;
    public String extDataEncryptionMethod;
    public String extDataPasswordHash;
    public Long extDataBackupDate;
    public String mediaLink;
    public Long mediaSize;
    public Long mediaSizeMirrored;
    public Boolean isMediaEncrypted;
    public String mediaEncryptionMethod;
    public String mediaPasswordHash;
    public Long mediaBackupDate;
    public String expLink;
    public Long expSize;
    public Long expSizeMirrored;
    public Long expansionBackupDate;
    public Long minSBVersionCodeRequired;
    public String permissionIdsCsv;
    public String permissionStatesCsv;
    public String ntfAccessComponent;
    public String accessibilityComponent;
    public String ssaid;
    public String installerPackage;

    /** Reference protection metadata. Deletion enforcement remains F105. */
    public Boolean protectedBackup;
    /** Reference backup note metadata. */
    public String note;

    public String specialDataLink;
    public Long specialDataSize;
    public Integer keyVersion;
    public String splitsSBVersionNameRequired;
    public Long splitsSBVersionCodeRequired;
    public String sharedLibsSBVersionNameRequired;
    public Long sharedLibsSBVersionCodeRequired;
    public String dataSBVersionNameRequired;
    public Long dataSBVersionCodeRequired;
    public String extDataSBVersionNameRequired;
    public Long extDataSBVersionCodeRequired;
    public String mediaSBVersionNameRequired;
    public Long mediaSBVersionCodeRequired;
    public String expSBVersionNameRequired;
    public Long expSBVersionCodeRequired;
    public String apkSBVersionNameRequired;
    public Long apkSBVersionCodeRequired;

    public boolean isProtectedBackup() {
        return Boolean.TRUE.equals(protectedBackup);
    }

    public void updateProtection(boolean protectedValue) {
        protectedBackup = protectedValue;
    }

    public String getNote() {
        return note;
    }

    public void updateNote(String value) {
        note = value;
    }

    public boolean hasNote() {
        return note != null && !note.trim().isEmpty();
    }

    public void prepareForUpload() {
        minSBVersionCodeRequired = hasBackups() ? 580L : null;
        permissionIdsCsv = null;
        permissionStatesCsv = null;
        ntfAccessComponent = null;
        accessibilityComponent = null;
        ssaid = null;
        apkSBVersionCodeRequired = null;
        apkSBVersionNameRequired = null;
        splitsSBVersionCodeRequired = null;
        splitsSBVersionNameRequired = null;
        sharedLibsSBVersionCodeRequired = null;
        sharedLibsSBVersionNameRequired = null;
        dataSBVersionCodeRequired = null;
        dataSBVersionNameRequired = null;
        extDataSBVersionCodeRequired = null;
        extDataSBVersionNameRequired = null;
        mediaSBVersionCodeRequired = null;
        mediaSBVersionNameRequired = null;
        expSBVersionCodeRequired = null;
        expSBVersionNameRequired = null;
    }

    /** Reference hasBackups(): APK, data, external data, media, or expansion. */
    public boolean hasBackups() {
        return hasLink(apkLink) || hasLink(dataLink) || hasLink(extDataLink) ||
                hasLink(mediaLink) || hasLink(expLink);
    }

    private static boolean hasLink(String value) {
        return value != null && !value.isEmpty();
    }
}
