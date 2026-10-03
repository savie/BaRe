package com.bare.appslist.compatibility;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** F159 required-Swift-Backup-version lifecycle and restore gate. */
public final class RestoreCompatibility {
    public static final long SB_VERSION_CODE_REQUIRED=580L;
    public static final String SB_VERSION_NAME_REQUIRED="v5.0.0";
    public enum Result { ALLOWED, REQUIRES_NEWER_VERSION }
    private final Result result; private final String requiredVersion;
    public RestoreCompatibility(Result result,String requiredVersion){this.result=result;this.requiredVersion=requiredVersion;}
    public Result getResult(){return result;} public String getRequiredVersion(){return requiredVersion;}
    public static final class Requirements {
        private final List<Long> codes=new ArrayList<>();
        private final List<String> names=new ArrayList<>();
        public Requirements require(long code,String name){if(code>0)codes.add(code);if(name!=null&&!name.isEmpty())names.add(name);return this;}
        public List<Long> codes(){return Collections.unmodifiableList(codes);}
        public List<String> names(){return Collections.unmodifiableList(names);}
        public long minimumCode(){long min=Long.MAX_VALUE;for(Long x:codes)if(x!=null&&x>0)min=Math.min(min,x);return min==Long.MAX_VALUE?0:min;}
    }
    public static RestoreCompatibility check(long currentVersionCode,List<Long> requiredCodes){
        if(requiredCodes==null||requiredCodes.isEmpty())return new RestoreCompatibility(Result.ALLOWED,null);
        long required=0;for(Long x:requiredCodes)if(x!=null&&x>required)required=x;
        if(required>currentVersionCode)return new RestoreCompatibility(Result.REQUIRES_NEWER_VERSION,String.valueOf(required));
        return new RestoreCompatibility(Result.ALLOWED,null);
    }
    public static RestoreCompatibility checkCurrent(long currentVersionCode){
        return check(currentVersionCode,Collections.singletonList(SB_VERSION_CODE_REQUIRED));
    }
}