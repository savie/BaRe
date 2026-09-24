package com.microsoft.identity.common.java.exception;

import defpackage.f6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class TerminalException extends RuntimeException implements IErrorInformation {
    private final String mErrorCode;

    public TerminalException(Exception exc, String str, String str2) {
        super(str, exc);
        if (str2 != null) {
            this.mErrorCode = str2;
        } else {
            f6.n("errorCode is marked non-null but is null");
            throw null;
        }
    }

    @Override // com.microsoft.identity.common.java.exception.IErrorInformation
    public final String getErrorCode() {
        return this.mErrorCode;
    }
}
