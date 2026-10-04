package com.bare.messagescalls.backups;

public final class MessageBackupItem {
    private final String fileName;
    private final long backupTime;
    private final int totalSms;
    private final int totalConversations;
    private final String device;

    public MessageBackupItem(String fileName,long backupTime,int totalSms,int totalConversations,String device){
        if(fileName==null||fileName.isEmpty()) throw new IllegalArgumentException("fileName");
        this.fileName=fileName; this.backupTime=backupTime; this.totalSms=Math.max(0,totalSms);
        this.totalConversations=Math.max(0,totalConversations);
        this.device=device==null?"Unknown":device;
    }
    public String getFileName(){return fileName;}
    public long getBackupTime(){return backupTime;}
    public int getTotalSms(){return totalSms;}
    public int getTotalConversations(){return totalConversations;}
    public String getDevice(){return device;}
}