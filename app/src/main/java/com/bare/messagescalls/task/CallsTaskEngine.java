package com.bare.messagescalls.task;
public final class CallsTaskEngine {public enum Decision{READY,NO_DATA,PERMISSION_REQUIRED,PROVIDER_UNAVAILABLE}public Decision plan(int calls,boolean permission,boolean provider){if(!permission)return Decision.PERMISSION_REQUIRED;if(calls<=0)return Decision.NO_DATA;return provider?Decision.READY:Decision.PROVIDER_UNAVAILABLE;}}
