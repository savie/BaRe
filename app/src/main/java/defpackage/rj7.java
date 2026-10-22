package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface rj7 {
    String getSpanId();

    z88 getTraceFlags();

    String getTraceId();

    a98 getTraceState();

    default boolean isValid() {
        String traceId = getTraceId();
        if (traceId != null && traceId.length() == 32 && !"00000000000000000000000000000000".contentEquals(traceId)) {
            char[] cArr = uu5.a;
            int length = traceId.length();
            for (int i = 0; i < length; i++) {
                if (uu5.c[traceId.charAt(i)]) {
                }
            }
            String spanId = getSpanId();
            if (spanId != null && spanId.length() == 16 && !"0000000000000000".contentEquals(spanId)) {
                char[] cArr2 = uu5.a;
                int length2 = spanId.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    if (uu5.c[spanId.charAt(i2)]) {
                    }
                }
                return true;
            }
        }
        return false;
    }
}
