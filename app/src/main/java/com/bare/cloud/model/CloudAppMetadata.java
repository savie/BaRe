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
    public java.util.List<Long> getSBVersionCodesRequired(){
        java.util.ArrayList<Long> out=new java.util.ArrayList<>();
        Long[] values={apkSBVersionCodeRequired,splitsSBVersionCodeRequired,sharedLibsSBVersionCodeRequired,dataSBVersionCodeRequired,extDataSBVersionCodeRequired,mediaSBVersionCodeRequired,expSBVersionCodeRequired,minSBVersionCodeRequired};
        for(Long v:values)if(v!=null&&v>0&&!out.contains(v))out.add(v);java.util.Collections.sort(out);return out;
    }
    public String getSBVersionNameRequired(){
        return "v5.0.0";
    }
    public void stampRequiredVersionForBackupPart(String part){
        if(part==null)return;String p=part.toUpperCase(java.util.Locale.ROOT);
        if("APK".equals(p)){apkSBVersionCodeRequired=580L;apkSBVersionNameRequired="v5.0.0";}
        else if("SPLITS".equals(p)){splitsSBVersionCodeRequired=580L;splitsSBVersionNameRequired="v5.0.0";}
        else if("SHARED_LIBS".equals(p)){sharedLibsSBVersionCodeRequired=580L;sharedLibsSBVersionNameRequired="v5.0.0";}
        else if("DATA".equals(p)){dataSBVersionCodeRequired=580L;dataSBVersionNameRequired="v5.0.0";}
        else if("EXTDATA".equals(p)){extDataSBVersionCodeRequired=580L;extDataSBVersionNameRequired="v5.0.0";}
        else if("MEDIA".equals(p)){mediaSBVersionCodeRequired=580L;mediaSBVersionNameRequired="v5.0.0";}
        else if("EXPANSION".equals(p)){expSBVersionCodeRequired=580L;expSBVersionNameRequired="v5.0.0";}
        if(hasBackups())minSBVersionCodeRequired=580L;
    }
    /** LocalMetadata-shaped required-version envelope used by local backup metadata consumers. */
    public static final class LocalMetadata {
        public Long apkSBVersionCodeRequired,splitsSBVersionCodeRequired,sharedLibsSBVersionCodeRequired,dataSBVersionCodeRequired,extDataSBVersionCodeRequired,mediaSBVersionCodeRequired,expSBVersionCodeRequired;
        public String apkSBVersionNameRequired,splitsSBVersionNameRequired,sharedLibsSBVersionNameRequired,dataSBVersionNameRequired,extDataSBVersionNameRequired,mediaSBVersionNameRequired,expSBVersionNameRequired;
        public java.util.List<Long> getSBVersionCodesRequired(){java.util.ArrayList<Long> out=new java.util.ArrayList<>();Long[] v={apkSBVersionCodeRequired,splitsSBVersionCodeRequired,sharedLibsSBVersionCodeRequired,dataSBVersionCodeRequired,extDataSBVersionCodeRequired,mediaSBVersionCodeRequired,expSBVersionCodeRequired};for(Long x:v)if(x!=null&&x>0&&!out.contains(x))out.add(x);java.util.Collections.sort(out);return out;}
        public void stampAll(){apkSBVersionCodeRequired=splitsSBVersionCodeRequired=sharedLibsSBVersionCodeRequired=dataSBVersionCodeRequired=extDataSBVersionCodeRequired=mediaSBVersionCodeRequired=expSBVersionCodeRequired=580L;apkSBVersionNameRequired=splitsSBVersionNameRequired=sharedLibsSBVersionNameRequired=dataSBVersionNameRequired=extDataSBVersionNameRequired=mediaSBVersionNameRequired=expSBVersionNameRequired="v5.0.0";}
    }

}
