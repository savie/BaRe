package com.bare.appconfigs.data;

import com.bare.settings.MultipleBackupStrategy;
import com.bare.settings.appbackuplimits.AppBackupLimitItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/** Reference-shaped App configuration validation/normalization boundary. */
public final class ConfigSettings {
    private final int version;
    private final String id;
    private final ApplyData applyData;
    private final String appParts;
    private final String locations;
    private final String syncOption;
    private final List<AppBackupLimitItem> backupLimits;
    private final Integer archiveBackup;
    private final MultipleBackupStrategy multipleBackupStrategy;
    private final String restorePermissionsMode;
    private final Integer restoreSpecialPermissions;
    private final Integer restoreSsaid;
    private final Integer compressionLevel;
    private final Integer cacheBackup;
    private final Integer isForceRedo;
    private final Integer enabled;

    public ConfigSettings(int version, String id, ApplyData applyData, String appParts,
            String locations, String syncOption, List<AppBackupLimitItem> backupLimits,
            Integer archiveBackup, MultipleBackupStrategy multipleBackupStrategy,
            String restorePermissionsMode, Integer restoreSpecialPermissions,
            Integer restoreSsaid, Integer compressionLevel, Integer cacheBackup,
            Integer isForceRedo, Integer enabled) {
        if (id == null) throw new NullPointerException("id");
        this.version=version; this.id=id; this.applyData=applyData; this.appParts=appParts;
        this.locations=locations; this.syncOption=syncOption;
        this.backupLimits=backupLimits==null?null:new ArrayList<>(backupLimits);
        this.archiveBackup=archiveBackup; this.multipleBackupStrategy=multipleBackupStrategy;
        this.restorePermissionsMode=restorePermissionsMode;
        this.restoreSpecialPermissions=restoreSpecialPermissions; this.restoreSsaid=restoreSsaid;
        this.compressionLevel=compressionLevel; this.cacheBackup=cacheBackup;
        this.isForceRedo=isForceRedo; this.enabled=enabled;
    }

    public ApplyData getApplyData(){return applyData;}
    public String getId(){return id;}
    public String getAppParts(){return appParts;}
    public String getLocations(){return locations;}
    public String getSyncOption(){return syncOption;}
    public List<AppBackupLimitItem> getBackupLimits(){return backupLimits==null?null:Collections.unmodifiableList(backupLimits);}
    public Integer getArchiveBackup(){return archiveBackup;}
    public MultipleBackupStrategy getMultipleBackupStrategy(){return multipleBackupStrategy;}
    public String getRestorePermissionsMode(){return restorePermissionsMode;}
    public Integer getRestoreSpecialPermissions(){return restoreSpecialPermissions;}
    public Integer getRestoreSsaid(){return restoreSsaid;}
    public Integer getCompressionLevel(){return compressionLevel;}
    public Integer getCacheBackup(){return cacheBackup;}
    public Integer getIsForceRedo(){return isForceRedo;}
    public Integer getEnabled(){return enabled;}

    public boolean isValid(Set<String> existingLabelIds, boolean allowInvalidApplyData){
        return applyData!=null && applyData.isValid(existingLabelIds, allowInvalidApplyData);
    }
    public boolean isValid(Set<String> existingLabelIds){return isValid(existingLabelIds,false);}

    public ConfigSettings removeCloudLocation(){
        if(locations==null)return this;
        List<String> kept=new ArrayList<>();
        for(String token:locations.split(",\\s*")) if(!"CLOUD".equals(token)) kept.add(token);
        String normalized=String.join(", ",kept);
        return new ConfigSettings(version,id,applyData,appParts,normalized.isEmpty()?null:normalized,syncOption,
                backupLimits,archiveBackup,multipleBackupStrategy,restorePermissionsMode,
                restoreSpecialPermissions,restoreSsaid,compressionLevel,cacheBackup,isForceRedo,enabled);
    }

    public static final class ApplyData {
        private final String labels;
        public ApplyData(String labels){this.labels=labels;}
        public String getLabelsRaw(){return labels;}

        public List<String> getLabelIds(Set<String> existingLabelIds){
            if(labels==null||labels.trim().isEmpty())return null;
            List<String> result=new ArrayList<>();
            for(String raw:labels.split(",\\s*")){
                String id=raw.trim();
                if(id.isEmpty())continue;
                if(existingLabelIds==null||existingLabelIds.contains(id))result.add(id);
            }
            return result;
        }
        public boolean hasLabels(Set<String> existingLabelIds){
            List<String> ids=getLabelIds(existingLabelIds);
            return ids!=null&&!ids.isEmpty();
        }
        public boolean isValid(Set<String> existingLabelIds, boolean allowInvalid){
            if(hasLabels(existingLabelIds))return true;
            return allowInvalid&&labels!=null&&!labels.trim().isEmpty();
        }
    }
}
