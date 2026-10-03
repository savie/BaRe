package com.bare.messagescalls.task;
public final class MessagesTaskEngine {public enum Decision{READY,NO_DATA,PERMISSION_REQUIRED,PROVIDER_UNAVAILABLE}public Decision plan(int messages,boolean permission,boolean provider){if(!permission)return Decision.PERMISSION_REQUIRED;if(messages<=0)return Decision.NO_DATA;return provider?Decision.READY:Decision.PROVIDER_UNAVAILABLE;}}
