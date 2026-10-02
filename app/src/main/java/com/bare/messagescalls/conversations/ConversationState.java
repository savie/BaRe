package com.bare.messagescalls.conversations;
public final class ConversationState {
 private final String threadId,title; private final int messageCount;
 public ConversationState(String threadId,String title,int messageCount){this.threadId=threadId;this.title=title;this.messageCount=Math.max(0,messageCount);}
 public String getThreadId(){return threadId;} public String getTitle(){return title;} public int getMessageCount(){return messageCount;}
}