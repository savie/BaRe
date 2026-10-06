package com.microsoft.identity.common.adal.internal;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PowerManagerWrapper {
    private static PowerManagerWrapper sInstance;

    public static synchronized PowerManagerWrapper getInstance() {
        try {
            if (sInstance == null) {
                PowerManagerWrapper powerManagerWrapper = new PowerManagerWrapper();
                new ConcurrentHashMap();
                sInstance = powerManagerWrapper;
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }
}
