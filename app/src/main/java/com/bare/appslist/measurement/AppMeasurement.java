package com.bare.appslist.measurement;
public final class AppMeasurement {
    private final long appBytes,cacheBytes,obbBytes,externalDataBytes,mediaBytes; private final boolean measurementAvailable;
    public AppMeasurement(long appBytes,long cacheBytes,long obbBytes,long externalDataBytes,long mediaBytes,boolean measurementAvailable){this.appBytes=appBytes;this.cacheBytes=cacheBytes;this.obbBytes=obbBytes;this.externalDataBytes=externalDataBytes;this.mediaBytes=mediaBytes;this.measurementAvailable=measurementAvailable;}
    public long getAppBytes(){return appBytes;} public long getCacheBytes(){return cacheBytes;} public long getObbBytes(){return obbBytes;} public long getExternalDataBytes(){return externalDataBytes;} public long getMediaBytes(){return mediaBytes;} public boolean isMeasurementAvailable(){return measurementAvailable;}
}