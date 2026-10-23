package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.io.IOException;
import java.io.InputStream;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d04 {
    public static final OkHttpClient i;
    public static final MediaType j;
    public static final MediaType k;
    public static final ai6 l;
    public static final ai6 m;
    public final q02 a;
    public final rk b;
    public final OkHttpClient c;
    public final String d;
    public final String e;
    public final String f;
    public final mt3 g;
    public final OkHttpClient h;

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.a(180L, timeUnit);
        builder.x = _UtilJvmKt.b(180L, timeUnit);
        builder.y = _UtilJvmKt.b(180L, timeUnit);
        i = new OkHttpClient(builder);
        ai6 ai6Var = MediaType.d;
        j = MediaType.Companion.a("application/json; charset=utf-8");
        k = MediaType.Companion.a("application/octet-stream");
        l = new ai6("HTTP/\\d(?:\\.\\d)?\\s+(\\d{3})[^\\r\\n]*(?:\\r?\\n(?!\\r?\\n)[^\\r\\n]*)*\\r?\\n\\r?\\n");
        m = new ai6("bytes=0-(\\d+)", 0);
    }

    public d04(q02 q02Var, rk rkVar) {
        ou ouVar = new ou(8);
        OkHttpClient okHttpClient = i;
        okHttpClient.getClass();
        this.a = q02Var;
        this.b = rkVar;
        this.c = okHttpClient;
        this.d = "https://www.googleapis.com";
        this.e = "https://www.googleapis.com";
        this.f = "https://www.googleapis.com";
        this.g = ouVar;
        OkHttpClient.Builder builderB = okHttpClient.b();
        builderB.i = false;
        builderB.j = false;
        this.h = new OkHttpClient(builderB);
    }

    public static String a(qj4 qj4Var) {
        Object bn6Var;
        if (qj4Var instanceof el4) {
            return null;
        }
        try {
            bn6Var = qj4Var.o();
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        return (String) (bn6Var instanceof bn6 ? null : bn6Var);
    }

    public static ArrayList k(d04 d04Var, String str, String str2) throws IOException {
        d04Var.getClass();
        ArrayList arrayList = new ArrayList();
        int iH = l73.h(100, 1, 100);
        String strA = null;
        do {
            HttpUrl.Builder builderG = u(d04Var.d, "/drive/v3/files").g();
            builderG.d(JWKParameterNames.RSA_SECOND_PRIME_FACTOR, str);
            builderG.d("spaces", "drive");
            builderG.d("fields", nq7.Z(str2, "nextPageToken", false) ? str2 : "nextPageToken, ".concat(str2));
            builderG.d("pageSize", String.valueOf(iH));
            if (strA != null) {
                builderG.d("pageToken", strA);
            }
            Request.Builder builder = new Request.Builder();
            builder.a = builderG.e();
            builder.b();
            fl4 fl4VarG = d04Var.g(new Request(builder));
            qj4 qj4VarX = fl4VarG.x("files");
            if (qj4VarX != null) {
                xi4 xi4VarG = !(qj4VarX instanceof xi4) ? null : qj4VarX.g();
                if (xi4VarG != null) {
                    Iterator it = xi4VarG.a.iterator();
                    while (it.hasNext()) {
                        arrayList.add(s(((qj4) it.next()).i()));
                    }
                }
            }
            qj4 qj4VarX2 = fl4VarG.x("nextPageToken");
            strA = qj4VarX2 != null ? a(qj4VarX2) : null;
            if (strA == null) {
                break;
            }
        } while (!nq7.j0(strA));
        return arrayList;
    }

    public static Long l(fl4 fl4Var, String str) {
        Object bn6Var;
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX == null || (qj4VarX instanceof el4)) {
            return null;
        }
        try {
            bn6Var = Long.valueOf(qj4VarX.l());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        return (Long) (bn6Var instanceof bn6 ? null : bn6Var);
    }

    public static long m(Response response) throws IOException {
        String strB = Response.b("Range", response);
        if (strB == null) {
            return 0L;
        }
        String string = nq7.H0(strB).toString();
        ai6 ai6Var = m;
        ai6Var.getClass();
        string.getClass();
        Matcher matcher = ai6Var.a.matcher(string);
        matcher.getClass();
        u75 u75Var = !matcher.matches() ? null : new u75(matcher, string);
        if (u75Var == null) {
            y5.m("Google Drive returned an invalid resumable upload Range");
            return 0L;
        }
        Long lY = uq7.Y((String) ((s75) u75Var.a()).get(1));
        if (lY != null) {
            Long l2 = lY.longValue() < Long.MAX_VALUE ? lY : null;
            if (l2 != null) {
                return l2.longValue() + 1;
            }
        }
        y5.m("Google Drive returned an invalid resumable upload Range");
        return 0L;
    }

    public static ArrayList n(String str) {
        nd4 nd4VarB;
        ai6 ai6Var = l;
        ai6Var.getClass();
        str.getClass();
        if (str.length() < 0) {
            throw new IndexOutOfBoundsException("Start index out of bounds: 0, input length: " + str.length());
        }
        List listC0 = h77.C0(new ev3(new g52(10, ai6Var, str), zh6.a));
        ArrayList arrayList = new ArrayList(hl1.G0(listC0, 10));
        int i2 = 0;
        for (Object obj : listC0) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                fl1.F0();
                throw null;
            }
            u75 u75Var = (u75) obj;
            int i4 = u75Var.b().b + 1;
            u75 u75Var2 = (u75) el1.V0(i3, listC0);
            int length = (u75Var2 == null || (nd4VarB = u75Var2.b()) == null) ? str.length() : nd4VarB.a;
            arrayList.add(new b04(uq7.X((String) ((s75) u75Var.a()).get(1)), nq7.G0(RSAKeyGenerator.MIN_KEY_SIZE_BITS, nq7.H0(nq7.F0(nq7.F0(str.substring(i4, length), "\r\n--", str.substring(i4, length)), "\n--", str.substring(i4, length))).toString())));
            i2 = i3;
        }
        return arrayList;
    }

    public static String p(String str, Response response) throws IOException {
        HttpUrl.Builder builder;
        Request request = response.a;
        HttpUrl httpUrl = request.a;
        httpUrl.getClass();
        try {
            builder = new HttpUrl.Builder();
            builder.h(httpUrl, str);
        } catch (IllegalArgumentException unused) {
            builder = null;
        }
        HttpUrl httpUrlE = builder != null ? builder.e() : null;
        if (httpUrlE == null) {
            y5.m("Google Drive returned an invalid resumable upload Location");
            return null;
        }
        if (!request.a.f() || httpUrlE.f()) {
            return httpUrlE.h;
        }
        y5.m("Google Drive resumable upload Location attempted an HTTPS downgrade");
        return null;
    }

    public static Long q(Response response) {
        String string;
        Long lY;
        String strB = Response.b("Retry-After", response);
        if (strB == null || (string = nq7.H0(strB).toString()) == null || (lY = uq7.Y(string)) == null) {
            return null;
        }
        long jLongValue = lY.longValue();
        if (jLongValue < 0) {
            jLongValue = 0;
        }
        return Long.valueOf(TimeUnit.SECONDS.toMillis(jLongValue));
    }

    public static long r(String str) {
        Object bn6Var;
        if (str == null || nq7.j0(str)) {
            return 0L;
        }
        try {
            bn6Var = Long.valueOf(Instant.parse(str).toEpochMilli());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (bn6Var instanceof bn6) {
            bn6Var = 0L;
        }
        return ((Number) bn6Var).longValue();
    }

    /* JADX WARN: Code duplicated, block: B:41:0x009d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v9, types: [ov2] */
    public static yz3 s(fl4 fl4Var) {
        ?? arrayList;
        Object bn6Var;
        qj4 qj4VarX = fl4Var.x("id");
        String strA = qj4VarX != null ? a(qj4VarX) : null;
        qj4 qj4VarX2 = fl4Var.x("name");
        String strA2 = qj4VarX2 != null ? a(qj4VarX2) : null;
        if (strA2 == null) {
            strA2 = "";
        }
        String str = strA2;
        Long l2 = l(fl4Var, "size");
        long jLongValue = l2 != null ? l2.longValue() : 0L;
        qj4 qj4VarX3 = fl4Var.x("createdTime");
        long jR = r(qj4VarX3 != null ? a(qj4VarX3) : null);
        qj4 qj4VarX4 = fl4Var.x("modifiedTime");
        long jR2 = r(qj4VarX4 != null ? a(qj4VarX4) : null);
        qj4 qj4VarX5 = fl4Var.x("thumbnailLink");
        String strA3 = qj4VarX5 != null ? a(qj4VarX5) : null;
        qj4 qj4VarX6 = fl4Var.x("parents");
        if (qj4VarX6 == null) {
            arrayList = 0;
        } else {
            xi4 xi4VarG = !(qj4VarX6 instanceof xi4) ? null : qj4VarX6.g();
            if (xi4VarG != null) {
                arrayList = new ArrayList();
                for (qj4 qj4Var : xi4VarG.a) {
                    qj4Var.getClass();
                    String strA4 = a(qj4Var);
                    if (strA4 != null) {
                        arrayList.add(strA4);
                    }
                }
            } else {
                arrayList = 0;
            }
        }
        if (arrayList == 0) {
            arrayList = ov2.a;
        }
        ?? r12 = arrayList;
        qj4 qj4VarX7 = fl4Var.x("trashed");
        boolean zBooleanValue = false;
        if (qj4VarX7 != null && !(qj4VarX7 instanceof el4)) {
            try {
                bn6Var = Boolean.valueOf(qj4VarX7.e());
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            Object obj = Boolean.FALSE;
            if (bn6Var instanceof bn6) {
                bn6Var = obj;
            }
            zBooleanValue = ((Boolean) bn6Var).booleanValue();
        }
        boolean z = zBooleanValue;
        qj4 qj4VarX8 = fl4Var.x("mimeType");
        return new yz3(strA, str, jLongValue, jR, jR2, strA3, r12, z, qj4VarX8 != null ? a(qj4VarX8) : null);
    }

    public static fl4 t(zz3 zz3Var, boolean z, boolean z2) {
        String str = zz3Var.a;
        fl4 fl4Var = new fl4();
        if (z2 && str != null && !nq7.j0(str)) {
            fl4Var.u("id", str);
        }
        String str2 = zz3Var.b;
        Map map = zz3Var.e;
        String str3 = zz3Var.c;
        String str4 = zz3Var.d;
        fl4Var.u("name", str2);
        if (str4 != null && !nq7.j0(str4)) {
            fl4Var.u("mimeType", str4);
        }
        if (z && str3 != null && !nq7.j0(str3)) {
            xi4 xi4Var = new xi4();
            xi4Var.s(str3);
            fl4Var.p("parents", xi4Var);
        }
        if (!map.isEmpty()) {
            fl4 fl4Var2 = new fl4();
            for (Map.Entry entry : map.entrySet()) {
                fl4Var2.u((String) entry.getKey(), (String) entry.getValue());
            }
            fl4Var.p("properties", fl4Var2);
        }
        return fl4Var;
    }

    public static HttpUrl u(String str, String str2) {
        return HttpUrl.Companion.b(nq7.K0(str, '/') + "/" + nq7.L0(str2, '/'));
    }

    public final xz3 b(ArrayList arrayList) throws IOException {
        int iIntValue;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList) {
            if (!nq7.j0((String) obj)) {
                arrayList3.add(obj);
            }
        }
        Long l2 = null;
        Long lValueOf = null;
        for (List list : el1.A1(arrayList3, 100, 100)) {
            String string = UUID.randomUUID().toString();
            string.getClass();
            String strConcat = "swiftbackup_".concat(uq7.T(string, "-", ""));
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            int i3 = 0;
            for (Object obj2 : list) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    fl1.F0();
                    throw null;
                }
                sb.append("--");
                sb.append(strConcat);
                sb.append("\r\nContent-Type: application/http\r\nContent-ID: request-");
                sb.append(i4);
                sb.append("\r\n\r\nDELETE /drive/v3/files/");
                sb.append((String) obj2);
                sb.append("?supportsAllDrives=true HTTP/1.1\r\n\r\n");
                i3 = i4;
            }
            String strN = eq3.n(sb, "--", strConcat, "--");
            Request.Builder builder = new Request.Builder();
            builder.a = u(this.f, "/batch/drive/v3");
            builder.c.d("Content-Type", "multipart/mixed; boundary=".concat(strConcat));
            RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
            ai6 ai6Var = MediaType.d;
            builder.c("POST", RequestBody.Companion.a(strN, MediaType.Companion.a("multipart/mixed; boundary=".concat(strConcat))));
            Response responseE = e(new Request(builder));
            try {
                Long lQ = q(responseE);
                if (lValueOf == null) {
                    lValueOf = lQ;
                } else if (lQ != null) {
                    lValueOf = Long.valueOf(Math.max(lValueOf.longValue(), lQ.longValue()));
                }
                ArrayList arrayListN = n(responseE.k.n());
                for (Object obj3 : list) {
                    int i5 = i2 + 1;
                    if (i2 < 0) {
                        fl1.F0();
                        throw null;
                    }
                    String str = (String) obj3;
                    b04 b04Var = (b04) el1.V0(i2, arrayListN);
                    Integer num = b04Var != null ? b04Var.a : null;
                    if (num == null || ((200 > (iIntValue = num.intValue()) || iIntValue >= 300) && num.intValue() != 404)) {
                        String str2 = b04Var != null ? b04Var.b : null;
                        if (str2 == null) {
                            str2 = "";
                        }
                        arrayList2.add(new wz3(num, str, str2));
                    }
                    i2 = i5;
                }
                responseE.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(responseE, th);
                    throw th2;
                }
            }
        }
        ArrayList arrayList4 = new ArrayList(hl1.G0(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList4.add(((wz3) it.next()).a);
        }
        if (lValueOf != null && lValueOf.longValue() > 0) {
            l2 = lValueOf;
        }
        return new xz3(arrayList4, l2, arrayList2);
    }

    public final yz3 c(String str) {
        zz3 zz3Var = new zz3(str, (String) null, "application/vnd.google-apps.folder", (LinkedHashMap) null, 21);
        Request.Builder builder = new Request.Builder();
        HttpUrl.Builder builderG = u(this.d, "/drive/v3/files").g();
        builderG.d("fields", "id, name");
        builderG.d("supportsAllDrives", "true");
        builder.a = builderG.e();
        fl4 fl4VarT = t(zz3Var, false, false);
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        builder.c("POST", RequestBody.Companion.a(fl4VarT.toString(), j));
        return s(g(new Request(builder)));
    }

    public final n04 d(String str, zz3 zz3Var, long j2) {
        boolean z = str == null || nq7.j0(str);
        String strJ = !z ? xs1.j("/upload/drive/v3/files/", str) : "/upload/drive/v3/files";
        Request.Builder builder = new Request.Builder();
        HttpUrl.Builder builderG = u(this.e, strJ).g();
        builderG.d("uploadType", "resumable");
        builderG.d("fields", "id, name");
        builderG.d("supportsAllDrives", "true");
        builder.a = builderG.e();
        if (j2 < 0) {
            j2 = 0;
        }
        String strValueOf = String.valueOf(j2);
        strValueOf.getClass();
        builder.c.d("X-Upload-Content-Length", strValueOf);
        String str2 = zz3Var.d;
        if (str2 == null) {
            str2 = "application/octet-stream";
        }
        builder.c.d("X-Upload-Content-Type", str2);
        String str3 = !z ? "PATCH" : "POST";
        fl4 fl4VarT = t(zz3Var, z, z);
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        builder.c(str3, RequestBody.Companion.a(fl4VarT.toString(), j));
        Response responseE = e(new Request(builder));
        try {
            String strB = Response.b("Location", responseE);
            if (strB != null) {
                if (nq7.j0(strB)) {
                    strB = null;
                }
                if (strB != null) {
                    n04 n04Var = new n04(p(strB, responseE));
                    responseE.close();
                    return n04Var;
                }
            }
            throw new IOException("Google Drive resumable upload response did not contain Location");
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseE, th);
                throw th2;
            }
        }
    }

    public final Response e(Request request) throws IOException {
        Response response;
        Object bn6Var;
        int i2 = 0;
        while (true) {
            CharSequence charSequence = (CharSequence) this.a.invoke();
            rk rkVar = this.b;
            if ((charSequence != null && !nq7.j0(charSequence)) || ((Boolean) rkVar.invoke()).booleanValue()) {
                Response responseF = f(request);
                if (responseF.d == 401) {
                    responseF.close();
                    if (!((Boolean) rkVar.invoke()).booleanValue()) {
                        y5.m("Google Drive access token refresh failed");
                        return null;
                    }
                    responseF = f(request);
                }
                response = responseF;
                if (i2 >= 3) {
                    break;
                }
                int i3 = response.d;
                if (i3 != 429 && (500 > i3 || i3 >= 600)) {
                    if (i3 != 403) {
                        break;
                    }
                    try {
                        bn6Var = response.h(65536L).n();
                    } catch (Throwable th) {
                        bn6Var = new bn6(th);
                    }
                    if (bn6Var instanceof bn6) {
                        bn6Var = "";
                    }
                    String str = (String) bn6Var;
                    if (!nq7.Z(str, "rateLimitExceeded", true) && !nq7.Z(str, "userRateLimitExceeded", true)) {
                        break;
                    }
                }
                long jLongValue = (1 << (i2 <= 4 ? i2 : 4)) * 1000;
                Long lQ = q(response);
                if (lQ != null) {
                    jLongValue = lQ.longValue();
                }
                if (jLongValue > 30000) {
                    jLongValue = 30000;
                }
                response.close();
                this.g.invoke(Long.valueOf(jLongValue));
                i2++;
            } else {
                y5.m("Google Drive access token refresh failed");
                return null;
            }
        }
        if (response.H) {
            return response;
        }
        String strN = response.k.n();
        Long lQ2 = q(response);
        response.close();
        Request request2 = response.a;
        throw new vz3(request2.b, request2.a.h, response.d, strN, lQ2);
    }

    public final Response f(Request request) throws IOException {
        String str = (String) this.a.invoke();
        if (str == null) {
            y5.m("Google Drive access token unavailable");
            return null;
        }
        Request.Builder builderA = request.a();
        return new RealCall(this.c, xs1.o(builderA.c, "Authorization", "Bearer ".concat(str), builderA)).g();
    }

    public final fl4 g(Request request) throws IOException {
        Response responseE = e(request);
        try {
            String strN = responseE.k.n();
            if (nq7.j0(strN)) {
                fl4 fl4Var = new fl4();
                responseE.close();
                return fl4Var;
            }
            fl4 fl4VarI = yc9.K(strN).i();
            responseE.close();
            return fl4VarI;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseE, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0051  */
    public final tz3 h() throws IOException {
        a04 a04Var;
        qj4 qj4VarX;
        Request.Builder builder = new Request.Builder();
        HttpUrl.Builder builderG = u(this.d, "/drive/v3/about").g();
        builderG.d("fields", "storageQuota,user");
        builder.a = builderG.e();
        builder.b();
        fl4 fl4VarG = g(new Request(builder));
        qj4 qj4VarX2 = fl4VarG.x("storageQuota");
        String strA = null;
        if (qj4VarX2 == null) {
            a04Var = null;
        } else {
            fl4 fl4VarI = !(qj4VarX2 instanceof fl4) ? null : qj4VarX2.i();
            if (fl4VarI != null) {
                a04Var = new a04(l(fl4VarI, "usage"), l(fl4VarI, "limit"));
            } else {
                a04Var = null;
            }
        }
        qj4 qj4VarX3 = fl4VarG.x("user");
        if (qj4VarX3 != null) {
            fl4 fl4VarI2 = !(qj4VarX3 instanceof fl4) ? null : qj4VarX3.i();
            if (fl4VarI2 != null && (qj4VarX = fl4VarI2.x("emailAddress")) != null) {
                strA = a(qj4VarX);
            }
        }
        return new tz3(a04Var, strA);
    }

    public final yz3 i(String str, String str2) {
        str.getClass();
        Request.Builder builder = new Request.Builder();
        HttpUrl.Builder builderG = u(this.d, "/drive/v3/files/".concat(str)).g();
        builderG.d("fields", str2);
        builderG.d("supportsAllDrives", "true");
        builder.a = builderG.e();
        builder.b();
        return s(g(new Request(builder)));
    }

    public final o04 j(long j2, String str) {
        String str2;
        o04 o04Var;
        String strP;
        str.getClass();
        Request.Builder builder = new Request.Builder();
        builder.d(str);
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        yz3 yz3VarS = null;
        builder.c("PUT", RequestBody.Companion.a("", null));
        builder.c.d("Content-Length", "0");
        Request requestO = xs1.o(builder.c, "Content-Range", "bytes */" + j2, builder);
        OkHttpClient okHttpClient = this.h;
        okHttpClient.getClass();
        Response responseG = new RealCall(okHttpClient, requestO).g();
        try {
            String strN = responseG.k.n();
            int i2 = responseG.d;
            if (i2 == 200 || i2 == 201) {
                if (nq7.j0(strN)) {
                    str2 = null;
                }
                if (str2 != null) {
                    str2 = strN;
                    yz3VarS = s(yc9.K(str2).i());
                }
                str2 = strN;
                o04Var = new o04(true, yz3VarS, j2, str);
            } else {
                if (i2 != 308) {
                    throw new vz3("PUT", str, i2, strN, q(responseG));
                }
                long jM = m(responseG);
                String strB = Response.b("Location", responseG);
                if (strB != null) {
                    String str3 = nq7.j0(strB) ? null : strB;
                    strP = str3 == null ? str : p(str3, responseG);
                }
                o04Var = new o04(false, null, jM, strP);
            }
            responseG.close();
            return o04Var;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseG, th);
                throw th2;
            }
        }
    }

    public final m04 o(String str, InputStream inputStream, long j2, long j3, long j4, e04 e04Var) {
        String string;
        m04 m04Var;
        str.getClass();
        long j5 = (j2 + j3) - 1;
        if (j4 == 0) {
            string = "bytes */0";
        } else {
            StringBuilder sbT = dj7.t("bytes ", "-", j2);
            sbT.append(j5);
            sbT.append("/");
            sbT.append(j4);
            string = sbT.toString();
        }
        Request.Builder builder = new Request.Builder();
        builder.d(str);
        builder.c("PUT", new c04(j3, inputStream, e04Var));
        String strValueOf = String.valueOf(j3);
        strValueOf.getClass();
        builder.c.d("Content-Length", strValueOf);
        Request requestO = xs1.o(builder.c, "Content-Range", string, builder);
        OkHttpClient okHttpClient = this.h;
        okHttpClient.getClass();
        Response responseG = new RealCall(okHttpClient, requestO).g();
        try {
            String strN = responseG.k.n();
            int i2 = responseG.d;
            if (i2 == 200 || i2 == 201) {
                if (nq7.j0(strN)) {
                    strN = null;
                }
                m04Var = new m04(true, strN != null ? s(yc9.K(strN).i()) : null, j4, str);
            } else {
                if (i2 != 308) {
                    throw new vz3("PUT", str, i2, strN, q(responseG));
                }
                long jM = m(responseG);
                String strB = Response.b("Location", responseG);
                if (strB != null) {
                    String str2 = nq7.j0(strB) ? null : strB;
                    if (str2 != null) {
                        str = p(str2, responseG);
                    }
                }
                m04Var = new m04(false, null, jM, str);
            }
            responseG.close();
            return m04Var;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseG, th);
                throw th2;
            }
        }
    }
}
