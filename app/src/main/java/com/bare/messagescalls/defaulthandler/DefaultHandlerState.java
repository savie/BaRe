package com.bare.messagescalls.defaulthandler;
public final class DefaultHandlerState {
 private final boolean defaultSmsRole; private final boolean composeAvailable;
 public DefaultHandlerState(boolean defaultSmsRole,boolean composeAvailable){this.defaultSmsRole=defaultSmsRole;this.composeAvailable=composeAvailable;}
 public boolean isDefaultSmsRole(){return defaultSmsRole;} public boolean isComposeAvailable(){return composeAvailable;}
}