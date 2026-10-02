package com.bare.messagescalls.task;
public final class MessageTaskRequest {
 public enum Mode { BACKUP, RESTORE }
 private final Mode mode; private final int itemCount;
 public MessageTaskRequest(Mode mode,int itemCount){if(mode==null)throw new IllegalArgumentException("mode");this.mode=mode;this.itemCount=Math.max(0,itemCount);}
 public Mode getMode(){return mode;} public int getItemCount(){return itemCount;}
}