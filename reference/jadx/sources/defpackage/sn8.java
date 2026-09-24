package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.logging.Logger;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sn8 implements q18 {
    public static final Logger a = Logger.getLogger(sn8.class.getName());
    public static final List b = Collections.unmodifiableList(Arrays.asList("traceparent", "tracestate"));
    public static final int c = 36;
    public static final int d = 53;
    public static final int e = 55;
    public static final sn8 g = new sn8();
    public static final HashSet f = new HashSet();

    static {
        for (int i = 0; i < 255; i++) {
            String hexString = Long.toHexString(i);
            if (hexString.length() < 2) {
                hexString = "0".concat(hexString);
            }
            f.add(hexString);
        }
    }

    @Override // defpackage.q18
    public final void a(t40 t40Var, HashMap map, r18 r18Var) {
        String string;
        rj7 spanContext = qj7.c(t40Var).getSpanContext();
        if (spanContext.isValid()) {
            ThreadLocal threadLocal = xz7.a;
            char[] cArr = (char[]) threadLocal.get();
            int i = e;
            if (cArr == null || cArr.length < i) {
                cArr = new char[i];
                threadLocal.set(cArr);
            }
            cArr[0] = "00".charAt(0);
            cArr[1] = "00".charAt(1);
            cArr[2] = '-';
            String traceId = spanContext.getTraceId();
            traceId.getChars(0, traceId.length(), cArr, 3);
            int i2 = c;
            cArr[i2 - 1] = '-';
            String spanId = spanContext.getSpanId();
            spanId.getChars(0, spanId.length(), cArr, i2);
            int i3 = d;
            cArr[i3 - 1] = '-';
            String strAsHex = spanContext.getTraceFlags().asHex();
            cArr[i3] = strAsHex.charAt(0);
            cArr[i3 + 1] = strAsHex.charAt(1);
            r18Var.set(map, "traceparent", new String(cArr, 0, i));
            a98 traceState = spanContext.getTraceState();
            if (traceState.isEmpty()) {
                return;
            }
            Pattern pattern = rn8.a;
            if (traceState.isEmpty()) {
                string = "";
            } else {
                StringBuilder sb = new StringBuilder(512);
                traceState.forEach(new qn8(sb));
                string = sb.toString();
            }
            r18Var.set(map, "tracestate", string);
        }
    }

    @Override // defpackage.q18
    public final Collection b() {
        return b;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00d9  */
    @Override // defpackage.q18
    public final t40 c(t40 t40Var, Object obj, p18 p18Var) {
        sd0 sd0VarA;
        byte[] bArr;
        byte b2;
        byte b3;
        String str;
        if (t40Var == null) {
            xs4.b.getClass();
            return t40.b;
        }
        String str2 = p18Var.get(obj, "traceparent");
        if (str2 == null) {
            sd0VarA = sd0.k;
        } else {
            int length = str2.length();
            Logger logger = a;
            int i = e;
            if ((length == i || (str2.length() > i && str2.charAt(i) == '-')) && str2.charAt(2) == '-') {
                int i2 = c;
                if (str2.charAt(i2 - 1) == '-') {
                    int i3 = d;
                    if (str2.charAt(i3 - 1) == '-') {
                        String strSubstring = str2.substring(0, 2);
                        if (!f.contains(strSubstring)) {
                            sd0VarA = sd0.k;
                        } else if (!strSubstring.equals("00") || str2.length() <= i) {
                            String strSubstring2 = str2.substring(3, 35);
                            String strSubstring3 = str2.substring(i2, i2 + 16);
                            char cCharAt = str2.charAt(i3);
                            char cCharAt2 = str2.charAt(i3 + 1);
                            boolean[] zArr = uu5.c;
                            if (!zArr[cCharAt] || !zArr[cCharAt2]) {
                                sd0VarA = sd0.k;
                            } else {
                                if (cCharAt >= 128 || (b2 = (bArr = uu5.b)[cCharAt]) == -1) {
                                    throw new IllegalArgumentException("invalid character " + cCharAt);
                                }
                                if (cCharAt2 >= 128 || (b3 = bArr[cCharAt2]) == -1) {
                                    throw new IllegalArgumentException("invalid character " + cCharAt2);
                                }
                                sd0VarA = sd0.a(strSubstring2, strSubstring3, sa4.c[((byte) ((b2 << 4) | b3)) & 255], u40.c, true);
                            }
                        } else {
                            sd0VarA = sd0.k;
                        }
                    } else {
                        logger.fine("Unparseable traceparent header. Returning INVALID span context.");
                        sd0VarA = sd0.k;
                    }
                } else {
                    logger.fine("Unparseable traceparent header. Returning INVALID span context.");
                    sd0VarA = sd0.k;
                }
            } else {
                logger.fine("Unparseable traceparent header. Returning INVALID span context.");
                sd0VarA = sd0.k;
            }
            if (sd0VarA.f && (str = p18Var.get(obj, "tracestate")) != null && !str.isEmpty()) {
                try {
                    sd0VarA = sd0.a(sd0VarA.a, sd0VarA.b, sd0VarA.c, rn8.a(str), true);
                } catch (IllegalArgumentException unused) {
                    logger.fine("Unparseable tracestate header. Returning span context without state.");
                }
            }
        }
        return !sd0VarA.f ? t40Var : qj7.b(sd0VarA).a(t40Var);
    }
}
