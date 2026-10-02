package com.bare.appconfigs.data;

public final class AppConfigTaskMapper {
    private AppConfigTaskMapper(){}
    public static AppConfigTaskInput toTaskInput(AppConfig config,boolean backup,boolean restore){
        if(config==null||!config.valid)throw new IllegalArgumentException("invalid config");
        return new AppConfigTaskInput(config.id,config.packageName,backup,restore);
    }
}