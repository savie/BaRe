package com.bare.messagescalls.dash;
public final class MessageBackupState {
 private final int localCount,cloudCount; private final boolean available;
 public MessageBackupState(int localCount,int cloudCount,boolean available){this.localCount=localCount;this.cloudCount=cloudCount;this.available=available;}
 public int getLocalCount(){return localCount;} public int getCloudCount(){return cloudCount;} public boolean isAvailable(){return available;}
}