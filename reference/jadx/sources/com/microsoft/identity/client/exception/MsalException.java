package com.microsoft.identity.client.exception;

import com.microsoft.identity.common.java.exception.BaseException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class MsalException extends BaseException {
    @Override // com.microsoft.identity.common.java.exception.BaseException, java.lang.Throwable
    public final String getMessage() {
        String message = super.getMessage();
        return (message == null || message.trim().length() == 0) ? "" : super.getMessage();
    }
}
