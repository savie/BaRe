package org.swiftapps.swiftbackup.intro;

import android.content.Intent;
import android.util.Log;
import com.jcraft.jsch.SftpATTRS;
import defpackage.ak;
import defpackage.b45;
import defpackage.bl7;
import defpackage.br1;
import defpackage.bz;
import defpackage.c45;
import defpackage.c47;
import defpackage.c64;
import defpackage.cz;
import defpackage.d45;
import defpackage.d7;
import defpackage.dq;
import defpackage.dz5;
import defpackage.ex6;
import defpackage.gg3;
import defpackage.gs0;
import defpackage.ha7;
import defpackage.hl0;
import defpackage.hz3;
import defpackage.i54;
import defpackage.ix6;
import defpackage.jx2;
import defpackage.k00;
import defpackage.kv1;
import defpackage.l0;
import defpackage.lg7;
import defpackage.lr4;
import defpackage.ly8;
import defpackage.mf4;
import defpackage.mt3;
import defpackage.nf4;
import defpackage.nu;
import defpackage.oh1;
import defpackage.ou;
import defpackage.pe4;
import defpackage.pf4;
import defpackage.qf4;
import defpackage.qg1;
import defpackage.qo0;
import defpackage.sm;
import defpackage.uf4;
import defpackage.v53;
import defpackage.vr6;
import defpackage.wf4;
import defpackage.x11;
import defpackage.yn7;
import defpackage.yx1;
import defpackage.zn4;
import defpackage.zn7;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d extends qo0 {
    public bl7 e;
    public final ex6 f = new ex6();
    public final ex6 g;
    public final ex6 h;
    public final ex6 i;
    public final ix6 j;
    public final ex6 k;
    public final ix6 l;
    public final ix6 m;
    public final ex6 n;
    public final qf4 o;
    public final nf4 p;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        IDLE,
        RUNNING,
        SUCCESS,
        FAILED;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum b {
        RUNNING,
        SIGNED_IN,
        NOT_SIGNED_IN;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    public d() {
        ex6 ex6Var = new ex6();
        dz5 dz5Var = dz5.a;
        ex6Var.k(Boolean.valueOf(dz5.n()));
        this.g = ex6Var;
        ex6 ex6Var2 = new ex6();
        ex6Var2.k(Boolean.valueOf(dz5.h("android.permission.POST_NOTIFICATIONS")));
        this.h = ex6Var2;
        ex6 ex6Var3 = new ex6();
        ex6Var3.k(Boolean.valueOf(dz5.k()));
        this.i = ex6Var3;
        ix6 ix6Var = new ix6();
        ix6Var.k(Boolean.valueOf(j()));
        this.j = ix6Var;
        ex6 ex6Var4 = new ex6();
        ex6Var4.k(a.IDLE);
        this.k = ex6Var4;
        this.l = new ix6();
        this.m = new ix6();
        this.n = new ex6();
        nu nuVar = new nu(6);
        zn4 zn4Var = zn4.a;
        this.o = new qf4(nuVar, new x11(1, zn4Var, zn4.class, "onMain", "onMain(Lkotlin/jvm/functions/Function0;)V", 0, 3), new qg1(0, zn7.q, yn7.class, "getPreferredStorageTypeForIntro", "getPreferredStorageTypeForIntro$app()Lorg/swiftapps/swiftbackup/settings/Storage;", 0, 2), new ou(10), new d7(this, 15), new oh1(1, this, d.class, "onStorageSetupFailure", "onStorageSetupFailure(Lorg/swiftapps/swiftbackup/intro/IntroStorageSetupCoordinator$Failure;)V", 0, 4));
        int i = 0;
        this.p = new nf4(new dq(8), new hl0(1, zn4Var, zn4.class, "onMain", "onMain(Lkotlin/jvm/functions/Function0;)V", 0, 3), new sm(9), new k00(1, this, d.class, "onRootPermissionStateChanged", "onRootPermissionStateChanged(Lorg/swiftapps/swiftbackup/intro/IntroRootPermissionCoordinator$State;)V", i, 2), new ak(this, 22), new i54(0, this, d.class, "grantPermissionsWithRootOrShizuku", "grantPermissionsWithRootOrShizuku()V", i, 1));
    }

    public static boolean j() {
        d45.b.getClass();
        if (d45.a() == null) {
            return false;
        }
        dz5 dz5Var = dz5.a;
        return dz5.n() && dz5.h("android.permission.POST_NOTIFICATIONS") && dz5.k();
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        qf4 qf4Var = this.o;
        synchronized (qf4Var) {
            qf4Var.h = true;
            qf4Var.g = pf4.IDLE;
        }
        nf4 nf4Var = this.p;
        synchronized (nf4Var) {
            nf4Var.h = true;
            nf4Var.g = mf4.IDLE;
        }
        bl7 bl7Var = this.e;
        if (bl7Var != null) {
            bl7Var.cancel(null);
        }
        this.e = null;
        super.b();
    }

    public final void k(boolean z) {
        nf4 nf4Var = this.p;
        synchronized (nf4Var) {
            try {
                if (!nf4Var.h && nf4Var.g == mf4.AWAITING_SHIZUKU) {
                    if (z) {
                        nf4Var.a(mf4.GRANTING_PERMISSIONS);
                        nf4Var.f.invoke();
                    } else {
                        nf4Var.a(mf4.IDLE);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    public final Object l(kv1 kv1Var) {
        uf4 uf4Var;
        String string;
        List<BlacklistApp> items;
        Integer size;
        if (kv1Var instanceof uf4) {
            uf4Var = (uf4) kv1Var;
            int i = uf4Var.c;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                uf4Var.c = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                uf4Var = new uf4(this, kv1Var);
            }
        } else {
            uf4Var = new uf4(this, kv1Var);
        }
        Object objK = uf4Var.a;
        int i2 = uf4Var.c;
        Boolean boolValueOf = null;
        boolean z = true;
        try {
            if (i2 == 0) {
                lg7.H(objK);
                try {
                    d45.b.getClass();
                    MFirebaseUser mFirebaseUserA = d45.a();
                    if (mFirebaseUserA != null) {
                        boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                    }
                } catch (Exception unused) {
                }
                Boolean bool = Boolean.TRUE;
                if (pe4.d(boolValueOf, bool)) {
                    return bool;
                }
                h(R.string.waiting_for_firebase_backend);
                gg3 gg3Var = gg3.a;
                uf4Var.c = 1;
                objK = gg3Var.k(20000L, uf4Var);
                yx1 yx1Var = yx1.a;
                if (objK == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i2 != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(objK);
            }
            if (!((Boolean) objK).booleanValue()) {
                vr6.e$default(vr6.INSTANCE, this.b, "Firebase unavailable. Skipping first-run cloud settings restore.", null, 4, null);
                Boolean bool2 = Boolean.FALSE;
                f();
                return bool2;
            }
            if (!ha7.b(this)) {
                vr6.e$default(vr6.INSTANCE, this.b, "Firebase settings read failed. Skipping first-run cloud settings restore.", null, 4, null);
                Boolean bool3 = Boolean.FALSE;
                f();
                return bool3;
            }
            vr6 vr6Var = vr6.INSTANCE;
            vr6.i$default(vr6Var, this.b, "Restored Settings", null, 4, null);
            boolean zB = lr4.a.b();
            String str = this.b;
            LabelsData labelsData = lr4.e;
            if (labelsData == null || (string = labelsData.toString()) == null) {
                string = "---";
            }
            vr6.i$default(vr6Var, str, "Restored App Labels: ".concat(string), null, 4, null);
            boolean z2 = br1.a.b() && zB;
            String str2 = this.b;
            ConfigsData configsData = br1.e;
            vr6.i$default(vr6Var, str2, "Restored Configs: " + ((configsData == null || (size = configsData.getSize()) == null) ? 0 : size.intValue()), null, 4, null);
            c47 c47Var = c47.a;
            boolean z3 = c47Var.a() && z2;
            vr6.i$default(vr6Var, this.b, "Restored Schedules: " + c47Var.c().getSchedules().size(), null, 4, null);
            c64.m.k(Boolean.valueOf(c47Var.c().getSchedules().isEmpty() ^ true));
            boolean z4 = v53.a.c() && z3;
            vr6.i$default(vr6Var, this.b, "Restored Favorite apps: " + v53.c.size(), null, 4, null);
            if (!gs0.a.b() || !z4) {
                z = false;
            }
            String str3 = this.b;
            BlacklistData blacklistData = gs0.c;
            vr6.i$default(vr6Var, str3, "Restored Blacklist data: " + ((blacklistData == null || (items = blacklistData.getItems()) == null) ? "---" : new Integer(items.size())), null, 4, null);
            if (z) {
                f();
                return Boolean.TRUE;
            }
            vr6.e$default(vr6Var, this.b, "Some first-run cloud data reads failed. Skipping first-run cloud settings restore.", null, 4, null);
            Boolean bool4 = Boolean.FALSE;
            f();
            return bool4;
        } catch (Throwable th) {
            f();
            throw th;
        }
    }

    public final void m(boolean z, IntroActivity introActivity) {
        c45 c45Var;
        introActivity.getClass();
        if (!z) {
            vr6.i$default(vr6.INSTANCE, this.b, "Signing in with Google", null, 4, null);
            p(b.RUNNING);
            hz3.c(introActivity, 1003);
            return;
        }
        vr6.i$default(vr6.INSTANCE, this.b, "Signing in Anonymously", null, 4, null);
        p(b.RUNNING);
        d45 d45Var = d45.b;
        cz czVar = new cz(this, 12);
        d45Var.getClass();
        try {
            V.INSTANCE.setNon(b45.a());
            c45Var = new c45(null);
        } catch (Exception e) {
            Log.d("d45", "clearAnonymousSignIn");
            V.INSTANCE.setNon(null);
            c45Var = new c45(e);
        }
        czVar.invoke(c45Var);
        d45Var.b();
    }

    public final boolean n(Intent intent, boolean z, mt3 mt3Var) {
        wf4 wf4Var = new wf4(0, this, d.class, "hideProgress", "hideProgress()V", 0);
        if (z) {
            h(R.string.getting_started);
        }
        Boolean bool = (Boolean) mt3Var.invoke(new bz(6, this, intent));
        bool.getClass();
        boolean zBooleanValue = bool.booleanValue();
        if (z && !zBooleanValue) {
            wf4Var.invoke();
        }
        return bool.booleanValue();
    }

    public final void o() {
        boolean zJ = j();
        ix6 ix6Var = this.j;
        if (!pe4.d(ix6Var.d(), Boolean.valueOf(zJ))) {
            ix6Var.k(Boolean.valueOf(zJ));
        }
        dz5 dz5Var = dz5.a;
        this.g.k(Boolean.valueOf(dz5.n()));
        this.h.k(Boolean.valueOf(dz5.h("android.permission.POST_NOTIFICATIONS")));
        this.i.k(Boolean.valueOf(dz5.k()));
    }

    public final void p(b bVar) {
        boolean zJ = j();
        ix6 ix6Var = this.j;
        if (!pe4.d(ix6Var.d(), Boolean.valueOf(zJ))) {
            ix6Var.k(Boolean.valueOf(zJ));
        }
        if (bVar == b.RUNNING) {
            h(R.string.processing);
        } else {
            f();
        }
        this.f.k(bVar);
    }
}
