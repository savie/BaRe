package com.microsoft.identity.client.internal;

import com.microsoft.identity.client.exception.MsalException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AsyncResult<T> {
    private final MsalException mMsalException;
    private final T mResult;

    public AsyncResult(T t, MsalException msalException) {
        this.mResult = t;
        this.mMsalException = msalException;
    }

    public final MsalException getException() {
        return this.mMsalException;
    }

    public final T getResult() {
        return this.mResult;
    }

    public final boolean getSuccess() {
        return this.mMsalException == null;
    }
}
