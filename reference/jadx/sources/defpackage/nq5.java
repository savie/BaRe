package defpackage;

import android.util.Log;
import com.microsoft.identity.client.SingleAccountPublicClientApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nq5 extends tb1 {
    public static SingleAccountPublicClientApplication j;
    public final dd1 g = dd1.OneDrive;
    public final st5 h = new st5(new jx(15), new hc1(5));
    public static final jq5 i = new jq5();
    public static final Object k = new Object();

    public static final pt5 q(nq5 nq5Var, String str) {
        st5 st5Var = nq5Var.h;
        st5Var.getClass();
        str.getClass();
        fl4 fl4Var = new fl4();
        fl4Var.u("name", str);
        fl4Var.u("@microsoft.graph.conflictBehavior", "fail");
        fl4Var.p("folder", new fl4());
        Request.Builder builder = new Request.Builder();
        builder.a = st5Var.r("/me/drive/root/children");
        RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
        builder.c("POST", RequestBody.Companion.a(fl4Var.toString(), st5.f));
        return st5.q(st5Var.f(new Request(builder)));
    }

    public static final pt5 r(nq5 nq5Var, String str) {
        Object next;
        st5 st5Var = nq5Var.h;
        List listA0 = fl1.A0("name", "id");
        st5Var.getClass();
        Iterator it = st5Var.i(st5Var.r("/me/drive/root/children"), listA0).iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((pt5) next).b.equals(str)) {
                return (pt5) next;
            }
        }
        next = null;
        return (pt5) next;
    }

    @Override // defpackage.tb1
    public final xh2 b(zv1 zv1Var) {
        return new pq5(new kq5(0, i, jq5.class, "ensureAccessToken", "ensureAccessToken(JZ)Z", 0), this.h, zv1Var);
    }

    @Override // defpackage.tb1
    public final no2 c(fo2 fo2Var) {
        fo2Var.getClass();
        return new qq5(new lq5(0, i, jq5.class, "ensureAccessToken", "ensureAccessToken(JZ)Z", 0), this.h, fo2Var);
    }

    @Override // defpackage.tb1
    public final ag8 d(rf8 rf8Var) {
        rf8Var.getClass();
        return new wq5(new mq5(0, i, jq5.class, "ensureAccessToken", "ensureAccessToken(JZ)Z", 0), this.h, rf8Var);
    }

    @Override // defpackage.tb1
    public final boolean e(String str) {
        String strK = dj7.k(this.g.getMainCloudFolderName(), "/", qb1.e());
        boolean z = true;
        try {
            vr6.i$default(vr6.INSTANCE, "OneDriveClient", "deleteTaggedBackups: Deleting folder=".concat(strK), null, 4, null);
            this.h.c(strK);
        } catch (Exception e) {
            boolean z2 = e instanceof mt5;
            if (z2 && ((mt5) e).a == 404) {
                vr6.e$default(vr6.INSTANCE, "OneDriveClient", "deleteTaggedBackups:: Item not found", null, 4, null);
                return true;
            }
            if (z2) {
                vr6.e$default(vr6.INSTANCE, "OneDriveClient", "deleteTaggedBackups:: ".concat(l73.E((mt5) e)), null, 4, null);
            }
            z = false;
        }
        if (z) {
            vr6.i$default(vr6.INSTANCE, "OneDriveClient", "deleteTaggedBackups: Successful", null, 4, null);
        }
        return z;
    }

    @Override // defpackage.tb1
    public final ui1 f() {
        return s(".cls (" + qb1.e() + ")", true);
    }

    @Override // defpackage.tb1
    public final dd1 g() {
        return this.g;
    }

    @Override // defpackage.tb1
    public final String h() {
        return "OneDriveClient";
    }

    @Override // defpackage.tb1
    public final ui1 j() {
        return s(".msg (" + qb1.e() + ")", true);
    }

    @Override // defpackage.tb1
    public final ui1 k() {
        return s(".wal", false);
    }

    @Override // defpackage.tb1
    public final ui1 l() {
        return s(".wfi", false);
    }

    @Override // defpackage.tb1
    public final jm1 m() {
        return !jq5.b(i, false, 3) ? new xa1(new IllegalStateException("OneDrive access token is unavailable")) : k55.i(this.g.getMainCloudFolderName(), qf1.CASE_INSENSITIVE_PATH, new w20(this, 19), new tc1(2));
    }

    @Override // defpackage.tb1
    public final CloudResult n() {
        String strP;
        st5 st5Var = this.h;
        Log.d("OneDriveClient", "startCheckAccess()");
        SwiftApp.Companion companion = SwiftApp.d;
        if (!ai8.i(SwiftApp.Companion.c())) {
            return qi1.a;
        }
        jq5 jq5Var = i;
        if (jq5Var.c() == null) {
            qb1.a();
            return new ri1();
        }
        if (!jq5.b(jq5Var, false, 3)) {
            Exception exc = new Exception("Acquiring token silently failed, signing out OneDrive!");
            vr6.e$default(vr6.INSTANCE, "OneDriveClient", xs1.j("startCheckAccess: ", exc.getMessage()), null, 4, null);
            qb1.a();
            return new oi1(exc, false);
        }
        Log.d("OneDriveClient", "startCheckAccess: OneDrive token available");
        String strJ = qb1.j();
        if (strJ == null || strJ.length() == 0) {
            try {
                strP = p();
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "OneDriveClient", "startCheckAccess.getOrCreateMainFolder", e, null, 8, null);
                if (e instanceof mt5) {
                    vr6.e$default(vr6.INSTANCE, "OneDriveClient", l73.E((mt5) e), null, 4, null);
                }
                strP = null;
            }
        } else {
            strP = qb1.j();
        }
        if (strP == null || strP.length() == 0) {
            vr6.e$default(vr6.INSTANCE, "OneDriveClient", "startCheckAccess: Null folder id!", null, 4, null);
            return pi1.a;
        }
        qb1.s(strP);
        try {
            qt5 qt5Var = st5Var.g().a;
            ni1 ni1Var = new ni1(qt5Var != null ? qt5Var.a : null, qt5Var != null ? qt5Var.b : null);
            String strH = st5Var.h();
            if (strH == null || strH.length() == 0) {
                throw new IllegalStateException("startCheckAccess: Email address null to uniquely identify the cloud drive!");
            }
            qb1.q(strH);
            return new si1(ni1Var, strH);
        } catch (Exception e2) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, "OneDriveClient", "startCheckAccess:.Getting quota", e2, null, 8, null);
            if (e2 instanceof mt5) {
                vr6.e$default(vr6Var, "OneDriveClient", l73.E((mt5) e2), null, 4, null);
            }
            return new oi1(e2, false);
        }
    }

    public final String o(String str) {
        qj4 qj4VarX;
        jq5.b(i, false, 3);
        st5 st5Var = this.h;
        st5Var.getClass();
        Request.Builder builder = new Request.Builder();
        builder.a = st5Var.r("/me/drive/root:/" + st5.m(str) + ":/thumbnails/0");
        builder.b();
        qj4 qj4VarX2 = st5Var.f(new Request(builder)).x("large");
        if (qj4VarX2 != null) {
            fl4 fl4VarI = !(qj4VarX2 instanceof fl4) ? null : qj4VarX2.i();
            if (fl4VarI != null && (qj4VarX = fl4VarI.x("url")) != null) {
                return st5.a(qj4VarX);
            }
        }
        return null;
    }

    public final synchronized String p() {
        String str;
        try {
            String mainCloudFolderName = this.g.getMainCloudFolderName();
            pt5 pt5VarR = r(this, mainCloudFolderName);
            if (pt5VarR != null) {
                Log.d("OneDriveClient: getOrCreateMainFolder", "Main folder already exists: " + pt5VarR.b + ", id:" + pt5VarR.a);
                str = pt5VarR.a;
            } else {
                vr6 vr6Var = vr6.INSTANCE;
                vr6.i$default(vr6Var, "OneDriveClient: getOrCreateMainFolder", "Main folder not found, Creating folder", null, 4, null);
                String str2 = q(this, mainCloudFolderName).a;
                vr6.i$default(vr6Var, "OneDriveClient", "Main folder created: " + mainCloudFolderName + ", id:" + str2, null, 4, null);
                str = str2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return str;
    }

    public final ui1 s(String str, boolean z) {
        Exception exc;
        ArrayList arrayList = new ArrayList();
        String mainCloudFolderName = this.g.getMainCloudFolderName();
        try {
            jq5.b(i, false, 3);
            if (z) {
                mainCloudFolderName = mainCloudFolderName + "/" + qb1.e();
            }
            st5 st5Var = this.h;
            List listX0 = nq7.x0("name, id, parentReference, size, createdDateTime, lastModifiedDateTime", new String[]{","}, 6);
            ArrayList arrayList2 = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList2.add(nq7.H0((String) it.next()).toString());
            }
            arrayList.addAll(st5Var.j(mainCloudFolderName, arrayList2));
            exc = null;
        } catch (Exception e) {
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, "OneDriveClient", "search: ", e, null, 8, null);
            if (e instanceof mt5) {
                vr6.e$default(vr6Var, "OneDriveClient", l73.E((mt5) e), null, 4, null);
            }
            exc = e;
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList) {
            if (nq7.Z(((pt5) obj).b, str, false)) {
                arrayList3.add(obj);
            }
        }
        Log.d("OneDriveClient", dj7.j("search: ", arrayList3.size(), "/", " valid drive files found", arrayList.size()));
        return new ui1(exc, arrayList3.isEmpty() ? ov2.a : og1.c(arrayList3));
    }
}
