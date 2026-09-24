package com.microsoft.identity.common.java.opentelemetry;

import defpackage.qj7;
import defpackage.rj7;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NoopSpan implements qj7 {
    private final rj7 spanContext;

    public NoopSpan(rj7 rj7Var) {
        this.spanContext = rj7Var;
    }

    @Override // defpackage.qj7
    public final rj7 getSpanContext() {
        return this.spanContext;
    }

    public final String toString() {
        return "NoopSpan{" + this.spanContext + '}';
    }
}
