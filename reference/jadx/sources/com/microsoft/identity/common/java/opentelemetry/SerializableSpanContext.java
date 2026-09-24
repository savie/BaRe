package com.microsoft.identity.common.java.opentelemetry;

import defpackage.a98;
import defpackage.f6;
import defpackage.rj7;
import defpackage.sa4;
import defpackage.u40;
import defpackage.xs1;
import defpackage.y77;
import defpackage.z88;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SerializableSpanContext implements rj7, Serializable {

    @y77("span_id")
    private final String mSpanId;

    @y77("trace_flags")
    private final byte mTraceFlags;

    @y77("trace_id")
    private final String mTraceId;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class SerializableSpanContextBuilder {
        private String spanId;
        private byte traceFlags;
        private String traceId;

        public final SerializableSpanContext build() {
            return new SerializableSpanContext(this.traceId, this.spanId, this.traceFlags);
        }

        public final void spanId(String str) {
            if (str != null) {
                this.spanId = str;
            } else {
                f6.n("spanId is marked non-null but is null");
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SerializableSpanContext.SerializableSpanContextBuilder(traceId=");
            sb.append(this.traceId);
            sb.append(", spanId=");
            sb.append(this.spanId);
            sb.append(", traceFlags=");
            return xs1.m(sb, this.traceFlags, ")");
        }

        public final void traceFlags(byte b) {
            this.traceFlags = b;
        }

        public final void traceId(String str) {
            if (str != null) {
                this.traceId = str;
            } else {
                f6.n("traceId is marked non-null but is null");
            }
        }
    }

    public SerializableSpanContext(String str, String str2, byte b) {
        if (str == null) {
            f6.n("traceId is marked non-null but is null");
            throw null;
        }
        if (str2 == null) {
            f6.n("spanId is marked non-null but is null");
            throw null;
        }
        this.mTraceId = str;
        this.mSpanId = str2;
        this.mTraceFlags = b;
    }

    @Override // defpackage.rj7
    public final String getSpanId() {
        return this.mSpanId;
    }

    @Override // defpackage.rj7
    public final z88 getTraceFlags() {
        return sa4.c[this.mTraceFlags & 255];
    }

    @Override // defpackage.rj7
    public final String getTraceId() {
        return this.mTraceId;
    }

    @Override // defpackage.rj7
    public final a98 getTraceState() {
        return u40.c;
    }
}
