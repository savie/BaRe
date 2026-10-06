package com.google.android.recaptcha;

import defpackage.jx2;
import defpackage.ly8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum RecaptchaErrorCode {
    UNKNOWN_ERROR(0, "Unknown Error"),
    NETWORK_ERROR(1, "Network Error"),
    INVALID_SITEKEY(2, "Site key invalid"),
    INVALID_KEYTYPE(3, "Key type invalid"),
    INVALID_PACKAGE_NAME(4, "Package name not allowed"),
    INVALID_ACTION(5, "Invalid action name, may only include alphanumeric characters like [A-Z], [a-z], [0-9], / and _. Do not include user-specific information"),
    INVALID_TIMEOUT(6, "Invalid timeout, minimum value is 5_000L milliseconds"),
    NO_NETWORK_FOUND(7, "No network found on device"),
    INTERNAL_ERROR(100, "Internal Error");

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());
    private final int errorCode;
    private final String errorMessage;

    RecaptchaErrorCode(int i, String str) {
        this.errorCode = i;
        this.errorMessage = str;
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }
}
