package com.bare.appconfigs.data;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class AppConfigRepository {
    private final LinkedHashMap<String,AppConfig> configs=new LinkedHashMap<>();
    public synchronized void replace(List<AppConfig> values){configs.clear();if(values!=null)for(AppConfig v:values)if(v!=null&&v.id!=null)configs.put(v.id,v);}
    public synchronized Map<String,AppConfig> snapshot(){return new LinkedHashMap<>(configs);}
    public synchronized List<AppConfig> validConfigs(){List<AppConfig> out=new ArrayList<>();for(AppConfig v:configs.values())if(v.valid)out.add(v);return out;}
}