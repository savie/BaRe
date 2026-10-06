package com.nimbusds.jose.util.cache;

import com.nimbusds.jose.shaded.jcip.Immutable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class CachedObject<V> {
    private final long expirationTime;
    private final V object;
    private final long timestamp;

    public CachedObject(V v, long j, long j2) {
        Objects.requireNonNull(v);
        this.object = v;
        this.timestamp = j;
        this.expirationTime = j2;
    }

    public static long computeExpirationTime(long j, long j2) {
        long j3 = j + j2;
        if (j3 < 0) {
            return Long.MAX_VALUE;
        }
        return j3;
    }

    public V get() {
        return this.object;
    }

    public long getExpirationTime() {
        return this.expirationTime;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public boolean isExpired(long j) {
        return !isValid(j);
    }

    public boolean isValid(long j) {
        return j < this.expirationTime;
    }
}
