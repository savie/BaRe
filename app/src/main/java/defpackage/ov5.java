package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import com.pcloud.sdk.internal.a;
import com.pcloud.sdk.internal.d;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;
import org.swiftapps.swiftbackup.cloud.protocols.TokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ov5 implements jh1 {
    public TokenCredentials a = new TokenCredentials(null, null, null, null, 15, null);
    public final dd1 b = dd1.PCloud;
    public mv5 c;

    public static boolean w(String str) {
        int i;
        char c = mc3.a;
        if (c == '\\') {
            int iLastIndexOf = str.lastIndexOf(c);
            int iLastIndexOf2 = str.lastIndexOf(mc3.b);
            if (iLastIndexOf == -1) {
                i = iLastIndexOf2 == -1 ? 0 : iLastIndexOf2 + 1;
            } else {
                if (iLastIndexOf2 != -1) {
                    iLastIndexOf = Math.max(iLastIndexOf, iLastIndexOf2);
                }
                i = iLastIndexOf + 1;
            }
            if (str.indexOf(58, i) != -1) {
                c6.f("NTFS ADS separator (':') in file name is forbidden.");
                return false;
            }
        }
        int iLastIndexOf3 = str.lastIndexOf(46);
        if (Math.max(str.lastIndexOf(47), str.lastIndexOf(92)) > iLastIndexOf3) {
            iLastIndexOf3 = -1;
        }
        return !((iLastIndexOf3 == -1 ? "" : str.substring(iLastIndexOf3 + 1)).length() == 0);
    }

    public static boolean x(Exception exc) {
        if (!(exc instanceof qe)) {
            return false;
        }
        int i = ((qe) exc).a;
        return i == 2055 || i == 2005;
    }

    public final void A(String str, final String str2) throws Exception {
        final String strB = B(str);
        final String strB2 = B(str2);
        bt3 bt3Var = new bt3() { // from class: lv5
            @Override // defpackage.bt3
            public final Object invoke() {
                String strE0 = nq7.E0('/', nq7.I0(str2, '/'), "");
                int length = strE0.length();
                ov5 ov5Var = this.a;
                if (length > 0) {
                    ov5Var.t(strE0);
                }
                String str3 = strB2;
                boolean zW = ov5.w(str3);
                String str4 = strB;
                if (zW) {
                    a aVar = (a) ov5Var.u();
                    a.j(str4, "path");
                    a.j(str3, "toPath");
                    FormBody.Builder builder = new FormBody.Builder(0);
                    builder.b("path", str4);
                    builder.b("topath", str3);
                    FormBody formBodyC = builder.c();
                    Request.Builder builderI = aVar.i();
                    HttpUrl.Builder builderG = aVar.c.g();
                    builderG.c("renamefile");
                    builderI.a = builderG.e();
                    builderI.c("POST", formBodyC);
                    return aVar.h(new Request(builderI), new lb(aVar)).a();
                }
                a aVar2 = (a) ov5Var.u();
                a.j(str4, "path");
                a.j(str3, "toPath");
                FormBody.Builder builder2 = new FormBody.Builder(0);
                builder2.b("path", str4);
                builder2.b("topath", str3);
                FormBody formBodyC2 = builder2.c();
                Request.Builder builderI2 = aVar2.i();
                HttpUrl.Builder builderG2 = aVar2.c.g();
                builderG2.c("renamefolder");
                builderI2.a = builderG2.e();
                builderI2.c("POST", formBodyC2);
                return aVar2.h(new Request(builderI2), new gb(aVar2, 7));
            }
        };
        Exception exc = null;
        for (int i = 0; i < 5; i++) {
            try {
                bt3Var.invoke();
                return;
            } catch (Exception e) {
                exc = e;
            }
        }
        if (exc != null) {
            throw exc;
        }
        try {
            throw new RuntimeException("Failed action with tag=move after retries=5");
        } catch (Exception e2) {
            String strL = dj7.l("move: Error while moving file from path=", str, " to newPath=", str2);
            Log.e("PCloudService", strL, e2);
            vr6.e$default(vr6.INSTANCE, "PCloudService", dj7.k(strL, ": ", io4.b(e2)), null, 4, null);
        }
    }

    public final String B(String str) {
        str.getClass();
        return xs1.j("/", nq7.I0(str, '/'));
    }

    @Override // defpackage.jh1
    public final tc4 c(String str, t15 t15Var) throws Exception {
        str.getClass();
        try {
            w01 w01Var = new w01(13, this, str);
            int i = 0;
            while (true) {
                int i2 = 4;
                if (i >= 4) {
                    throw new IllegalStateException("Unreachable retry state");
                }
                try {
                    uf6 uf6Var = (uf6) w01Var.invoke();
                    tb1 tb1Var = tb1.a;
                    String string = ((URL) uf6Var.b.get(0)).toString();
                    string.getClass();
                    Response responseK = qb1.k(string, t15Var);
                    return new tc4(responseK.k.a(), new ji1(0, responseK, Response.class, "close", "close()V", 0, 3), i2);
                } catch (Exception e) {
                    if (!(e instanceof qe) || ((qe) e).a != 2009 || i == 3) {
                        throw e;
                    }
                    Thread.sleep(500L);
                    i++;
                }
            }
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "PCloudService", dj7.l("get: Error when calling get(path: '", str, "'): ", io4.b(e2)), null, 4, null);
            throw e2;
        }
    }

    @Override // defpackage.jh1
    public final CloudOperationsImpl$LoginResult d(boolean z) {
        return z();
    }

    @Override // defpackage.jh1
    public final void e(c62 c62Var, String str, long j, cz czVar) throws Exception {
        String strE0 = nq7.E0('/', nq7.I0(str, '/'), "");
        String strConcat = str.concat(".tmp");
        try {
            String strE1 = nq7.E0('/', nq7.I0(strConcat, '/'), "");
            if (strE1.length() > 0) {
                t(strE1);
            }
            nv5 nv5Var = new nv5(j, c62Var);
            try {
                nv5Var.close();
                A(strConcat, str);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(nv5Var, th);
                    throw th2;
                }
            }
        } catch (Exception e) {
            j(strConcat);
            vr6.e$default(vr6.INSTANCE, "PCloudService", "put: ".concat(io4.b(e)), null, 4, null);
            throw e;
        }
    }

    @Override // defpackage.jh1
    public final pg1 f(String str) {
        zi6 zi6VarV;
        str.getClass();
        try {
            String strE0 = nq7.E0('/', nq7.I0(str, '/'), "");
            try {
                zi6VarV = v(str);
            } catch (Exception e) {
                if (!x(e)) {
                    throw e;
                }
                zi6VarV = null;
            }
            if (zi6VarV != null) {
                return og1.d(zi6VarV, strE0);
            }
            return null;
        } catch (Exception e2) {
            String strConcat = "getFile: Error while getting file at path=".concat(str);
            Log.e("PCloudService", strConcat, e2);
            vr6.e$default(vr6.INSTANCE, "PCloudService", dj7.k(strConcat, ": ", io4.b(e2)), null, 4, null);
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
            t(str);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "PCloudService", "createDirectory", e, null, 8, null);
        }
    }

    @Override // defpackage.jh1
    public final boolean i() {
        TokenCredentials.Companion.getClass();
        dd1 dd1Var = this.b;
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
            Log.d("PCloudService", "Deleting ".concat(strB));
            if (w(strB)) {
            }
        } catch (Exception e) {
            if (x(e)) {
                return;
            }
            vr6.e$default(vr6.INSTANCE, "PCloudService", "delete", e, null, 8, null);
        }
    }

    @Override // defpackage.jh1
    public final boolean k() {
        TokenCredentials.Companion.getClass();
        TokenCredentials tokenCredentialsB = i58.b(this.b);
        this.a = tokenCredentialsB;
        return tokenCredentialsB.getToken().length() > 0;
    }

    @Override // defpackage.jh1
    public final ni1 l() {
        wf6 wf6Var;
        try {
            try {
                wf6Var = (wf6) ((a) u()).g().a();
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "PCloudService", "getUserInfo", e, null, 8, null);
                wf6Var = null;
            }
            if (wf6Var == null) {
                throw new RuntimeException("Unable to get user info");
            }
            return new ni1(Long.valueOf(wf6Var.e), Long.valueOf(wf6Var.d));
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "PCloudService", "getQuota", e2, null, 8, null);
            return new ni1(null, null);
        }
    }

    @Override // defpackage.jh1
    public final boolean m() {
        return this.a.isValid();
    }

    @Override // defpackage.jh1
    public final String n() {
        return "PCloudService";
    }

    @Override // defpackage.jh1
    public final ih1 o(String str) {
        try {
            v(str);
            return ih1.Exists;
        } catch (Exception e) {
            if (x(e)) {
                return ih1.Missing;
            }
            vr6.e$default(vr6.INSTANCE, "PCloudService", "getMetadataPathExistence: Unable to check metadata path=".concat(str), e, null, 8, null);
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
        } catch (Exception e) {
            if (x(e)) {
                return new gh1(ov2.a);
            }
            Log.e("PCloudService", "listMetadataDirectory", e);
            vr6.e$default(vr6.INSTANCE, "PCloudService", "listMetadataDirectory: ".concat(io4.b(e)), null, 4, null);
            return fh1.a;
        }
    }

    @Override // defpackage.jh1
    public final boolean r(String str) {
        zi6 zi6VarV;
        str.getClass();
        try {
            zi6VarV = v(str);
        } catch (Exception e) {
            try {
                if (!x(e)) {
                    throw e;
                }
                zi6VarV = null;
            } catch (Exception e2) {
                if (x(e2)) {
                    return false;
                }
                vr6.e$default(vr6.INSTANCE, "PCloudService", "exists", e2, null, 8, null);
                return false;
            }
        }
        return zi6VarV != null;
    }

    @Override // defpackage.jh1
    public final List s(String str) {
        str.getClass();
        try {
            return y(str);
        } catch (Exception e) {
            if (!x(e)) {
                Log.e("PCloudService", "list", e);
                vr6.e$default(vr6.INSTANCE, "PCloudService", "list: ".concat(io4.b(e)), null, 4, null);
            }
            return ov2.a;
        }
    }

    public final synchronized void t(String str) {
        zi6 zi6VarV;
        zi6 zi6VarV2;
        try {
            try {
                zi6VarV = v(str);
            } catch (Exception e) {
                if (!x(e)) {
                    throw e;
                }
                zi6VarV = null;
            }
            if (zi6VarV != null && zi6VarV.b()) {
                return;
            }
            List listW0 = nq7.w0(str, new char[]{'/'}, 6);
            if (listW0.size() > 1) {
                String str2 = "";
                Iterator it = listW0.iterator();
                while (it.hasNext()) {
                    str2 = str2 + "/" + ((String) it.next());
                    try {
                        zi6VarV2 = v(str2);
                    } catch (Exception e2) {
                        if (!x(e2)) {
                            throw e2;
                        }
                        zi6VarV2 = null;
                    }
                    if (!(zi6VarV2 != null && zi6VarV2.b())) {
                        ((a) u()).b(B(str2)).a();
                    }
                }
            } else {
                ((a) u()).b(B(str)).a();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final pe u() {
        mv5 mv5Var = this.c;
        String token = this.a.getToken();
        String string = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("pcloud_api_host", null);
            if (string == null) {
                string = "api.pcloud.com";
            }
            mv5 mv5Var2 = new mv5(token, string);
            if (pe4.d(mv5Var, mv5Var2)) {
                Object value = mv5Var.c.getValue();
                value.getClass();
                return (pe) value;
            }
            Log.i("PCloudService", "Generated new pCloud client");
            this.c = mv5Var2;
            Object value2 = mv5Var2.c.getValue();
            value2.getClass();
            return (pe) value2;
        } catch (ClassCastException unused) {
        }
    }

    public final zi6 v(String str) {
        String strB = B(str);
        if (w(strB)) {
            a aVar = (a) u();
            a.j(strB, null);
            HttpUrl.Builder builderG = aVar.c.g();
            builderG.c("stat");
            builderG.b("path", strB);
            Request.Builder builderI = aVar.i();
            builderI.a = builderG.e();
            builderI.b();
            return ((aj6) aVar.h(new Request(builderI), new sn1(aVar, 6)).a()).c();
        }
        a aVar2 = (a) u();
        a.j(strB, null);
        HttpUrl.Builder builderG2 = aVar2.c.g();
        builderG2.c("listfolder");
        builderG2.d("path", strB);
        builderG2.d("nofiles", String.valueOf(1));
        Request.Builder builderI2 = aVar2.i();
        builderI2.a = builderG2.e();
        builderI2.b();
        d dVar = (d) ((bj6) aVar2.h(new Request(builderI2), new nb(aVar2, 1)).a());
        dVar.getClass();
        return dVar;
    }

    public final ArrayList y(String str) {
        pe peVarU = u();
        String strB = B(str);
        a aVar = (a) peVarU;
        a.j(strB, null);
        HttpUrl.Builder builderG = aVar.c.g();
        builderG.c("listfolder");
        builderG.b("path", strB);
        Request.Builder builderI = aVar.i();
        builderI.a = builderG.e();
        builderI.b();
        List<zi6> listG = ((d) ((bj6) aVar.h(new Request(builderI), new cb(aVar)).a())).g();
        listG.getClass();
        ArrayList arrayList = new ArrayList(hl1.G0(listG, 10));
        for (zi6 zi6Var : listG) {
            zi6Var.getClass();
            arrayList.add(og1.d(zi6Var, str));
        }
        return arrayList;
    }

    public final CloudOperationsImpl$LoginResult z() {
        String string;
        if (this.a.getToken().length() == 0) {
            return CloudOperationsImpl$LoginResult.InvalidCredentials.INSTANCE;
        }
        try {
            ((a) u()).g().a();
            return new CloudOperationsImpl$LoginResult.Success();
        } catch (Exception e) {
            if (!(e instanceof qe) || ((qe) e).a != 2094) {
                vr6.e$default(vr6.INSTANCE, "PCloudService", "login", e, null, 8, null);
                return new CloudOperationsImpl$LoginResult.TempConnectionError(e);
            }
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                string = sharedPreferences.getString("pcloud_api_host", null);
                if (string == null) {
                    string = "api.pcloud.com";
                }
                String str = string.equals("api.pcloud.com") ? "eapi.pcloud.com" : "api.pcloud.com";
                SharedPreferences.Editor editor = cz4.k;
                if (editor != null) {
                    editor.putString("pcloud_api_host", str).apply();
                    return z();
                }
                pe4.F("editor");
                throw null;
            } catch (ClassCastException unused) {
                string = null;
            }
        }
    }

    @Override // defpackage.jh1
    public final void b() {
    }
}
