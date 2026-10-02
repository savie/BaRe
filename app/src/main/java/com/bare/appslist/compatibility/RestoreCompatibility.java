package com.bare.appslist.compatibility;
public final class RestoreCompatibility {
 public enum Result { ALLOWED, REQUIRES_NEWER_VERSION }
 private final Result result; private final String requiredVersion;
 public RestoreCompatibility(Result result,String requiredVersion){this.result=result;this.requiredVersion=requiredVersion;}
 public Result getResult(){return result;} public String getRequiredVersion(){return requiredVersion;}
}