package com.bare.messagescalls.conversations;

public final class ConversationState {
 private final String threadId,title,snippet; private final int messageCount; private final long lastDate;
 public ConversationState(String threadId,String title,int messageCount){this(threadId,title,messageCount,0L,null);}
 public ConversationState(String threadId,String title,int messageCount,long lastDate,String snippet){this.threadId=threadId;this.title=title;this.messageCount=Math.max(0,messageCount);this.lastDate=Math.max(0,lastDate);this.snippet=snippet;}
 public String getThreadId(){return threadId;} public String getTitle(){return title;} public int getMessageCount(){return messageCount;} public long getLastDate(){return lastDate;} public String getSnippet(){return snippet;}
}