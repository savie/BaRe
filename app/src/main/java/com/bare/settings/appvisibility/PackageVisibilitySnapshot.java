package com.bare.settings.appvisibility;
import java.util.Collections; import java.util.List;
public final class PackageVisibilitySnapshot {
 private final List<String> packages; private final boolean loading,error;
 public PackageVisibilitySnapshot(List<String> packages,boolean loading,boolean error){this.packages=packages==null?Collections.emptyList():Collections.unmodifiableList(packages);this.loading=loading;this.error=error;}
 public List<String> getPackages(){return packages;} public boolean isLoading(){return loading;} public boolean isError(){return error;}
}