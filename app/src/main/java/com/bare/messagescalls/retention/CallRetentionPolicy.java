package com.bare.messagescalls.retention;
public final class CallRetentionPolicy {
 private final int maxBackups;
 public CallRetentionPolicy(int maxBackups){this.maxBackups=Math.max(0,maxBackups);}
 public int getMaxBackups(){return maxBackups;}
}