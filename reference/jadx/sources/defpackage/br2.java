package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class br2 {
    public static final MediaType g;
    public static final MediaType h;
    public final bt3 a;
    public final mt3 b;
    public final OkHttpClient c;
    public final String d;
    public final String e;
    public final mt3 f;

    static {
        ai6 ai6Var = MediaType.d;
        g = MediaType.Companion.a("application/json; charset=utf-8");
        h = MediaType.Companion.a("application/octet-stream");
    }

    public br2(bt3 bt3Var, ae1 ae1Var, int i) {
        ae1Var = (i & 2) != 0 ? null : ae1Var;
        OkHttpClient okHttpClient = xq2.a;
        dq dqVar = new dq(4);
        okHttpClient.getClass();
        this.a = bt3Var;
        this.b = ae1Var;
        this.c = okHttpClient;
        this.d = "https://api.dropboxapi.com";
        this.e = "https://content.dropboxapi.com";
        this.f = dqVar;
    }

    public static void b(Response response) throws kq2 {
        if (response.H) {
            return;
        }
        String strN = response.k.n();
        Long lH = h(response);
        response.close();
        Request request = response.a;
        throw new kq2(request.b, request.a.h, response.d, strN, lH);
    }

    public static Long h(Response response) {
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

    public static List i(fl4 fl4Var) {
        String strH = jd4.H(fl4Var, ".tag");
        List list = ov2.a;
        if (strH == null) {
            return list;
        }
        qj4 qj4VarX = fl4Var.x(strH);
        List listI = null;
        if (qj4VarX != null) {
            fl4 fl4VarI = !(qj4VarX instanceof fl4) ? null : qj4VarX.i();
            if (fl4VarI != null) {
                listI = i(fl4VarI);
            }
        }
        if (listI != null) {
            list = listI;
        }
        return el1.g1(nc8.I(strH), list);
    }

    public static tq2 j(fl4 fl4Var) {
        uq2 uq2Var;
        qj4 qj4VarX = fl4Var.x("entries");
        List list = ov2.a;
        ArrayList arrayList = null;
        if (qj4VarX != null) {
            xi4 xi4VarG = !(qj4VarX instanceof xi4) ? null : qj4VarX.g();
            if (xi4VarG != null) {
                ArrayList arrayList2 = new ArrayList(hl1.G0(xi4VarG, 10));
                for (qj4 qj4Var : xi4VarG.a) {
                    qj4Var.getClass();
                    fl4 fl4VarI = !(qj4Var instanceof fl4) ? null : qj4Var.i();
                    boolean z = true;
                    if (fl4VarI == null) {
                        uq2Var = new uq2(z);
                    } else if (pe4.d(jd4.H(fl4VarI, ".tag"), "failure")) {
                        qj4 qj4VarX2 = fl4VarI.x("failure");
                        fl4 fl4VarI2 = (qj4VarX2 == null || !(qj4VarX2 instanceof fl4)) ? null : qj4VarX2.i();
                        String strH = fl4VarI2 != null ? jd4.H(fl4VarI2, "error_summary") : null;
                        List listI = fl4VarI2 != null ? i(fl4VarI2) : null;
                        if (listI == null) {
                            listI = list;
                        }
                        uq2Var = new uq2(strH, listI, true);
                    } else {
                        uq2Var = new uq2(false);
                    }
                    arrayList2.add(uq2Var);
                }
                arrayList = arrayList2;
            }
        }
        if (arrayList != null) {
            list = arrayList;
        }
        return new tq2(list);
    }

    public static vq2 k(fl4 fl4Var) {
        String strH = jd4.H(fl4Var, "id");
        String strH2 = jd4.H(fl4Var, "name");
        if (strH2 == null) {
            strH2 = "";
        }
        Long lA = jd4.A(fl4Var, "size");
        return new vq2(strH, strH2, lA != null ? lA.longValue() : 0L, jd4.K(jd4.H(fl4Var, "client_modified")), jd4.K(jd4.H(fl4Var, "server_modified")), jd4.H(fl4Var, "path_display"));
    }

    public static fl4 l(String str) {
        return nq7.j0(str) ? new fl4() : yc9.K(str).i();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    public static yq2 m(fl4 fl4Var) {
        Object bn6Var;
        zq2 wq2Var;
        qj4 qj4VarX = fl4Var.x("entries");
        List list = null;
        if (qj4VarX != null) {
            xi4 xi4VarG = !(qj4VarX instanceof xi4) ? null : qj4VarX.g();
            if (xi4VarG != null) {
                ArrayList arrayList = new ArrayList();
                for (qj4 qj4Var : xi4VarG.a) {
                    qj4Var.getClass();
                    fl4 fl4VarI = !(qj4Var instanceof fl4) ? null : qj4Var.i();
                    if (fl4VarI == null) {
                        wq2Var = null;
                    } else {
                        String strH = jd4.H(fl4VarI, ".tag");
                        if (pe4.d(strH, "file")) {
                            wq2Var = k(fl4VarI);
                        } else if (pe4.d(strH, "folder")) {
                            String strH2 = jd4.H(fl4VarI, "id");
                            String strH3 = jd4.H(fl4VarI, "name");
                            if (strH3 == null) {
                                strH3 = "";
                            }
                            wq2Var = new wq2(strH2, strH3, jd4.H(fl4VarI, "path_display"));
                        } else {
                            wq2Var = null;
                        }
                    }
                    if (wq2Var != null) {
                        arrayList.add(wq2Var);
                    }
                }
                list = arrayList;
            }
        }
        if (list == null) {
            list = ov2.a;
        }
        String strH4 = jd4.H(fl4Var, "cursor");
        qj4 qj4VarX2 = fl4Var.x("has_more");
        boolean zBooleanValue = false;
        if (qj4VarX2 != null && !(qj4VarX2 instanceof el4)) {
            try {
                bn6Var = Boolean.valueOf(qj4VarX2.e());
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            Object obj = Boolean.FALSE;
            if (bn6Var instanceof bn6) {
                bn6Var = obj;
            }
            zBooleanValue = ((Boolean) bn6Var).booleanValue();
        }
        return new yq2(strH4, list, zBooleanValue);
    }

    public final String a(String str) {
        return dj7.k(nq7.K0(this.e, '/'), "/", nq7.L0(str, '/'));
    }

    public final Response c(Request request, boolean z, boolean z2) throws IOException {
        boolean z3 = false;
        int i = 0;
        while (true) {
            String str = (String) this.a.invoke();
            if (str == null) {
                y5.m("Dropbox access token unavailable");
                return null;
            }
            Request.Builder builderA = request.a();
            builderA.c.d("Authorization", "Bearer ".concat(str));
            Request request2 = new Request(builderA);
            OkHttpClient okHttpClient = this.c;
            okHttpClient.getClass();
            Response responseG = new RealCall(okHttpClient, request2).g();
            int i2 = responseG.d;
            if (z && i2 == 401 && !z3) {
                Request request3 = responseG.a;
                request3.getClass();
                String strD = request3.c.d("Authorization");
                String strQ0 = strD != null ? nq7.q0(strD, "Bearer ") : null;
                responseG.close();
                mt3 mt3Var = this.b;
                String str2 = mt3Var != null ? (String) mt3Var.invoke(strQ0) : null;
                z3 = true;
                if (str2 == null || nq7.j0(str2)) {
                }
            }
            if (!z2 || i >= 3 || (i2 != 429 && (500 > i2 || i2 >= 600))) {
                return responseG;
            }
            long jLongValue = (1 << (i <= 4 ? i : 4)) * 1000;
            Long lH = h(responseG);
            if (lH != null) {
                jLongValue = lH.longValue();
            }
            if (jLongValue > 30000) {
                jLongValue = 30000;
            }
            responseG.close();
            this.f.invoke(Long.valueOf(jLongValue));
            i++;
        }
    }

    public final Response d(String str, fl4 fl4Var, InputStream inputStream, long j, mt3 mt3Var) throws IOException {
        Request.Builder builder = new Request.Builder();
        builder.d(a(str));
        builder.c("POST", new ar2(j, mt3Var, inputStream));
        builder.c.d("Dropbox-API-Arg", x13.T(fl4Var));
        String str2 = h.a;
        str2.getClass();
        Response responseC = c(xs1.o(builder.c, "Content-Type", str2, builder), false, false);
        b(responseC);
        return responseC;
    }

    public final fl4 e(fl4 fl4Var, String str) {
        Request.Builder builder = new Request.Builder();
        builder.d(nq7.K0(this.d, '/') + "/" + nq7.L0(str, '/'));
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        String string = fl4Var != null ? fl4Var.toString() : "null";
        MediaType mediaType = g;
        builder.c("POST", RequestBody.Companion.a(string, mediaType));
        String str2 = mediaType.a;
        str2.getClass();
        Response responseC = c(xs1.o(builder.c, "Content-Type", str2, builder), true, true);
        b(responseC);
        try {
            String strN = responseC.k.n();
            if (nq7.j0(strN)) {
                fl4 fl4Var2 = new fl4();
                responseC.close();
                return fl4Var2;
            }
            fl4 fl4VarL = l(strN);
            responseC.close();
            return fl4VarL;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseC, th);
                throw th2;
            }
        }
    }

    public final yq2 f(String str) {
        fl4 fl4Var = new fl4();
        fl4Var.u("path", str);
        Boolean bool = Boolean.FALSE;
        fl4Var.s("recursive", bool);
        fl4Var.s("include_deleted", bool);
        fl4Var.s("include_non_downloadable_files", bool);
        return m(e(fl4Var, "/2/files/list_folder"));
    }

    public final Response g(String str) {
        fl4 fl4Var = new fl4();
        fl4Var.u("path", str);
        fl4 fl4Var2 = new fl4();
        fl4Var2.u(".tag", "w640h480");
        fl4Var.p("size", fl4Var2);
        Request.Builder builder = new Request.Builder();
        builder.d(a("/2/files/get_thumbnail"));
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        builder.c("POST", RequestBody.Companion.a("", null));
        builder.c.d("Dropbox-API-Arg", x13.T(fl4Var));
        String str2 = h.a;
        str2.getClass();
        Response responseC = c(xs1.o(builder.c, "Content-Type", str2, builder), true, true);
        b(responseC);
        return responseC;
    }

    public final vq2 n(String str, InputStream inputStream, long j, mm mmVar) throws IOException {
        fl4 fl4Var = new fl4();
        fl4Var.u("path", str);
        fl4Var.u("mode", "overwrite");
        fl4Var.s("mute", Boolean.TRUE);
        Response responseD = d("/2/files/upload", fl4Var, inputStream, j, mmVar);
        try {
            vq2 vq2VarK = k(l(responseD.k.n()));
            responseD.close();
            return vq2VarK;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final void o(String str, long j, InputStream inputStream, long j2, lq2 lq2Var) {
        inputStream.getClass();
        fl4 fl4Var = new fl4();
        fl4 fl4Var2 = new fl4();
        fl4Var2.u("session_id", str);
        fl4Var2.t("offset", Long.valueOf(j));
        fl4Var.p("cursor", fl4Var2);
        fl4Var.s("close", Boolean.FALSE);
        d("/2/files/upload_session/append_v2", fl4Var, inputStream, j2, lq2Var).close();
    }

    public final vq2 p(String str, long j, String str2, InputStream inputStream, long j2, lq2 lq2Var) {
        inputStream.getClass();
        fl4 fl4Var = new fl4();
        fl4 fl4Var2 = new fl4();
        fl4Var2.u("session_id", str);
        fl4Var2.t("offset", Long.valueOf(j));
        fl4Var.p("cursor", fl4Var2);
        fl4 fl4Var3 = new fl4();
        fl4Var3.u("path", str2);
        fl4Var3.u("mode", "overwrite");
        fl4Var3.s("mute", Boolean.TRUE);
        fl4Var.p("commit", fl4Var3);
        Response responseD = d("/2/files/upload_session/finish", fl4Var, inputStream, j2, lq2Var);
        try {
            vq2 vq2VarK = k(l(responseD.k.n()));
            responseD.close();
            return vq2VarK;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final String q(InputStream inputStream, long j, lq2 lq2Var) throws IOException {
        inputStream.getClass();
        fl4 fl4Var = new fl4();
        fl4Var.s("close", Boolean.FALSE);
        Response responseD = d("/2/files/upload_session/start", fl4Var, inputStream, j, lq2Var);
        try {
            String strH = jd4.H(l(responseD.k.n()), "session_id");
            if (strH == null) {
                throw new IOException("Dropbox upload_session/start response did not contain session_id");
            }
            responseD.close();
            return strH;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }
}
