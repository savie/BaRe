package com.bare.appconfigs.data;

public final class AppConfigTaskInput {
    public final String configId;
    public final String packageName;
    public final boolean backup;
    public final boolean restore;
    public AppConfigTaskInput(String configId,String packageName,boolean backup,boolean restore){
        this.configId=configId;this.packageName=packageName;this.backup=backup;this.restore=restore;
    }
}