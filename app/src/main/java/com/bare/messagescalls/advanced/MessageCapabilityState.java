package com.bare.messagescalls.advanced;
public final class MessageCapabilityState {
 private final boolean mms,rscProviderAvailable;
 public MessageCapabilityState(boolean mms,boolean rscProviderAvailable){this.mms=mms;this.rscProviderAvailable=rscProviderAvailable;}
 public boolean isMmsSupported(){return mms;} public boolean isRcsProviderAvailable(){return rscProviderAvailable;}
}