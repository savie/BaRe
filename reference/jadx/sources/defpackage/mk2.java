package defpackage;

import android.util.Log;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mk2 extends qo0 {
    public ji e;
    public boolean f;
    public boolean g = true;
    public final AtomicLong h = new AtomicLong();
    public final ex6 i = new ex6();
    public final ex6 j = new ex6();
    public final ex6 k = new ex6();
    public final ex6 l = new ex6();
    public zc2 m;
    public lk2 n;

    public static final void n(mk2 mk2Var, long j, String str, ak2 ak2Var) {
        ji jiVar;
        if (j != mk2Var.h.get() || (jiVar = mk2Var.e) == null) {
            return;
        }
        if (jiVar == null) {
            pe4.F("app");
            throw null;
        }
        if (pe4.d(jiVar.getPackageName(), str)) {
            mk2Var.k.k(ak2Var);
        }
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        super.b();
        zc2 zc2Var = re3.a;
        re3.n(this.m, this.n);
    }

    public final void j(h80 h80Var) {
        ji jiVar = this.e;
        if (jiVar == null) {
            pe4.F("app");
            throw null;
        }
        List listI = nc8.I((iu) h80Var.b);
        List list = (List) h80Var.c;
        boolean zW = z85.w();
        xp1 xp1VarR = z85.r();
        MultipleBackupStrategy.Companion.getClass();
        l(new hz(jiVar, listI, list, null, null, zW, xp1VarR, b.c(), null), new ky7(2, 0));
    }

    public final ji k() {
        ji jiVar = this.e;
        if (jiVar != null) {
            return jiVar;
        }
        pe4.F("app");
        throw null;
    }

    public final void l(kz kzVar, ty7 ty7Var) {
        c40 c40Var = new c40(nc8.I(kzVar), ty7Var, new b40());
        c40Var.u = true;
        c(c40.class, c40Var);
    }

    public final void m(List list, hk hkVar) {
        ji jiVar = this.e;
        if (jiVar == null) {
            pe4.F("app");
            throw null;
        }
        List listI = nc8.I(q05.DEVICE);
        boolean zW = z85.w();
        xp1 xp1VarR = z85.r();
        MultipleBackupStrategy.Companion.getClass();
        l(new hz(jiVar, list, listI, hkVar, null, zW, xp1VarR, b.c(), null), new ky7(2, 0));
    }

    public final void o(gm gmVar, String str) {
        String string;
        String string2;
        if (gmVar == null) {
            return;
        }
        String str2 = null;
        if (str != null && (string = nq7.H0(str).toString()) != null && (string2 = nq7.H0(nq7.G0(30, string)).toString()) != null && string2.length() > 0 && !nq7.j0(string2)) {
            str2 = string2;
        }
        zn4 zn4Var = zn4.a;
        zn4.c(new oj(3, gmVar, str2, this));
    }

    @qr7(threadMode = ThreadMode.BACKGROUND)
    public final void onAppEvent(oq oqVar) {
        oqVar.getClass();
        String str = oqVar.a;
        ji jiVar = this.e;
        if (jiVar != null) {
            if (jiVar == null) {
                pe4.F("app");
                throw null;
            }
            if (pe4.d(jiVar.getPackageName(), str)) {
                Log.d(this.b, "onAppEvent: [" + str + "]");
                this.h.incrementAndGet();
                ji jiVar2 = this.e;
                if (jiVar2 != null) {
                    zn4.c(new lx(this, jiVar2));
                } else {
                    pe4.F("app");
                    throw null;
                }
            }
        }
    }

    public final void p(AppCloudBackup appCloudBackup, String str) {
        String string;
        String string2;
        if (appCloudBackup == null) {
            return;
        }
        String str2 = null;
        if (str != null && (string = nq7.H0(str).toString()) != null && (string2 = nq7.H0(nq7.G0(30, string)).toString()) != null && string2.length() > 0 && !nq7.j0(string2)) {
            str2 = string2;
        }
        zn4 zn4Var = zn4.a;
        zn4.c(new v20(4, appCloudBackup, str2, this));
    }
}
