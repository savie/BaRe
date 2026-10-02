package com.bare.appslist.specialdata;
public final class ComponentState {
 private final String packageName,componentName; private final boolean enabled;
 public ComponentState(String packageName,String componentName,boolean enabled){this.packageName=packageName;this.componentName=componentName;this.enabled=enabled;}
 public String getPackageName(){return packageName;} public String getComponentName(){return componentName;} public boolean isEnabled(){return enabled;}
}