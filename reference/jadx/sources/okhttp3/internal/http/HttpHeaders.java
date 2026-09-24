package okhttp3.internal.http;

import defpackage.c6;
import defpackage.dj7;
import defpackage.f51;
import defpackage.ge;
import defpackage.hy0;
import defpackage.nq7;
import defpackage.nw0;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.pv2;
import defpackage.uq7;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class HttpHeaders {
    public static final hy0 a;
    public static final hy0 b;

    static {
        hy0 hy0Var = hy0.d;
        a = ge.v("\"\\");
        b = ge.v("\t ,=");
    }

    public static final boolean a(Response response) {
        if (pe4.d(response.a.b, "HEAD")) {
            return false;
        }
        int i = response.d;
        return (((i >= 100 && i < 200) || i == 204 || i == 304) && _UtilJvmKt.e(response) == -1 && !"chunked".equalsIgnoreCase(Response.b("Transfer-Encoding", response))) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0080  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:76:0x0102 A[EDGE_INSN: B:76:0x0102->B:64:0x0102 BREAK  A[LOOP:2: B:22:0x006d->B:63:0x00ff], SYNTHETIC] */
    public static final void b(nw0 nw0Var, ArrayList arrayList) {
        String strC;
        while (true) {
            String strC2 = null;
            while (true) {
                if (strC2 == null) {
                    e(nw0Var);
                    strC2 = c(nw0Var);
                    if (strC2 == null) {
                        return;
                    }
                }
                boolean zE = e(nw0Var);
                String strC3 = c(nw0Var);
                if (strC3 == null) {
                    if (nw0Var.x()) {
                        arrayList.add(new Challenge(pv2.a, strC2));
                        return;
                    }
                    return;
                }
                int iN = _UtilCommonKt.n(nw0Var);
                boolean zE2 = e(nw0Var);
                if (zE || !(zE2 || nw0Var.x())) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    int iN2 = _UtilCommonKt.n(nw0Var) + iN;
                    while (true) {
                        if (strC3 != null) {
                            if (iN2 != 0) {
                                break;
                                break;
                            }
                            if (iN2 <= 1) {
                                return;
                            }
                            if (nw0Var.x()) {
                                strC = c(nw0Var);
                            } else {
                                strC = c(nw0Var);
                            }
                            if (strC != null) {
                                return;
                            }
                            if (e(nw0Var)) {
                            }
                            strC3 = null;
                        } else {
                            strC3 = c(nw0Var);
                            if (!e(nw0Var)) {
                                iN2 = _UtilCommonKt.n(nw0Var);
                                if (iN2 != 0) {
                                    break;
                                }
                                if (iN2 <= 1 || e(nw0Var)) {
                                    return;
                                }
                                if (nw0Var.x() || nw0Var.h(0L) != 34) {
                                    strC = c(nw0Var);
                                } else {
                                    if (nw0Var.readByte() != 34) {
                                        c6.f("Failed requirement.");
                                        return;
                                    }
                                    nw0 nw0Var2 = new nw0();
                                    while (true) {
                                        long jT = nw0Var.T(a);
                                        if (jT != -1) {
                                            if (nw0Var.h(jT) == 34) {
                                                nw0Var2.f0(nw0Var, jT);
                                                nw0Var.readByte();
                                                strC = nw0Var2.v();
                                                break;
                                            } else if (nw0Var.b != jT + 1) {
                                                nw0Var2.f0(nw0Var, jT);
                                                nw0Var.readByte();
                                                nw0Var2.f0(nw0Var, 1L);
                                            }
                                        }
                                        strC = null;
                                        break;
                                    }
                                }
                                if (strC != null || ((String) linkedHashMap.put(strC3, strC)) != null) {
                                    return;
                                }
                                if (e(nw0Var) && !nw0Var.x()) {
                                    return;
                                } else {
                                    strC3 = null;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                    arrayList.add(new Challenge(linkedHashMap, strC2));
                    strC2 = strC3;
                } else {
                    StringBuilder sbS = dj7.s(strC3);
                    sbS.append(uq7.R(iN, "="));
                    Map mapSingletonMap = Collections.singletonMap(null, sbS.toString());
                    mapSingletonMap.getClass();
                    arrayList.add(new Challenge(mapSingletonMap, strC2));
                }
            }
        }
    }

    public static final String c(nw0 nw0Var) {
        long jT = nw0Var.T(b);
        if (jT == -1) {
            jT = nw0Var.b;
        }
        if (jT != 0) {
            return nw0Var.u(jT, f51.a);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01df  */
    /* JADX WARN: Code duplicated, block: B:18:0x0074  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void d(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        List listUnmodifiableList;
        int i;
        Cookie cookie;
        long j;
        Cookie cookie2;
        String strSubstring;
        cookieJar.getClass();
        httpUrl.getClass();
        headers.getClass();
        if (cookieJar == CookieJar.a) {
            return;
        }
        Pattern pattern = Cookie.k;
        List listI = headers.i("Set-Cookie");
        int size = listI.size();
        int i2 = 0;
        int i3 = 0;
        ArrayList arrayList = null;
        while (i3 < size) {
            String str = (String) listI.get(i3);
            str.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            char c = ';';
            int iE = _UtilCommonKt.e(str, ';', i2, i2, 6);
            char c2 = '=';
            int iE2 = _UtilCommonKt.e(str, '=', i2, iE, 2);
            if (iE2 == iE) {
                i = i2;
                cookie = null;
            } else {
                int iH = _UtilCommonKt.h(i2, iE2, str);
                String strSubstring2 = str.substring(iH, _UtilCommonKt.i(iH, iE2, str));
                if (strSubstring2.length() != 0 && _UtilCommonKt.g(strSubstring2) == -1) {
                    int iH2 = _UtilCommonKt.h(iE2 + 1, iE, str);
                    String strSubstring3 = str.substring(iH2, _UtilCommonKt.i(iH2, iE, str));
                    if (_UtilCommonKt.g(strSubstring3) == -1) {
                        int i4 = iE + 1;
                        int length = str.length();
                        int i5 = i2;
                        int i6 = i5;
                        int i7 = i6;
                        long j2 = -1;
                        long jB = 253402300799999L;
                        String strSubstring4 = null;
                        String str2 = null;
                        boolean z = true;
                        String str3 = null;
                        while (true) {
                            if (i4 >= length) {
                                if (j2 == Long.MIN_VALUE) {
                                    j = Long.MIN_VALUE;
                                } else if (j2 != -1) {
                                    long j3 = jCurrentTimeMillis + (j2 <= 9223372036854775L ? j2 * 1000 : Long.MAX_VALUE);
                                    j = (j3 < jCurrentTimeMillis || j3 > 253402300799999L) ? 253402300799999L : j3;
                                } else {
                                    j = jB;
                                }
                                String str4 = httpUrl.d;
                                if (str2 != null) {
                                    if (!pe4.d(str4, str2) && (!uq7.O(str4, str2, false) || str4.charAt((str4.length() - str2.length()) - 1) != '.' || _HostnamesCommonKt.a.b(str4))) {
                                        i = 0;
                                        cookie2 = null;
                                    }
                                    cookie = cookie2;
                                    break;
                                }
                                str2 = str4;
                                if (str4.length() == str2.length() || PublicSuffixDatabase.d.a(str2) != null) {
                                    i = 0;
                                    if (strSubstring4 == null || !uq7.V(strSubstring4, "/", false)) {
                                        String strB = httpUrl.b();
                                        int iK0 = nq7.k0('/', 0, 6, strB);
                                        strSubstring4 = iK0 != 0 ? strB.substring(0, iK0) : "/";
                                    }
                                    cookie2 = new Cookie(strSubstring2, strSubstring3, j, str2, strSubstring4, i7, i5, i6, z, str3);
                                } else {
                                    i = 0;
                                    cookie2 = null;
                                }
                                cookie = cookie2;
                                break;
                            }
                            int iC = _UtilCommonKt.c(str, c, i4, length);
                            int iC2 = _UtilCommonKt.c(str, c2, i4, iC);
                            int iH3 = _UtilCommonKt.h(i4, iC2, str);
                            String strSubstring5 = str.substring(iH3, _UtilCommonKt.i(iH3, iC2, str));
                            if (iC2 < iC) {
                                int iH4 = _UtilCommonKt.h(iC2 + 1, iC, str);
                                strSubstring = str.substring(iH4, _UtilCommonKt.i(iH4, iC, str));
                            } else {
                                strSubstring = "";
                            }
                            if (strSubstring5.equalsIgnoreCase("expires")) {
                                try {
                                    jB = Cookie.Companion.b(strSubstring.length(), strSubstring);
                                    i6 = 1;
                                } catch (NumberFormatException | IllegalArgumentException unused) {
                                }
                            } else if (strSubstring5.equalsIgnoreCase("max-age")) {
                                try {
                                    j2 = Long.parseLong(strSubstring);
                                    if (j2 <= 0) {
                                        j2 = Long.MIN_VALUE;
                                    }
                                } catch (NumberFormatException e) {
                                    Pattern patternCompile = Pattern.compile("-?\\d+");
                                    patternCompile.getClass();
                                    if (!patternCompile.matcher(strSubstring).matches()) {
                                        throw e;
                                    }
                                    j2 = uq7.V(strSubstring, "-", false) ? Long.MIN_VALUE : Long.MAX_VALUE;
                                }
                                i6 = 1;
                            } else if (strSubstring5.equalsIgnoreCase("domain")) {
                                if (uq7.O(strSubstring, ".", false)) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                String strB2 = _HostnamesCommonKt.b(nq7.q0(strSubstring, "."));
                                if (strB2 == null) {
                                    throw new IllegalArgumentException();
                                }
                                str2 = strB2;
                                z = false;
                            } else if (strSubstring5.equalsIgnoreCase("path")) {
                                strSubstring4 = strSubstring;
                            } else if (strSubstring5.equalsIgnoreCase("secure")) {
                                i7 = 1;
                            } else if (strSubstring5.equalsIgnoreCase("httponly")) {
                                i5 = 1;
                            } else if (strSubstring5.equalsIgnoreCase("samesite")) {
                                str3 = strSubstring;
                            }
                            i4 = iC + 1;
                            c = ';';
                            c2 = '=';
                        }
                    } else {
                        i = i2;
                        cookie = null;
                    }
                } else {
                    i = i2;
                    cookie = null;
                }
            }
            if (cookie != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(cookie);
            }
            i3++;
            i2 = i;
        }
        if (arrayList != null) {
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
            listUnmodifiableList.getClass();
        } else {
            listUnmodifiableList = null;
        }
        if (listUnmodifiableList == null) {
            listUnmodifiableList = ov2.a;
        }
        if (listUnmodifiableList.isEmpty()) {
            return;
        }
        cookieJar.a(httpUrl, listUnmodifiableList);
    }

    public static final boolean e(nw0 nw0Var) throws EOFException {
        boolean z = false;
        while (!nw0Var.x()) {
            byte bH = nw0Var.h(0L);
            if (bH != 44) {
                if (bH != 32 && bH != 9) {
                    break;
                }
                nw0Var.readByte();
            } else {
                nw0Var.readByte();
                z = true;
            }
        }
        return z;
    }
}
