package com.microsoft.identity.common.java.opentelemetry;

import com.microsoft.identity.common.java.logging.Logger;
import defpackage.f6;
import defpackage.qj7;
import defpackage.sd0;
import defpackage.t40;
import defpackage.v57;
import defpackage.xs4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class SpanExtension {
    private static final sd0 INVALID = sd0.a("00000000000000000000000000000000", "0000000000000000", new NoopTraceFlags(), new NoopTraceState(), false);

    public static qj7 current() {
        try {
            return qj7.current();
        } catch (NoSuchMethodError e) {
            Logger.error("SpanExtension:getCurrentSpan", e.getMessage(), e);
            return new NoopSpan(INVALID);
        }
    }

    public static qj7 fromContext(t40 t40Var) {
        if (t40Var == null) {
            f6.n("context is marked non-null but is null");
            return null;
        }
        try {
            return qj7.c(t40Var);
        } catch (Exception | NoSuchMethodError e) {
            Logger.error("SpanExtension:fromContext", e.getMessage(), e);
            return new NoopSpan(INVALID);
        }
    }

    public static v57 makeCurrentSpan(qj7 qj7Var) {
        if (qj7Var == null) {
            f6.n("span is marked non-null but is null");
            return null;
        }
        try {
            return xs4.b.a(qj7Var.a(t40.a()));
        } catch (AbstractMethodError | Exception e) {
            Logger.error("SpanExtension:makeCurrentSpan", e.getMessage(), e);
            return NoopScope.INSTANCE;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class NoopScope implements v57 {
        private static final /* synthetic */ NoopScope[] $VALUES;
        public static final NoopScope INSTANCE;

        static {
            NoopScope noopScope = new NoopScope("INSTANCE", 0);
            INSTANCE = noopScope;
            $VALUES = new NoopScope[]{noopScope};
        }

        public static NoopScope valueOf(String str) {
            return (NoopScope) Enum.valueOf(NoopScope.class, str);
        }

        public static NoopScope[] values() {
            return (NoopScope[]) $VALUES.clone();
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
        }
    }
}
