package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vq8 extends mj1 {
    public static final Set g = x50.A0(new Integer[]{404, 410});
    public final dd1 c;
    public final OkHttpClient d;
    public gq8 e;
    public Boolean f;

    public vq8(dd1 dd1Var) {
        dd1Var.getClass();
        this.c = dd1Var;
        OkHttpClient.Builder builderC = jq8.c(null);
        builderC.a(10L, TimeUnit.SECONDS);
        TimeUnit timeUnit = TimeUnit.HOURS;
        builderC.c(1L, timeUnit);
        builderC.y = _UtilJvmKt.b(1L, timeUnit);
        this.d = new OkHttpClient(builderC);
    }

    /* JADX WARN: Code duplicated, block: B:148:0x0244 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0210  */
    public static void x(vq8 vq8Var, c62 c62Var, String str, long j, final mt3 mt3Var) throws Exception {
        String str2;
        String str3;
        int i;
        int i2;
        String str4;
        HttpUrl httpUrlB;
        int i3 = 100;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            i3 = sharedPreferences.getInt("nextcloud_chunk_size", 100);
            long j2 = ((long) i3) * 1048576;
            if (j <= 0) {
                g84.f(u48.l(j, "Invalid content length for chunking: "));
                return;
            }
            tq8 tq8VarB = sq8.b(vq8Var.A(""));
            if (tq8VarB == null || (str4 = tq8VarB.a) == null) {
                str2 = null;
            } else {
                try {
                    httpUrlB = HttpUrl.Companion.b(str4);
                } catch (IllegalArgumentException unused) {
                    httpUrlB = null;
                }
                if (httpUrlB == null) {
                    str2 = null;
                } else {
                    HttpUrl.Builder builderG = httpUrlB.g();
                    String string = UUID.randomUUID().toString();
                    string.getClass();
                    builderG.c(string);
                    str2 = builderG.e().h;
                }
            }
            if (str2 == null) {
                l0.e("Chunked upload not supported");
                return;
            }
            String str5 = ".tmp";
            String strA = vq8Var.A(str.concat(".tmp"));
            d65 d65Var = new d65();
            String str6 = "OC-Total-Length";
            d65Var.put("OC-Total-Length", String.valueOf(j));
            d65Var.put("Destination", strA);
            d65 d65VarB = d65Var.b();
            gq8 gq8Var = vq8Var.e;
            if (gq8Var == null) {
                pe4.F("webDavClient");
                throw null;
            }
            Map mapSingletonMap = Collections.singletonMap("Destination", strA);
            mapSingletonMap.getClass();
            gq8Var.a(mapSingletonMap, str2);
            if (j <= 0) {
                f6.g(u48.l(j, "Invalid total size for chunking: "));
                return;
            }
            long jI = l73.i(j2, 5242880L, yr5.o);
            ArrayList arrayList = new ArrayList();
            int i4 = 1;
            long j3 = jI;
            long j4 = j;
            while (j4 > 0) {
                if (i4 > 10000) {
                    c6.f("Nextcloud chunk upload supports at most 10000 chunks");
                    return;
                }
                int i5 = i4;
                ArrayList arrayList2 = arrayList;
                long j5 = j3;
                long jMin = Math.min(j4, j5);
                arrayList2.add(new uq8(nq7.o0(5, String.valueOf(i5)), jMin));
                j4 -= jMin;
                i4 = i5 + 1;
                arrayList = arrayList2;
                str5 = str5;
                j3 = j5;
            }
            String str7 = str5;
            ArrayList arrayList3 = arrayList;
            Iterator it = arrayList3.iterator();
            int i6 = 0;
            while (it.hasNext()) {
                Object next = it.next();
                int i7 = i6 + 1;
                if (i6 < 0) {
                    fl1.F0();
                    throw null;
                }
                uq8 uq8Var = (uq8) next;
                Iterator it2 = el1.p1(arrayList3, i6).iterator();
                final long j6 = 0;
                while (it2.hasNext()) {
                    j6 += ((uq8) it2.next()).b;
                    d65VarB = d65VarB;
                }
                d65 d65Var2 = d65VarB;
                vr6 vr6Var = vr6.INSTANCE;
                int size = arrayList3.size();
                p93 p93Var = p93.a;
                ArrayList arrayList4 = arrayList3;
                Iterator it3 = it;
                String str8 = ")";
                vr6.i$default(vr6Var, "WebDavService", dj7.n(xs1.n("Uploading Chunk ", i7, "/", " (", size), p93.c(Long.valueOf(uq8Var.b)), ")"), null, 4, null);
                int size2 = arrayList4.size();
                int i8 = 0;
                while (true) {
                    try {
                        String str9 = str8;
                        try {
                            c62 c62Var2 = new c62(new xt(c62Var, j6, uq8Var));
                            String str10 = str2 + "/" + uq8Var.a;
                            int i9 = i7;
                            int i10 = size2;
                            try {
                                long j7 = uq8Var.b;
                                str6 = str6;
                                try {
                                    d65Var2 = d65Var2;
                                    try {
                                        mt3 mt3Var2 = new mt3() { // from class: rq8
                                            @Override // defpackage.mt3
                                            public final Object invoke(Object obj) {
                                                long jLongValue = ((Long) obj).longValue();
                                                mt3 mt3Var3 = mt3Var;
                                                if (mt3Var3 != null) {
                                                    mt3Var3.invoke(Long.valueOf(j6 + jLongValue));
                                                }
                                                return be8.a;
                                            }
                                        };
                                        i8 = i8;
                                        j6 = j6;
                                        str7 = str7;
                                        str3 = str9;
                                        i = i9;
                                        i2 = i10;
                                        uq8Var = uq8Var;
                                        str2 = str2;
                                        try {
                                            vq8Var.B(c62Var2, str10, j7, d65Var2, mt3Var2);
                                            break;
                                        } catch (Exception e) {
                                            e = e;
                                            d65Var2 = d65Var2;
                                            vr6 vr6Var2 = vr6.INSTANCE;
                                            String strB = io4.b(e);
                                            StringBuilder sbN = xs1.n("Error while uploading Chunk ", i, "/", ": ", i2);
                                            sbN.append(strB);
                                            vr6.e$default(vr6Var2, "WebDavService", sbN.toString(), null, 4, null);
                                            if (c62Var.b) {
                                            }
                                            throw e;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        i8 = i8;
                                        str7 = str7;
                                        str3 = str9;
                                        i = i9;
                                        i2 = i10;
                                        uq8Var = uq8Var;
                                        str2 = str2;
                                        vr6 vr6Var3 = vr6.INSTANCE;
                                        String strB2 = io4.b(e);
                                        StringBuilder sbN2 = xs1.n("Error while uploading Chunk ", i, "/", ": ", i2);
                                        sbN2.append(strB2);
                                        vr6.e$default(vr6Var3, "WebDavService", sbN2.toString(), null, 4, null);
                                        if (c62Var.b) {
                                        }
                                        throw e;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    d65Var2 = d65Var2;
                                    str7 = str7;
                                    str3 = str9;
                                    i = i9;
                                    i2 = i10;
                                    uq8Var = uq8Var;
                                    str2 = str2;
                                    vr6 vr6Var4 = vr6.INSTANCE;
                                    String strB3 = io4.b(e);
                                    StringBuilder sbN3 = xs1.n("Error while uploading Chunk ", i, "/", ": ", i2);
                                    sbN3.append(strB3);
                                    vr6.e$default(vr6Var4, "WebDavService", sbN3.toString(), null, 4, null);
                                    if (!c62Var.b || (e instanceof b62)) {
                                        throw e;
                                    }
                                    if (i8 >= 5) {
                                        e6.i("Retry limit exhausted, cancelling upload", e);
                                        return;
                                    }
                                    int i11 = i8 + 1;
                                    vr6.e$default(vr6Var4, "WebDavService", xs1.h(i11, "Waiting for a while before retrying (Retry#", str3), null, 4, null);
                                    try {
                                        Thread.sleep(10000L);
                                    } catch (Exception unused2) {
                                    }
                                    i8 = i11;
                                    i7 = i;
                                    str8 = str3;
                                    size2 = i2;
                                    uq8Var = uq8Var;
                                    str2 = str2;
                                    str6 = str6;
                                    d65Var2 = d65Var2;
                                    j6 = j6;
                                    str7 = str7;
                                }
                            } catch (Exception e4) {
                                e = e4;
                                str6 = str6;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            str3 = str9;
                            i = i7;
                            i2 = size2;
                            vr6 vr6Var5 = vr6.INSTANCE;
                            String strB4 = io4.b(e);
                            StringBuilder sbN4 = xs1.n("Error while uploading Chunk ", i, "/", ": ", i2);
                            sbN4.append(strB4);
                            vr6.e$default(vr6Var5, "WebDavService", sbN4.toString(), null, 4, null);
                            if (c62Var.b) {
                            }
                            throw e;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        str3 = str8;
                    }
                    i8 = i11;
                    i7 = i;
                    str8 = str3;
                    size2 = i2;
                    uq8Var = uq8Var;
                    str2 = str2;
                    str6 = str6;
                    d65Var2 = d65Var2;
                    j6 = j6;
                    str7 = str7;
                }
                str7 = str7;
                i6 = i;
                arrayList3 = arrayList4;
                str2 = str2;
                str6 = str6;
                d65VarB = d65Var2;
                it = it3;
            }
            String str11 = str2;
            String str12 = str6;
            vr6 vr6Var6 = vr6.INSTANCE;
            vr6.i$default(vr6Var6, "WebDavService", "Assembling chunks", null, 4, null);
            vr6.w$default(vr6Var6, "WebDavService", "Your server may take extremely long time to assemble chunks! Please be patient.", null, 4, null);
            String strConcat = str.concat(str7);
            if (vq8Var.r(strConcat)) {
                vq8Var.j(strConcat);
            }
            String strConcat2 = str11.concat("/.file");
            String strA2 = vq8Var.A(strConcat);
            try {
                gq8 gq8Var2 = vq8Var.e;
                if (gq8Var2 == null) {
                    pe4.F("webDavClient");
                    throw null;
                }
                d65 d65Var3 = new d65();
                d65Var3.put(str12, String.valueOf(j));
                gq8Var2.g(strConcat2, strA2, d65Var3.b());
                vr6.i$default(vr6Var6, "WebDavService", "Assembled chunks successfully!", null, 4, null);
                vq8Var.w(strConcat, str);
            } catch (kq8 e7) {
                if (e7.a != 504) {
                    vr6.e$default(vr6.INSTANCE, "WebDavService", "Error when assembling chunks", e7, null, 8, null);
                    throw e7;
                }
                vr6 vr6Var7 = vr6.INSTANCE;
                vr6.e$default(vr6Var7, "WebDavService", "Server killed connection with Swift Backup before assembly is complete!", null, 4, null);
                vr6Var7.i("WebDavService", "Swift Backup will attempt to verify assembly success manually for 1hr", vr6.a.YELLOW);
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (System.currentTimeMillis() - jCurrentTimeMillis <= 3600000) {
                    if (vq8Var.r(strConcat)) {
                        vr6.i$default(vr6.INSTANCE, "WebDavService", "Assembly successful: ".concat(Const.u(jCurrentTimeMillis, System.currentTimeMillis())), null, 4, null);
                    } else {
                        try {
                            Thread.sleep(10000L);
                        } catch (Exception unused3) {
                        }
                    }
                }
                g84.h("Swift Backup waited but the server couldn't assemble the chunks in time!");
            }
        } catch (ClassCastException unused4) {
        }
    }

    public static void z(String str) {
        if (nq7.j0(str)) {
            f6.g("Invalid path: ".concat(str));
        }
    }

    public final String A(String str) {
        String strK0 = nq7.K0(CloudCredentials.getBaseUrl$default(t(), false, 1, null), '/');
        if (!nq7.j0(str)) {
            strK0 = uq7.V(str, "/", false) ? eq3.j(strK0, str) : dj7.k(strK0, "/", str);
        }
        tb1 tb1Var = tb1.a;
        return qb1.b(strK0);
    }

    public final void B(c62 c62Var, String str, long j, Map map, mt3 mt3Var) {
        nk6 nk6Var = new nk6(j, c62Var, mt3Var);
        gq8 gq8Var = this.e;
        if (gq8Var == null) {
            pe4.F("webDavClient");
            throw null;
        }
        map.getClass();
        Request.Builder builder = new Request.Builder();
        builder.a = gq8Var.n(str);
        builder.c = gq8.m(map).f();
        builder.c("PUT", nk6Var);
        Response responseD = gq8Var.d(xs1.o(builder.c, "Expect", "100-Continue", builder), null);
        try {
            gq8.k(responseD, "PUT", str);
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

    @Override // defpackage.jh1
    public final tc4 c(String str, t15 t15Var) {
        str.getClass();
        z(str);
        gq8 gq8Var = this.e;
        if (gq8Var == null) {
            pe4.F("webDavClient");
            throw null;
        }
        Request.Builder builder = new Request.Builder();
        builder.a = gq8Var.n(str);
        builder.b();
        if (t15Var != null) {
            long j = t15Var.a;
            long j2 = t15Var.b;
            StringBuilder sbT = dj7.t("bytes=", "-", j);
            sbT.append(j2);
            builder.c.d("Range", sbT.toString());
        }
        Request request = new Request(builder);
        OkHttpClient okHttpClient = gq8Var.a;
        okHttpClient.getClass();
        Response responseG = new RealCall(okHttpClient, request).g();
        if (responseG.H) {
            return new tc4(responseG.k.a(), new us5(responseG, 12), 4);
        }
        try {
            throw gq8.l(responseG, "GET", str);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseG, th);
                throw th2;
            }
        }
    }

    @Override // defpackage.jh1
    public final CloudOperationsImpl$LoginResult d(boolean z) {
        try {
            return jq8.a(A(""), t(), z) ? new CloudOperationsImpl$LoginResult.Success() : new CloudOperationsImpl$LoginResult.Failed(new Exception("Login failed!"));
        } catch (Exception e) {
            Log.e("WebDavService", "WebDavService.login():", e);
            vr6.e$default(vr6.INSTANCE, "WebDavService", "WebDavService.login(): ".concat(io4.b(e)), null, 4, null);
            return e instanceof mf8 ? new CloudOperationsImpl$LoginResult.UntrustedCertificate((mf8) e) : new CloudOperationsImpl$LoginResult.TempConnectionError(e);
        }
    }

    @Override // defpackage.jh1
    public final void e(c62 c62Var, String str, long j, cz czVar) throws Exception {
        c62 c62Var2;
        cz czVar2;
        String str2;
        long j2;
        z(str);
        boolean z = false;
        String strI0 = nq7.I0(str, '/');
        int i = 0;
        for (int i2 = 0; i2 < strI0.length(); i2++) {
            if (strI0.charAt(i2) == '/') {
                i++;
            }
        }
        if (i > 0) {
            h(nq7.F0(str, "/", str));
        }
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("nextcloud_force_chunked_uploads", false);
            if (z) {
                vr6 vr6Var = vr6.INSTANCE;
                vr6.i$default(vr6Var, "WebDavService", "Chunked upload is forced by the user", null, 4, null);
                if (v()) {
                    x(this, c62Var, str, j, czVar);
                    return;
                }
                vr6.e$default(vr6Var, "WebDavService", "Chunked upload not supported by server", null, 4, null);
                this = this;
                c62Var2 = c62Var;
                str2 = str;
                j2 = j;
                czVar2 = czVar;
            } else {
                c62Var2 = c62Var;
                czVar2 = czVar;
                str2 = str;
                j2 = j;
            }
            try {
                this.y(j2, c62Var2, czVar2, str2);
            } catch (kq8 e) {
                long j3 = j2;
                c62 c62Var3 = c62Var2;
                String str3 = str2;
                cz czVar3 = czVar2;
                vr6.e$default(vr6.INSTANCE, "WebDavService", "put", e, null, 8, null);
                if (e.a != 413 || !this.v()) {
                    throw e;
                }
                vr6.INSTANCE.w("WebDavService", "Server rejected the direct upload; attempting chunked upload", vr6.a.YELLOW);
                x(this, c62Var3, str3, j3, czVar3);
            }
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.jh1
    public final pg1 f(String str) {
        Object next;
        qq8 qq8Var;
        str.getClass();
        tb1 tb1Var = tb1.a;
        String strI = qb1.c().i();
        gq8 gq8Var = this.e;
        if (gq8Var == null) {
            pe4.F("webDavClient");
            throw null;
        }
        HttpUrl httpUrlN = gq8Var.n(str);
        Response responseD = gq8Var.d(gq8Var.i(0, str, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<d:propfind xmlns:d=\"DAV:\">\n  <d:prop>\n    <d:resourcetype/>\n    <d:getcontentlength/>\n    <d:creationdate/>\n    <d:getlastmodified/>\n  </d:prop>\n</d:propfind>"), null);
        try {
            int i = responseD.d;
            if (i == 404 || i == 410) {
                responseD.close();
                qq8Var = null;
            } else {
                gq8.k(responseD, "PROPFIND", str);
                List listS = tu0.s(responseD.k.n());
                responseD.close();
                Iterator it = listS.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!pe4.d(gq8.h(((qq8) next).a), gq8.h(httpUrlN.b())));
                qq8Var = (qq8) next;
                if (qq8Var == null) {
                    qq8Var = (qq8) el1.U0(listS);
                }
            }
            if (qq8Var != null) {
                return og1.i(qq8Var, strI);
            }
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    @Override // defpackage.jh1
    public final dd1 g() {
        return this.c;
    }

    @Override // defpackage.jh1
    public final synchronized void h(String str) {
        try {
            str.getClass();
            List listW0 = nq7.w0(nq7.I0(str, '/'), new char[]{'/'}, 6);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listW0) {
                if (!nq7.j0((String) obj)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            String strY0 = el1.Y0(arrayList, "/", null, null, null, 62);
            if (r(strY0)) {
                return;
            }
            String strY1 = "";
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                List listA0 = fl1.A0(strY1, (String) it.next());
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : listA0) {
                    if (!nq7.j0((String) obj2)) {
                        arrayList2.add(obj2);
                    }
                }
                strY1 = el1.Y0(arrayList2, "/", null, null, null, 62);
                if (strY1.equals(strY0) || !r(strY1)) {
                    gq8 gq8Var = this.e;
                    if (gq8Var == null) {
                        pe4.F("webDavClient");
                        throw null;
                    }
                    gq8Var.a(pv2.a, strY1);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // defpackage.jh1
    public final void j(String str) throws Exception {
        str.getClass();
        z(str);
        try {
            gq8 gq8Var = this.e;
            if (gq8Var != null) {
                gq8Var.b(str);
            } else {
                pe4.F("webDavClient");
                throw null;
            }
        } catch (Exception e) {
            if (e instanceof kq8) {
                if (g.contains(Integer.valueOf(((kq8) e).a))) {
                    return;
                }
            }
            throw e;
        }
    }

    @Override // defpackage.jh1
    public final ni1 l() {
        gq8 gq8Var = this.e;
        if (gq8Var == null) {
            pe4.F("webDavClient");
            throw null;
        }
        Response responseD = gq8Var.d(gq8Var.i(0, "", "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<d:propfind xmlns:d=\"DAV:\">\n  <d:prop>\n    <d:quota-used-bytes/>\n    <d:quota-available-bytes/>\n  </d:prop>\n</d:propfind>"), null);
        try {
            gq8.k(responseD, "PROPFIND", "");
            ni1 ni1VarR = tu0.r(responseD.k.n());
            responseD.close();
            return ni1VarR;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    @Override // defpackage.jh1
    public final String n() {
        return "WebDavService";
    }

    @Override // defpackage.jh1
    public final boolean r(String str) throws Exception {
        str.getClass();
        try {
            gq8 gq8Var = this.e;
            if (gq8Var == null) {
                pe4.F("webDavClient");
                throw null;
            }
            boolean zE = gq8Var.e(str, null);
            vr6.d$default(vr6.INSTANCE, "WebDavService", "Exists check for path=" + str + " is " + zE, null, 4, null);
            return zE;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "WebDavService", "Exists check failed for path: ".concat(str), e, null, 8, null);
            throw e;
        }
    }

    @Override // defpackage.jh1
    public final List s(String str) {
        str.getClass();
        tb1 tb1Var = tb1.a;
        String strI = qb1.c().i();
        gq8 gq8Var = this.e;
        if (gq8Var == null) {
            pe4.F("webDavClient");
            throw null;
        }
        HttpUrl httpUrlN = gq8Var.n(str);
        Response responseD = gq8Var.d(gq8Var.i(1, str, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<d:propfind xmlns:d=\"DAV:\">\n  <d:prop>\n    <d:resourcetype/>\n    <d:getcontentlength/>\n    <d:creationdate/>\n    <d:getlastmodified/>\n  </d:prop>\n</d:propfind>"), null);
        try {
            gq8.k(responseD, "PROPFIND", str);
            List listS = tu0.s(responseD.k.n());
            responseD.close();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listS) {
                if (!pe4.d(gq8.h(((qq8) obj).a), gq8.h(httpUrlN.b()))) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(og1.i((qq8) it.next(), strI));
            }
            return arrayList2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    @Override // defpackage.mj1
    public final void u(CloudCredentials cloudCredentials) {
        cloudCredentials.getClass();
        super.u(cloudCredentials);
        OkHttpClient.Builder builderB = this.d.b();
        String validUsername = cloudCredentials.getValidUsername();
        String password = cloudCredentials.getPassword();
        if (password == null) {
            password = "";
        }
        mq8.b(builderB, validUsername, password);
        this.e = new gq8(new OkHttpClient(builderB), CloudCredentials.getBaseUrl$default(cloudCredentials, false, 1, null));
        this.f = null;
    }

    public final boolean v() {
        Object bn6Var;
        Object bn6Var2;
        Boolean bool = this.f;
        if (bool != null) {
            return bool.booleanValue();
        }
        tq8 tq8VarB = sq8.b(A(""));
        if (tq8VarB == null) {
            return false;
        }
        String str = tq8VarB.a;
        String str2 = tq8VarB.b;
        try {
            gq8 gq8Var = this.e;
            if (gq8Var == null) {
                pe4.F("webDavClient");
                throw null;
            }
            bn6Var = Boolean.valueOf(sq8.d(gq8Var.f(x65.r0(new pw5("OCS-APIRequest", "true"), new pw5("Accept", "application/json")), str2)));
            Throwable thA = en6.a(bn6Var);
            if (thA != null) {
                vr6.e$default(vr6.INSTANCE, "WebDavService", "Nextcloud chunk capabilities probe failed for ".concat(str2), thA, null, 8, null);
            }
            if (bn6Var instanceof bn6) {
                bn6Var = null;
            }
            Boolean bool2 = (Boolean) bn6Var;
            Boolean bool3 = Boolean.FALSE;
            if (pe4.d(bool2, bool3)) {
                this.f = bool3;
                return false;
            }
            try {
                gq8 gq8Var2 = this.e;
                if (gq8Var2 == null) {
                    pe4.F("webDavClient");
                    throw null;
                }
                str.getClass();
                bn6Var2 = Boolean.valueOf(gq8Var2.e(str, null));
                Throwable thA2 = en6.a(bn6Var2);
                if (thA2 != null) {
                    vr6.e$default(vr6.INSTANCE, "WebDavService", xs1.j("Nextcloud chunk upload probe failed for ", str), thA2, null, 8, null);
                }
                Boolean bool4 = Boolean.FALSE;
                if (bn6Var2 instanceof bn6) {
                    bn6Var2 = bool4;
                }
                Boolean bool5 = (Boolean) bn6Var2;
                boolean zBooleanValue = bool5.booleanValue();
                if (pe4.d(bool2, Boolean.TRUE) || zBooleanValue) {
                    this.f = bool5;
                }
                return zBooleanValue;
            } catch (Throwable th) {
                bn6Var2 = new bn6(th);
            }
        } catch (Throwable th2) {
            bn6Var = new bn6(th2);
        }
    }

    public final void w(String str, String str2) {
        z(str);
        z(str2);
        String strI0 = nq7.I0(str2, '/');
        int i = 0;
        for (int i2 = 0; i2 < strI0.length(); i2++) {
            if (strI0.charAt(i2) == '/') {
                i++;
            }
        }
        if (i > 0) {
            h(nq7.F0(str2, "/", str2));
        }
        gq8 gq8Var = this.e;
        if (gq8Var == null) {
            pe4.F("webDavClient");
            throw null;
        }
        gq8Var.g(str, str2, pv2.a);
        if (r(str2)) {
            return;
        }
        g84.f(dj7.l("Moving failed from src=", str, " to dest=", str2));
    }

    public final void y(long j, c62 c62Var, mt3 mt3Var, String str) throws Exception {
        Object bn6Var;
        String strConcat = str.concat(".tmp");
        try {
            B(c62Var, strConcat, j, pv2.a, mt3Var);
            gq8 gq8Var = this.e;
            if (gq8Var == null) {
                pe4.F("webDavClient");
                throw null;
            }
            if (nq7.Z(gq8Var.e.d, "123pan", true) && r(str)) {
                vr6.w$default(vr6.INSTANCE, "WebDavService", "123pan WebDAV cannot overwrite using MOVE; deleting existing path before MOVE", null, 4, null);
                j(str);
            }
            w(strConcat, str);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "WebDavService", "putNormal: ".concat(io4.b(e)), null, 4, null);
            try {
                if (r(strConcat)) {
                    j(strConcat);
                }
                bn6Var = be8.a;
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            Throwable thA = en6.a(bn6Var);
            if (thA == null) {
                throw e;
            }
            vr6.e$default(vr6.INSTANCE, "WebDavService", "putNormal: Error while deleting temporary file at ".concat(strConcat), thA, null, 8, null);
            throw e;
        }
    }

    @Override // defpackage.jh1
    public final void b() {
    }
}
