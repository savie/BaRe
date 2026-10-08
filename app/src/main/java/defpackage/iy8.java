package defpackage;

import java.io.IOException;
import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class iy8 {
    public static final RequestBody$Companion$toRequestBody$3 f;
    public final uk a;
    public final hl0 b;
    public final OkHttpClient c;
    public final String d;
    public final mt3 e;

    static {
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        f = RequestBody.Companion.b(new byte[0], 7, null);
    }

    public iy8(uk ukVar, hl0 hl0Var) {
        OkHttpClient okHttpClient = new OkHttpClient(new OkHttpClient.Builder());
        hc1 hc1Var = new hc1(8);
        this.a = ukVar;
        this.b = hl0Var;
        this.c = okHttpClient;
        this.d = "https://cloud-api.yandex.net/v1/disk";
        this.e = hc1Var;
    }

    public static Long j(fl4 fl4Var, String str) {
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null) {
                return Long.valueOf(qj4VarX.l());
            }
        }
        return null;
    }

    public static long m(String str) {
        if (str == null || nq7.j0(str)) {
            return 0L;
        }
        try {
            try {
                return Instant.parse(str).toEpochMilli();
            } catch (DateTimeParseException unused) {
                return OffsetDateTime.parse(str).toInstant().toEpochMilli();
            }
        } catch (DateTimeParseException unused2) {
            return 0L;
        }
    }

    public static Long n(Response response) {
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

    public static String o(fl4 fl4Var, String str) {
        qj4 qj4VarX = fl4Var.x(str);
        if (qj4VarX != null) {
            if (qj4VarX instanceof el4) {
                qj4VarX = null;
            }
            if (qj4VarX != null) {
                return qj4VarX.o();
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0038  */
    public static gy8 p(fl4 fl4Var) throws IOException {
        boolean zBooleanValue;
        String strO = o(fl4Var, "href");
        if (strO == null) {
            y5.m("Yandex link response did not contain href");
            return null;
        }
        String strO2 = o(fl4Var, "method");
        if (strO2 == null) {
            strO2 = "";
        }
        qj4 qj4VarX = fl4Var.x("templated");
        if (qj4VarX == null) {
            zBooleanValue = false;
        } else {
            if ((qj4VarX instanceof el4) || !(qj4VarX instanceof kl4)) {
                qj4VarX = null;
            }
            Boolean boolValueOf = qj4VarX != null ? Boolean.valueOf(qj4VarX.e()) : null;
            if (boolValueOf != null) {
                zBooleanValue = boolValueOf.booleanValue();
            } else {
                zBooleanValue = false;
            }
        }
        return new gy8(strO, strO2, zBooleanValue);
    }

    public static hy8 q(fl4 fl4Var) {
        qj4 qj4VarX;
        qj4 qj4VarX2 = fl4Var.x("_embedded");
        List list = null;
        if (qj4VarX2 != null) {
            if (!(qj4VarX2 instanceof fl4)) {
                qj4VarX2 = null;
            }
            fl4 fl4VarI = qj4VarX2 != null ? qj4VarX2.i() : null;
            if (fl4VarI != null && (qj4VarX = fl4VarI.x("items")) != null) {
                if (!(qj4VarX instanceof xi4)) {
                    qj4VarX = null;
                }
                xi4 xi4VarG = qj4VarX != null ? qj4VarX.g() : null;
                if (xi4VarG != null) {
                    ArrayList arrayList = new ArrayList();
                    for (qj4 qj4Var : xi4VarG.a) {
                        qj4Var.getClass();
                        if (!(qj4Var instanceof fl4)) {
                            qj4Var = null;
                        }
                        fl4 fl4VarI2 = qj4Var != null ? qj4Var.i() : null;
                        hy8 hy8VarQ = fl4VarI2 != null ? q(fl4VarI2) : null;
                        if (hy8VarQ != null) {
                            arrayList.add(hy8VarQ);
                        }
                    }
                    list = arrayList;
                }
            }
        }
        if (list == null) {
            list = ov2.a;
        }
        List list2 = list;
        String strO = o(fl4Var, "name");
        String str = strO == null ? "" : strO;
        String strO2 = o(fl4Var, "path");
        String str2 = strO2 == null ? "" : strO2;
        String strO3 = o(fl4Var, "type");
        String str3 = strO3 == null ? "" : strO3;
        Long lJ = j(fl4Var, "size");
        return new hy8(str, str2, str3, lJ != null ? lJ.longValue() : 0L, m(o(fl4Var, "created")), m(o(fl4Var, "modified")), o(fl4Var, "preview"), list2);
    }

    public final HttpUrl a(String str) {
        return HttpUrl.Companion.b(nq7.K0(this.d, '/') + "/" + nq7.L0(str, '/'));
    }

    public final Request.Builder b(HttpUrl httpUrl) {
        Request.Builder builder = new Request.Builder();
        builder.a = httpUrl;
        String str = (String) this.a.invoke();
        str.getClass();
        builder.c.d("Authorization", "OAuth ".concat(str));
        return builder;
    }

    public final void c(String str) {
        HttpUrl.Builder builderG = a("/resources").g();
        builderG.d("path", str);
        builderG.d("permanently", String.valueOf(true));
        Request.Builder builderB = b(builderG.e());
        Request.Builder.a(builderB);
        f(new Request(builderB), sz8.Y(204));
    }

    public final Response d(Request request, Set set, boolean z) throws ey8 {
        hl0 hl0Var;
        boolean z2 = false;
        int i = 0;
        while (true) {
            OkHttpClient okHttpClient = this.c;
            okHttpClient.getClass();
            Response responseG = new RealCall(okHttpClient, request).g();
            int i2 = responseG.d;
            if (set.contains(Integer.valueOf(i2))) {
                return responseG;
            }
            if (i2 == 401 && !z2 && (hl0Var = this.b) != null) {
                String strD = request.c.d("Authorization");
                String str = null;
                if (strD != null) {
                    String strQ0 = nq7.q0(strD, "OAuth ");
                    if (!nq7.j0(strQ0)) {
                        str = strQ0;
                    }
                }
                String str2 = (String) hl0Var.invoke(str);
                if (str2 == null || nq7.j0(str2)) {
                    z2 = true;
                } else {
                    Request.Builder builderA = request.a();
                    builderA.c.d("Authorization", "OAuth ".concat(str2));
                    Request request2 = new Request(builderA);
                    responseG.close();
                    request = request2;
                    z2 = true;
                }
            }
            if (!z || i >= 3 || (i2 != 429 && (500 > i2 || i2 >= 600))) {
                String strN = responseG.k.n();
                n(responseG);
                responseG.close();
                throw new ey8(i2, request.b, request.a.h, strN);
            }
            long jLongValue = (1 << (i <= 4 ? i : 4)) * 1000;
            Long lN = n(responseG);
            if (lN != null) {
                jLongValue = lN.longValue();
            }
            if (jLongValue > 30000) {
                jLongValue = 30000;
            }
            responseG.close();
            this.e.invoke(Long.valueOf(jLongValue));
            i++;
        }
    }

    public final fl4 e(Request request) throws ey8 {
        Response responseD = d(request, sz8.Y(200), pe4.d(request.b, "GET"));
        try {
            String strN = responseD.k.n();
            fl4 fl4Var = nq7.j0(strN) ? new fl4() : yc9.K(strN).i();
            responseD.close();
            return fl4Var;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final void f(Request request, Set set) throws ey8 {
        Response responseD = d(request, sz8.S(set, 202), false);
        try {
            if (responseD.d == 202) {
                String strN = responseD.k.n();
                r(p(nq7.j0(strN) ? new fl4() : yc9.K(strN).i()).a);
            }
            responseD.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final fy8 g() {
        Request.Builder builderB = b(a("/"));
        builderB.b();
        fl4 fl4VarE = e(new Request(builderB));
        return new fy8(j(fl4VarE, "used_space"), j(fl4VarE, "total_space"));
    }

    public final hy8 h(String str, Integer num, Integer num2) {
        HttpUrl.Builder builderG = a("/resources").g();
        builderG.d("path", str);
        if (num != null) {
            builderG.d("limit", String.valueOf(num.intValue()));
        }
        if (num2 != null) {
            builderG.d("offset", String.valueOf(num2.intValue()));
        }
        try {
            Request.Builder builderB = b(builderG.e());
            builderB.b();
            return q(e(new Request(builderB)));
        } catch (ey8 e) {
            if (e.a == 404) {
                return null;
            }
            throw e;
        }
    }

    public final gy8 i(String str) {
        HttpUrl.Builder builderG = a("/resources/upload").g();
        builderG.d("path", str);
        builderG.d("overwrite", String.valueOf(true));
        Request.Builder builderB = b(builderG.e());
        builderB.b();
        return p(e(new Request(builderB)));
    }

    public final void k(String str) throws ey8 {
        HttpUrl.Builder builderG = a("/resources").g();
        builderG.d("path", str);
        Request.Builder builderB = b(builderG.e());
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3 = f;
        requestBody$Companion$toRequestBody$3.getClass();
        builderB.c("PUT", requestBody$Companion$toRequestBody$3);
        f(new Request(builderB), sz8.Y(201));
    }

    public final void l(String str, String str2) {
        HttpUrl.Builder builderG = a("/resources/move").g();
        builderG.d("from", str);
        builderG.d("path", str2);
        builderG.d("overwrite", String.valueOf(true));
        Request.Builder builderB = b(builderG.e());
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3 = f;
        requestBody$Companion$toRequestBody$3.getClass();
        builderB.c("POST", requestBody$Companion$toRequestBody$3);
        f(new Request(builderB), sz8.Y(201));
    }

    public final void r(String str) throws IOException {
        for (int i = 0; i < 30; i++) {
            Request.Builder builderB = b(HttpUrl.Companion.b(str));
            builderB.b();
            fl4 fl4VarE = e(new Request(builderB));
            String strO = o(fl4VarE, "status");
            if (strO != null) {
                int iHashCode = strO.hashCode();
                if (iHashCode != -1867169789) {
                    if (iHashCode != -1281977283) {
                        if (iHashCode != -575131179 || !strO.equals("in-progress")) {
                        }
                    } else if (strO.equals("failed")) {
                        y5.m("Yandex operation failed: ".concat(str));
                        return;
                    }
                } else if (strO.equals("success")) {
                    return;
                }
                throw new IOException("Unknown Yandex operation status for " + str + ": " + fl4VarE);
            }
            if (i < 29) {
                this.e.invoke(1000L);
            }
        }
        y5.m("Yandex operation did not complete: ".concat(str));
    }
}
