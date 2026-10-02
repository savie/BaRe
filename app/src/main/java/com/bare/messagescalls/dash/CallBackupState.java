package com.bare.messagescalls.dash;
public final class CallBackupState {
 private final int localCount,cloudCount; private final boolean permissionAvailable;
 public CallBackupState(int localCount,int cloudCount,boolean permissionAvailable){this.localCount=localCount;this.cloudCount=cloudCount;this.permissionAvailable=permissionAvailable;}
 public int getLocalCount(){return localCount;} public int getCloudCount(){return cloudCount;} public boolean isPermissionAvailable(){return permissionAvailable;}
}