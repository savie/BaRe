package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;
import java.io.InputStream;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class st5 {
    public static final MediaType f;
    public static final MediaType g;
    public final jx a;
    public final hc1 b;
    public final OkHttpClient c;
    public final String d;
    public final mt3 e;

    static {
        ai6 ai6Var = MediaType.d;
        f = MediaType.Companion.a("application/json; charset=utf-8");
        g = MediaType.Companion.a("application/octet-stream");
    }

    public st5(jx jxVar, hc1 hc1Var) {
        OkHttpClient okHttpClient = new OkHttpClient(new OkHttpClient.Builder());
        ai aiVar = new ai(4);
        this.a = jxVar;
        this.b = hc1Var;
        this.c = okHttpClient;
        this.d = "https://graph.microsoft.com/v1.0";
        this.e = aiVar;
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

    public static Long k(fl4 fl4Var, String str) {
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

    public static Response l(st5 st5Var, String str) {
        st5Var.getClass();
        Request.Builder builder = new Request.Builder();
        builder.a = st5Var.r("/me/drive/root:/" + m(str) + ":/content");
        builder.b();
        return st5Var.d(new Request(builder));
    }

    public static String m(String str) {
        String strL0 = nq7.L0(uq7.T(uq7.T(uq7.T(str, "%20", TokenAuthenticationScheme.SCHEME_DELIMITER), "%28", "("), "%29", ")"), '/');
        strL0.getClass();
        return el1.Y0(nq7.w0(strL0, new char[]{'/'}, 6), "/", null, null, new hi(6), 30);
    }

    public static Long o(Response response) {
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
        if (bn6Var instanceof bn6) {
            bn6Var = 0L;
        }
        return ((Number) bn6Var).longValue();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0053  */
    public static pt5 q(fl4 fl4Var) {
        String strA;
        qj4 qj4VarX;
        qj4 qj4VarX2 = fl4Var.x("id");
        String strA2 = qj4VarX2 != null ? a(qj4VarX2) : null;
        qj4 qj4VarX3 = fl4Var.x("name");
        String strA3 = qj4VarX3 != null ? a(qj4VarX3) : null;
        if (strA3 == null) {
            strA3 = "";
        }
        Long lK = k(fl4Var, "size");
        long jLongValue = lK != null ? lK.longValue() : 0L;
        qj4 qj4VarX4 = fl4Var.x("parentReference");
        if (qj4VarX4 == null) {
            strA = null;
        } else {
            fl4 fl4VarI = !(qj4VarX4 instanceof fl4) ? null : qj4VarX4.i();
            if (fl4VarI == null || (qj4VarX = fl4VarI.x("path")) == null) {
                strA = null;
            } else {
                strA = a(qj4VarX);
            }
        }
        qj4 qj4VarX5 = fl4Var.x("createdDateTime");
        long jP = p(qj4VarX5 != null ? a(qj4VarX5) : null);
        qj4 qj4VarX6 = fl4Var.x("lastModifiedDateTime");
        return new pt5(strA2, strA3, jLongValue, strA, jP, p(qj4VarX6 != null ? a(qj4VarX6) : null), fl4Var.a.containsKey("folder"));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00da  */
    /* JADX WARN: Code duplicated, block: B:89:0x01de  */
    /* JADX WARN: Multi-variable type inference failed */
    public final nt5 b(ArrayList arrayList) {
        xi4 xi4Var;
        Integer num;
        Long lValueOf;
        hw4 hw4VarB;
        qj4 qj4Var;
        String strA;
        String string;
        Long lY;
        Integer numValueOf;
        Integer numW;
        xi4 xi4VarG;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList) {
            if (!nq7.j0((String) obj)) {
                arrayList3.add(obj);
            }
        }
        Throwable th = null;
        Long lValueOf2 = null;
        for (List list : el1.A1(arrayList3, 20, 20)) {
            xi4 xi4Var2 = new xi4();
            int i = 0;
            for (Object obj2 : list) {
                int i2 = i + 1;
                if (i < 0) {
                    fl1.F0();
                    throw th;
                }
                fl4 fl4Var = new fl4();
                fl4Var.u("id", String.valueOf(i2));
                fl4Var.u("method", "DELETE");
                fl4Var.u("url", "/me/drive/root:/" + m((String) obj2) + ":");
                xi4Var2.p(fl4Var);
                i = i2;
            }
            fl4 fl4Var2 = new fl4();
            fl4Var2.p("requests", xi4Var2);
            Request.Builder builder = new Request.Builder();
            builder.a = r("/$batch");
            RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
            builder.c("POST", RequestBody.Companion.a(fl4Var2.toString(), f));
            qj4 qj4VarX = f(new Request(builder)).x("responses");
            if (qj4VarX == null) {
                xi4Var = xi4VarG;
                xi4Var = new xi4();
            } else {
                if (qj4VarX instanceof xi4) {
                    xi4VarG = qj4VarX.g();
                } else {
                    xi4Var = th;
                }
                if (xi4Var == 0) {
                    xi4Var = xi4VarG;
                    xi4Var = new xi4();
                }
            }
            xi4Var = xi4VarG;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = xi4Var.a.iterator();
            while (it.hasNext()) {
                fl4 fl4VarI = ((qj4) it.next()).i();
                qj4 qj4VarX2 = fl4VarI.x("id");
                String strA2 = qj4VarX2 != null ? a(qj4VarX2) : th;
                Integer numValueOf2 = (strA2 == 0 || (numW = uq7.W(10, strA2)) == null) ? th : Integer.valueOf(numW.intValue() - 1);
                Long lK = k(fl4VarI, "status");
                if (lK != null) {
                    numValueOf = Integer.valueOf((int) lK.longValue());
                } else {
                    num = th;
                }
                if (numValueOf2 != 0) {
                    int size = list.size();
                    int iIntValue = numValueOf2.intValue();
                    if (iIntValue < 0) {
                        num = numValueOf;
                    } else if (iIntValue < size) {
                        linkedHashSet.add(numValueOf2);
                        if ((num == 0 || num.intValue() != 204) && (num == 0 || num.intValue() != 404)) {
                            arrayList2.add(list.get(numValueOf2.intValue()));
                            long jLongValue = lValueOf2 != null ? lValueOf2.longValue() : 0L;
                            qj4 qj4VarX3 = fl4VarI.x("headers");
                            if (qj4VarX3 == null) {
                                lValueOf = null;
                            } else {
                                fl4 fl4VarI2 = !(qj4VarX3 instanceof fl4) ? null : qj4VarX3.i();
                                if (fl4VarI2 == null) {
                                    lValueOf = null;
                                } else {
                                    Iterator it2 = ((ew4) fl4VarI2.a.entrySet()).iterator();
                                    do {
                                        if (!((aw4) it2).hasNext()) {
                                            hw4VarB = null;
                                            break;
                                        }
                                        hw4VarB = ((dw4) it2).b();
                                    } while (!uq7.P((String) hw4VarB.getKey(), "Retry-After", true));
                                    if (hw4VarB == null || (qj4Var = (qj4) hw4VarB.getValue()) == null || (strA = a(qj4Var)) == null || (string = nq7.H0(strA).toString()) == null || (lY = uq7.Y(string)) == null) {
                                        lValueOf = null;
                                    } else {
                                        long jLongValue2 = lY.longValue();
                                        if (jLongValue2 < 0) {
                                            jLongValue2 = 0;
                                        }
                                        lValueOf = Long.valueOf(TimeUnit.SECONDS.toMillis(jLongValue2));
                                    }
                                }
                            }
                            lValueOf2 = Long.valueOf(Math.max(jLongValue, lValueOf != null ? lValueOf.longValue() : 0L));
                        }
                    }
                } else {
                    num = numValueOf;
                }
                th = null;
            }
            nd4 nd4VarY0 = fl1.y0(list);
            ArrayList arrayList4 = new ArrayList();
            Iterator it3 = nd4VarY0.iterator();
            while (true) {
                md4 md4Var = (md4) it3;
                if (!md4Var.c) {
                    break;
                }
                Object next = md4Var.next();
                if (!linkedHashSet.contains(Integer.valueOf(((Number) next).intValue()))) {
                    arrayList4.add(next);
                }
            }
            Iterator it4 = arrayList4.iterator();
            while (it4.hasNext()) {
                arrayList2.add(list.get(((Number) it4.next()).intValue()));
            }
            th = null;
        }
        return new nt5(arrayList2, (lValueOf2 == null || lValueOf2.longValue() <= 0) ? null : lValueOf2);
    }

    public final void c(String str) {
        Request.Builder builder = new Request.Builder();
        builder.a = r("/me/drive/root:/" + m(str) + ":");
        Request.Builder.a(builder);
        d(new Request(builder)).close();
    }

    public final Response d(Request request) throws IOException {
        int i;
        int i2 = 0;
        while (true) {
            Boolean bool = Boolean.FALSE;
            hc1 hc1Var = this.b;
            if (!((Boolean) hc1Var.invoke(bool)).booleanValue()) {
                y5.m("OneDrive access token unavailable");
                return null;
            }
            Response responseE = e(request);
            int i3 = responseE.d;
            if (i3 == 401 || i3 == 403) {
                responseE.close();
                if (!((Boolean) hc1Var.invoke(Boolean.TRUE)).booleanValue()) {
                    y5.m("OneDrive access token unavailable");
                    return null;
                }
                responseE = e(request);
            }
            if (i2 >= 3 || ((i = responseE.d) != 429 && (500 > i || i >= 600))) {
                if (responseE.H) {
                    return responseE;
                }
                String strN = responseE.k.n();
                Long lO = o(responseE);
                responseE.close();
                Request request2 = responseE.a;
                throw new mt5(request2.b, request2.a.h, responseE.d, strN, lO);
            }
            long jLongValue = (1 << (i2 <= 4 ? i2 : 4)) * 1000;
            Long lO2 = o(responseE);
            if (lO2 != null) {
                jLongValue = lO2.longValue();
            }
            if (jLongValue > 30000) {
                jLongValue = 30000;
            }
            responseE.close();
            this.e.invoke(Long.valueOf(jLongValue));
            i2++;
        }
    }

    public final Response e(Request request) throws IOException {
        String str = (String) this.a.invoke();
        if (str == null) {
            y5.m("OneDrive access token unavailable");
            return null;
        }
        Request.Builder builderA = request.a();
        Request requestO = xs1.o(builderA.c, "Authorization", "Bearer ".concat(str), builderA);
        OkHttpClient okHttpClient = this.c;
        okHttpClient.getClass();
        return new RealCall(okHttpClient, requestO).g();
    }

    public final fl4 f(Request request) throws IOException {
        Response responseD = d(request);
        try {
            String strN = responseD.k.n();
            if (nq7.j0(strN)) {
                fl4 fl4Var = new fl4();
                responseD.close();
                return fl4Var;
            }
            fl4 fl4VarI = yc9.K(strN).i();
            responseD.close();
            return fl4VarI;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final ot5 g() {
        Request.Builder builder = new Request.Builder();
        HttpUrl.Builder builderG = r("/me/drive").g();
        builderG.d("$select", "quota");
        builder.a = builderG.e();
        builder.b();
        qj4 qj4VarX = f(new Request(builder)).x("quota");
        qt5 qt5Var = null;
        if (qj4VarX != null) {
            fl4 fl4VarI = !(qj4VarX instanceof fl4) ? null : qj4VarX.i();
            if (fl4VarI != null) {
                qt5Var = new qt5(k(fl4VarI, "used"), k(fl4VarI, "total"));
            }
        }
        return new ot5(qt5Var);
    }

    public final String h() {
        Request.Builder builder = new Request.Builder();
        HttpUrl.Builder builderG = r("/me").g();
        builderG.d("$select", "userPrincipalName");
        builder.a = builderG.e();
        builder.b();
        qj4 qj4VarX = f(new Request(builder)).x("userPrincipalName");
        if (qj4VarX != null) {
            return a(qj4VarX);
        }
        return null;
    }

    public final ArrayList i(HttpUrl httpUrl, List list) throws IOException {
        ArrayList arrayList = new ArrayList();
        HttpUrl.Builder builderG = httpUrl.g();
        builderG.d("$select", el1.Y0(list, ",", null, null, null, 62));
        String strA = builderG.e().h;
        while (strA != null && !nq7.j0(strA)) {
            Request.Builder builder = new Request.Builder();
            builder.d(strA);
            builder.b();
            fl4 fl4VarF = f(new Request(builder));
            qj4 qj4VarX = fl4VarF.x("value");
            if (qj4VarX != null) {
                xi4 xi4VarG = !(qj4VarX instanceof xi4) ? null : qj4VarX.g();
                if (xi4VarG != null) {
                    Iterator it = xi4VarG.a.iterator();
                    while (it.hasNext()) {
                        arrayList.add(q(((qj4) it.next()).i()));
                    }
                }
            }
            qj4 qj4VarX2 = fl4VarF.x("@odata.nextLink");
            strA = qj4VarX2 != null ? a(qj4VarX2) : null;
        }
        return arrayList;
    }

    public final ArrayList j(String str, List list) {
        str.getClass();
        return i(r("/me/drive/root:/" + m(str) + ":/children"), list);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00c8  */
    public final wt5 n(String str, InputStream inputStream, long j, long j2, long j3, vq5 vq5Var) {
        wt5 wt5Var;
        ArrayList arrayList;
        inputStream.getClass();
        Request.Builder builder = new Request.Builder();
        builder.d(str);
        builder.c("PUT", new rt5(j2, inputStream, vq5Var));
        String strValueOf = String.valueOf(j2);
        strValueOf.getClass();
        builder.c.d("Content-Length", strValueOf);
        StringBuilder sb = new StringBuilder("bytes ");
        sb.append(j);
        fz5.r(sb, "-", (j + j2) - 1, "/");
        sb.append(j3);
        Request requestO = xs1.o(builder.c, "Content-Range", sb.toString(), builder);
        OkHttpClient okHttpClient = this.c;
        okHttpClient.getClass();
        Response responseG = new RealCall(okHttpClient, requestO).g();
        try {
            String strN = responseG.k.n();
            pt5 pt5VarQ = null;
            String str2 = !nq7.j0(strN) ? strN : null;
            fl4 fl4VarI = str2 != null ? yc9.K(str2).i() : new fl4();
            iw4 iw4Var = fl4VarI.a;
            int i = responseG.d;
            List list = ov2.a;
            switch (i) {
                case 200:
                case 201:
                    if (iw4Var.containsKey("id") || iw4Var.containsKey("name")) {
                        pt5VarQ = q(fl4VarI);
                    }
                    wt5Var = new wt5(true, pt5VarQ, list);
                    break;
                case 202:
                    qj4 qj4VarX = fl4VarI.x("nextExpectedRanges");
                    if (qj4VarX == null) {
                        arrayList = null;
                    } else {
                        xi4 xi4VarG = !(qj4VarX instanceof xi4) ? null : qj4VarX.g();
                        if (xi4VarG != null) {
                            arrayList = new ArrayList();
                            for (qj4 qj4Var : xi4VarG.a) {
                                qj4Var.getClass();
                                String strA = a(qj4Var);
                                if (strA != null) {
                                    arrayList.add(strA);
                                }
                            }
                        } else {
                            arrayList = null;
                        }
                    }
                    if (arrayList != null) {
                        list = arrayList;
                    }
                    wt5Var = new wt5(false, null, list);
                    break;
                default:
                    throw new mt5("PUT", str, i, strN, o(responseG));
            }
            responseG.close();
            return wt5Var;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseG, th);
                throw th2;
            }
        }
    }

    public final HttpUrl r(String str) {
        return HttpUrl.Companion.b(nq7.K0(this.d, '/') + "/" + nq7.L0(str, '/'));
    }
}
