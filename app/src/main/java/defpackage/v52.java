package defpackage;

import android.util.Log;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class v52 extends tb1 {
    public final jh1 g;
    public final bt3 h;
    public final mt3 i;
    public final dd1 j;
    public final String k;

    public v52(jh1 jh1Var) {
        fj fjVar = new fj(jh1Var, 21);
        nk nkVar = new nk(7);
        this.g = jh1Var;
        this.h = fjVar;
        this.i = nkVar;
        dd1 dd1VarG = jh1Var.g();
        this.j = dd1VarG;
        this.k = "CsClient." + dd1VarG;
    }

    @Override // defpackage.tb1
    public final xh2 b(zv1 zv1Var) {
        return new w52(o(), zv1Var);
    }

    @Override // defpackage.tb1
    public final no2 c(fo2 fo2Var) {
        fo2Var.getClass();
        return new a62(o(), fo2Var);
    }

    @Override // defpackage.tb1
    public final ag8 d(rf8 rf8Var) {
        rf8Var.getClass();
        return new g62(o(), rf8Var);
    }

    @Override // defpackage.tb1
    public final boolean e(String str) {
        zz4 zz4VarB = uz4.b(o());
        boolean z = false;
        if (zz4VarB != null) {
            vr6.e$default(vr6.INSTANCE, this.k, xs1.j("deleteTaggedBackups: ", zz4VarB.getMessage()), null, 4, null);
            return false;
        }
        String strN = u48.n(this.j.getMainCloudFolderName(), "/", qb1.e(), "/");
        try {
            vr6.i$default(vr6.INSTANCE, this.k, "deleteTaggedBackups: Deleting folder=".concat(strN), null, 4, null);
            if (o().r(strN)) {
                o().j(strN);
            }
            z = true;
        } catch (Exception e) {
            Exception exc = e;
            zz4 zz4VarD = uz4.d(o(), exc);
            if (zz4VarD != null) {
                exc = zz4VarD;
            }
            vr6.e$default(vr6.INSTANCE, this.k, "deleteTaggedBackups: ".concat(io4.b(exc)), null, 4, null);
        }
        if (z) {
            vr6.i$default(vr6.INSTANCE, this.k, "deleteTaggedBackups: Successful", null, 4, null);
        }
        return z;
    }

    @Override // defpackage.tb1
    public final ui1 f() {
        return p(".cls (" + qb1.e() + ")", true);
    }

    @Override // defpackage.tb1
    public final dd1 g() {
        return this.j;
    }

    @Override // defpackage.tb1
    public final String h() {
        return this.k;
    }

    @Override // defpackage.tb1
    public final ui1 j() {
        return p(".msg (" + qb1.e() + ")", true);
    }

    @Override // defpackage.tb1
    public final ui1 k() {
        return p(".wal", false);
    }

    @Override // defpackage.tb1
    public final ui1 l() {
        return p(".wfi", false);
    }

    @Override // defpackage.tb1
    public final jm1 m() {
        Exception exc = (Exception) this.i.invoke(o());
        return exc != null ? new xa1(exc) : k55.i((String) this.h.invoke(), qf1.CASE_SENSITIVE_PATH, new hj(this, 12), new wc1(2));
    }

    @Override // defpackage.tb1
    public final CloudResult n() {
        zz4 zz4VarB;
        String str = this.k;
        Log.d(str, "startCheckAccess()");
        try {
            boolean zK = this.g.k();
            if (zK && (zz4VarB = uz4.b(o())) != null) {
                vr6.e$default(vr6.INSTANCE, this.k, xs1.j("startCheckAccess: ", zz4VarB.getMessage()), null, 4, null);
                return new ti1(zz4VarB);
            }
            SwiftApp.Companion companion = SwiftApp.d;
            if (!ai8.i(SwiftApp.Companion.c())) {
                Log.e(str, "Network not available!");
                return qi1.a;
            }
            if (!qb1.m() || !zK) {
                RuntimeException runtimeException = new RuntimeException("isConnected=" + qb1.m() + ", validCredentials=" + zK + ". Signing out " + o().g() + "!");
                vr6.e$default(vr6.INSTANCE, this.k, xs1.j("startCheckAccess: ", runtimeException.getMessage()), null, 4, null);
                qb1.a();
                return new oi1(runtimeException, false);
            }
            CloudOperationsImpl$LoginResult cloudOperationsImpl$LoginResultD = o().d(true);
            if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.Success) {
                Log.d(str, "startCheckAccess: Login successful");
                String strJ = qb1.j();
                if (strJ == null) {
                    strJ = eh1.d(o());
                }
                if (strJ == null || strJ.length() == 0) {
                    vr6.e$default(vr6.INSTANCE, this.k, "startCheckAccess: Null folder id!", null, 4, null);
                    return pi1.a;
                }
                qb1.s(strJ);
                try {
                    ni1 ni1VarL = o().l();
                    String strP = o().p();
                    qb1.q(strP);
                    return new si1(ni1VarL, strP);
                } catch (Exception e) {
                    Log.e(str, "startCheckAccess:", e);
                    vr6 vr6Var = vr6.INSTANCE;
                    vr6.e$default(vr6Var, this.k, "startCheckAccess: " + e, null, 4, null);
                    zz4 zz4VarD = uz4.d(o(), e);
                    if (zz4VarD == null) {
                        return new ti1(e);
                    }
                    vr6.e$default(vr6Var, this.k, xs1.j("startCheckAccess: ", zz4VarD.getMessage()), null, 4, null);
                    return new ti1(zz4VarD);
                }
            }
            if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.Failed) {
                Exception exc = new Exception("Login failed!");
                vr6 vr6Var2 = vr6.INSTANCE;
                vr6.e$default(vr6Var2, this.k, xs1.j("startCheckAccess: ", exc.getMessage()), null, 4, null);
                Exception e2 = cloudOperationsImpl$LoginResultD.getE();
                vr6.e$default(vr6Var2, this.k, xs1.j("Failed exception = ", e2 != null ? io4.b(e2) : null), null, 4, null);
                qb1.a();
                return new oi1(exc, false);
            }
            if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.InvalidCredentials) {
                zf4 zf4Var = new zf4();
                vr6 vr6Var3 = vr6.INSTANCE;
                vr6.e$default(vr6Var3, this.k, "startCheckAccess: Invalid login details!", null, 4, null);
                Exception e3 = cloudOperationsImpl$LoginResultD.getE();
                vr6.e$default(vr6Var3, this.k, xs1.j("InvalidCredentials exception = ", e3 != null ? io4.b(e3) : null), null, 4, null);
                qb1.a();
                return new oi1(zf4Var, false);
            }
            if (cloudOperationsImpl$LoginResultD instanceof CloudOperationsImpl$LoginResult.UnknownError) {
                vr6 vr6Var4 = vr6.INSTANCE;
                Exception e4 = cloudOperationsImpl$LoginResultD.getE();
                vr6.e$default(vr6Var4, this.k, xs1.j("startCheckAccess: ", e4 != null ? io4.b(e4) : null), null, 4, null);
                qb1.a();
                Exception e5 = cloudOperationsImpl$LoginResultD.getE();
                if (e5 == null) {
                    e5 = new IllegalStateException("Unknown error");
                }
                return new oi1(e5, false);
            }
            Exception e6 = cloudOperationsImpl$LoginResultD.getE();
            if (e6 == null) {
                e6 = new IllegalStateException("Unknown error");
            }
            vr6 vr6Var5 = vr6.INSTANCE;
            vr6.e$default(vr6Var5, this.k, "startCheckAccess: ".concat(io4.b(e6)), null, 4, null);
            zz4 zz4VarD2 = uz4.d(o(), e6);
            if (zz4VarD2 == null) {
                return new ti1(e6);
            }
            vr6.e$default(vr6Var5, this.k, xs1.j("startCheckAccess: ", zz4VarD2.getMessage()), null, 4, null);
            return new ti1(zz4VarD2);
        } catch (Exception e7) {
            vr6.e$default(vr6.INSTANCE, this.k, "startCheckAccess: Failed loading saved credentials", e7, null, 8, null);
            try {
                qb1.a();
            } catch (Exception e8) {
                vr6.e$default(vr6.INSTANCE, this.k, "startCheckAccess: Failed clearing cloud prefs after credential load failure", e8, null, 8, null);
            }
            return new oi1(e7, false);
        }
    }

    public final jh1 o() {
        jh1 jh1Var = this.g;
        if (!jh1Var.m() && jh1Var.i()) {
            try {
                jh1Var.k();
                return jh1Var;
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, this.k, "service: Failed loading saved credentials", e, null, 8, null);
            }
        }
        return jh1Var;
    }

    public final ui1 p(String str, boolean z) {
        Exception exc;
        zz4 zz4VarB = uz4.b(o());
        if (zz4VarB != null) {
            vr6.e$default(vr6.INSTANCE, this.k, xs1.j("search: ", zz4VarB.getMessage()), null, 4, null);
            return new ui1(zz4VarB, ov2.a);
        }
        ArrayList arrayList = new ArrayList();
        String mainCloudFolderName = this.j.getMainCloudFolderName();
        if (z) {
            try {
                mainCloudFolderName = mainCloudFolderName + "/" + qb1.e();
            } catch (Exception e) {
                exc = e;
                vr6.e$default(vr6.INSTANCE, this.k, "search: ".concat(io4.b(exc)), null, 4, null);
                zz4 zz4VarD = uz4.d(o(), exc);
                if (zz4VarD != null) {
                    exc = zz4VarD;
                }
            }
        }
        arrayList.addAll(o().s(mainCloudFolderName));
        exc = null;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (nq7.Z(((pg1) obj).a, str, false)) {
                arrayList2.add(obj);
            }
        }
        Log.d(this.k, dj7.j("search: ", arrayList2.size(), "/", " valid drive files found", arrayList.size()));
        return new ui1(exc, arrayList2);
    }
}
