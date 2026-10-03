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
    /** F93 PackageInstaller session contract; execution is deliberately not invoked in P5.5. */
    public static final class Installer {
        public static final class Entry { public final String archiveName,path; public final long size; public Entry(String n,String p,long s){archiveName=n;path=p;size=Math.max(0,s);} }
        public static final class Session { public final String packageName,installerPackage; public final java.util.List<Entry> entries; public final long totalSize;
            public Session(String p,String i,java.util.List<Entry> e){packageName=p;installerPackage=i;entries=java.util.Collections.unmodifiableList(new java.util.ArrayList<>(e));long n=0;for(Entry x:e)n+=x.size;totalSize=n;}
        }
        public static final class Result { public final int status; public final String message,packageName; public Result(int s,String m,String p){status=s;message=m;packageName=p;} }
        public Session plan(String packageName,String installerPackage,java.util.List<Entry> entries){return new Session(packageName,installerPackage,entries==null?java.util.Collections.emptyList():entries);}
        public boolean verifySource(String expected,String installer,String initiating,String installing){return expected!=null&&expected.equals(installer)&&expected.equals(initiating)&&expected.equals(installing);}
        public boolean isSuccess(int status){return status==0;}
    }

}