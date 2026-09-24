package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b82 extends tb1 {
    public static final Object i = new Object();
    public final dd1 g = dd1.Dropbox;
    public final br2 h;

    public b82() {
        int i2 = 0;
        this.h = new br2(new rk(0, this, b82.class, "accessToken", "accessToken()Ljava/lang/String;", i2, 1), new ae1(1, this, b82.class, "forceRefreshAccessToken", "forceRefreshAccessToken(Ljava/lang/String;)Ljava/lang/String;", i2, 3), 60);
    }

    public static String o(String str) {
        synchronized (i) {
            nq2 nq2VarM = lg7.m();
            String str2 = null;
            if (nq2VarM == null) {
                return null;
            }
            if (str != null && !str.equals(nq2VarM.a) && !nq2.a(nq2VarM)) {
                return nq2VarM.a;
            }
            String str3 = nq2VarM.c;
            if (str3 == null) {
                return null;
            }
            String str4 = nq2VarM.d;
            if (str4 == null) {
                str4 = "mzc5bxvbe0960q1";
            }
            String str5 = str4;
            try {
                Map mapSingletonMap = Collections.singletonMap("token_access_type", "offline");
                mapSingletonMap.getClass();
                uj ujVar = new uj("https://www.dropbox.com/oauth2/authorize", "https://api.dropboxapi.com/oauth2/token", str5, "db-" + str5 + "://1/connect", null, mapSingletonMap, null, 208);
                SwiftApp.Companion companion = SwiftApp.d;
                vj vjVarC = ujVar.c(SwiftApp.Companion.c(), str3);
                nq2 nq2VarB = nq2.b(nq2VarM, null, null, null, str5, 23);
                String str6 = vjVarC.a;
                Long l = vjVarC.b;
                String str7 = vjVarC.c;
                if (str7 == null) {
                    str7 = nq2VarB.c;
                } else {
                    if (nq7.j0(str7)) {
                        str7 = null;
                    }
                    if (str7 == null) {
                        str7 = nq2VarB.c;
                    }
                }
                nq2 nq2VarB2 = nq2.b(nq2VarB, str6, l, str7, null, 24);
                String string = nq2VarB2.toString();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putString("dropbox_credential", string).apply();
                vr6.i$default(vr6.INSTANCE, "DropboxClient", "Token refresh successful", null, 4, null);
                str2 = nq2VarB2.a;
                return str2;
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "DropboxClient", "Failed refreshing token: ".concat(io4.b(e)), null, 4, null);
            }
        }
    }

    public static final wq2 q(b82 b82Var, String str) {
        Object next;
        br2 br2Var = b82Var.h;
        br2Var.getClass();
        List list = br2Var.f("").a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof wq2) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((wq2) next).b.equals(str)) {
                return (wq2) next;
            }
        }
        next = null;
        return (wq2) next;
    }

    @Override // defpackage.tb1
    public final xh2 b(zv1 zv1Var) {
        br2 br2Var = this.h;
        br2Var.getClass();
        return new c82(br2Var, zv1Var);
    }

    @Override // defpackage.tb1
    public final no2 c(fo2 fo2Var) {
        fo2Var.getClass();
        br2 br2Var = this.h;
        br2Var.getClass();
        return new d82(br2Var, fo2Var);
    }

    @Override // defpackage.tb1
    public final ag8 d(rf8 rf8Var) {
        rf8Var.getClass();
        br2 br2Var = this.h;
        br2Var.getClass();
        return new n92(br2Var, rf8Var);
    }

    @Override // defpackage.tb1
    public final boolean e(String str) {
        String strL = dj7.l("/", this.g.getMainCloudFolderName(), "/", qb1.e());
        boolean z = true;
        try {
            vr6.i$default(vr6.INSTANCE, "DropboxClient", "deleteTaggedBackups: Deleting folder=".concat(strL), null, 4, null);
            br2 br2Var = this.h;
            br2Var.getClass();
            fl4 fl4Var = new fl4();
            fl4Var.u("path", strL);
            br2Var.e(fl4Var, "/2/files/delete_v2");
        } catch (Exception e) {
            if ((e instanceof kq2) && ((kq2) e).c()) {
                return true;
            }
            vr6 vr6Var = vr6.INSTANCE;
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            vr6.e$default(vr6Var, "DropboxClient", "deleteTaggedBackups: ".concat(message), null, 4, null);
            z = false;
        }
        if (z) {
            vr6.i$default(vr6.INSTANCE, "DropboxClient", "deleteTaggedBackups: Successful", null, 4, null);
        }
        return z;
    }

    @Override // defpackage.tb1
    public final ui1 f() {
        return r(".cls (" + qb1.e() + ")", true);
    }

    @Override // defpackage.tb1
    public final dd1 g() {
        return this.g;
    }

    @Override // defpackage.tb1
    public final String h() {
        return "DropboxClient";
    }

    @Override // defpackage.tb1
    public final ui1 j() {
        return r(".msg (" + qb1.e() + ")", true);
    }

    @Override // defpackage.tb1
    public final ui1 k() {
        return r(".wal", false);
    }

    @Override // defpackage.tb1
    public final ui1 l() {
        return r(".wfi", false);
    }

    @Override // defpackage.tb1
    public final jm1 m() {
        return k55.i(this.g.getMainCloudFolderName(), qf1.CASE_INSENSITIVE_PATH, new cz(this, 5), new qc1(3));
    }

    @Override // defpackage.tb1
    public final CloudResult n() {
        String strP;
        br2 br2Var = this.h;
        Log.d("DropboxClient", "startCheckAccess()");
        SwiftApp.Companion companion = SwiftApp.d;
        if (!ai8.i(SwiftApp.Companion.c())) {
            return qi1.a;
        }
        if (lg7.m() == null) {
            qb1.a();
            return new oi1(new RuntimeException("Null credentials!"), false);
        }
        String strJ = qb1.j();
        if (strJ == null || strJ.length() == 0) {
            try {
                strP = p();
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "DropboxClient", "folderId", e, null, 8, null);
                strP = null;
            }
        } else {
            strP = qb1.j();
        }
        if (strP == null || strP.length() == 0) {
            vr6.e$default(vr6.INSTANCE, "DropboxClient", "startCheckAccess: Null folder id!", null, 4, null);
            return pi1.a;
        }
        qb1.s(strP);
        try {
            br2Var.getClass();
            fl4 fl4VarE = br2Var.e(null, "/2/users/get_current_account");
            String strH = jd4.H(fl4VarE, "account_id");
            if (strH == null) {
                strH = "";
            }
            jq2 jq2Var = new jq2(strH, jd4.H(fl4VarE, "email"));
            er2 er2Var = (er2) new sh(4).invoke(br2Var);
            ni1 ni1Var = new ni1(Long.valueOf(er2Var.a), er2Var.b);
            String str = jq2Var.b;
            if (str == null || str.length() == 0) {
                throw new IllegalStateException("startCheckAccess: Email address null to uniquely identify the cloud drive!");
            }
            qb1.q(str);
            return new si1(ni1Var, str);
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "DropboxClient", "startCheckAccess: ".concat(yc9.g0(e2)), null, 4, null);
            return new ti1(e2);
        }
    }

    public final synchronized String p() {
        String str;
        try {
            Log.d("DropboxClient", "getOrCreateMainFolder");
            String mainCloudFolderName = this.g.getMainCloudFolderName();
            wq2 wq2VarQ = q(this, mainCloudFolderName);
            if (wq2VarQ != null) {
                Log.d("DropboxClient", "Main folder already exists: " + wq2VarQ.a);
                str = wq2VarQ.a;
            } else {
                Log.d("DropboxClient", "Main folder not found, Creating folder");
                String str2 = ((wq2) new v10("/" + mainCloudFolderName, 8).invoke(this.h)).a;
                Log.d("DropboxClient", "Main folder created: " + str2);
                str = str2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0091  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00da  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:44:0x00fb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:56:0x0099 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x008b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0100 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r10v6, types: [ov2] */
    public final ui1 r(String str, boolean z) {
        ArrayList arrayList;
        ArrayList<vq2> arrayList2;
        ?? arrayList3;
        String str2;
        String str3;
        br2 br2Var = this.h;
        ArrayList arrayList4 = new ArrayList();
        String mainCloudFolderName = this.g.getMainCloudFolderName();
        try {
            String str4 = z ? "/" + mainCloudFolderName + "/" + qb1.e() : "/" + mainCloudFolderName;
            br2Var.getClass();
            yq2 yq2VarF = br2Var.f(str4);
            arrayList4.addAll(yq2VarF.a);
            while (yq2VarF.c) {
                br2Var.getClass();
                String str5 = yq2VarF.b;
                if (str5 == null) {
                    str5 = "";
                }
                fl4 fl4Var = new fl4();
                fl4Var.u("cursor", str5);
                yq2VarF = br2.m(br2Var.e(fl4Var, "/2/files/list_folder/continue"));
                arrayList4.addAll(yq2VarF.a);
            }
        } catch (Exception e) {
            e = e;
            Log.e("DropboxClient", "search: ", e);
            if (z && (e instanceof kq2) && ((kq2) e).c()) {
            }
            arrayList = new ArrayList();
            for (Object obj : arrayList4) {
                if (obj instanceof vq2) {
                    arrayList.add(obj);
                }
            }
            arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                if (nq7.Z(((vq2) obj2).b, str, false)) {
                    arrayList2.add(obj2);
                }
            }
            Log.d("DropboxClient", dj7.j("search: ", arrayList2.size(), "/", " valid drive files found", arrayList4.size()));
            if (arrayList2.isEmpty()) {
                arrayList3 = ov2.a;
            } else {
                arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
                for (vq2 vq2Var : arrayList2) {
                    str2 = vq2Var.a;
                    str3 = vq2Var.f;
                    if (str2 != null) {
                        if (str3 == null) {
                            str2 = "";
                        } else {
                            str2 = str3;
                        }
                    }
                    pg1 pg1Var = new pg1(vq2Var.b, str2);
                    pg1Var.c = vq2Var.c;
                    pg1Var.d = vq2Var.d;
                    pg1Var.e = vq2Var.e;
                    pg1Var.f = str3;
                    arrayList3.add(pg1Var);
                }
            }
            return new ui1(e, arrayList3);
        }
        e = null;
        arrayList = new ArrayList();
        while (r0.hasNext()) {
            if (obj instanceof vq2) {
                arrayList.add(obj);
            }
        }
        arrayList2 = new ArrayList();
        while (r11.hasNext()) {
            if (nq7.Z(((vq2) obj2).b, str, false)) {
                arrayList2.add(obj2);
            }
        }
        Log.d("DropboxClient", dj7.j("search: ", arrayList2.size(), "/", " valid drive files found", arrayList4.size()));
        if (arrayList2.isEmpty()) {
            arrayList3 = ov2.a;
        } else {
            arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
            while (r11.hasNext()) {
                str2 = vq2Var.a;
                str3 = vq2Var.f;
                if (str2 != null) {
                    if (str3 == null) {
                        str2 = "";
                    } else {
                        str2 = str3;
                    }
                }
                pg1 pg1Var2 = new pg1(vq2Var.b, str2);
                pg1Var2.c = vq2Var.c;
                pg1Var2.d = vq2Var.d;
                pg1Var2.e = vq2Var.e;
                pg1Var2.f = str3;
                arrayList3.add(pg1Var2);
            }
        }
        return new ui1(e, arrayList3);
    }
}
