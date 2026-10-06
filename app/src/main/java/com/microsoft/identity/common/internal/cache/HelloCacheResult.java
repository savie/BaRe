package com.microsoft.identity.common.internal.cache;

import defpackage.l0;
import defpackage.pe4;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class HelloCacheResult {
    private final String error;
    private final String negotiatedProtocolVersion;
    private final long timeStamp;

    public HelloCacheResult(String str, String str2, long j) {
        this.negotiatedProtocolVersion = str;
        this.error = str2;
        this.timeStamp = j;
        boolean z = true;
        boolean z2 = str == null || str.length() == 0;
        if (str2 != null && str2.length() != 0) {
            z = false;
        }
        if (z ^ z2) {
            return;
        }
        l0.e("Either both parameters provided or none provided.");
        throw null;
    }

    public final String getNegotiatedProtocolVersion() {
        return this.negotiatedProtocolVersion;
    }

    public final long getTimeStamp$common_distRelease() {
        return this.timeStamp;
    }

    public final boolean isHandShakeError() {
        String str = this.error;
        return !(str == null || str.length() == 0) && pe4.d(str, "handshake_error");
    }

    public final String serialize$common_distRelease() {
        long j = this.timeStamp;
        String str = this.error;
        return (str == null || str.length() == 0) ? String.format("S,%s,%d", Arrays.copyOf(new Object[]{this.negotiatedProtocolVersion, Long.valueOf(j)}, 2)) : String.format("E,%s,%d", Arrays.copyOf(new Object[]{str, Long.valueOf(j)}, 2));
    }
}
