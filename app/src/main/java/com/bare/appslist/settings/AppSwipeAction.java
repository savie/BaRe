package com.bare.appslist.settings;
public enum AppSwipeAction {
    LAUNCH("launch"), ENABLE_DISABLE("enable_disable"), UNINSTALL("uninstall"), FORCE_STOP("force_stop"),
    PLAY_STORE("play_store"), CLEAR_DATA("clear_data"), APP_INFO("app_info"), SHARE_APK("share_apk");
    private final String id;
    AppSwipeAction(String id){this.id=id;}
    public String getId(){return id;}
    public static AppSwipeAction fromId(String id){ if(id==null)return null; for(AppSwipeAction a:values())if(a.id.equals(id))return a; return null; }
}