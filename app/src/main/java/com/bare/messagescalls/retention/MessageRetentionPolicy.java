package com.bare.messagescalls.retention;
public final class MessageRetentionPolicy {
 private final int maxBackups;
 public MessageRetentionPolicy(int maxBackups){this.maxBackups=Math.max(0,maxBackups);}
 public int getMaxBackups(){return maxBackups;}
}