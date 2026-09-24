package com.microsoft.identity.common.java.util;

import defpackage.f6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ResultFuture<T> implements Future<T> {
    private final CountDownLatch mCountDownLatch = new CountDownLatch(1);
    private T mResult = null;
    private Exception mException = null;
    private final ArrayList mConsumers = new ArrayList();

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (timeUnit == null) {
            f6.n("timeUnit is marked non-null but is null");
            return null;
        }
        if (this.mCountDownLatch.await(j, timeUnit)) {
            Exception exc = this.mException;
            if (exc == null) {
                return this.mResult;
            }
            throw new ExecutionException(exc);
        }
        throw new TimeoutException("Timed out waiting for: " + j + timeUnit.name());
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.mCountDownLatch.getCount() == 0;
    }

    public final synchronized void setException(Exception exc) {
        this.mException = exc;
        this.mCountDownLatch.countDown();
        Iterator it = this.mConsumers.iterator();
        while (it.hasNext()) {
            ((BiConsumer) it.next()).accept(this.mResult, exc);
        }
    }

    public final synchronized void setResult(T t) {
        try {
            this.mResult = t;
            this.mCountDownLatch.countDown();
            Iterator it = this.mConsumers.iterator();
            while (it.hasNext()) {
                ((BiConsumer) it.next()).accept(t, this.mException);
            }
            this.mConsumers.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void whenComplete(BiConsumer<T, Throwable> biConsumer) {
        if (isDone()) {
            biConsumer.accept(this.mResult, this.mException);
        } else {
            this.mConsumers.add(biConsumer);
        }
    }

    @Override // java.util.concurrent.Future
    public final T get() throws ExecutionException, InterruptedException {
        this.mCountDownLatch.await();
        Exception exc = this.mException;
        if (exc == null) {
            return this.mResult;
        }
        throw new ExecutionException(exc);
    }
}
