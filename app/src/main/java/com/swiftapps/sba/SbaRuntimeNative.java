package com.swiftapps.sba;

public final class SbaRuntimeNative {
    public static final SbaRuntimeNative a = new SbaRuntimeNative();

    static {
        System.loadLibrary("sba_archive");
    }

    public native String version();
}
