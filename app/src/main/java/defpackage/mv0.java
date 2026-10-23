package defpackage;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.Instant;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mv0 {
    public static final MediaType g;
    public static final MediaType h;
    public final dl a;
    public final el b;
    public final Call.Factory c;
    public final String d;
    public final String e;
    public final mt3 f;

    static {
        ai6 ai6Var = MediaType.d;
        g = MediaType.Companion.a("application/json; charset=utf-8");
        h = MediaType.Companion.a("application/octet-stream");
    }

    public mv0(dl dlVar, el elVar, OkHttpClient okHttpClient) {
        hw hwVar = new hw(1);
        okHttpClient.getClass();
        this.a = dlVar;
        this.b = elVar;
        this.c = okHttpClient;
        this.d = "https://api.box.com";
        this.e = "https://upload.box.com";
        this.f = hwVar;
    }

    public static Request.Builder b(HttpUrl httpUrl) {
        Request.Builder builder = new Request.Builder();
        builder.a = httpUrl;
        return builder;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0035 A[PHI: r5
      0x0035: PHI (r5v11 java.lang.String) = (r5v5 java.lang.String), (r5v7 java.lang.String), (r5v14 java.lang.String) binds: [B:33:0x0049, B:38:0x0059, B:23:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x0037  */
    /* JADX WARN: Code duplicated, block: B:32:0x0048  */
    public static String c(Request request, int i, String str) {
        Object bn6Var;
        JSONObject jSONObject;
        String strOptString;
        String str2 = null;
        if (nq7.j0(str)) {
            str = null;
        }
        if (str != null) {
            try {
                bn6Var = new JSONObject(str);
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            if (bn6Var instanceof bn6) {
                bn6Var = null;
            }
            jSONObject = (JSONObject) bn6Var;
        } else {
            jSONObject = null;
        }
        if (jSONObject == null || (strOptString = jSONObject.optString("message")) == null) {
            if (jSONObject != null || (strOptString = jSONObject.optString("error_description")) == null || nq7.j0(strOptString)) {
                strOptString = null;
            }
            if (strOptString == null || (jSONObject != null && (strOptString = jSONObject.optString("error")) != null && !nq7.j0(strOptString))) {
                str2 = strOptString;
            }
        } else {
            if (nq7.j0(strOptString)) {
                strOptString = null;
            }
            if (strOptString == null) {
                if (jSONObject != null) {
                    strOptString = null;
                } else {
                    strOptString = null;
                }
                if (strOptString == null) {
                    str2 = strOptString;
                } else {
                    str2 = strOptString;
                }
            } else {
                str2 = strOptString;
            }
        }
        StringBuilder sb = new StringBuilder("Box REST request failed: ");
        sb.append(request.b);
        sb.append(' ');
        sb.append(request.a.b());
        sb.append(" status=");
        sb.append(i);
        if (str2 != null) {
            sb.append(" message=");
            sb.append(str2);
        }
        return sb.toString();
    }

    public static /* synthetic */ JSONObject h(mv0 mv0Var, Request request, jv0 jv0Var, int i) {
        mv0Var.getClass();
        boolean zJ = j(request);
        if ((i & 4) != 0) {
            jv0Var = null;
        }
        return mv0Var.g(request, zJ, jv0Var);
    }

    public static av0 i(JSONObject jSONObject) {
        Iterator it = m(jSONObject.optJSONArray("entries")).iterator();
        while (it.hasNext()) {
            av0 av0VarQ = q((JSONObject) it.next());
            if (av0VarQ != null) {
                return av0VarQ;
            }
        }
        return null;
    }

    public static boolean j(Request request) {
        String str = request.b;
        if (pe4.d(str, "GET") || pe4.d(str, "DELETE")) {
            return true;
        }
        RequestBody requestBody = request.d;
        return (requestBody == null || requestBody.c()) ? false : true;
    }

    public static Long l(JSONObject jSONObject, String str) {
        Object bn6Var;
        if (!jSONObject.has(str) || jSONObject.isNull(str)) {
            return null;
        }
        try {
            bn6Var = Long.valueOf(jSONObject.getLong(str));
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        return (Long) (bn6Var instanceof bn6 ? null : bn6Var);
    }

    public static List m(JSONArray jSONArray) {
        if (jSONArray == null) {
            return ov2.a;
        }
        ww4 ww4VarP = nc8.p();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                ww4VarP.add(jSONObjectOptJSONObject);
            }
        }
        return nc8.h(ww4VarP);
    }

    public static Long n(Response response) {
        String string;
        Long lY;
        String strB = Response.b("Retry-After", response);
        if (strB != null && (string = nq7.H0(strB).toString()) != null && (lY = uq7.Y(string)) != null) {
            if (lY.longValue() <= 0) {
                lY = null;
            }
            if (lY != null) {
                return Long.valueOf(TimeUnit.SECONDS.toMillis(lY.longValue()));
            }
        }
        return null;
    }

    public static long p(String str) {
        Object bn6Var;
        if (str == null || nq7.j0(str)) {
            return 0L;
        }
        try {
            bn6Var = Long.valueOf(Instant.parse(str).toEpochMilli());
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (en6.a(bn6Var) != null) {
            try {
                bn6Var = Long.valueOf(OffsetDateTime.parse(str).toInstant().toEpochMilli());
            } catch (Throwable th2) {
                bn6Var = new bn6(th2);
            }
        }
        if (bn6Var instanceof bn6) {
            bn6Var = 0L;
        }
        return ((Number) bn6Var).longValue();
    }

    public static av0 q(JSONObject jSONObject) {
        String strOptString;
        String strOptString2 = jSONObject.optString("id");
        strOptString2.getClass();
        String str = !nq7.j0(strOptString2) ? strOptString2 : null;
        if (str != null) {
            String strOptString3 = jSONObject.optString("name");
            strOptString3.getClass();
            String str2 = !nq7.j0(strOptString3) ? strOptString3 : null;
            if (str2 != null) {
                Long l = l(jSONObject, "size");
                long jLongValue = l != null ? l.longValue() : 0L;
                long jP = p(jSONObject.optString("created_at"));
                long jP2 = p(jSONObject.optString("modified_at"));
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("parent");
                return new av0(str, str2, jLongValue, jP, jP2, (jSONObjectOptJSONObject == null || (strOptString = jSONObjectOptJSONObject.optString("id")) == null || nq7.j0(strOptString)) ? null : strOptString);
            }
        }
        return null;
    }

    public static bv0 r(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("id");
        strOptString.getClass();
        if (nq7.j0(strOptString)) {
            strOptString = null;
        }
        if (strOptString != null) {
            String strOptString2 = jSONObject.optString("name");
            strOptString2.getClass();
            if (nq7.j0(strOptString2)) {
                strOptString2 = null;
            }
            if (strOptString2 != null) {
                return new bv0(strOptString, strOptString2);
            }
        }
        return null;
    }

    public static qv0 s(JSONObject jSONObject) throws IOException {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("session_endpoints");
        if (jSONObjectOptJSONObject == null) {
            y5.m("Box upload session response did not contain session_endpoints");
            return null;
        }
        String strOptString = jSONObject.optString("id");
        strOptString.getClass();
        String str = !nq7.j0(strOptString) ? strOptString : null;
        if (str == null) {
            y5.m("Box upload session response did not contain id");
            return null;
        }
        Long l = l(jSONObject, "part_size");
        if (l == null) {
            y5.m("Box upload session response did not contain part_size");
            return null;
        }
        long jLongValue = l.longValue();
        String strOptString2 = jSONObjectOptJSONObject.optString("upload_part");
        strOptString2.getClass();
        String str2 = !nq7.j0(strOptString2) ? strOptString2 : null;
        if (str2 == null) {
            y5.m("Box upload session response did not contain upload_part endpoint");
            return null;
        }
        String strOptString3 = jSONObjectOptJSONObject.optString("commit");
        strOptString3.getClass();
        String str3 = !nq7.j0(strOptString3) ? strOptString3 : null;
        if (str3 != null) {
            return new qv0(str, str2, jLongValue, str3);
        }
        y5.m("Box upload session response did not contain commit endpoint");
        return null;
    }

    public final HttpUrl a(String str) {
        return HttpUrl.Companion.b(this.d + str);
    }

    public final bv0 d(String str) throws JSONException, IOException {
        str.getClass();
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", str);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("id", "0");
        jSONObject.put("parent", jSONObject2);
        String string = jSONObject.toString();
        string.getClass();
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3A = RequestBody.Companion.a(string, g);
        Request.Builder builderB = b(a("/2.0/folders"));
        builderB.c("POST", requestBody$Companion$toRequestBody$3A);
        bv0 bv0VarR = r(h(this, new Request(builderB), null, 6));
        if (bv0VarR != null) {
            return bv0VarR;
        }
        y5.m("Box create folder response did not contain folder id/name");
        return null;
    }

    public final Response e(Request request, boolean z, jv0 jv0Var) throws hv0, InterruptedIOException {
        Response responseF;
        int i;
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (jv0Var != null) {
                jv0Var.a();
            }
            responseF = f(request, false, jv0Var);
            if (responseF.d == 401 && !z2 && j(request)) {
                responseF.close();
                z2 = true;
                responseF = f(request, true, jv0Var);
            }
            i = responseF.d;
            if (!z || i2 >= 3 || (i != 429 && (500 > i || i >= 600))) {
                break;
            }
            long jLongValue = (1 << (i2 <= 4 ? i2 : 4)) * 1000;
            Long lN = n(responseF);
            if (lN != null) {
                jLongValue = lN.longValue();
            }
            if (jLongValue > 30000) {
                jLongValue = 30000;
            }
            responseF.close();
            o(jLongValue, jv0Var);
            i2++;
        }
        if (responseF.H) {
            return responseF;
        }
        String strN = responseF.k.n();
        Long lN2 = n(responseF);
        responseF.close();
        throw new hv0(i, strN, lN2, c(responseF.a, i, strN));
    }

    public final Response f(Request request, boolean z, jv0 jv0Var) throws InterruptedIOException {
        String str;
        dl dlVar = this.a;
        if (z) {
            el elVar = this.b;
            str = (String) (elVar != null ? elVar.invoke() : dlVar.invoke());
        } else {
            str = (String) dlVar.invoke();
        }
        Request.Builder builderA = request.a();
        Request requestO = xs1.o(builderA.c, "Authorization", "Bearer ".concat(str), builderA);
        Call.Factory factory = this.c;
        if (jv0Var == null) {
            return factory.a(requestO).g();
        }
        factory.getClass();
        jv0Var.a();
        RealCall realCallA = factory.a(requestO);
        ConcurrentHashMap.KeySetView keySetView = jv0Var.a;
        keySetView.getClass();
        keySetView.add(realCallA);
        try {
            jv0Var.a();
            return realCallA.g();
        } finally {
            keySetView.remove(realCallA);
        }
    }

    public final JSONObject g(Request request, boolean z, jv0 jv0Var) throws hv0, InterruptedIOException {
        Response responseE = e(request, z, jv0Var);
        try {
            String strN = responseE.k.n();
            if (nq7.j0(strN)) {
                strN = null;
            }
            JSONObject jSONObject = strN != null ? new JSONObject(strN) : new JSONObject();
            responseE.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseE, th);
                throw th2;
            }
        }
    }

    public final MultipartBody k(String str, JSONObject jSONObject, d86 d86Var, long j) {
        MultipartBody.Builder builder = new MultipartBody.Builder();
        builder.c(MultipartBody.g);
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        String string = jSONObject.toString();
        string.getClass();
        builder.a("attributes", null, RequestBody.Companion.a(string, g));
        builder.a("file", str, new lv0(j, this, d86Var));
        return builder.b();
    }

    public final void o(long j, jv0 jv0Var) throws InterruptedIOException {
        mt3 mt3Var = this.f;
        if (jv0Var == null) {
            mt3Var.invoke(Long.valueOf(j));
            return;
        }
        mt3Var.getClass();
        while (j > 0) {
            jv0Var.a();
            long jMin = Math.min(j, 100L);
            try {
                mt3Var.invoke(Long.valueOf(jMin));
                j -= jMin;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                InterruptedIOException interruptedIOException = new InterruptedIOException("Box transfer cancelled");
                interruptedIOException.initCause(e);
                throw interruptedIOException;
            }
        }
        jv0Var.a();
    }

    public final av0 t(qv0 qv0Var, long j, qt3 qt3Var, c7 c7Var, jv0 jv0Var) throws JSONException, hv0, NoSuchAlgorithmException, IOException {
        qv0 qv0Var2 = qv0Var;
        if (j < 0) {
            c6.f("Box chunked upload requires a known content length");
            return null;
        }
        String str = "SHA-1";
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
        ArrayList arrayList = new ArrayList();
        long j2 = qv0Var2.b;
        if (j2 < 1) {
            j2 = 1;
        }
        kh6 kh6Var = new kh6();
        kh6 kh6Var2 = new kh6();
        kh6Var2.a = -1L;
        while (true) {
            String str2 = str;
            int i = 0;
            if (kh6Var.a < j) {
                if (jv0Var != null) {
                    jv0Var.a();
                }
                long jMin = Math.min(j2, j - kh6Var.a);
                long j3 = j2;
                long j4 = kh6Var.a;
                if (jMin > 2147483647L) {
                    f6.g(u48.l(jMin, "Box upload part is too large to buffer: "));
                    return null;
                }
                ArrayList arrayList2 = arrayList;
                int i2 = (int) jMin;
                byte[] bArr = new byte[i2];
                Closeable closeable = (Closeable) qt3Var.invoke(Long.valueOf(j4), Long.valueOf(jMin));
                try {
                    InputStream inputStream = (InputStream) closeable;
                    int i3 = 0;
                    while (i3 < i2) {
                        int i4 = inputStream.read(bArr, i3, i2 - i3);
                        InputStream inputStream2 = inputStream;
                        if (i4 == -1) {
                            throw new EOFException("Unexpected EOF while reading Box upload part");
                        }
                        i3 += i4;
                        inputStream = inputStream2;
                    }
                    rs9.c(closeable, null);
                    messageDigest.update(bArr);
                    if (jv0Var != null) {
                        jv0Var.a();
                    }
                    kh6 kh6Var3 = new kh6();
                    String str3 = qv0Var2.c;
                    long j5 = kh6Var.a;
                    MessageDigest messageDigest2 = messageDigest;
                    iv0 iv0Var = new iv0(kh6Var3, jMin, kh6Var, j, kh6Var2, c7Var);
                    kh6 kh6Var4 = kh6Var;
                    Request.Builder builderB = b(HttpUrl.Companion.b(str3));
                    builderB.c("PUT", new kv0(h, bArr, iv0Var));
                    String strEncodeToString = Base64.getEncoder().encodeToString(MessageDigest.getInstance(str2).digest(bArr));
                    strEncodeToString.getClass();
                    builderB.c.d("Digest", "sha=".concat(strEncodeToString));
                    StringBuilder sb = new StringBuilder("bytes ");
                    sb.append(j5);
                    fz5.r(sb, "-", (j5 + ((long) i2)) - 1, "/");
                    sb.append(j);
                    JSONObject jSONObjectOptJSONObject = g(xs1.o(builderB.c, "Content-Range", sb.toString(), builderB), true, jv0Var).optJSONObject("part");
                    if (jSONObjectOptJSONObject == null) {
                        y5.m("Box upload part response did not contain part details");
                        return null;
                    }
                    String strOptString = jSONObjectOptJSONObject.optString("part_id");
                    strOptString.getClass();
                    String str4 = !nq7.j0(strOptString) ? strOptString : null;
                    if (str4 == null) {
                        y5.m("Box upload part response did not contain part_id");
                        return null;
                    }
                    Long l = l(jSONObjectOptJSONObject, "offset");
                    if (l == null) {
                        y5.m("Box upload part response did not contain offset");
                        return null;
                    }
                    long jLongValue = l.longValue();
                    Long l2 = l(jSONObjectOptJSONObject, "size");
                    if (l2 == null) {
                        y5.m("Box upload part response did not contain size");
                        return null;
                    }
                    long jLongValue2 = l2.longValue();
                    String strOptString2 = jSONObjectOptJSONObject.optString("sha1");
                    strOptString2.getClass();
                    String str5 = !nq7.j0(strOptString2) ? strOptString2 : null;
                    if (str5 == null) {
                        y5.m("Box upload part response did not contain sha1");
                        return null;
                    }
                    arrayList2.add(new rv0(str4, str5, jLongValue, jLongValue2));
                    long j6 = kh6Var4.a + jMin;
                    kh6Var4.a = j6;
                    long jI = l73.i(j6, 0L, j);
                    if (jI != kh6Var2.a) {
                        kh6Var2.a = jI;
                        c7Var.invoke(Long.valueOf(jI));
                    }
                    qv0Var2 = qv0Var;
                    arrayList = arrayList2;
                    kh6Var = kh6Var4;
                    str = str2;
                    messageDigest = messageDigest2;
                    j2 = j3;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(closeable, th);
                        throw th2;
                    }
                }
            } else {
                String str6 = "part_id";
                String strEncodeToString2 = Base64.getEncoder().encodeToString(messageDigest.digest());
                String str7 = qv0Var.d;
                strEncodeToString2.getClass();
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                Iterator it = el1.n1(arrayList, new cl7(2)).iterator();
                while (it.hasNext()) {
                    rv0 rv0Var = (rv0) it.next();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(str6, rv0Var.a);
                    jSONObject2.put("offset", rv0Var.b);
                    jSONObject2.put("size", rv0Var.c);
                    jSONObject2.put("sha1", rv0Var.d);
                    jSONArray.put(jSONObject2);
                    it = it;
                    str6 = str6;
                }
                jSONObject.put("parts", jSONArray);
                while (true) {
                    if (jv0Var != null) {
                        jv0Var.a();
                    }
                    Request.Builder builderB2 = b(HttpUrl.Companion.b(str7));
                    RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
                    String string = jSONObject.toString();
                    string.getClass();
                    builderB2.c("POST", RequestBody.Companion.a(string, g));
                    Request requestO = xs1.o(builderB2.c, "Digest", "sha=".concat(strEncodeToString2), builderB2);
                    Response responseE = e(requestO, true, jv0Var);
                    int i5 = responseE.d;
                    try {
                        String strN = responseE.k.n();
                        if (i5 != 202) {
                            String str8 = !nq7.j0(strN) ? strN : null;
                            JSONObject jSONObject3 = str8 != null ? new JSONObject(str8) : new JSONObject();
                            av0 av0VarQ = q(jSONObject3);
                            if (av0VarQ == null && (av0VarQ = i(jSONObject3)) == null) {
                                throw new IOException("Box upload session commit response did not contain uploaded file");
                            }
                            responseE.close();
                            return av0VarQ;
                        }
                        int i6 = i + 1;
                        if (i6 > 10) {
                            throw new hv0(i5, strN, n(responseE), c(requestO, i5, strN));
                        }
                        Long lN = n(responseE);
                        o(lN != null ? lN.longValue() : 1000L, jv0Var);
                        responseE.close();
                        i = i6;
                    } catch (Throwable th3) {
                        responseE.close();
                        throw th3;
                    }
                }
            }
        }
    }

    public final HttpUrl u(String str) {
        return HttpUrl.Companion.b(this.e + str);
    }
}
