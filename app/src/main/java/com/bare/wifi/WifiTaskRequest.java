package com.bare.wifi;
public final class WifiTaskRequest {
 private final int networkCount; private final boolean accessAvailable;
 public WifiTaskRequest(int networkCount,boolean accessAvailable){this.networkCount=Math.max(0,networkCount);this.accessAvailable=accessAvailable;}
 public int getNetworkCount(){return networkCount;} public boolean isAccessAvailable(){return accessAvailable;}
}