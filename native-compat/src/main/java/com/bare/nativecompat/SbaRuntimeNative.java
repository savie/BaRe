package com.bare.nativecompat;

public final class SbaRuntimeNative {
    public static final SbaRuntimeNative a = new SbaRuntimeNative();
    private final com.swiftapps.sba.SbaRuntimeNative delegate = com.swiftapps.sba.SbaRuntimeNative.a;
    public String version() { return delegate.version(); }
}
