package com.microsoft.identity.common.java.exception;

import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class UnsupportedBrokerException extends BaseException {
    public UnsupportedBrokerException(String str, String str2, String str3) {
        super(str2, str3, null);
        if (str == null) {
            f6.n("activeBrokerPackageName is marked non-null but is null");
            throw null;
        }
        if (str2 != null) {
            return;
        }
        f6.n("errorCode is marked non-null but is null");
        throw null;
    }

    public UnsupportedBrokerException(String str) {
        this(str, "unsupported_broker_version", "Please update Intune Company Portal and/or Microsoft Authenticator to the latest version.");
    }
}
