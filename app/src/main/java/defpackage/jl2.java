package defpackage;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jl2 implements kz0 {
    public static final char[] l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public final ot9 c;
    public String f;
    public long g;
    public String h;
    public String i;
    public String j;
    public boolean k;
    public final AtomicReference d = new AtomicReference();
    public final Charset e = StandardCharsets.US_ASCII;
    public final SecureRandom b = new SecureRandom();

    public jl2(ot9 ot9Var) {
        this.c = ot9Var;
    }

    public static String d(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i = 0; i < length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = l;
            cArr[i2] = cArr2[(b & 240) >> 4];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ce  */
    public static void e(String str, int i, ConcurrentHashMap concurrentHashMap) {
        dp0[] dp0VarArr;
        ex5 ex5Var = new ex5(str.length());
        ir0 ir0Var = new ir0(2);
        if (i < 0) {
            c6.f("Buffer capacity may not be negative");
            return;
        }
        ir0Var.c = new char[i];
        int length = str.length();
        int i2 = ir0Var.b + length;
        char[] cArr = (char[]) ir0Var.c;
        if (i2 > cArr.length) {
            char[] cArr2 = new char[Math.max(cArr.length << 1, i2)];
            System.arraycopy((char[]) ir0Var.c, 0, cArr2, 0, ir0Var.b);
            ir0Var.c = cArr2;
        }
        str.getChars(0, length, (char[]) ir0Var.c, ir0Var.b);
        ir0Var.b = i2;
        ArrayList arrayList = new ArrayList();
        while (true) {
            int i3 = ex5Var.b;
            int i4 = ex5Var.a;
            if (i3 >= i4) {
                break;
            }
            dp0 dp0VarV = y13.v(ir0Var, ex5Var);
            int i5 = ex5Var.b;
            if (i5 >= i4) {
                dp0VarArr = null;
            } else {
                if (((char[]) ir0Var.c)[i5 - 1] != ',') {
                    while (i5 < i4 && tu0.o(((char[]) ir0Var.c)[i5])) {
                        i5++;
                    }
                    ex5Var.a(i5);
                    if (ex5Var.b >= i4) {
                        dp0VarArr = new dp0[0];
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        while (ex5Var.b < i4) {
                            arrayList2.add(y13.v(ir0Var, ex5Var));
                            if (((char[]) ir0Var.c)[ex5Var.b - 1] == ',') {
                                break;
                            }
                        }
                        dp0VarArr = (dp0[]) arrayList2.toArray(new dp0[arrayList2.size()]);
                    }
                } else {
                    dp0VarArr = null;
                }
            }
            String str2 = dp0VarV.a;
            String str3 = dp0VarV.b;
            yo0 yo0Var = new yo0(str2, str3, dp0VarArr);
            if (str2.length() != 0 || str3 != null) {
                arrayList.add(yo0Var);
            }
        }
        yo0[] yo0VarArr = (yo0[]) arrayList.toArray(new yo0[arrayList.size()]);
        if (yo0VarArr.length == 0) {
            c6.f("Authentication challenge is empty");
            return;
        }
        for (yo0 yo0Var2 : yo0VarArr) {
            concurrentHashMap.put(yo0Var2.a, yo0Var2.b);
        }
    }

    @Override // defpackage.kz0
    public final Request a(Route route, Request request) {
        Map map = (Map) this.d.get();
        return c(request, map == null ? new ConcurrentHashMap() : new ConcurrentHashMap(map));
    }

    @Override // okhttp3.Authenticator
    public final synchronized Request b(Route route, Response response) {
        String str;
        String str2;
        Headers headers = response.f;
        int i = response.d;
        if (i == 401) {
            this.k = false;
            str = "WWW-Authenticate";
        } else if (i == 407) {
            this.k = true;
            str = "Proxy-Authenticate";
        } else {
            str = "";
        }
        List listI = headers.i(str);
        Iterator it = listI.iterator();
        do {
            if (!it.hasNext()) {
                if (!listI.contains("OkHttp-Preemptive")) {
                    y5.m(xs1.l("unsupported auth scheme: ", listI));
                }
                str2 = null;
                break;
            }
            str2 = (String) it.next();
        } while (!str2.startsWith("Digest"));
        if (str2 == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        e(str2, str2.length() - 7, concurrentHashMap);
        Headers headers2 = response.f;
        for (int i2 = 0; i2 < headers2.size(); i2++) {
            concurrentHashMap.put(headers2.e(i2), headers2.g(i2));
        }
        this.d.set(Collections.unmodifiableMap(concurrentHashMap));
        if (concurrentHashMap.get("nonce") != null) {
            return c(response.a, concurrentHashMap);
        }
        throw new IOException("missing nonce in challenge header: " + str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request c(Request request, ConcurrentHashMap concurrentHashMap) throws IOException {
        byte b;
        byte[] bytes;
        byte[] bytes2;
        int i;
        String string;
        String str;
        String string2;
        byte[] bytes3;
        if (((String) concurrentHashMap.get("realm")) == null) {
            return null;
        }
        if (((String) concurrentHashMap.get("nonce")) == null) {
            y5.m("missing nonce in challenge");
            return null;
        }
        boolean zEqualsIgnoreCase = "true".equalsIgnoreCase((String) concurrentHashMap.get("stale"));
        String str2 = this.k ? "Proxy-Authorization" : "Authorization";
        request.getClass();
        String strD = request.c.d(str2);
        if ((strD == null || !strD.startsWith("Digest")) ? false : !zEqualsIgnoreCase) {
            Platform.a.j(4, "Previous digest authentication with same nonce failed, returning null", null);
            return null;
        }
        if (concurrentHashMap.get("proxy-authenticate") != null) {
            String str3 = request.a.d + ':' + request.a.e;
            concurrentHashMap.put("methodname", "CONNECT");
            concurrentHashMap.put("uri", str3);
        } else {
            String str4 = request.b;
            HttpUrl httpUrl = request.a;
            String strB = httpUrl.b();
            String strD2 = httpUrl.d();
            if (strD2 != null) {
                strB = dj7.k(strB, "?", strD2);
            }
            concurrentHashMap.put("methodname", str4);
            concurrentHashMap.put("uri", strB);
        }
        if (((String) concurrentHashMap.get("charset")) == null) {
            String strD3 = request.c.d("http.auth.credential-charset");
            if (strD3 == null) {
                strD3 = this.e.name();
            }
            concurrentHashMap.put("charset", strD3);
        }
        ot9 ot9Var = this.c;
        synchronized (this) {
            try {
                String str5 = (String) concurrentHashMap.get("uri");
                String str6 = (String) concurrentHashMap.get("realm");
                String str7 = (String) concurrentHashMap.get("nonce");
                String str8 = (String) concurrentHashMap.get("opaque");
                String str9 = (String) concurrentHashMap.get("methodname");
                String str10 = (String) concurrentHashMap.get("algorithm");
                if (str10 == null) {
                    str10 = "MD5";
                }
                HashSet hashSet = new HashSet(8);
                String str11 = (String) concurrentHashMap.get("qop");
                if (str11 != null) {
                    StringTokenizer stringTokenizer = new StringTokenizer(str11, ",");
                    while (stringTokenizer.hasMoreTokens()) {
                        hashSet.add(stringTokenizer.nextToken().trim().toLowerCase(Locale.US));
                    }
                    b = (request.d == null || !hashSet.contains("auth-int")) ? hashSet.contains("auth") ? (byte) 2 : (byte) -1 : (byte) 1;
                } else {
                    b = 0;
                }
                if (b == -1) {
                    throw new il2("None of the qop methods is supported: " + str11);
                }
                String str12 = (String) concurrentHashMap.get("charset");
                if (str12 == null) {
                    str12 = "ISO-8859-1";
                }
                String str13 = "MD5-sess".equalsIgnoreCase(str10) ? "MD5" : str10;
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(str13);
                    String str14 = (String) ot9Var.a;
                    String str15 = (String) ot9Var.b;
                    if (str7.equals(this.f)) {
                        this.g++;
                    } else {
                        this.g = 1L;
                        this.h = null;
                        this.f = str7;
                    }
                    StringBuilder sb = new StringBuilder(256);
                    Formatter formatter = new Formatter(sb, Locale.US);
                    formatter.format("%08x", Long.valueOf(this.g));
                    formatter.close();
                    String string3 = sb.toString();
                    if (this.h == null) {
                        byte[] bArr = new byte[8];
                        this.b.nextBytes(bArr);
                        this.h = d(bArr);
                    }
                    this.i = null;
                    this.j = null;
                    if ("MD5-sess".equalsIgnoreCase(str10)) {
                        sb.setLength(0);
                        sb.append(str14);
                        sb.append(':');
                        sb.append(str6);
                        sb.append(':');
                        sb.append(str15);
                        String string4 = sb.toString();
                        try {
                            bytes3 = string4.getBytes(str12);
                        } catch (UnsupportedEncodingException unused) {
                            bytes3 = string4.getBytes();
                        }
                        String strD4 = d(messageDigest.digest(bytes3));
                        sb.setLength(0);
                        sb.append(strD4);
                        sb.append(':');
                        sb.append(str7);
                        sb.append(':');
                        sb.append(this.h);
                        this.i = sb.toString();
                    } else {
                        sb.setLength(0);
                        sb.append(str14);
                        sb.append(':');
                        sb.append(str6);
                        sb.append(':');
                        sb.append(str15);
                        this.i = sb.toString();
                    }
                    String str16 = this.i;
                    try {
                        bytes = str16.getBytes(str12);
                    } catch (UnsupportedEncodingException unused2) {
                        bytes = str16.getBytes();
                    }
                    String strD5 = d(messageDigest.digest(bytes));
                    if (b == 2) {
                        this.j = str9 + ':' + str5;
                    } else if (b != 1) {
                        this.j = str9 + ':' + str5;
                    } else if (request.d == null) {
                        messageDigest.reset();
                        try {
                            this.j = str9 + ':' + str5 + ':' + d(messageDigest.digest());
                        } catch (IOException e) {
                            throw new il2("I/O error reading entity content", e);
                        }
                    } else {
                        if (!hashSet.contains("auth")) {
                            throw new il2("Qop auth-int cannot be used with a non-repeatable entity");
                        }
                        this.j = str9 + ':' + str5;
                        b = (byte) 2;
                    }
                    String str17 = this.j;
                    try {
                        bytes2 = str17.getBytes(str12);
                    } catch (UnsupportedEncodingException unused3) {
                        bytes2 = str17.getBytes();
                    }
                    String strD6 = d(messageDigest.digest(bytes2));
                    if (b == 0) {
                        sb.setLength(0);
                        sb.append(strD5);
                        sb.append(':');
                        sb.append(str7);
                        sb.append(':');
                        sb.append(strD6);
                        string = sb.toString();
                        i = 0;
                    } else {
                        i = 0;
                        sb.setLength(0);
                        sb.append(strD5);
                        sb.append(':');
                        sb.append(str7);
                        sb.append(':');
                        sb.append(string3);
                        sb.append(':');
                        sb.append(this.h);
                        sb.append(':');
                        sb.append(b == 1 ? "auth-int" : "auth");
                        sb.append(':');
                        sb.append(strD6);
                        string = sb.toString();
                    }
                    String strD7 = d(messageDigest.digest(string.getBytes(StandardCharsets.US_ASCII)));
                    StringBuilder sb2 = new StringBuilder(128);
                    str = this.k ? "Proxy-Authorization" : "Authorization";
                    sb2.append("Digest ");
                    ArrayList arrayList = new ArrayList(20);
                    arrayList.add(new dp0("username", str14));
                    arrayList.add(new dp0("realm", str6));
                    arrayList.add(new dp0("nonce", str7));
                    arrayList.add(new dp0("uri", str5));
                    arrayList.add(new dp0("response", strD7));
                    if (b != 0) {
                        arrayList.add(new dp0("qop", b == 1 ? "auth-int" : "auth"));
                        arrayList.add(new dp0("nc", string3));
                        arrayList.add(new dp0("cnonce", this.h));
                    }
                    arrayList.add(new dp0("algorithm", str10));
                    if (str8 != null) {
                        arrayList.add(new dp0("opaque", str8));
                    }
                    for (int i2 = i; i2 < arrayList.size(); i2++) {
                        dp0 dp0Var = (dp0) arrayList.get(i2);
                        if (i2 > 0) {
                            sb2.append(", ");
                        }
                        String str18 = dp0Var.a;
                        zv1.f(sb2, dp0Var, (("nc".equals(str18) || "qop".equals(str18) || "algorithm".equals(str18)) ? 1 : i) ^ 1);
                    }
                    string2 = sb2.toString();
                } catch (Exception e2) {
                    throw new IllegalArgumentException("Unsupported algorithm in HTTP Digest authentication: ".concat(str13), e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Request.Builder builderA = request.a();
        return xs1.o(builderA.c, str, string2, builderA);
    }
}
