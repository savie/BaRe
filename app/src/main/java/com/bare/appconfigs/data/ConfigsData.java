package com.bare.appconfigs.data;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/** Reference-shaped aggregate validation for custom app configurations. */
public final class ConfigsData {
    private final List<ConfigSettings> settings;
    public ConfigsData(List<ConfigSettings> settings){
        this.settings=settings==null?new ArrayList<>():new ArrayList<>(settings);
    }
    public List<ConfigSettings> getSettings(){return Collections.unmodifiableList(settings);}
    public List<ConfigSettings> validate(Set<String> existingLabelIds){
        List<ConfigSettings> result=new ArrayList<>();
        for(ConfigSettings setting:settings) if(setting!=null&&setting.isValid(existingLabelIds)) result.add(setting);
        return result;
    }
    public ConfigsData removeCloudLocations(){
        List<ConfigSettings> result=new ArrayList<>();
        for(ConfigSettings setting:settings) if(setting!=null) result.add(setting.removeCloudLocation());
        return new ConfigsData(result);
    }
}
