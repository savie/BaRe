package com.microsoft.identity.common.java.result;

import com.microsoft.identity.common.java.net.CancellationSignal;
import com.microsoft.identity.common.java.util.ResultFuture;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FinalizableResultFuture<T> extends ResultFuture<T> {
    private final CountDownLatch mFinalized = new CountDownLatch(1);
    private final CancellationSignal mCancellationSignal = new CancellationSignal();

    public final CancellationSignal getCancellationSignal() {
        return this.mCancellationSignal;
    }

    public final void setCleanedUp() {
        this.mFinalized.countDown();
    }
}
