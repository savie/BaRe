package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class i08 implements jh1 {
    public static final OkHttpClient e;
    public final zz7 a;
    public final dd1 b = dd1.TeraBox;
    public TeraBoxTokenCredentials c = new TeraBoxTokenCredentials(null, null, 0, null, null, null, null, null, 255, null);
    public final h08 d;

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.a(30L, timeUnit);
        builder.x = _UtilJvmKt.b(30L, timeUnit);
        e = new OkHttpClient(builder);
    }

    public i08(zz7 zz7Var) {
        this.a = zz7Var;
        this.d = new h08(zz7Var, new xq4(this, 16), new lm(this, 18), 24);
    }

    public static ArrayList t(c62 c62Var, List list) throws IOException, b62 {
        BufferedInputStream bufferedInputStreamA = c62Var.a();
        try {
            ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(x(bufferedInputStreamA, ((o08) it.next()).c));
            }
            bufferedInputStreamA.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(bufferedInputStreamA, th);
                throw th2;
            }
        }
    }

    public static String x(BufferedInputStream bufferedInputStream, long j) throws NoSuchAlgorithmException, IOException {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        byte[] bArr = new byte[262144];
        while (j > 0) {
            int i = bufferedInputStream.read(bArr, 0, (int) Math.min(262144L, j));
            if (i == -1) {
                throw new EOFException("Unexpected EOF while hashing TeraBox upload chunk.");
            }
            messageDigest.update(bArr, 0, i);
            j -= (long) i;
        }
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return x50.t0(bArrDigest, "", new ou(14), 30);
    }

    public static tc4 y(String str, t15 t15Var) {
        Request.Builder builder = new Request.Builder();
        builder.d(str);
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
            responseG.close();
            g84.h(fz5.j(responseG.d, "Error while getting response from url. Response code: "));
            return null;
        }
        return new tc4(responseG.k.a(), new ji1(0, responseG, Response.class, "close", "close()V", 0, 4), 4);
    }

    public final pg1 A(a08 a08Var) {
        String str = a08Var.b;
        String str2 = a08Var.c;
        String strL0 = nq7.L0(nq7.q0(str, "/From: Other Applications/" + nq7.H0("Swift Backup").toString() + "-" + nq7.H0("").toString()), '/');
        if (nq7.j0(strL0)) {
            strL0 = str2;
        }
        pg1 pg1Var = new pg1(str2, strL0);
        pg1Var.c = a08Var.d;
        pg1Var.d = a08Var.f;
        pg1Var.e = a08Var.g;
        String str3 = a08Var.h;
        if (str3 != null) {
            strL0 = str3;
        }
        pg1Var.f = strL0;
        pg1Var.g = a08Var.e;
        return pg1Var;
    }

    @Override // defpackage.jh1
    public final tc4 c(String str, t15 t15Var) throws Exception {
        str.getClass();
        try {
            a08 a08VarH = this.d.h(z(str), true);
            if (a08VarH == null) {
                throw new FileNotFoundException(str);
            }
            String str2 = a08VarH.i;
            if (str2 == null) {
                throw new IOException("TeraBox file metadata did not contain dlink for path=".concat(str));
            }
            String strDecode = URLDecoder.decode(str2, f51.a.name());
            strDecode.getClass();
            String accessToken = this.c.getAccessToken();
            accessToken.getClass();
            HttpUrl.Builder builderG = HttpUrl.Companion.b(strDecode).g();
            builderG.d("access_tokens", accessToken);
            return y(builderG.e().h, t15Var);
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "get: ".concat(io4.b(e2)), null, 4, null);
            throw e2;
        }
    }

    @Override // defpackage.jh1
    public final CloudOperationsImpl$LoginResult d(boolean z) {
        h08 h08Var = this.d;
        if (!this.a.a() || (nq7.j0(this.c.getAccessToken()) && nq7.j0(this.c.getRefreshToken()))) {
            return CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE;
        }
        try {
            if (!h08Var.i(false)) {
                return CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE;
            }
            fl4 fl4VarF = h08Var.f(new e7(h08Var, 25));
            bb9.J(fl4VarF, "uk");
            bb9.J(fl4VarF, "uname");
            return new CloudOperationsImpl$LoginResult.Success();
        } catch (yz7 e2) {
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "login", e2, null, 8, null);
            return e2.a() ? CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE : new CloudOperationsImpl$LoginResult.TempConnectionError(e2);
        } catch (Exception e3) {
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "login", e3, null, 8, null);
            return new CloudOperationsImpl$LoginResult.TempConnectionError(e3);
        }
    }

    @Override // defpackage.jh1
    public final void e(c62 c62Var, String str, final long j, cz czVar) throws Exception {
        final h08 h08Var = this.d;
        String str2 = "";
        try {
            int i = 0;
            String strE0 = nq7.E0('/', nq7.I0(str, '/'), "");
            if (strE0.length() > 0) {
                u(strE0);
            }
            final String strZ = z(str);
            List listB = sl4.B(j);
            ArrayList arrayListT = t(c62Var, listB);
            gv7 gv7Var = w14.a;
            final String strI = w14.c().i(arrayListT);
            h08Var.getClass();
            fl4 fl4VarF = h08Var.f(new e08(i, h08Var, strZ, strI));
            bb9.J(fl4VarF, "path");
            String strJ = bb9.J(fl4VarF, "uploadid");
            if (strJ != null) {
                str2 = strJ;
            }
            if (nq7.j0(str2)) {
                if (czVar != null) {
                    czVar.invoke(Long.valueOf(j));
                    return;
                }
                return;
            }
            kh6 kh6Var = new kh6();
            BufferedInputStream bufferedInputStreamA = c62Var.a();
            try {
                int i2 = 0;
                for (Object obj : listB) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        fl1.F0();
                        throw null;
                    }
                    o08 o08Var = (o08) obj;
                    String str3 = str2;
                    String str4 = this.d.m(strZ, str3, o08Var, bufferedInputStreamA, new mm(5, kh6Var, czVar)).a;
                    String str5 = (String) arrayListT.get(i2);
                    if (!nq7.j0(str4) && !str4.equalsIgnoreCase(str5)) {
                        throw new IOException("TeraBox chunk MD5 mismatch at index=" + i2 + " expected=" + str5 + " actual=" + str4);
                    }
                    str2 = str3;
                    i2 = i3;
                }
                final String str6 = str2;
                bufferedInputStreamA.close();
                h08.k(h08Var.f(new mt3() { // from class: b08
                    @Override // defpackage.mt3
                    public final Object invoke(Object obj2) {
                        TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj2;
                        teraBoxTokenCredentials.getClass();
                        Request.Builder builder = new Request.Builder();
                        String apiDomain = teraBoxTokenCredentials.getApiDomain();
                        String accessToken = teraBoxTokenCredentials.getAccessToken();
                        h08Var.getClass();
                        builder.a = h08.a(apiDomain, "/openapi/api/create", accessToken);
                        FormBody.Builder builder2 = new FormBody.Builder(0);
                        builder2.a("path", strZ);
                        builder2.a("size", String.valueOf(j));
                        builder2.a("uploadid", str6);
                        builder2.a("block_list", strI);
                        builder2.a("rtype", "3");
                        builder.c("POST", builder2.c());
                        return new Request(builder);
                    }
                }));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(bufferedInputStreamA, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "put: ".concat(io4.b(e2)), null, 4, null);
            throw e2;
        }
    }

    @Override // defpackage.jh1
    public final pg1 f(String str) {
        str.getClass();
        try {
            a08 a08VarH = this.d.h(z(str), false);
            if (a08VarH != null) {
                return A(a08VarH);
            }
            return null;
        } catch (yz7 e2) {
            if (!e2.b()) {
                vr6.e$default(vr6.INSTANCE, "TeraBoxService", "getFile", e2, null, 8, null);
            }
            return null;
        } catch (Exception e3) {
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", dj7.l("getFile: Error while getting file at path=", str, ": ", io4.b(e3)), null, 4, null);
            return null;
        }
    }

    @Override // defpackage.jh1
    public final dd1 g() {
        return this.b;
    }

    @Override // defpackage.jh1
    public final synchronized void h(String str) {
        str.getClass();
        try {
            u(str);
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "createDirectory", e2, null, 8, null);
        }
    }

    @Override // defpackage.jh1
    public final boolean i() {
        TeraBoxTokenCredentials.Companion.getClass();
        dd1 dd1Var = this.b;
        dd1Var.getClass();
        String strA = m08.a(dd1Var);
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
            this.d.d(z(str));
        } catch (yz7 e2) {
            if (e2.b()) {
                return;
            }
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "delete", e2, null, 8, null);
        } catch (Exception e3) {
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "delete", e3, null, 8, null);
        }
    }

    @Override // defpackage.jh1
    public final boolean k() {
        TeraBoxTokenCredentials.Companion.getClass();
        TeraBoxTokenCredentials teraBoxTokenCredentialsB = m08.b(this.b);
        this.c = teraBoxTokenCredentialsB;
        return (nq7.j0(teraBoxTokenCredentialsB.getAccessToken()) && nq7.j0(teraBoxTokenCredentialsB.getRefreshToken())) ? false : true;
    }

    @Override // defpackage.jh1
    public final ni1 l() {
        try {
            h08 h08Var = this.d;
            h08Var.getClass();
            fl4 fl4VarF = h08Var.f(new hj(h08Var, 28));
            return new ni1(bb9.z(fl4VarF, "used"), bb9.z(fl4VarF, "total"));
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "getQuota", e2, null, 8, null);
            return new ni1(null, null);
        }
    }

    @Override // defpackage.jh1
    public final boolean m() {
        return this.c.isValid();
    }

    @Override // defpackage.jh1
    public final String n() {
        return "TeraBoxService";
    }

    @Override // defpackage.jh1
    public final ih1 o(String str) {
        try {
            a08 a08VarH = this.d.h(z(str), false);
            return (a08VarH != null ? A(a08VarH) : null) != null ? ih1.Exists : ih1.Missing;
        } catch (yz7 e2) {
            if (e2.b()) {
                return ih1.Missing;
            }
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "getMetadataPathExistence: Unable to check metadata path=".concat(str), e2, null, 8, null);
            return ih1.Unknown;
        } catch (Exception e3) {
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "getMetadataPathExistence: Unable to check metadata path=".concat(str), e3, null, 8, null);
            return ih1.Unknown;
        }
    }

    @Override // defpackage.jh1
    public final String p() {
        return this.c.getEmailAddressValue();
    }

    @Override // defpackage.jh1
    public final hh1 q(String str) {
        fh1 fh1Var = fh1.a;
        str.getClass();
        try {
            return new gh1(w(str));
        } catch (yz7 e2) {
            if (e2.b()) {
                return new gh1(ov2.a);
            }
            Log.e("TeraBoxService", "listMetadataDirectory", e2);
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "listMetadataDirectory: ".concat(io4.b(e2)), null, 4, null);
            return fh1Var;
        } catch (Exception e3) {
            Log.e("TeraBoxService", "listMetadataDirectory", e3);
            vr6.e$default(vr6.INSTANCE, "TeraBoxService", "listMetadataDirectory: ".concat(io4.b(e3)), null, 4, null);
            return fh1Var;
        }
    }

    @Override // defpackage.jh1
    public final boolean r(String str) {
        str.getClass();
        return f(str) != null;
    }

    @Override // defpackage.jh1
    public final List s(String str) {
        str.getClass();
        try {
            return w(str);
        } catch (Exception e2) {
            if (!(e2 instanceof yz7) || !((yz7) e2).b()) {
                Log.e("TeraBoxService", "list", e2);
                vr6.e$default(vr6.INSTANCE, "TeraBoxService", "list: ".concat(io4.b(e2)), null, 4, null);
            }
            return ov2.a;
        }
    }

    public final synchronized void u(String str) {
        try {
            String strI0 = nq7.I0(str, '/');
            if (!nq7.j0(strI0) && !v(strI0)) {
                String strY0 = "";
                List listW0 = nq7.w0(strI0, new char[]{'/'}, 6);
                ArrayList arrayList = new ArrayList();
                for (Object obj : listW0) {
                    if (!nq7.j0((String) obj)) {
                        arrayList.add(obj);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    List listA0 = fl1.A0(strY0, (String) it.next());
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : listA0) {
                        if (!nq7.j0((String) obj2)) {
                            arrayList2.add(obj2);
                        }
                    }
                    strY0 = el1.Y0(arrayList2, "/", null, null, null, 62);
                    if (!v(strY0)) {
                        String strZ = z(strY0);
                        Log.d("TeraBoxService", "createDirImpl: Creating directory=" + strZ);
                        try {
                            h08 h08Var = this.d;
                            h08Var.getClass();
                            h08Var.f(new bz(8, h08Var, strZ));
                        } catch (yz7 e2) {
                            Integer num = e2.b;
                            if (num == null || num.intValue() != -8) {
                                throw e2;
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean v(String str) throws yz7 {
        try {
            a08 a08VarH = this.d.h(z(str), false);
            return a08VarH != null && a08VarH.e;
        } catch (yz7 e2) {
            if (e2.b()) {
                return false;
            }
            throw e2;
        }
    }

    public final ArrayList w(String str) {
        boolean z;
        final String strZ = z(str);
        ArrayList arrayList = new ArrayList();
        final int i = 1;
        do {
            final h08 h08Var = this.d;
            h08Var.getClass();
            fl4 fl4VarF = h08Var.f(new mt3() { // from class: c08
                @Override // defpackage.mt3
                public final Object invoke(Object obj) {
                    TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj;
                    teraBoxTokenCredentials.getClass();
                    Request.Builder builder = new Request.Builder();
                    String apiDomain = teraBoxTokenCredentials.getApiDomain();
                    String accessToken = teraBoxTokenCredentials.getAccessToken();
                    h08Var.getClass();
                    HttpUrl.Builder builderG = h08.a(apiDomain, "/openapi/api/list", accessToken).g();
                    builderG.d("dir", strZ);
                    builderG.d("page", String.valueOf(i));
                    builderG.d("num", String.valueOf(100));
                    builderG.d("order", "name");
                    builderG.d("desc", "0");
                    builderG.d("web", "1");
                    builder.a = builderG.e();
                    builder.b();
                    return new Request(builder);
                }
            });
            qj4 qj4VarX = fl4VarF.x("info");
            List list = null;
            if (qj4VarX != null) {
                xi4 xi4VarG = qj4VarX.g();
                ArrayList arrayList2 = new ArrayList();
                Iterator it = xi4VarG.a.iterator();
                while (it.hasNext()) {
                    fl4 fl4VarK = bb9.k((qj4) it.next());
                    a08 a08VarK = fl4VarK != null ? h08.k(fl4VarK) : null;
                    if (a08VarK != null) {
                        arrayList2.add(a08VarK);
                    }
                }
                list = arrayList2;
            }
            if (list == null) {
                list = ov2.a;
            }
            Integer numW = bb9.w(fl4VarF, "has_more");
            z = numW != null && numW.intValue() == 1;
            el1.K0(list, arrayList);
            i++;
        } while (z);
        ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add(A((a08) it2.next()));
        }
        return arrayList3;
    }

    public final String z(String str) {
        str.getClass();
        String strI0 = nq7.I0(str, '/');
        List listW0 = nq7.w0(strI0, new char[]{'/'}, 6);
        if (!listW0.isEmpty()) {
            Iterator it = listW0.iterator();
            while (it.hasNext()) {
                if (pe4.d((String) it.next(), "..")) {
                    f6.g("TeraBox path cannot contain traversal segments: ".concat(str));
                    return null;
                }
            }
        }
        List listA0 = fl1.A0(dj7.l("/From: Other Applications/", nq7.H0("Swift Backup").toString(), "-", nq7.H0("").toString()), strI0);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA0) {
            if (!nq7.j0((String) obj)) {
                arrayList.add(obj);
            }
        }
        return el1.Y0(arrayList, "/", null, null, null, 62);
    }

    @Override // defpackage.jh1
    public final void b() {
    }
}
