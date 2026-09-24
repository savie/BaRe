package okhttp3.internal.cache;

import defpackage.nq7;
import defpackage.uq7;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.UnreadableResponseBodyKt;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CacheInterceptor implements Interceptor {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
        public static boolean a(String str) {
            return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:174:0x0124 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:176:0x007f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:177:0x0087 A[EDGE_INSN: B:177:0x0087->B:24:0x0087 BREAK  A[LOOP:2: B:18:0x0065->B:22:0x0078], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x0060  */
    /* JADX WARN: Code duplicated, block: B:19:0x0067  */
    /* JADX WARN: Code duplicated, block: B:22:0x0078 A[LOOP:2: B:18:0x0065->B:22:0x0078, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x0116  */
    /* JADX WARN: Code duplicated, block: B:56:0x0122  */
    /* JADX WARN: Code duplicated, block: B:58:0x012a  */
    /* JADX WARN: Code duplicated, block: B:60:0x0132  */
    /* JADX WARN: Code duplicated, block: B:61:0x0135  */
    /* JADX WARN: Code duplicated, block: B:63:0x013d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0143  */
    /* JADX WARN: Code duplicated, block: B:66:0x014c  */
    /* JADX WARN: Code duplicated, block: B:67:0x0151  */
    /* JADX WARN: Code duplicated, block: B:69:0x0159  */
    /* JADX WARN: Code duplicated, block: B:70:0x015c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0164  */
    /* JADX WARN: Code duplicated, block: B:73:0x0167  */
    /* JADX WARN: Code duplicated, block: B:75:0x016f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0172  */
    /* JADX WARN: Code duplicated, block: B:78:0x017a  */
    /* JADX WARN: Code duplicated, block: B:79:0x0182  */
    /* JADX WARN: Code duplicated, block: B:81:0x018a  */
    /* JADX WARN: Code duplicated, block: B:82:0x0190  */
    /* JADX WARN: Code duplicated, block: B:84:0x0199  */
    /* JADX WARN: Code duplicated, block: B:85:0x019c  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:88:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:90:0x01b0  */
    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) {
        CacheStrategy cacheStrategy;
        Response response;
        Headers headers;
        int i;
        int length;
        int length2;
        CacheStrategy cacheStrategy2;
        Headers headers2;
        String string;
        String string2;
        System.currentTimeMillis();
        Request request = realInterceptorChain.e;
        request.getClass();
        CacheStrategy cacheStrategy3 = new CacheStrategy(request, null);
        CacheControl cacheControl = request.f;
        if (cacheControl == null) {
            int i2 = CacheControl.n;
            Headers headers3 = request.c;
            headers3.getClass();
            int size = headers3.size();
            String str = null;
            int i3 = 0;
            boolean z = true;
            boolean z2 = false;
            boolean z3 = false;
            int iO = -1;
            int iO2 = -1;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            int iO3 = -1;
            int iO4 = -1;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            while (i3 < size) {
                String strE = headers3.e(i3);
                String strG = headers3.g(i3);
                if (strE.equalsIgnoreCase("Cache-Control")) {
                    if (str == null) {
                        str = strG;
                    }
                    i = 0;
                    while (i < strG.length()) {
                        length = strG.length();
                        length2 = i;
                        while (true) {
                            if (length2 < length) {
                                cacheStrategy2 = cacheStrategy3;
                                headers2 = headers3;
                                length2 = strG.length();
                                break;
                            }
                            cacheStrategy2 = cacheStrategy3;
                            headers2 = headers3;
                            if (nq7.a0("=,;", strG.charAt(length2))) {
                                break;
                            }
                            length2++;
                            cacheStrategy3 = cacheStrategy2;
                            headers3 = headers2;
                        }
                        string = nq7.H0(strG.substring(i, length2)).toString();
                        if (length2 != strG.length() || strG.charAt(length2) == ',' || strG.charAt(length2) == ';') {
                            i = length2 + 1;
                            string2 = null;
                        } else {
                            int length3 = length2 + 1;
                            byte[] bArr = _UtilCommonKt.a;
                            int length4 = strG.length();
                            while (true) {
                                if (length3 >= length4) {
                                    length3 = strG.length();
                                    break;
                                }
                                char cCharAt = strG.charAt(length3);
                                if (cCharAt != ' ' && cCharAt != '\t') {
                                    break;
                                }
                                length3++;
                            }
                            if (length3 >= strG.length() || strG.charAt(length3) != '\"') {
                                int length5 = strG.length();
                                int length6 = length3;
                                while (true) {
                                    if (length6 >= length5) {
                                        length6 = strG.length();
                                        break;
                                    }
                                    int i4 = length5;
                                    if (nq7.a0(",;", strG.charAt(length6))) {
                                        break;
                                    }
                                    length6++;
                                    length5 = i4;
                                }
                                int i5 = length6;
                                string2 = nq7.H0(strG.substring(length3, length6)).toString();
                                i = i5;
                            } else {
                                int i6 = length3 + 1;
                                int iG0 = nq7.g0('\"', i6, 4, strG);
                                string2 = strG.substring(i6, iG0);
                                i = iG0 + 1;
                            }
                        }
                        if ("no-cache".equalsIgnoreCase(string)) {
                            z2 = true;
                        } else if ("no-store".equalsIgnoreCase(string)) {
                            z3 = true;
                        } else if ("max-age".equalsIgnoreCase(string)) {
                            iO = _UtilCommonKt.o(-1, string2);
                        } else if ("s-maxage".equalsIgnoreCase(string)) {
                            iO2 = _UtilCommonKt.o(-1, string2);
                        } else if ("private".equalsIgnoreCase(string)) {
                            z4 = true;
                        } else if ("public".equalsIgnoreCase(string)) {
                            z5 = true;
                        } else if ("must-revalidate".equalsIgnoreCase(string)) {
                            z6 = true;
                        } else if ("max-stale".equalsIgnoreCase(string)) {
                            iO3 = _UtilCommonKt.o(Integer.MAX_VALUE, string2);
                        } else if ("min-fresh".equalsIgnoreCase(string)) {
                            iO4 = _UtilCommonKt.o(-1, string2);
                        } else if ("only-if-cached".equalsIgnoreCase(string)) {
                            z7 = true;
                        } else if ("no-transform".equalsIgnoreCase(string)) {
                            z8 = true;
                        } else if ("immutable".equalsIgnoreCase(string)) {
                            z9 = true;
                        }
                        cacheStrategy3 = cacheStrategy2;
                        headers3 = headers2;
                    }
                    i3++;
                    cacheStrategy3 = cacheStrategy3;
                    headers3 = headers3;
                } else {
                    if (strE.equalsIgnoreCase("Pragma")) {
                    }
                    i3++;
                    cacheStrategy3 = cacheStrategy3;
                    headers3 = headers3;
                }
                z = false;
                i = 0;
                while (i < strG.length()) {
                    length = strG.length();
                    length2 = i;
                    while (true) {
                        if (length2 < length) {
                            cacheStrategy2 = cacheStrategy3;
                            headers2 = headers3;
                            length2 = strG.length();
                            break;
                        }
                        cacheStrategy2 = cacheStrategy3;
                        headers2 = headers3;
                        if (nq7.a0("=,;", strG.charAt(length2))) {
                            break;
                            break;
                        }
                        length2++;
                        cacheStrategy3 = cacheStrategy2;
                        headers3 = headers2;
                    }
                    string = nq7.H0(strG.substring(i, length2)).toString();
                    if (length2 != strG.length()) {
                        i = length2 + 1;
                        string2 = null;
                    } else {
                        i = length2 + 1;
                        string2 = null;
                    }
                    if ("no-cache".equalsIgnoreCase(string)) {
                        z2 = true;
                    } else if ("no-store".equalsIgnoreCase(string)) {
                        z3 = true;
                    } else if ("max-age".equalsIgnoreCase(string)) {
                        iO = _UtilCommonKt.o(-1, string2);
                    } else if ("s-maxage".equalsIgnoreCase(string)) {
                        iO2 = _UtilCommonKt.o(-1, string2);
                    } else if ("private".equalsIgnoreCase(string)) {
                        z4 = true;
                    } else if ("public".equalsIgnoreCase(string)) {
                        z5 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(string)) {
                        z6 = true;
                    } else if ("max-stale".equalsIgnoreCase(string)) {
                        iO3 = _UtilCommonKt.o(Integer.MAX_VALUE, string2);
                    } else if ("min-fresh".equalsIgnoreCase(string)) {
                        iO4 = _UtilCommonKt.o(-1, string2);
                    } else if ("only-if-cached".equalsIgnoreCase(string)) {
                        z7 = true;
                    } else if ("no-transform".equalsIgnoreCase(string)) {
                        z8 = true;
                    } else if ("immutable".equalsIgnoreCase(string)) {
                        z9 = true;
                    }
                    cacheStrategy3 = cacheStrategy2;
                    headers3 = headers2;
                }
                i3++;
                cacheStrategy3 = cacheStrategy3;
                headers3 = headers3;
            }
            cacheStrategy = cacheStrategy3;
            CacheControl cacheControl2 = new CacheControl(z2, z3, iO, iO2, z4, z5, z6, iO3, iO4, z7, z8, z9, !z ? null : str);
            request.f = cacheControl2;
            cacheControl = cacheControl2;
        } else {
            cacheStrategy = cacheStrategy3;
        }
        CacheStrategy cacheStrategy4 = cacheControl.j ? new CacheStrategy(null, null) : cacheStrategy;
        Request request2 = cacheStrategy4.a;
        Response response2 = cacheStrategy4.b;
        if (request2 == null && response2 == null) {
            Response.Builder builder = new Response.Builder();
            Request request3 = realInterceptorChain.e;
            request3.getClass();
            builder.a = request3;
            builder.b = Protocol.HTTP_1_1;
            builder.c = 504;
            builder.d = "Unsatisfiable Request (only-if-cached)";
            builder.l = -1L;
            builder.m = System.currentTimeMillis();
            return builder.a();
        }
        if (request2 == null) {
            response2.getClass();
            Response.Builder builderG = response2.g();
            Response responseA = UnreadableResponseBodyKt.a(response2);
            Response.Builder.b("cacheResponse", responseA);
            builderG.j = responseA;
            return builderG.a();
        }
        Response responseB = realInterceptorChain.b(request2);
        if (response2 == null) {
            response = null;
        } else {
            if (responseB.d == 304) {
                Response.Builder builderG2 = response2.g();
                Headers headers4 = response2.f;
                Headers headers5 = responseB.f;
                Headers.Builder builder2 = new Headers.Builder();
                int size2 = headers4.size();
                int i7 = 0;
                while (i7 < size2) {
                    String strE2 = headers4.e(i7);
                    String strG2 = headers4.g(i7);
                    if ("Warning".equalsIgnoreCase(strE2)) {
                        headers = headers4;
                        if (uq7.V(strG2, "1", false)) {
                        }
                        i7++;
                        headers4 = headers;
                    } else {
                        headers = headers4;
                    }
                    if ("Content-Length".equalsIgnoreCase(strE2) || "Content-Encoding".equalsIgnoreCase(strE2) || "Content-Type".equalsIgnoreCase(strE2) || !Companion.a(strE2) || headers5.d(strE2) == null) {
                        _HeadersCommonKt.a(builder2, strE2, strG2);
                    }
                    i7++;
                    headers4 = headers;
                }
                int size3 = headers5.size();
                for (int i8 = 0; i8 < size3; i8++) {
                    String strE3 = headers5.e(i8);
                    if (!"Content-Length".equalsIgnoreCase(strE3) && !"Content-Encoding".equalsIgnoreCase(strE3) && !"Content-Type".equalsIgnoreCase(strE3) && Companion.a(strE3)) {
                        _HeadersCommonKt.a(builder2, strE3, headers5.g(i8));
                    }
                }
                builderG2.f = builder2.b().f();
                builderG2.l = responseB.t;
                builderG2.m = responseB.x;
                Response responseA2 = UnreadableResponseBodyKt.a(response2);
                Response.Builder.b("cacheResponse", responseA2);
                builderG2.j = responseA2;
                Response responseA3 = UnreadableResponseBodyKt.a(responseB);
                Response.Builder.b("networkResponse", responseA3);
                builderG2.i = responseA3;
                builderG2.a();
                responseB.k.close();
                throw null;
            }
            response = null;
            _UtilCommonKt.b(response2.k);
        }
        Response.Builder builderG3 = responseB.g();
        Response responseA4 = response2 != null ? UnreadableResponseBodyKt.a(response2) : response;
        Response.Builder.b("cacheResponse", responseA4);
        builderG3.j = responseA4;
        Response responseA5 = UnreadableResponseBodyKt.a(responseB);
        Response.Builder.b("networkResponse", responseA5);
        builderG3.i = responseA5;
        return builderG3.a();
    }
}
