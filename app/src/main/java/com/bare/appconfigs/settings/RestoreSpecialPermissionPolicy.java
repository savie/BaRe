package com.bare.appconfigs.settings;

public final class RestoreSpecialPermissionPolicy {
    private final String mode;
    private final Integer specialPermissions;
    private final Integer ssaid;
    public RestoreSpecialPermissionPolicy(String mode,Integer specialPermissions,Integer ssaid){
        this.mode=mode;this.specialPermissions=specialPermissions;this.ssaid=ssaid;
    }
    public String getMode(){return mode;}
    public String getEffectiveMode(){return mode==null ? "Granted" : mode;}
    public Integer getSpecialPermissions(){return specialPermissions;}
    public boolean isRestoreSpecialPermissionsEnabled(){return specialPermissions==null || specialPermissions.intValue()==1;}
    public Integer getSsaid(){return ssaid;}
    public boolean isRestoreSsaidEnabled(){return ssaid!=null && ssaid.intValue()==1;}
}