package org.swiftapps.swiftbackup.cloud.orphans;

import android.content.Context;
import com.jcraft.jsch.SftpATTRS;
import defpackage.be8;
import defpackage.bn6;
import defpackage.bt3;
import defpackage.dd1;
import defpackage.dj7;
import defpackage.el1;
import defpackage.ex6;
import defpackage.fl1;
import defpackage.gi1;
import defpackage.hi1;
import defpackage.hj;
import defpackage.ih6;
import defpackage.ii1;
import defpackage.ix6;
import defpackage.jx2;
import defpackage.kc;
import defpackage.ki1;
import defpackage.kv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.ly8;
import defpackage.mt3;
import defpackage.nk;
import defpackage.nq7;
import defpackage.ov2;
import defpackage.ox;
import defpackage.pe4;
import defpackage.pw5;
import defpackage.px;
import defpackage.q;
import defpackage.qb1;
import defpackage.qh4;
import defpackage.qo0;
import defpackage.re3;
import defpackage.rh1;
import defpackage.sv2;
import defpackage.tb1;
import defpackage.vm4;
import defpackage.yh1;
import defpackage.yx1;
import defpackage.zc2;
import defpackage.zn4;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a extends qo0 {
    public final ex6 e = new ex6();
    public final ix6 f = new ix6();
    public b g;
    public kc h;
    public String i;
    public qh4 j;
    public long k;
    public Long l;
    public long m;
    public String n;

    /* JADX INFO: renamed from: org.swiftapps.swiftbackup.cloud.orphans.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum EnumC0013a {
        IDLE,
        SCANNING,
        RESULTS,
        DELETING,
        ERROR;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    public static final void j(pe4 pe4Var, a aVar) {
        if (pe4Var.equals(gi1.m)) {
            aVar.s(new nk(aVar));
            return;
        }
        if (pe4Var instanceof hi1) {
            aVar.s(new hj(pe4Var, aVar));
        } else if (pe4Var instanceof ii1) {
            aVar.s(new ox(pe4Var, aVar));
        } else {
            q.j();
        }
    }

    public static final void k(a aVar, long j, qh4 qh4Var) {
        synchronized (aVar) {
            Long l = aVar.l;
            if (l != null && l.longValue() == j && aVar.j == qh4Var) {
                aVar.l = null;
                aVar.j = null;
            }
        }
        qh4Var.G(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object l(a aVar, long j, String str, bt3 bt3Var, kv1 kv1Var) throws Throwable {
        yh1 yh1Var;
        ih6 ih6Var;
        if (kv1Var instanceof yh1) {
            yh1Var = (yh1) kv1Var;
            int i = yh1Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                yh1Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                yh1Var = new yh1(aVar, kv1Var);
            }
        } else {
            yh1Var = new yh1(aVar, kv1Var);
        }
        Object obj = yh1Var.b;
        int i2 = yh1Var.d;
        if (i2 == 0) {
            lg7.H(obj);
            ih6 ih6Var2 = new ih6();
            zn4 zn4Var = zn4.a;
            rh1 rh1Var = new rh1(ih6Var2, aVar, j, str, bt3Var);
            yh1Var.a = ih6Var2;
            yh1Var.d = 1;
            Object objG = zn4.g(rh1Var, yh1Var);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
            ih6Var = ih6Var2;
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ih6Var = yh1Var.a;
            lg7.H(obj);
        }
        return Boolean.valueOf(ih6Var.a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x006f  */
    public static b n(String str) {
        ki1 ki1VarI;
        String strG;
        int brandingIconRes;
        Object bn6Var;
        String strG2;
        tb1 tb1Var = tb1.a;
        boolean zM = qb1.m();
        dd1 dd1VarF = qb1.f();
        if (zM) {
            String displayName = dd1VarF.getDisplayName();
            CloudCredentials.Companion.getClass();
            ki1VarI = vm4.i(dd1VarF, displayName, org.swiftapps.swiftbackup.cloud.protocols.a.b(dd1VarF));
        } else {
            ki1VarI = null;
        }
        int i = R.string.no_cloud_connected;
        if (!zM) {
            SwiftApp.Companion companion = SwiftApp.d;
            strG = dj7.g(R.string.no_cloud_connected);
        } else if (ki1VarI == null || (strG = ki1VarI.a) == null) {
            strG = dd1VarF.getDisplayName();
        }
        if (zM) {
            brandingIconRes = ki1VarI != null ? ki1VarI.b : dd1VarF.getBrandingIconRes();
        } else {
            brandingIconRes = R.drawable.ic_cloud_off;
        }
        boolean z = ki1VarI != null ? ki1VarI.c : false;
        if (zM) {
            try {
                bn6Var = qb1.g();
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            if (bn6Var instanceof bn6) {
                bn6Var = null;
            }
            String str2 = (String) bn6Var;
            if (str2 == null) {
                SwiftApp.Companion companion2 = SwiftApp.d;
                strG2 = dj7.g(R.string.connected);
            } else {
                strG2 = nq7.j0(str2) ? null : str2;
                if (strG2 == null) {
                    SwiftApp.Companion companion3 = SwiftApp.d;
                    strG2 = dj7.g(R.string.connected);
                }
            }
        } else {
            SwiftApp.Companion companion4 = SwiftApp.d;
            strG2 = dj7.g(R.string.connect_cloud_subtitle);
        }
        EnumC0013a enumC0013a = EnumC0013a.IDLE;
        SwiftApp.Companion companion5 = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        if (zM) {
            i = R.string.cloud_orphan_ready;
        }
        return new b(dd1VarF, strG, brandingIconRes, z, strG2, zM, str, enumC0013a, ov2.a, sv2.a, contextC.getString(i), 0, 0);
    }

    public static String o() {
        Object bn6Var;
        Object bn6Var2;
        String str;
        Object bn6Var3;
        tb1 tb1Var = tb1.a;
        boolean zM = qb1.m();
        dd1 dd1VarF = qb1.f();
        String strJ = null;
        if (zM) {
            try {
                zc2 zc2Var = re3.a;
                bn6Var = re3.m(qb1.i("CloudOrphanCleanerVM"));
            } catch (Throwable th) {
                bn6Var = new bn6(th);
            }
            if (bn6Var instanceof bn6) {
                bn6Var = null;
            }
            String str2 = (String) bn6Var;
            if (str2 == null) {
                try {
                    tb1 tb1Var2 = tb1.a;
                    bn6Var2 = qb1.g();
                } catch (Throwable th2) {
                    bn6Var2 = new bn6(th2);
                }
                if (bn6Var2 instanceof bn6) {
                    bn6Var2 = null;
                }
                str2 = (String) bn6Var2;
            }
            str = str2;
        } else {
            str = null;
        }
        if (zM) {
            tb1 tb1Var3 = tb1.a;
            strJ = qb1.j();
        }
        try {
            tb1 tb1Var4 = tb1.a;
            bn6Var3 = Integer.valueOf(System.identityHashCode(qb1.c()));
        } catch (Throwable th3) {
            bn6Var3 = new bn6(th3);
        }
        if (bn6Var3 instanceof bn6) {
            bn6Var3 = 0;
        }
        int iIntValue = ((Number) bn6Var3).intValue();
        String strValueOf = String.valueOf(zM);
        String constant = dd1VarF.getConstant();
        if (str == null) {
            str = "";
        }
        if (strJ == null) {
            strJ = "";
        }
        return el1.Y0(fl1.A0(strValueOf, constant, str, strJ, String.valueOf(iIntValue)), WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, null, null, null, 62);
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        qh4 qh4Var;
        synchronized (this) {
            this.l = null;
            qh4Var = this.j;
            this.j = null;
        }
        if (qh4Var != null) {
            qh4Var.cancel(null);
        }
        super.b();
    }

    public final synchronized pw5 m() {
        long j;
        qh4 qh4Var;
        j = this.k + 1;
        this.k = j;
        qh4Var = new qh4(null);
        this.l = Long.valueOf(j);
        this.j = qh4Var;
        return new pw5(Long.valueOf(j), qh4Var);
    }

    public final boolean p(b bVar) {
        return this.h != null && pe4.d(this.i, bVar.g) && bVar.g.equals(o()) && this.n == null;
    }

    public final synchronized void q() {
        b bVar = this.g;
        String strO = o();
        if (bVar == null) {
            r(strO);
            return;
        }
        if (bVar.g.equals(strO) && this.n == null) {
            return;
        }
        if (!bVar.d()) {
            this.m++;
            r(strO);
        } else {
            if (!pe4.d(this.n, strO)) {
                this.m++;
                this.n = strO;
            }
            s(new px(this, 2));
        }
    }

    public final void r(String str) {
        this.n = null;
        this.h = null;
        this.i = null;
        t(n(str));
    }

    public final synchronized b s(mt3 mt3Var) {
        b bVar;
        b bVar2 = this.g;
        if (bVar2 == null) {
            throw new IllegalStateException("Required value was null.");
        }
        bVar = (b) mt3Var.invoke(bVar2);
        t(bVar);
        return bVar;
    }

    public final synchronized void t(b bVar) {
        this.g = bVar;
        this.e.k(bVar);
    }
}
