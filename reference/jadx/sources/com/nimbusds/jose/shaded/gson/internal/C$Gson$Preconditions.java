package com.nimbusds.jose.shaded.gson.internal;

import defpackage.c6;

/* JADX INFO: renamed from: com.nimbusds.jose.shaded.gson.internal.$Gson$Preconditions, reason: invalid class name */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class C$Gson$Preconditions {
    private C$Gson$Preconditions() {
        throw new UnsupportedOperationException();
    }

    public static void checkArgument(boolean z) {
        if (z) {
            return;
        }
        c6.b();
    }

    @Deprecated
    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }
}
