package com.bare.appconfigs.settings;
public final class RestoreSpecialPermissionPolicy {
    private final String mode;
    private final Integer specialPermissions;
    private final Integer ssaid;
    public RestoreSpecialPermissionPolicy(String mode,Integer specialPermissions,Integer ssaid){this.mode=mode;this.specialPermissions=specialPermissions;this.ssaid=ssaid;}
    public String getMode(){return mode;}
    public Integer getSpecialPermissions(){return specialPermissions;}
    public Integer getSsaid(){return ssaid;}
}