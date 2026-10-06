package defpackage;

import com.microsoft.identity.client.claims.ClaimsRequest;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h08 {
    public final zz7 a;
    public final bt3 b;
    public final mt3 c;
    public final OkHttpClient d;
    public final bt3 e;

    public h08(zz7 zz7Var, xq4 xq4Var, lm lmVar, int i) {
        bt3 zjVar = (i & 2) != 0 ? new zj(18) : xq4Var;
        mt3 ouVar = (i & 4) != 0 ? new ou(13) : lmVar;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.a(30L, timeUnit);
        builder.x = _UtilJvmKt.b(30L, timeUnit);
        OkHttpClient okHttpClient = new OkHttpClient(builder);
        qm qmVar = new qm(20);
        zz7Var.getClass();
        this.a = zz7Var;
        this.b = zjVar;
        this.c = ouVar;
        this.d = okHttpClient;
        this.e = qmVar;
    }

    public static HttpUrl a(String str, String str2, String str3) {
        HttpUrl.Builder builderG = HttpUrl.Companion.b(nq7.K0(f08.a(str), '/') + "/" + nq7.L0(str2, '/')).g();
        builderG.d("access_tokens", str3);
        return builderG.e();
    }

    public static HttpUrl b(String str) {
        return HttpUrl.Companion.b(nq7.K0("https://www.terabox.com", '/') + "/" + nq7.L0(str, '/'));
    }

    public static a08 k(fl4 fl4Var) {
        String strJ;
        String strJ2;
        String strJ3 = bb9.J(fl4Var, "path");
        String str = strJ3 == null ? "" : strJ3;
        String strJ4 = bb9.J(fl4Var, "server_filename");
        if (strJ4 == null && (strJ4 = bb9.J(fl4Var, "filename")) == null) {
            strJ4 = nq7.B0(nq7.K0(str, '/'), '/');
        }
        String str2 = strJ4;
        fl4 fl4VarK = bb9.k(fl4Var.x("thumbs"));
        String strJ5 = bb9.J(fl4Var, "fs_id");
        String str3 = strJ5 != null ? strJ5 : "";
        Long lZ = bb9.z(fl4Var, "size");
        long jLongValue = lZ != null ? lZ.longValue() : 0L;
        Integer numW = bb9.w(fl4Var, "isdir");
        boolean z = numW != null && numW.intValue() == 1;
        Long lZ2 = bb9.z(fl4Var, "server_ctime");
        long jLongValue2 = (lZ2 == null && (lZ2 = bb9.z(fl4Var, "local_ctime")) == null) ? 0L : lZ2.longValue();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        long millis = timeUnit.toMillis(jLongValue2);
        Long lZ3 = bb9.z(fl4Var, "server_mtime");
        long millis2 = timeUnit.toMillis((lZ3 == null && (lZ3 = bb9.z(fl4Var, "local_mtime")) == null) ? 0L : lZ3.longValue());
        if (fl4VarK == null || (strJ = bb9.J(fl4VarK, "icon")) == null) {
            strJ = null;
            strJ2 = fl4VarK != null ? bb9.J(fl4VarK, "url3") : null;
            if (strJ2 == null) {
                strJ2 = fl4VarK != null ? bb9.J(fl4VarK, "url2") : null;
                if (strJ2 == null) {
                    if (fl4VarK != null) {
                        strJ = bb9.J(fl4VarK, "url1");
                    }
                    strJ2 = strJ;
                }
            }
        } else {
            strJ2 = strJ;
        }
        return new a08(str3, str, str2, jLongValue, z, millis, millis2, strJ2, bb9.J(fl4Var, "dlink"));
    }

    public static fl4 l(Response response) throws yz7 {
        fl4 fl4Var;
        Integer numW;
        String strN = response.k.n();
        String str = !nq7.j0(strN) ? strN : null;
        if (str == null || (fl4Var = bb9.k(yc9.K(str))) == null) {
            fl4Var = new fl4();
        }
        Integer numW2 = bb9.w(fl4Var, "errno");
        if (numW2 == null) {
            String strJ = bb9.J(fl4Var, "newno");
            numW = strJ != null ? uq7.W(10, strJ) : null;
        } else {
            numW = numW2;
        }
        if (response.H && (numW == null || numW.intValue() == 0)) {
            return fl4Var;
        }
        Request request = response.a;
        throw new yz7(request.b, request.a.h, response.d, numW, strN);
    }

    public final TeraBoxTokenCredentials c(n08 n08Var, TeraBoxTokenCredentials teraBoxTokenCredentials) throws IOException {
        long expiresAtMillis;
        String str = n08Var.b;
        String str2 = n08Var.a;
        if (nq7.j0(str2)) {
            c6.f("TeraBox token response did not contain access_token.");
            return null;
        }
        if (nq7.j0(str)) {
            c6.f("TeraBox token response did not contain refresh_token.");
            return null;
        }
        Request.Builder builder = new Request.Builder();
        builder.a = b("/oauth/tokeninfo");
        FormBody.Builder builder2 = new FormBody.Builder(0);
        builder2.a(ClaimsRequest.ACCESS_TOKEN, str2);
        builder.c("POST", builder2.c());
        fl4 fl4VarK = bb9.k(g(new Request(builder)).x("data"));
        if (fl4VarK == null) {
            y5.m("TeraBox tokeninfo response did not contain data.");
            return null;
        }
        String strJ = bb9.J(fl4VarK, "api_domain");
        if (strJ == null) {
            strJ = "";
        }
        String strJ2 = bb9.J(fl4VarK, "upload_domain");
        if (strJ2 == null) {
            strJ2 = "";
        }
        Long lZ = bb9.z(fl4VarK, "expires_in");
        Long lZ2 = bb9.z(fl4VarK, "create_time");
        String strJ3 = bb9.J(fl4VarK, "user_id");
        if (strJ3 == null) {
            strJ3 = "";
        }
        String str3 = strJ;
        String strA = f08.a(str3);
        if (nq7.j0(strJ2)) {
            strJ2 = str3;
        }
        String strA2 = f08.a(strJ2);
        Request.Builder builder3 = new Request.Builder();
        builder3.a = a(strA, "/openapi/uinfo", str2);
        builder3.b();
        fl4 fl4VarG = g(new Request(builder3));
        String strJ4 = bb9.J(fl4VarG, "uk");
        if (strJ4 == null) {
            strJ4 = "";
        }
        String strJ5 = bb9.J(fl4VarG, "uname");
        String displayName = strJ5 != null ? strJ5 : "";
        Long l = n08Var.c;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        bt3 bt3Var = this.e;
        if (l != null) {
            expiresAtMillis = timeUnit.toMillis(l.longValue()) + ((Number) bt3Var.invoke()).longValue();
        } else if (lZ != null) {
            expiresAtMillis = timeUnit.toMillis((lZ2 != null ? lZ2.longValue() : ((Number) bt3Var.invoke()).longValue() / 1000) + lZ.longValue());
        } else {
            expiresAtMillis = teraBoxTokenCredentials.getExpiresAtMillis();
        }
        if (!nq7.j0(strJ4)) {
            strJ3 = strJ4;
        }
        if (nq7.j0(displayName)) {
            displayName = teraBoxTokenCredentials.getDisplayName();
        }
        return TeraBoxTokenCredentials.copy$default(teraBoxTokenCredentials, str2, str, expiresAtMillis, strA, strA2, strJ3, displayName, null, 128, null);
    }

    public final void d(String str) {
        xi4 xi4Var = new xi4();
        xi4Var.s(str);
        f(new jj2(10, this, xi4Var.toString()));
    }

    public final TeraBoxTokenCredentials e(String str) {
        str.getClass();
        zz7 zz7Var = this.a;
        if (!zz7Var.a()) {
            c6.f("TeraBox app credentials are not configured.");
            return null;
        }
        zz7Var.getClass();
        pw5 pw5Var = new pw5("client_id", "");
        zz7Var.getClass();
        return c(j(x65.r0(pw5Var, new pw5("client_secret", ""), new pw5("grant_type", "authorization_code"), new pw5("code", str)), "/oauth/gettoken"), new TeraBoxTokenCredentials(null, null, 0L, null, null, null, null, null, 255, null));
    }

    public final fl4 f(mt3 mt3Var) {
        bt3 bt3Var = this.b;
        if (!i(false)) {
            y5.m("TeraBox access token unavailable");
            return null;
        }
        try {
            return g((Request) mt3Var.invoke(bt3Var.invoke()));
        } catch (yz7 e) {
            if (e.a() && i(true)) {
                return g((Request) mt3Var.invoke(bt3Var.invoke()));
            }
            throw e;
        }
    }

    public final fl4 g(Request request) {
        Response responseG = this.d.a(request).g();
        try {
            fl4 fl4VarL = l(responseG);
            responseG.close();
            return fl4VarL;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseG, th);
                throw th2;
            }
        }
    }

    public final a08 h(String str, final boolean z) {
        qj4 qj4Var;
        fl4 fl4VarK;
        xi4 xi4Var = new xi4();
        xi4Var.s(str);
        final String string = xi4Var.toString();
        qj4 qj4VarX = f(new mt3() { // from class: d08
            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj;
                teraBoxTokenCredentials.getClass();
                Request.Builder builder = new Request.Builder();
                String apiDomain = teraBoxTokenCredentials.getApiDomain();
                String accessToken = teraBoxTokenCredentials.getAccessToken();
                this.a.getClass();
                HttpUrl.Builder builderG = h08.a(apiDomain, "/openapi/api/filemetas", accessToken).g();
                builderG.d("target", string);
                builderG.d("dlink", z ? "1" : "0");
                builder.a = builderG.e();
                builder.b();
                return new Request(builder);
            }
        }).x("info");
        if (qj4VarX == null || (qj4Var = (qj4) el1.T0(qj4VarX.g())) == null || (fl4VarK = bb9.k(qj4Var)) == null) {
            return null;
        }
        return k(fl4VarK);
    }

    public final synchronized boolean i(boolean z) {
        TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) this.b.invoke();
        if (!z && !TeraBoxTokenCredentials.needsAccessTokenRefresh$default(teraBoxTokenCredentials, ((Number) this.e.invoke()).longValue(), 0L, 2, null)) {
            return !nq7.j0(teraBoxTokenCredentials.getAccessToken());
        }
        if (!nq7.j0(teraBoxTokenCredentials.getRefreshToken()) && this.a.a()) {
            this.a.getClass();
            pw5 pw5Var = new pw5("client_id", "");
            this.a.getClass();
            TeraBoxTokenCredentials teraBoxTokenCredentialsC = c(j(x65.r0(pw5Var, new pw5("client_secret", ""), new pw5("refresh_token", teraBoxTokenCredentials.getRefreshToken())), "/oauth/refreshtoken"), teraBoxTokenCredentials);
            this.c.invoke(teraBoxTokenCredentialsC);
            return !nq7.j0(teraBoxTokenCredentialsC.getAccessToken());
        }
        return false;
    }

    public final n08 j(Map map, String str) throws NoSuchAlgorithmException, IOException {
        long jLongValue = ((Number) this.e.invoke()).longValue() / 1000;
        this.a.getClass();
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        byte[] bytes = ("_" + jLongValue + "__").getBytes(f51.a);
        bytes.getClass();
        byte[] bArrDigest = messageDigest.digest(bytes);
        bArrDigest.getClass();
        String strT0 = x50.t0(bArrDigest, "", new hi(9), 30);
        FormBody.Builder builder = new FormBody.Builder(0);
        for (Map.Entry entry : map.entrySet()) {
            builder.a((String) entry.getKey(), (String) entry.getValue());
        }
        builder.a("timestamp", String.valueOf(jLongValue));
        builder.a("sign", strT0);
        FormBody formBodyC = builder.c();
        Request.Builder builder2 = new Request.Builder();
        builder2.a = b(str);
        builder2.c("POST", formBodyC);
        fl4 fl4VarK = bb9.k(g(new Request(builder2)).x("data"));
        if (fl4VarK == null) {
            y5.m("TeraBox token response did not contain data.");
            return null;
        }
        String strJ = bb9.J(fl4VarK, ClaimsRequest.ACCESS_TOKEN);
        if (strJ == null) {
            strJ = "";
        }
        String strJ2 = bb9.J(fl4VarK, "refresh_token");
        return new n08(strJ, strJ2 != null ? strJ2 : "", bb9.z(fl4VarK, "expires_in"));
    }

    public final p08 m(String str, String str2, o08 o08Var, BufferedInputStream bufferedInputStream, mm mmVar) throws IOException {
        o08Var.getClass();
        int iIntValue = o08Var.a;
        if (!i(false)) {
            y5.m("TeraBox access token unavailable");
            return null;
        }
        TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) this.b.invoke();
        Request.Builder builder = new Request.Builder();
        HttpUrl.Builder builderG = a(teraBoxTokenCredentials.getUploadDomain(), "/rest/2.0/pcs/superfile2", teraBoxTokenCredentials.getAccessToken()).g();
        builderG.d("method", "upload");
        builderG.d("type", "tmpfile");
        builderG.d("app_id", "250528");
        builderG.d("path", str);
        builderG.d("uploadid", str2);
        builderG.d("partseq", String.valueOf(iIntValue));
        builder.a = builderG.e();
        MultipartBody.Builder builder2 = new MultipartBody.Builder();
        builder2.c(MultipartBody.g);
        builder2.a("file", "part-" + iIntValue, new g08(o08Var.c, bufferedInputStream, mmVar));
        builder.c("POST", builder2.b());
        fl4 fl4VarG = g(new Request(builder));
        String strJ = bb9.J(fl4VarG, "md5");
        if (strJ == null) {
            strJ = "";
        }
        String strJ2 = bb9.J(fl4VarG, "uploadid");
        String str3 = strJ2 != null ? strJ2 : "";
        Integer numW = bb9.w(fl4VarG, "partseq");
        if (numW != null) {
            iIntValue = numW.intValue();
        }
        return new p08(strJ, str3, iIntValue);
    }
}
