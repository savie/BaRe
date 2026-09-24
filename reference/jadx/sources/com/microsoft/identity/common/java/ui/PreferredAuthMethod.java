package com.microsoft.identity.common.java.ui;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum PreferredAuthMethod {
    /* JADX INFO: Fake field, exist only in values array */
    NONE(0, null),
    /* JADX INFO: Fake field, exist only in values array */
    QR(18, "qrpin");

    public final int code;

    PreferredAuthMethod(int i, String str) {
        this.code = i;
    }
}
