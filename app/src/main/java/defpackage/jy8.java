package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.TokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jy8 implements jh1 {
    public static final OkHttpClient e;
    public final iy8 c;
    public TokenCredentials a = new TokenCredentials(null, null, null, null, 15, null);
    public final Object b = new Object();
    public final dd1 d = dd1.YandexDisk;

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.a(30L, timeUnit);
        builder.x = _UtilJvmKt.b(30L, timeUnit);
        builder.b(nc8.I(Protocol.HTTP_1_1));
        e = new OkHttpClient(builder);
    }

    public jy8() {
        int i = 0;
        this.c = new iy8(new uk(0, this, jy8.class, "accessToken", "accessToken()Ljava/lang/String;", i, 3), new hl0(1, this, jy8.class, "forceRefreshAccessToken", "forceRefreshAccessToken(Ljava/lang/String;)Ljava/lang/String;", i, 6));
    }

    public static int C(long j, c62 c62Var, mt3 mt3Var, String str) {
        Log.d("YandexService", "uploadFile: put to url: ".concat(str));
        l15 l15Var = mk6.a;
        lk6 lk6Var = new lk6(j, c62Var, mt3Var);
        Request.Builder builder = new Request.Builder();
        builder.d(str);
        builder.c("PUT", lk6Var);
        Request request = new Request(builder);
        OkHttpClient okHttpClient = e;
        okHttpClient.getClass();
        Response responseG = new RealCall(okHttpClient, request).g();
        int i = responseG.d;
        try {
            Log.d("YandexService", "uploadFile: " + responseG.c + " for url " + str);
            if (i != 201 && i != 202) {
                throw new ey8(i, request.b, request.a.h, responseG.k.n());
            }
            Log.d("YandexService", "uploadFile: file uploaded successfully");
            responseG.close();
            return i;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseG, th);
                throw th2;
            }
        }
    }

    public static boolean x(Exception exc) {
        return (exc instanceof ey8) && ((ey8) exc).a == 404;
    }

    public final tc4 A(String str, t15 t15Var) throws IOException {
        Request.Builder builder = new Request.Builder();
        builder.d(str);
        String str2 = (String) this.c.a.invoke();
        str2.getClass();
        builder.c.d("Authorization", "OAuth ".concat(str2));
        if (t15Var != null) {
            long j = t15Var.a;
            long j2 = t15Var.b;
            StringBuilder sbT = dj7.t("bytes=", "-", j);
            sbT.append(j2);
            builder.c.a("Range", sbT.toString());
        }
        Request request = new Request(builder);
        OkHttpClient okHttpClient = e;
        okHttpClient.getClass();
        Response responseG = new RealCall(okHttpClient, request).g();
        if (!responseG.H) {
            int i = responseG.d;
            f13.a(responseG);
            y5.m(fz5.j(i, "Error while getting response from url. Response code: "));
            return null;
        }
        return new tc4(responseG.k.a(), new i54(0, responseG, Response.class, "close", "close()V", 0, 2), 4);
    }

    public final String B(String str) {
        str.getClass();
        return xs1.j("app:/", nq7.I0(str, '/'));
    }

    @Override // defpackage.jh1
    public final tc4 c(String str, t15 t15Var) throws Exception {
        str.getClass();
        try {
            String strB = B(str);
            Log.d("YandexService", "get: resolvedPath=".concat(strB));
            iy8 iy8Var = this.c;
            iy8Var.getClass();
            HttpUrl.Builder builderG = iy8Var.a("/resources/download").g();
            builderG.d("path", strB);
            Request.Builder builderB = iy8Var.b(builderG.e());
            builderB.b();
            String str2 = iy8.p(iy8Var.e(new Request(builderB))).a;
            IOException e2 = null;
            for (int i = 0; i < 3; i++) {
                try {
                    return this.A(str2, t15Var);
                } catch (IOException e3) {
                    e2 = e3;
                    if (i < 2) {
                        Thread.sleep(1000L);
                    }
                }
            }
            if (e2 == null) {
                throw new IllegalStateException("Download URL open failed without IOException.");
            }
            throw e2;
        } catch (Exception e4) {
            vr6.e$default(vr6.INSTANCE, "YandexService", "get: ".concat(io4.b(e4)), null, 4, null);
            throw e4;
        }
    }

    @Override // defpackage.jh1
    public final CloudOperationsImpl$LoginResult d(boolean z) {
        if (this.a.getToken().length() == 0) {
            return CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE;
        }
        try {
            this.c.g();
            return new CloudOperationsImpl$LoginResult.Success();
        } catch (ey8 e2) {
            vr6.e$default(vr6.INSTANCE, "YandexService", "login", e2, null, 8, null);
            int i = e2.a;
            return (i == 401 || i == 403) ? CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE : new CloudOperationsImpl$LoginResult.TempConnectionError(e2);
        } catch (Exception e3) {
            vr6.e$default(vr6.INSTANCE, "YandexService", "login", e3, null, 8, null);
            return new CloudOperationsImpl$LoginResult.TempConnectionError(e3);
        }
    }

    @Override // defpackage.jh1
    public final void e(c62 c62Var, String str, long j, cz czVar) throws Exception {
        hy8 hy8VarH;
        long j2;
        iy8 iy8Var = this.c;
        String strConcat = str.concat(".tmp");
        try {
            String strE0 = nq7.E0('/', nq7.I0(strConcat, '/'), "");
            if (strE0.length() > 0) {
                t(strE0);
            }
            if (C(j, c62Var, czVar, iy8Var.i(B(strConcat)).a) == 202) {
                String strB = B(strConcat);
                Long lValueOf = j >= 0 ? Long.valueOf(j) : null;
                for (long j3 = 0; j3 <= 30000; j3 += j2) {
                    try {
                        hy8VarH = iy8Var.h(strB, null, null);
                    } catch (ey8 e2) {
                        if (e2.a != 423) {
                            throw e2;
                        }
                        hy8VarH = null;
                    }
                    if (hy8VarH == null || (lValueOf != null && hy8VarH.d != lValueOf.longValue())) {
                        j2 = 30000 - j3;
                        if (1000 <= j2) {
                            j2 = 1000;
                        }
                        if (j2 <= 0) {
                            break;
                        }
                        iy8Var.e.invoke(Long.valueOf(j2));
                    }
                }
                throw new IOException("Yandex resource did not become available: ".concat(strB));
            }
            z(strConcat, str);
        } catch (Exception e3) {
            j(strConcat);
            vr6.e$default(vr6.INSTANCE, "YandexService", "put: ".concat(io4.b(e3)), null, 4, null);
            throw e3;
        }
    }

    @Override // defpackage.jh1
    public final pg1 f(String str) {
        str.getClass();
        try {
            String strE0 = nq7.E0('/', nq7.I0(str, '/'), "");
            hy8 hy8VarV = v(str);
            if (hy8VarV == null) {
                return null;
            }
            String strK0 = nq7.K0(strE0, '/');
            String str2 = hy8VarV.a;
            pg1 pg1Var = new pg1(str2, el1.Y0(fl1.A0(strK0, str2), "/", null, null, null, 62));
            pg1Var.c = hy8VarV.d;
            pg1Var.d = hy8VarV.e;
            pg1Var.e = hy8VarV.f;
            pg1Var.f = hy8VarV.g;
            pg1Var.g = hy8VarV.c.equals("dir");
            return pg1Var;
        } catch (Exception e2) {
            String strConcat = "getFile: Error while getting file at path=".concat(str);
            Log.e("YandexService", strConcat, e2);
            vr6.e$default(vr6.INSTANCE, "YandexService", dj7.k(strConcat, ": ", io4.b(e2)), null, 4, null);
            return null;
        }
    }

    @Override // defpackage.jh1
    public final dd1 g() {
        return this.d;
    }

    @Override // defpackage.jh1
    public final synchronized void h(String str) {
        str.getClass();
        try {
            t(str);
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "YandexService", "createDirectory", e2, null, 8, null);
        }
    }

    @Override // defpackage.jh1
    public final boolean i() {
        TokenCredentials.Companion.getClass();
        dd1 dd1Var = this.d;
        dd1Var.getClass();
        String strA = i58.a(dd1Var);
        SharedPreferences sharedPreferences = cz4.f;
        if (sharedPreferences != null) {
            return sharedPreferences.contains(strA);
        }
        pe4.F("prefs");
        throw null;
    }

    @Override // defpackage.jh1
    public final void j(String str) {
        str.getClass();
        try {
            String strB = B(str);
            Log.d("YandexService", "Deleting ".concat(strB));
            this.c.c(strB);
        } catch (Exception e2) {
            if (x(e2)) {
                return;
            }
            vr6.e$default(vr6.INSTANCE, "YandexService", "delete", e2, null, 8, null);
        }
    }

    @Override // defpackage.jh1
    public final boolean k() {
        TokenCredentials.Companion.getClass();
        TokenCredentials tokenCredentialsB = i58.b(this.d);
        this.a = tokenCredentialsB;
        return tokenCredentialsB.getToken().length() > 0;
    }

    @Override // defpackage.jh1
    public final ni1 l() {
        try {
            fy8 fy8VarG = this.c.g();
            return new ni1(fy8VarG.a, fy8VarG.b);
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "YandexService", "getQuota", e2, null, 8, null);
            return new ni1(null, null);
        }
    }

    @Override // defpackage.jh1
    public final boolean m() {
        return this.a.isValid();
    }

    @Override // defpackage.jh1
    public final String n() {
        return "YandexService";
    }

    @Override // defpackage.jh1
    public final ih1 o(String str) {
        try {
            return v(str) != null ? ih1.Exists : ih1.Missing;
        } catch (Exception e2) {
            if (x(e2)) {
                return ih1.Missing;
            }
            vr6.e$default(vr6.INSTANCE, "YandexService", "getMetadataPathExistence: Unable to check metadata path=".concat(str), e2, null, 8, null);
            return ih1.Unknown;
        }
    }

    @Override // defpackage.jh1
    public final String p() {
        return this.a.getEmailAddressValue();
    }

    @Override // defpackage.jh1
    public final hh1 q(String str) {
        str.getClass();
        try {
            return new gh1(y(str));
        } catch (Exception e2) {
            if (x(e2)) {
                return new gh1(ov2.a);
            }
            Log.e("YandexService", "listMetadataDirectory", e2);
            vr6.e$default(vr6.INSTANCE, "YandexService", "listMetadataDirectory: ".concat(io4.b(e2)), null, 4, null);
            return fh1.a;
        }
    }

    @Override // defpackage.jh1
    public final boolean r(String str) {
        str.getClass();
        try {
            return v(str) != null;
        } catch (Exception e2) {
            if (x(e2)) {
                return false;
            }
            vr6.e$default(vr6.INSTANCE, "YandexService", "exists", e2, null, 8, null);
            return false;
        }
    }

    @Override // defpackage.jh1
    public final List s(String str) {
        str.getClass();
        Log.d("YandexService", "list: path=".concat(str));
        try {
            return y(str);
        } catch (Exception e2) {
            if (!x(e2)) {
                Log.e("YandexService", "list", e2);
                vr6.e$default(vr6.INSTANCE, "YandexService", "list: ".concat(io4.b(e2)), null, 4, null);
            }
            return ov2.a;
        }
    }

    public final synchronized void t(String str) {
        try {
            hy8 hy8VarV = v(str);
            if (hy8VarV != null && hy8VarV.c.equals("dir")) {
                return;
            }
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
            String str2 = "";
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                str2 = str2 + "/" + ((String) it.next());
                hy8 hy8VarV2 = v(str2);
                if (!(hy8VarV2 != null && hy8VarV2.c.equals("dir"))) {
                    try {
                        this.c.k(B(str2));
                    } catch (ey8 e2) {
                        if (e2.a != 409) {
                            throw e2;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0027 A[Catch: all -> 0x0023, TRY_LEAVE, TryCatch #0 {all -> 0x0023, blocks: (B:5:0x0007, B:7:0x0013, B:9:0x001b, B:12:0x0027, B:16:0x0033, B:20:0x0064, B:22:0x0079, B:25:0x0087, B:27:0x0098), top: B:33:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0030  */
    /* JADX WARN: Code duplicated, block: B:18:0x0061  */
    /* JADX WARN: Code duplicated, block: B:19:0x0063  */
    /* JADX WARN: Code duplicated, block: B:22:0x0079 A[Catch: all -> 0x0023, Exception -> 0x0084, TryCatch #1 {Exception -> 0x0084, blocks: (B:16:0x0033, B:20:0x0064, B:22:0x0079, B:25:0x0087), top: B:34:0x0033, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final String u(String str) {
        String token;
        String refreshToken;
        String str2;
        String str3;
        TokenCredentials tokenCredentialsCopy$default;
        synchronized (this.b) {
            if (str != null) {
                try {
                    if (str.equals(this.a.getToken()) || zm5.b(this.a)) {
                        refreshToken = this.a.getRefreshToken();
                        if (refreshToken == null) {
                            token = null;
                        } else {
                            try {
                                Map mapSingletonMap = Collections.singletonMap("force_confirm", "yes");
                                mapSingletonMap.getClass();
                                uj ujVar = new uj("https://oauth.yandex.com/authorize", "https://oauth.yandex.com/token", "ec2ee695f64042bfa6285a6999ef11bf", "org.swiftapps.swiftbackup.yandex://oauth", null, mapSingletonMap, null, 208);
                                SwiftApp.Companion companion = SwiftApp.d;
                                vj vjVarC = ujVar.c(SwiftApp.Companion.c(), refreshToken);
                                TokenCredentials tokenCredentials = this.a;
                                String str4 = vjVarC.a;
                                str2 = vjVarC.c;
                                if (str2 == null) {
                                    str3 = refreshToken;
                                } else {
                                    str3 = str2;
                                }
                                tokenCredentialsCopy$default = TokenCredentials.copy$default(tokenCredentials, str4, null, str3, vjVarC.b, 2, null);
                                this.a = tokenCredentialsCopy$default;
                                if (zm5.u(tokenCredentialsCopy$default.getCloudServiceId())) {
                                    i58 i58Var = TokenCredentials.Companion;
                                    dd1 dd1Var = this.d;
                                    i58Var.getClass();
                                    i58.c(dd1Var, tokenCredentialsCopy$default);
                                }
                                vr6.i$default(vr6.INSTANCE, "YandexService", "Token refresh successful", null, 4, null);
                                token = tokenCredentialsCopy$default.getToken();
                            } catch (Exception e2) {
                                vr6.e$default(vr6.INSTANCE, "YandexService", "Failed refreshing token: ".concat(io4.b(e2)), null, 4, null);
                                token = null;
                            }
                        }
                    } else {
                        token = this.a.getToken();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                refreshToken = this.a.getRefreshToken();
                if (refreshToken == null) {
                    token = null;
                } else {
                    Map mapSingletonMap2 = Collections.singletonMap("force_confirm", "yes");
                    mapSingletonMap2.getClass();
                    uj ujVar2 = new uj("https://oauth.yandex.com/authorize", "https://oauth.yandex.com/token", "ec2ee695f64042bfa6285a6999ef11bf", "org.swiftapps.swiftbackup.yandex://oauth", null, mapSingletonMap2, null, 208);
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    vj vjVarC2 = ujVar2.c(SwiftApp.Companion.c(), refreshToken);
                    TokenCredentials tokenCredentials2 = this.a;
                    String str5 = vjVarC2.a;
                    str2 = vjVarC2.c;
                    if (str2 == null) {
                        str3 = refreshToken;
                    } else {
                        str3 = str2;
                    }
                    tokenCredentialsCopy$default = TokenCredentials.copy$default(tokenCredentials2, str5, null, str3, vjVarC2.b, 2, null);
                    this.a = tokenCredentialsCopy$default;
                    if (zm5.u(tokenCredentialsCopy$default.getCloudServiceId())) {
                        i58 i58Var2 = TokenCredentials.Companion;
                        dd1 dd1Var2 = this.d;
                        i58Var2.getClass();
                        i58.c(dd1Var2, tokenCredentialsCopy$default);
                    }
                    vr6.i$default(vr6.INSTANCE, "YandexService", "Token refresh successful", null, 4, null);
                    token = tokenCredentialsCopy$default.getToken();
                }
            }
        }
        return token;
    }

    public final hy8 v(String str) {
        String strB = B(str);
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3 = iy8.f;
        return this.c.h(strB, null, null);
    }

    public final qk1 w(String str) throws IOException {
        String str2;
        str.getClass();
        hy8 hy8VarV = v(str);
        if (hy8VarV == null || (str2 = hy8VarV.g) == null) {
            y5.m("Yandex preview URL is unavailable for path=".concat(str));
            return null;
        }
        Request.Builder builder = new Request.Builder();
        builder.d(str2);
        String str3 = (String) this.c.a.invoke();
        str3.getClass();
        Request requestO = xs1.o(builder.c, "Authorization", "OAuth ".concat(str3), builder);
        OkHttpClient okHttpClient = e;
        okHttpClient.getClass();
        Response responseG = new RealCall(okHttpClient, requestO).g();
        if (responseG.H) {
            return new qk1(responseG, responseG.k.a());
        }
        int i = responseG.d;
        f13.a(responseG);
        y5.m(fz5.j(i, "Error while getting Yandex thumbnail. Response code: "));
        return null;
    }

    public final ArrayList y(String str) {
        List<hy8> list;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        do {
            String strB = B(str);
            Log.d("YandexService", "listStrict: resolvedPath=".concat(strB));
            hy8 hy8VarH = this.c.h(strB, 100, Integer.valueOf(i));
            list = hy8VarH != null ? hy8VarH.h : null;
            if (list == null) {
                list = ov2.a;
            }
            ArrayList arrayList2 = new ArrayList(hl1.G0(list, 10));
            for (hy8 hy8Var : list) {
                hy8Var.getClass();
                String strK0 = nq7.K0(str, '/');
                String str2 = hy8Var.a;
                pg1 pg1Var = new pg1(str2, el1.Y0(fl1.A0(strK0, str2), "/", null, null, null, 62));
                pg1Var.c = hy8Var.d;
                pg1Var.d = hy8Var.e;
                pg1Var.e = hy8Var.f;
                pg1Var.f = hy8Var.g;
                pg1Var.g = hy8Var.c.equals("dir");
                arrayList2.add(pg1Var);
            }
            el1.K0(arrayList2, arrayList);
            i += 100;
        } while (list.size() >= 100);
        return arrayList;
    }

    public final void z(String str, String str2) throws Exception {
        String strB = B(str);
        String strB2 = B(str2);
        try {
            String strE0 = nq7.E0('/', nq7.I0(str2, '/'), "");
            if (strE0.length() > 0) {
                t(strE0);
            }
            this.c.l(strB, strB2);
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "YandexService", dj7.l("move: Error while moving file from path=", str, " to newPath=", str2), e2, null, 8, null);
            throw e2;
        }
    }

    @Override // defpackage.jh1
    public final void b() {
    }
}
