package com.bare.wifi;

/** F81 static Wi-Fi task decision boundary; device access stays downstream. */
public final class WifiTaskEngine {
    public enum Decision { READY, NO_DATA, ACCESS_UNAVAILABLE }

    public Decision plan(WifiTaskRequest request) {
        if (request == null) throw new NullPointerException("request");
        if (!request.isAccessAvailable()) return Decision.ACCESS_UNAVAILABLE;
        return request.getNetworkCount() == 0 ? Decision.NO_DATA : Decision.READY;
    }
}
