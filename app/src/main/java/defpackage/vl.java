package defpackage;

import android.content.pm.PackageInfo;
import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.apptasks.notifications.NotificationPolicyProxy;
import org.swiftapps.swiftbackup.apptasks.sba.a;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.model.app.AppSpecialDataPayload;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.f;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vl {
    public final hz a;
    public final c40 b;
    public final boolean c;
    public final ek d;
    public final ah e;
    public final al f;
    public final d76 g;
    public final bl h;
    public final lf i;
    public final ej j;
    public final fj k;
    public final gj l;
    public final ji m;
    public final LinkedHashSet n;
    public final gv7 o;
    public final gv7 p;
    public final tl q;
    public hk r;
    public boolean s;

    public vl(hz hzVar, c40 c40Var, boolean z, ek ekVar, ah ahVar, al alVar, d76 d76Var, bl blVar, lf lfVar, ej ejVar, fj fjVar, gj gjVar) {
        this.a = hzVar;
        this.b = c40Var;
        this.c = z;
        this.d = ekVar;
        this.e = ahVar;
        this.f = alVar;
        this.g = d76Var;
        this.h = blVar;
        this.i = lfVar;
        this.j = ejVar;
        this.k = fjVar;
        this.l = gjVar;
        ji jiVar = hzVar.b;
        this.m = jiVar;
        this.n = new LinkedHashSet();
        this.o = new gv7(new kf(this, 2));
        this.p = new gv7(new lf(this, 3));
        this.q = new tl(jiVar);
    }

    public static boolean b(vl vlVar, em emVar, iu iuVar, String str, q63 q63Var, String str2, cy0 cy0Var, od2 od2Var, boolean z, mt3 mt3Var) {
        od2 od2Var2;
        ArrayList arrayList;
        iu iuVar2 = iuVar;
        tl tlVar = vlVar.q;
        gz6 gz6Var = gz6.i;
        oj7 oj7VarA = pj7.a(q63Var.t(), emVar.b());
        if (oj7VarA != null) {
            String str3 = oj7VarA.a;
            if (!oj7VarA.b) {
                tlVar.b(iuVar2, str3);
                return false;
            }
            tlVar.b = true;
            tlVar.a(str3);
            return false;
        }
        try {
            vr6.i$default(vr6.INSTANCE, "AppBackupTask", "Creating " + iuVar2.toDisplayString(true) + " backup", null, 4, null);
            HashSet hashSet = mz6.a;
            q63 q63Var2 = new q63(str, 1);
            int i = ay6.a[iuVar2.ordinal()];
            if (i == 1 || i == 2) {
                arrayList = new ArrayList();
                if (!z) {
                    arrayList.add("cache");
                }
                arrayList.add("code_cache");
                arrayList.add("lib");
                arrayList.add("shared_prefs/com.google.android.gms.*");
            } else {
                if (i != 3 && i != 4 && i != 5) {
                    throw new mn5();
                }
                arrayList = null;
            }
            od2Var2 = od2Var;
            try {
                iuVar2 = iuVar;
                try {
                    mz6.b(new op3(q63Var, nc8.I(new hz6(str2, q63Var2, true, null, arrayList, 8)), iuVar, f27.Basic, cy0Var, od2Var2, null, iz6.Auto, new bh(vlVar, 3), vlVar.h(emVar.b(), emVar.c(), mt3Var), 64));
                    mt3Var.invoke(Long.valueOf(emVar.c()));
                    if (od2Var2 instanceof fz6) {
                        x50.o0(((fz6) od2Var2).i);
                        return true;
                    }
                    if (od2Var2.equals(gz6Var)) {
                        return true;
                    }
                    q.j();
                    return false;
                } catch (Throwable th) {
                    th = th;
                    try {
                        if (!vlVar.i()) {
                            String message = th.getMessage();
                            if (message == null) {
                                message = iuVar2.toDisplayString(true) + " backup failed";
                            }
                            tlVar.a(message);
                        }
                        if (od2Var2 instanceof fz6) {
                            x50.o0(((fz6) od2Var2).i);
                        } else if (!od2Var2.equals(gz6Var)) {
                            q.j();
                            return false;
                        }
                        return false;
                    } catch (Throwable th2) {
                        if (od2Var2 instanceof fz6) {
                            x50.o0(((fz6) od2Var2).i);
                        } else if (!od2Var2.equals(gz6Var)) {
                            q.j();
                            return false;
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                iuVar2 = iuVar;
            }
        } catch (Throwable th4) {
            th = th4;
            od2Var2 = od2Var;
        }
    }

    public static void d(ok0 ok0Var) {
        q63 q63VarZ = ok0Var.n.z();
        if (q63VarZ.j()) {
            vr6.i$default(vr6.INSTANCE, "AppBackupTask", "Removing shared libs archive because current APK has no shared libs", null, 4, null);
            q63VarZ.h();
        }
        ok0Var.t.clearSharedLibsDetails();
    }

    public static void e(ok0 ok0Var) {
        q63 q63VarC = ok0Var.n.C();
        if (q63VarC.j()) {
            vr6.i$default(vr6.INSTANCE, "AppBackupTask", "Removing Split APKs archive because current APK has no Splits", null, 4, null);
            q63VarC.h();
        }
        ok0Var.t.clearSplitsDetails();
    }

    public static cy0 j(xp1 xp1Var) {
        return xp1Var == xp1.NO_COMPRESSION ? oy6.j : new py6(xp1Var.getLevel());
    }

    /* JADX WARN: Code duplicated, block: B:147:0x0540  */
    /* JADX WARN: Code duplicated, block: B:149:0x0546  */
    /* JADX WARN: Code duplicated, block: B:190:0x06ec A[Catch: all -> 0x06f5, TryCatch #11 {all -> 0x06f5, blocks: (B:188:0x06e6, B:190:0x06ec, B:195:0x06f8), top: B:250:0x06e6 }] */
    /* JADX WARN: Code duplicated, block: B:192:0x06f2  */
    /* JADX WARN: Code duplicated, block: B:91:0x0365  */
    /* JADX WARN: Code duplicated, block: B:93:0x036b  */
    public final void a(q63 q63Var, ok0 ok0Var, final xk xkVar) {
        hz hzVar;
        xp1 xp1Var;
        hk hkVar;
        ArrayList arrayList;
        char c;
        ji jiVar;
        int i;
        final long j;
        boolean z;
        Long lValueOf;
        boolean z2;
        int i2;
        char[] cArr;
        String message;
        char c2;
        long j2;
        String message2;
        String strP;
        yc7 yc7Var;
        boolean z3;
        long j3;
        String message3;
        em wlVar;
        vl vlVar = this;
        LocalMetadata localMetadata = ok0Var.t;
        hk hkVar2 = ok0Var.n;
        gz6 gz6Var = gz6.i;
        ex6 ex6Var = vlVar.b.i;
        hz hzVar2 = vlVar.a;
        xp1 xp1Var2 = hzVar2.h;
        boolean z4 = hzVar2.g;
        LinkedHashSet linkedHashSet = vlVar.n;
        ArrayList<em> arrayList2 = new ArrayList(hl1.G0(linkedHashSet, 10));
        Iterator it = linkedHashSet.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            ji jiVar2 = vlVar.m;
            if (!zHasNext) {
                Iterator it2 = arrayList2.iterator();
                long jC = 0;
                while (it2.hasNext()) {
                    jC = ((em) it2.next()).c() + jC;
                }
                int i3 = 0;
                int i4 = 0;
                for (em emVar : arrayList2) {
                    int i5 = i4 + 1;
                    if (vlVar.i()) {
                        return;
                    }
                    int i6 = i3;
                    final kh6 kh6Var = new kh6();
                    int i7 = i6;
                    while (i7 < i4) {
                        kh6Var.a = ((em) arrayList2.get(i7)).c() + kh6Var.a;
                        i7++;
                        jiVar2 = jiVar2;
                        jC = jC;
                    }
                    ji jiVar3 = jiVar2;
                    final long j4 = jC;
                    boolean z5 = emVar instanceof wl;
                    tl tlVar = vlVar.q;
                    if (z5) {
                        wl wlVar2 = (wl) emVar;
                        hzVar = hzVar2;
                        xp1Var = xp1Var2;
                        hkVar = hkVar2;
                        boolean z6 = z4;
                        ml mlVar = new ml(kh6Var, j4, xkVar, 1);
                        SwiftApp.Companion companion = SwiftApp.d;
                        String strG = dj7.g(R.string.backing_up_app);
                        p93 p93Var = p93.a;
                        String strC = p93.c(Long.valueOf(wlVar2.d()));
                        vr6.i$default(vr6.INSTANCE, "AppBackupTask", eq3.k("Backing up APK (", strC, ")"), null, 4, null);
                        ex6Var.k(strG + " (" + strC + ")");
                        q63 q63VarC = hkVar.c();
                        oj7 oj7VarB = pj7.b(q63VarC.t(), wlVar2.b());
                        if (oj7VarB != null) {
                            String str = oj7VarB.a;
                            if (oj7VarB.b) {
                                tlVar.b = true;
                                tlVar.a(str);
                            } else {
                                tlVar.b(iu.APP, str);
                            }
                        } else {
                            wlVar2.b.d(q63VarC, new kl(mlVar, vlVar, wlVar2, new h86(g86.a, Long.MAX_VALUE, null)));
                            localMetadata.updateApkDetails(jiVar3.getVersionName(), jiVar3.getVersionCode(), Long.valueOf(wlVar2.d()), Long.valueOf(System.currentTimeMillis()));
                            vlVar.f(ok0Var);
                        }
                        j = j4;
                        ex6Var = ex6Var;
                        arrayList = arrayList2;
                        z = z6;
                        jiVar = jiVar3;
                        i = 0;
                        c = '\n';
                    } else {
                        hzVar = hzVar2;
                        xp1Var = xp1Var2;
                        hkVar = hkVar2;
                        boolean z7 = z4;
                        if (emVar instanceof dm) {
                            dm dmVar = (dm) emVar;
                            gv7 gv7Var = dmVar.e;
                            mt3 mt3Var = new mt3() { // from class: ll
                                @Override // defpackage.mt3
                                public final Object invoke(Object obj) {
                                    xkVar.invoke(Integer.valueOf(Const.r(kh6Var.a + ((Long) obj).longValue(), j4)));
                                    return be8.a;
                                }
                            };
                            if (((List) gv7Var.getValue()).isEmpty()) {
                                e(ok0Var);
                                j3 = j4;
                                arrayList = arrayList2;
                                z3 = z7;
                            } else {
                                SwiftApp.Companion companion2 = SwiftApp.d;
                                String strG2 = dj7.g(R.string.backing_up_split_apks);
                                p93 p93Var2 = p93.a;
                                String strC2 = p93.c(Long.valueOf(dmVar.d()));
                                vr6 vr6Var = vr6.INSTANCE;
                                vr6.i$default(vr6Var, "AppBackupTask", "Backing up " + ((List) gv7Var.getValue()).size() + " splits (" + strC2 + ")", null, 4, null);
                                ex6Var.k(strG2 + " (" + strC2 + ")");
                                arrayList = arrayList2;
                                q63 q63Var2 = dmVar.c;
                                oj7 oj7VarA = pj7.a(q63Var2.t(), dmVar.d());
                                if (oj7VarA != null) {
                                    String str2 = oj7VarA.a;
                                    if (oj7VarA.b) {
                                        tlVar.b = true;
                                        tlVar.a(str2);
                                    } else {
                                        tlVar.b(iu.APP, str2);
                                    }
                                    arrayList = arrayList;
                                    z3 = z7;
                                    j3 = j4;
                                } else {
                                    try {
                                        vr6.i$default(vr6Var, "AppBackupTask", "Creating Split APKs backup", null, 4, null);
                                        HashSet hashSet = mz6.a;
                                        List<q63> list = (List) gv7Var.getValue();
                                        ArrayList arrayList3 = new ArrayList(hl1.G0(list, 10));
                                        for (q63 q63Var3 : list) {
                                            arrayList3.add(new hz6(q63Var3.p(), q63Var3, true, null, null, 24));
                                        }
                                        try {
                                            iu iuVar = iu.APP;
                                            f27 f27Var = f27.Basic;
                                            cy0 cy0VarJ = j(xp1Var);
                                            try {
                                                iz6 iz6Var = iz6.Auto;
                                                ek ekVar = new ek(vlVar, 3);
                                                try {
                                                    j3 = j4;
                                                    try {
                                                        c07 c07VarH = vlVar.h(dmVar.b(), dmVar.c(), mt3Var);
                                                        vlVar = vlVar;
                                                        z3 = z7;
                                                        try {
                                                            arrayList = arrayList;
                                                            try {
                                                                mz6.b(new op3(q63Var2, arrayList3, iuVar, f27Var, cy0VarJ, gz6Var, null, iz6Var, ekVar, c07VarH, 64));
                                                                mt3Var.invoke(Long.valueOf(dmVar.c()));
                                                                localMetadata.updateSplitsDetails(Long.valueOf(q63Var2.A()), Long.valueOf(dmVar.d()));
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                if (!vlVar.i()) {
                                                                    message3 = th.getMessage();
                                                                    if (message3 == null) {
                                                                        message3 = "Split APKs backup failed";
                                                                    }
                                                                    tlVar.a(message3);
                                                                }
                                                            }
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            arrayList = arrayList;
                                                        }
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        arrayList = arrayList;
                                                        z3 = z7;
                                                        if (!vlVar.i()) {
                                                            message3 = th.getMessage();
                                                            if (message3 == null) {
                                                                message3 = "Split APKs backup failed";
                                                            }
                                                            tlVar.a(message3);
                                                        }
                                                        jiVar = jiVar3;
                                                        j = j3;
                                                        i = 0;
                                                        c = '\n';
                                                        z = z3;
                                                        ex6Var = ex6Var;
                                                        vlVar = this;
                                                        i3 = i;
                                                        jiVar2 = jiVar;
                                                        i4 = i5;
                                                        hkVar2 = hkVar;
                                                        hzVar2 = hzVar;
                                                        xp1Var2 = xp1Var;
                                                        ex6Var = ex6Var;
                                                        z4 = z;
                                                        arrayList2 = arrayList;
                                                        jC = j;
                                                    }
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    vlVar = vlVar;
                                                    arrayList = arrayList;
                                                    z3 = z7;
                                                    j3 = j4;
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                                j3 = j4;
                                            }
                                        } catch (Throwable th6) {
                                            th = th6;
                                            z3 = z7;
                                            j3 = j4;
                                            if (!vlVar.i()) {
                                                message3 = th.getMessage();
                                                if (message3 == null) {
                                                    message3 = "Split APKs backup failed";
                                                }
                                                tlVar.a(message3);
                                            }
                                            jiVar = jiVar3;
                                            j = j3;
                                            i = 0;
                                            c = '\n';
                                            z = z3;
                                            ex6Var = ex6Var;
                                            vlVar = this;
                                            i3 = i;
                                            jiVar2 = jiVar;
                                            i4 = i5;
                                            hkVar2 = hkVar;
                                            hzVar2 = hzVar;
                                            xp1Var2 = xp1Var;
                                            ex6Var = ex6Var;
                                            z4 = z;
                                            arrayList2 = arrayList;
                                            jC = j;
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        z3 = z7;
                                    }
                                }
                            }
                            jiVar = jiVar3;
                            j = j3;
                            i = 0;
                            c = '\n';
                            z = z3;
                            ex6Var = ex6Var;
                        } else {
                            vl vlVar2 = vlVar;
                            arrayList = arrayList2;
                            if (emVar instanceof cm) {
                                cm cmVar = (cm) emVar;
                                gv7 gv7Var2 = cmVar.e;
                                z = z7;
                                ml mlVar2 = new ml(kh6Var, j4, xkVar, 0);
                                if (((List) gv7Var2.getValue()).isEmpty()) {
                                    d(ok0Var);
                                } else {
                                    SwiftApp.Companion companion3 = SwiftApp.d;
                                    String strG3 = dj7.g(R.string.backing_up_shared_libraries);
                                    p93 p93Var3 = p93.a;
                                    String strC3 = p93.c(Long.valueOf(cmVar.d()));
                                    vr6 vr6Var2 = vr6.INSTANCE;
                                    vr6.i$default(vr6Var2, "AppBackupTask", "Backing up " + ((List) gv7Var2.getValue()).size() + " shared libs (" + strC3 + ")", null, 4, null);
                                    ex6Var.k(strG3 + " (" + strC3 + ")");
                                    q63 q63Var4 = cmVar.c;
                                    oj7 oj7VarA2 = pj7.a(q63Var4.t(), cmVar.d());
                                    if (oj7VarA2 != null) {
                                        String str3 = oj7VarA2.a;
                                        if (oj7VarA2.b) {
                                            tlVar.b = true;
                                            tlVar.a(str3);
                                        } else {
                                            tlVar.b(iu.APP, str3);
                                        }
                                    } else {
                                        try {
                                            vr6.i$default(vr6Var2, "AppBackupTask", "Creating Shared Libs backup", null, 4, null);
                                            HashSet hashSet2 = mz6.a;
                                            List list2 = (List) gv7Var2.getValue();
                                            c2 = '\n';
                                            try {
                                                ArrayList arrayList4 = new ArrayList(hl1.G0(list2, 10));
                                                int i8 = 0;
                                                for (Object obj : list2) {
                                                    int i9 = i8 + 1;
                                                    if (i8 < 0) {
                                                        fl1.F0();
                                                        throw null;
                                                    }
                                                    q63 q63Var5 = (q63) obj;
                                                    List list3 = cmVar.b;
                                                    if (list3 == null || (yc7Var = (yc7) el1.V0(i8, list3)) == null || (strP = yc7Var.getBackupFileName()) == null) {
                                                        strP = q63Var5.p();
                                                    }
                                                    arrayList4.add(new hz6(strP, q63Var5, true, null, null, 24));
                                                    i8 = i9;
                                                    if (!vlVar2.i()) {
                                                        message2 = th.getMessage();
                                                        if (message2 == null) {
                                                            message2 = "Shared libs backup failed";
                                                        }
                                                        tlVar.a(message2);
                                                    }
                                                }
                                                try {
                                                    try {
                                                        vlVar2 = vlVar2;
                                                        z = z;
                                                        ex6Var = ex6Var;
                                                        j2 = j4;
                                                        try {
                                                            mz6.b(new op3(q63Var4, arrayList4, iu.APP, f27.Basic, j(xp1Var), gz6Var, null, iz6.Auto, new dk(vlVar2, 2), vlVar2.h(cmVar.b(), cmVar.c(), mlVar2), 64));
                                                            mlVar2.invoke(Long.valueOf(cmVar.c()));
                                                            localMetadata.updateSharedLibsDetails(Long.valueOf(q63Var4.A()), Long.valueOf(cmVar.d()));
                                                        } catch (Throwable th8) {
                                                            th = th8;
                                                            if (!vlVar2.i()) {
                                                                message2 = th.getMessage();
                                                                if (message2 == null) {
                                                                    message2 = "Shared libs backup failed";
                                                                }
                                                                tlVar.a(message2);
                                                            }
                                                        }
                                                    } catch (Throwable th9) {
                                                        th = th9;
                                                        vlVar2 = vlVar2;
                                                        z = z;
                                                        ex6Var = ex6Var;
                                                        j2 = j4;
                                                    }
                                                } catch (Throwable th10) {
                                                    th = th10;
                                                    vlVar2 = vlVar2;
                                                    z = z;
                                                    ex6Var = ex6Var;
                                                    j2 = j4;
                                                }
                                            } catch (Throwable th11) {
                                                th = th11;
                                                j2 = j4;
                                            }
                                        } catch (Throwable th12) {
                                            th = th12;
                                            c2 = '\n';
                                        }
                                    }
                                    j = j2;
                                    c = c2;
                                    jiVar = jiVar3;
                                    i = 0;
                                }
                                z = z;
                                ex6Var = ex6Var;
                                c2 = '\n';
                                j2 = j4;
                                j = j2;
                                c = c2;
                                jiVar = jiVar3;
                                i = 0;
                            } else {
                                c = '\n';
                                ex6 ex6Var2 = ex6Var;
                                boolean z8 = emVar instanceof yl;
                                gv7 gv7Var3 = vlVar2.p;
                                gv7 gv7Var4 = vlVar2.o;
                                if (z8) {
                                    yl ylVar = (yl) emVar;
                                    mt3 mt3Var2 = new mt3() { // from class: nl
                                        @Override // defpackage.mt3
                                        public final Object invoke(Object obj2) {
                                            xkVar.invoke(Integer.valueOf(Const.r(kh6Var.a + ((Long) obj2).longValue(), j4)));
                                            return be8.a;
                                        }
                                    };
                                    Long lValueOf2 = Long.valueOf(ylVar.b());
                                    p93 p93Var4 = p93.a;
                                    String strC4 = p93.c(lValueOf2);
                                    vr6 vr6Var3 = vr6.INSTANCE;
                                    vr6.i$default(vr6Var3, "AppBackupTask", "Backing up Data (" + strC4 + ", Cache=" + z7 + ", v6)", null, 4, null);
                                    SwiftApp.Companion companion4 = SwiftApp.d;
                                    ex6Var = ex6Var2;
                                    ex6Var.k(dj7.g(R.string.backing_up_data) + " (" + strC4 + ")");
                                    q63 q63VarG = hkVar.g();
                                    oj7 oj7VarA3 = pj7.a(q63VarG.t(), ylVar.b());
                                    if (oj7VarA3 != null) {
                                        String str4 = oj7VarA3.a;
                                        if (oj7VarA3.b) {
                                            tlVar.b = true;
                                            tlVar.a(str4);
                                        } else {
                                            tlVar.b(iu.DATA, str4);
                                        }
                                        z2 = z7;
                                        ex6Var = ex6Var;
                                        jiVar = jiVar3;
                                        i2 = 0;
                                    } else {
                                        char[] cArr2 = (char[]) gv7Var4.getValue();
                                        char[] cArrCopyOf = Arrays.copyOf(cArr2, cArr2.length);
                                        try {
                                            ArrayList arrayListC = vlVar2.c(ylVar);
                                            try {
                                                vr6.i$default(vr6Var3, "AppBackupTask", "Creating Data backup", null, 4, null);
                                                HashSet hashSet3 = mz6.a;
                                                iu iuVar2 = iu.DATA;
                                                f27 f27Var2 = f27.Fidelity;
                                                cy0 cy0VarJ2 = j(xp1Var);
                                                fz6 fz6Var = new fz6(cArrCopyOf);
                                                jiVar = jiVar3;
                                                xp1Var = xp1Var;
                                                try {
                                                    String strA = a.a(jiVar, ((Boolean) ylVar.f.getValue()).booleanValue(), z7, xp1Var);
                                                    try {
                                                        try {
                                                            xp1Var = xp1Var;
                                                            ex6Var = ex6Var;
                                                            cArr = cArrCopyOf;
                                                            jiVar = jiVar;
                                                            z2 = z7;
                                                            try {
                                                                mz6.b(new op3(q63VarG, arrayListC, iuVar2, f27Var2, cy0VarJ2, fz6Var, strA, iz6.Auto, new ah(vlVar2, 3), vlVar2.h(ylVar.b(), ylVar.c(), mt3Var2)));
                                                                mt3Var2.invoke(Long.valueOf(ylVar.c()));
                                                                LocalMetadata localMetadata2 = ok0Var.t;
                                                                qx sizeInfo = jiVar.getSizeInfo();
                                                                localMetadata2.updateDataDetails(sizeInfo != null ? Long.valueOf(sizeInfo.getTotalDataSize(z2)) : null, Long.valueOf(q63VarG.A()), Boolean.TRUE, "AEGIS-256", (String) gv7Var3.getValue(), Long.valueOf(System.currentTimeMillis()));
                                                            } catch (Throwable th13) {
                                                                th = th13;
                                                                try {
                                                                    if (!i()) {
                                                                        message = th.getMessage();
                                                                        if (message == null) {
                                                                            message = "App Data backup failed";
                                                                        }
                                                                        tlVar.a(message);
                                                                    }
                                                                } catch (Throwable th14) {
                                                                    Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                                                    throw th14;
                                                                }
                                                            }
                                                        } catch (Throwable th15) {
                                                            th = th15;
                                                            xp1Var = xp1Var;
                                                            ex6Var = ex6Var;
                                                            cArr = cArrCopyOf;
                                                            jiVar = jiVar;
                                                            z2 = z7;
                                                        }
                                                    } catch (Throwable th16) {
                                                        th = th16;
                                                        cArr = cArrCopyOf;
                                                        z2 = z7;
                                                        if (!i()) {
                                                            message = th.getMessage();
                                                            if (message == null) {
                                                                message = "App Data backup failed";
                                                            }
                                                            tlVar.a(message);
                                                        }
                                                        i2 = 0;
                                                        Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                                        i = i2;
                                                        j = j4;
                                                        z = z2;
                                                        vlVar = this;
                                                        i3 = i;
                                                        jiVar2 = jiVar;
                                                        i4 = i5;
                                                        hkVar2 = hkVar;
                                                        hzVar2 = hzVar;
                                                        xp1Var2 = xp1Var;
                                                        ex6Var = ex6Var;
                                                        z4 = z;
                                                        arrayList2 = arrayList;
                                                        jC = j;
                                                    }
                                                } catch (Throwable th17) {
                                                    th = th17;
                                                    cArr = cArrCopyOf;
                                                }
                                            } catch (Throwable th18) {
                                                th = th18;
                                                z2 = z7;
                                                ex6Var = ex6Var;
                                                jiVar = jiVar3;
                                                cArr = cArrCopyOf;
                                            }
                                            i2 = 0;
                                            Arrays.fill(cArr, 0, cArr.length, (char) 0);
                                        } catch (Throwable th19) {
                                            z2 = z7;
                                            ex6Var = ex6Var;
                                            jiVar = jiVar3;
                                            i2 = 0;
                                            Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
                                            String message4 = th19.getMessage();
                                            if (message4 == null) {
                                                message4 = "Failed to build app-data backup request";
                                            }
                                            tlVar.a(message4);
                                        }
                                    }
                                    i = i2;
                                    j = j4;
                                    z = z2;
                                } else if (emVar instanceof am) {
                                    am amVar = (am) emVar;
                                    mt3 mt3Var3 = new mt3() { // from class: ol
                                        @Override // defpackage.mt3
                                        public final Object invoke(Object obj2) {
                                            xkVar.invoke(Integer.valueOf(Const.r(kh6Var.a + ((Long) obj2).longValue(), j4)));
                                            return be8.a;
                                        }
                                    };
                                    Long lValueOf3 = Long.valueOf(amVar.b());
                                    p93 p93Var5 = p93.a;
                                    String strC5 = p93.c(lValueOf3);
                                    vr6.i$default(vr6.INSTANCE, "AppBackupTask", "Backing up Ext Data (" + strC5 + ", Cache=" + z7 + ", v6)", null, 4, null);
                                    SwiftApp.Companion companion5 = SwiftApp.d;
                                    ex6Var2.k(dj7.g(R.string.backing_up_external_data) + " (" + strC5 + ")");
                                    q63 q63VarN = hkVar.n();
                                    iu iuVar3 = iu.EXTDATA;
                                    String externalDataDir = jiVar.getExternalDataDir();
                                    String packageName = jiVar.getPackageName();
                                    cy0 cy0VarJ3 = j(xp1Var);
                                    char[] cArr3 = (char[]) gv7Var4.getValue();
                                    j = j4;
                                    i = 0;
                                    if (b(this, amVar, iuVar3, externalDataDir, q63VarN, packageName, cy0VarJ3, new fz6(Arrays.copyOf(cArr3, cArr3.length)), hzVar.g, mt3Var3)) {
                                        LocalMetadata localMetadata3 = ok0Var.t;
                                        qx sizeInfo2 = jiVar.getSizeInfo();
                                        if (sizeInfo2 != null) {
                                            jiVar = jiVar3;
                                            ex6Var = ex6Var2;
                                            lValueOf = Long.valueOf(sizeInfo2.getExtDataSize(z7));
                                        } else {
                                            jiVar = jiVar3;
                                            ex6Var = ex6Var2;
                                            lValueOf = null;
                                        }
                                        localMetadata3.updateExtDataDetails(lValueOf, Long.valueOf(q63VarN.A()), Boolean.TRUE, "AEGIS-256", (String) gv7Var3.getValue(), Long.valueOf(System.currentTimeMillis()));
                                    }
                                    jiVar = jiVar3;
                                    ex6Var = ex6Var2;
                                    z = z7;
                                } else {
                                    i = 0;
                                    j = j4;
                                    z = z7;
                                    if (emVar instanceof bm) {
                                        bm bmVar = (bm) emVar;
                                        mt3 mt3Var4 = new mt3() { // from class: pl
                                            @Override // defpackage.mt3
                                            public final Object invoke(Object obj2) {
                                                xkVar.invoke(Integer.valueOf(Const.r(kh6Var.a + ((Long) obj2).longValue(), j)));
                                                return be8.a;
                                            }
                                        };
                                        Long lValueOf4 = Long.valueOf(bmVar.b());
                                        p93 p93Var6 = p93.a;
                                        String strC6 = p93.c(lValueOf4);
                                        vr6.i$default(vr6.INSTANCE, "AppBackupTask", eq3.k("Backing up Media (", strC6, ", v6)"), null, 4, null);
                                        SwiftApp.Companion companion6 = SwiftApp.d;
                                        ex6Var2.k(dj7.g(R.string.backing_up_media) + " (" + strC6 + ")");
                                        q63 q63VarQ = hkVar.q();
                                        iu iuVar4 = iu.MEDIA;
                                        String mediaDir = jiVar.getMediaDir();
                                        String packageName2 = jiVar.getPackageName();
                                        cy0 cy0VarJ4 = j(xp1Var);
                                        char[] cArr4 = (char[]) gv7Var4.getValue();
                                        if (b(this, bmVar, iuVar4, mediaDir, q63VarQ, packageName2, cy0VarJ4, new fz6(Arrays.copyOf(cArr4, cArr4.length)), hzVar.g, mt3Var4)) {
                                            jiVar = jiVar3;
                                            ex6Var = ex6Var2;
                                            hzVar = hzVar;
                                            ok0Var.t.updateMediaDetails(Long.valueOf(bmVar.b()), Long.valueOf(q63VarQ.A()), Boolean.TRUE, "AEGIS-256", (String) gv7Var3.getValue(), Long.valueOf(System.currentTimeMillis()));
                                        } else {
                                            jiVar = jiVar3;
                                            ex6Var = ex6Var2;
                                            hzVar = hzVar;
                                        }
                                    } else {
                                        if (!(emVar instanceof zl)) {
                                            jiVar = jiVar3;
                                            q.j();
                                            return;
                                        }
                                        zl zlVar = (zl) emVar;
                                        ql qlVar = new ql(kh6Var, j, xkVar, 0);
                                        Long lValueOf5 = Long.valueOf(zlVar.b());
                                        p93 p93Var7 = p93.a;
                                        String strC7 = p93.c(lValueOf5);
                                        vr6.i$default(vr6.INSTANCE, "AppBackupTask", eq3.k("Backing up Expansion (", strC7, ", v6)"), null, 4, null);
                                        SwiftApp.Companion companion7 = SwiftApp.d;
                                        ex6Var2.k(dj7.g(R.string.backing_up_expansion) + " (" + strC7 + ")");
                                        q63 q63VarM = hkVar.m();
                                        if (b(this, zlVar, iu.EXPANSION, jiVar.getExpansionDir(), q63VarM, jiVar.getPackageName(), oy6.j, gz6Var, hzVar.g, qlVar)) {
                                            jiVar = jiVar3;
                                            ex6Var = ex6Var2;
                                            hzVar = hzVar;
                                            localMetadata.updateExpansionDetails(Long.valueOf(zlVar.b()), Long.valueOf(q63VarM.A()), Long.valueOf(System.currentTimeMillis()));
                                        } else {
                                            jiVar = jiVar3;
                                            ex6Var = ex6Var2;
                                            hzVar = hzVar;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    vlVar = this;
                    i3 = i;
                    jiVar2 = jiVar;
                    i4 = i5;
                    hkVar2 = hkVar;
                    hzVar2 = hzVar;
                    xp1Var2 = xp1Var;
                    ex6Var = ex6Var;
                    z4 = z;
                    arrayList2 = arrayList;
                    jC = j;
                }
                return;
            }
            switch (ul.a[((gz) it.next()).ordinal()]) {
                case 1:
                    wlVar = new wl(q63Var);
                    continue;
                    arrayList2.add(wlVar);
                    break;
                case 2:
                    wlVar = new dm(jiVar2.getSplitSourceDirs(), hkVar2.C());
                    break;
                case 3:
                    wlVar = new cm(jiVar2.getSharedLibsInfos(), hkVar2.z());
                    break;
                case 4:
                    wlVar = new yl(jiVar2, z4);
                    break;
                case 5:
                    wlVar = new am(jiVar2, z4);
                    break;
                case 6:
                    wlVar = new zl(jiVar2);
                    break;
                case 7:
                    wlVar = new bm(jiVar2);
                    break;
                case 8:
                    l0.e("SpecialData is generated with app metadata, not an app part backup task");
                    return;
                default:
                    q.j();
                    return;
            }
            arrayList2.add(wlVar);
        }
    }

    public final ArrayList c(yl ylVar) {
        String deDataDir;
        boolean z = this.a.g;
        ArrayList arrayList = new ArrayList();
        ji jiVar = this.m;
        String dataDir = jiVar.getDataDir();
        if (dataDir != null) {
            if (nq7.j0(dataDir)) {
                dataDir = null;
            }
            if (dataDir != null) {
                q63 q63Var = new q63(dataDir, 1);
                ArrayList arrayList2 = new ArrayList();
                if (!z) {
                    arrayList2.add("cache");
                }
                arrayList2.add("code_cache");
                arrayList2.add("lib");
                arrayList2.add("shared_prefs/com.google.android.gms.*");
                arrayList.add(new hz6("data", q63Var, true, null, arrayList2, 8));
            }
        }
        if (((Boolean) ylVar.f.getValue()).booleanValue() && (deDataDir = jiVar.getDeDataDir()) != null) {
            if (nq7.j0(deDataDir)) {
                deDataDir = null;
            }
            if (deDataDir != null) {
                q63 q63Var2 = new q63(deDataDir, 1);
                ArrayList arrayList3 = new ArrayList();
                if (!z) {
                    arrayList3.add("cache");
                }
                arrayList3.add("code_cache");
                arrayList3.add("lib");
                arrayList3.add("shared_prefs/com.google.android.gms.*");
                arrayList.add(new hz6("data_de", q63Var2, true, null, arrayList3, 8));
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        c6.f("App Data backup requires at least one data directory");
        return null;
    }

    public final void f(ok0 ok0Var) {
        ji jiVar = this.m;
        List<String> splitSourceDirs = jiVar.getSplitSourceDirs();
        if (splitSourceDirs == null || splitSourceDirs.isEmpty()) {
            e(ok0Var);
        }
        List<yc7> sharedLibsInfos = jiVar.getSharedLibsInfos();
        if (sharedLibsInfos == null || sharedLibsInfos.isEmpty()) {
            d(ok0Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:166:0x045e  */
    /* JADX WARN: Code duplicated, block: B:232:0x0607  */
    /* JADX WARN: Code duplicated, block: B:56:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:58:0x01db  */
    /* JADX WARN: Code duplicated, block: B:80:0x0223  */
    /* JADX WARN: Code duplicated, block: B:81:0x022e  */
    /* JADX WARN: Code duplicated, block: B:82:0x0238  */
    /* JADX WARN: Multi-variable type inference failed */
    public final tl g(xk xkVar) {
        ji jiVar;
        ji jiVar2;
        String[] strArr;
        tu0 tu0VarE;
        hk hkVar;
        String[] strArr2;
        Object obj;
        String str;
        Map map;
        Iterator it;
        String strY0;
        String str2;
        String str3;
        String str4;
        String strT;
        String str5;
        LocalMetadata localMetadata;
        uu uuVar;
        int[] iArr;
        vr6 vr6Var = vr6.INSTANCE;
        ji jiVar3 = this.m;
        vr6.i$default(vr6Var, "AppBackupTask", xs1.j("Started backup: ", jiVar3.asString()), null, 4, null);
        StringBuilder sb = new StringBuilder("Props=");
        hz hzVar = this.a;
        sb.append(hzVar);
        vr6.i$default(vr6Var, "AppBackupTask", sb.toString(), null, 4, null);
        boolean zI = i();
        tl tlVar = this.q;
        if (zI) {
            return tlVar;
        }
        mp6 mp6Var = mp6.a;
        String str6 = mp6.i;
        if (str6 != null && str6.length() != 0 && pe4.d(jiVar3.getPackageName(), mp6.i)) {
            vr6Var.i("AppBackupTask", "Magisk package shouldn't be backed up or restored! Skipping.", vr6.a.YELLOW);
            return tlVar;
        }
        if (mp6.g() && pe4.d(jiVar3.getPackageName(), "moe.shizuku.privileged.api")) {
            vr6Var.i("AppBackupTask", "Shizuku package shouldn't be backed up or restored when Swift Backup is actively using Shizuku! Skipping.", vr6.a.YELLOW);
            return tlVar;
        }
        c40 c40Var = this.b;
        ex6 ex6Var = c40Var.i;
        SwiftApp.Companion companion = SwiftApp.d;
        ex6Var.k(SwiftApp.Companion.c().getString(R.string.backing_up));
        String sourceDir = jiVar3.getSourceDir();
        if (sourceDir == null || sourceDir.length() == 0) {
            vr6.e$default(vr6Var, "AppBackupTask", eq3.k("App sourceDir is invalid (", jiVar3.getSourceDir(), "). Probably uninstalled, Skipping..."), null, 4, null);
            return tlVar;
        }
        String sourceDir2 = jiVar3.getSourceDir();
        sourceDir2.getClass();
        q63 q63Var = new q63(sourceDir2, 1);
        if (!q63Var.j()) {
            vr6.e$default(vr6Var, "AppBackupTask", "APK doesn't exist at " + q63Var + "!", null, 4, null);
            return tlVar;
        }
        qk0 qk0Var = new qk0(hzVar, q63Var, this.c, (String) this.p.getValue(), this.q, this.l, c40Var.u);
        StringBuilder sb2 = new StringBuilder("MultipleBackupStrategy: ");
        MultipleBackupStrategy.Representation representation = qk0Var.i;
        sb2.append(representation);
        tl tlVar2 = tlVar;
        vr6.i$default(vr6Var, "BackupPlan", sb2.toString(), null, 4, null);
        List list = hzVar.c;
        boolean zO = wx3.o(list);
        ji jiVar4 = qk0Var.h;
        if (zO) {
            jiVar4.getSplitsUsingWorkaround();
        }
        if (qk0Var.j()) {
            jiVar = jiVar4;
            vr6.w$default(vr6Var, "BackupPlan", "App is blacklisted. No Data will not be backed up", null, 4, null);
        } else {
            jiVar = jiVar4;
        }
        if (wx3.n(list) && !qk0Var.j()) {
            jiVar.calculateSize(list.contains(iu.DATA), list.contains(iu.EXTDATA), list.contains(iu.MEDIA), list.contains(iu.EXPANSION));
        }
        if (representation instanceof MultipleBackupStrategy.Representation.SingleBackup) {
            tu0VarE = qk0Var.f();
            jiVar2 = jiVar3;
            strArr = null;
        } else if (representation instanceof MultipleBackupStrategy.Representation.ConditionalBackups) {
            MultipleBackupStrategy.Representation.ConditionalBackups conditionalBackups = (MultipleBackupStrategy.Representation.ConditionalBackups) representation;
            jiVar2 = jiVar3;
            strArr = null;
            vr6.i$default(vr6Var, "BackupPlan", xs1.j("MultipleBackupStrategy condition: ", conditionalBackups.getCondition().name()), null, 4, null);
            MultipleBackupStrategy.NewBackupCondition newBackupCondition = MultipleBackupStrategy.NewBackupCondition.ApkChanges;
            MultipleBackupStrategy.NewBackupCondition newBackupCondition2 = MultipleBackupStrategy.NewBackupCondition.ApkOrDataChanges;
            boolean zContains = fl1.A0(newBackupCondition, newBackupCondition2).contains(conditionalBackups.getCondition());
            boolean zContains2 = fl1.A0(MultipleBackupStrategy.NewBackupCondition.DataChanges, newBackupCondition2).contains(conditionalBackups.getCondition());
            if (zContains) {
                if (!list.contains(iu.APP)) {
                    vr6.i$default(vr6Var, "BackupPlan", "APK not selected for backup", null, 4, null);
                } else if (qk0Var.i()) {
                    tu0VarE = qk0Var.e();
                } else {
                    vr6.i$default(vr6Var, "BackupPlan", "No change in APK", null, 4, null);
                }
                if (zContains2) {
                    if (wx3.n(list)) {
                        vr6.i$default(vr6Var, "BackupPlan", "No data parts selected for backup", null, 4, null);
                    } else if (qk0Var.a()) {
                        vr6.i$default(vr6Var, "BackupPlan", "No change in any selected Data parts", null, 4, null);
                        if (qk0Var.j()) {
                            vr6.i$default(vr6Var, "BackupPlan", "App is blacklisted with NoData mode.", null, 4, null);
                        }
                    } else {
                        vr6.i$default(vr6Var, "BackupPlan", "No change in any selected Data parts", null, 4, null);
                        if (qk0Var.j()) {
                            vr6.i$default(vr6Var, "BackupPlan", "App is blacklisted with NoData mode.", null, 4, null);
                        }
                    }
                    tu0VarE = qk0Var.f();
                } else {
                    tu0VarE = qk0Var.f();
                }
            } else if (zContains2) {
                tu0VarE = qk0Var.f();
            } else {
                if (wx3.n(list)) {
                    vr6.i$default(vr6Var, "BackupPlan", "No data parts selected for backup", null, 4, null);
                } else if ((qk0Var.a() || !qk0Var.k()) && !((qk0Var.c() && qk0Var.m()) || ((qk0Var.b() && qk0Var.l()) || (qk0Var.d() && qk0Var.o())))) {
                    vr6.i$default(vr6Var, "BackupPlan", "No change in any selected Data parts", null, 4, null);
                    if (qk0Var.j()) {
                        vr6.i$default(vr6Var, "BackupPlan", "App is blacklisted with NoData mode.", null, 4, null);
                    }
                } else {
                    tu0VarE = qk0Var.e();
                }
                tu0VarE = qk0Var.f();
            }
        } else {
            jiVar2 = jiVar3;
            strArr = null;
            if (!(representation instanceof MultipleBackupStrategy.Representation.DatedBackups)) {
                q.j();
                return null;
            }
            tu0VarE = qk0Var.e();
        }
        if (tu0VarE instanceof nk0) {
            vr6.i$default(vr6Var, "AppBackupTask", "Skipping backup. Reason: ".concat(((nk0) tu0VarE).n), null, 4, null);
            return tlVar2;
        }
        if (!(tu0VarE instanceof ok0)) {
            y5.g(tu0VarE, "Unexpected BackupPlan: ");
            return null;
        }
        ok0 ok0Var = (ok0) tu0VarE;
        LocalMetadata localMetadata2 = ok0Var.t;
        hk hkVar2 = ok0Var.n;
        boolean z = ok0Var.o;
        LinkedHashSet linkedHashSet = this.n;
        if (z) {
            linkedHashSet.add(gz.Apk);
            List<String> splitSourceDirs = jiVar2.getSplitSourceDirs();
            if (splitSourceDirs != null && !splitSourceDirs.isEmpty()) {
                linkedHashSet.add(gz.Splits);
            }
            List<yc7> sharedLibsInfos = jiVar2.getSharedLibsInfos();
            if (sharedLibsInfos != null && !sharedLibsInfos.isEmpty()) {
                linkedHashSet.add(gz.SharedLibs);
            }
        }
        if (ok0Var.p) {
            linkedHashSet.add(gz.Data);
        }
        if (ok0Var.q) {
            linkedHashSet.add(gz.ExtData);
        }
        if (ok0Var.r) {
            linkedHashSet.add(gz.Expansion);
        }
        if (ok0Var.s) {
            linkedHashSet.add(gz.Media);
        }
        q63.E(hkVar2.e());
        if (wx3.o(hzVar.c)) {
            f(ok0Var);
        }
        if (linkedHashSet.isEmpty()) {
            vr6.w$default(vr6Var, "AppBackupTask", "No app part backups to perform with this app!", null, 4, null);
        } else {
            vr6.i$default(vr6Var, "AppBackupTask", "Tasks to perform = ".concat(el1.Y0(linkedHashSet, null, null, null, null, 63)), null, 4, null);
            a(q63Var, ok0Var, xkVar);
        }
        if (i()) {
            tlVar2 = tlVar2;
            hkVar = hkVar2;
        } else {
            vr6.i$default(vr6.INSTANCE, "AppBackupTask", "Backing up permissions and additional data", null, 4, null);
            gv7 gv7Var = av.a;
            LocalMetadata localMetadata3 = ok0Var.t;
            String packageName = localMetadata3.getPackageName();
            Set set = (Set) this.f.invoke();
            Set set2 = (Set) this.h.invoke();
            Set set3 = (Set) this.i.invoke();
            g55 g55Var = (g55) this.j.invoke();
            Set set4 = (Set) this.k.invoke();
            packageName.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            g00 g00Var = g00.a;
            PackageInfo packageInfoQ = g00.q(4096, packageName);
            if (packageInfoQ == null || (strArr2 = packageInfoQ.requestedPermissions) == null || strArr2.length == 0) {
                strArr2 = strArr;
            }
            if (packageInfoQ == null || (iArr = packageInfoQ.requestedPermissionsFlags) == null || iArr.length == 0) {
                obj = iArr;
                obj = strArr;
            }
            obj = iArr;
            mp6 mp6Var2 = mp6.a;
            Object[] objArr = obj;
            if (mp6.f()) {
                int i = g00.i();
                Pattern patternCompile = Pattern.compile("^\\s*User\\s+(\\d+):.*");
                patternCompile.getClass();
                str = packageName;
                Pattern patternCompile2 = Pattern.compile("^\\s*([A-Za-z0-9_.]+):\\s+granted=(?:true|false),\\s+flags=\\[(.*)]");
                patternCompile2.getClass();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                String str7 = String.format((String) g42.m.getValue(), Arrays.copyOf(new Object[]{str}, 1));
                String strH = xs1.h(i, "^[[:space:]]*User[[:space:]]*", ":");
                Iterator it2 = mp6Var2.h(new String[]{u48.n(str7, " 2>/dev/null | sed -n '", eq3.l("/", strH, "/,$ { /^[[:space:]]*User[[:space:]][0-9][0-9]*:/ { /", strH, "/! q; }; p; }"), "'")}, ip6.SHIZUKU).iterator();
                boolean z2 = false;
                boolean z3 = false;
                while (it2.hasNext()) {
                    String str8 = (String) it2.next();
                    str8.getClass();
                    Matcher matcher = patternCompile.matcher(str8);
                    matcher.getClass();
                    u75 u75Var = !matcher.matches() ? null : new u75(matcher, str8);
                    if (u75Var != null) {
                        Integer numX = uq7.X((String) ((s75) u75Var.a()).get(1));
                        patternCompile2 = patternCompile2;
                        it = it2;
                        z3 = numX != null && numX.intValue() == i;
                    } else {
                        if (z3) {
                            String string = nq7.H0(str8).toString();
                            if (pe4.d(string, "runtime permissions:")) {
                                patternCompile2 = patternCompile2;
                                it = it2;
                                z2 = true;
                            } else if (z2) {
                                Matcher matcher2 = patternCompile2.matcher(str8);
                                matcher2.getClass();
                                u75 u75Var2 = !matcher2.matches() ? null : new u75(matcher2, str8);
                                if (u75Var2 != null) {
                                    String str9 = (String) ((s75) u75Var2.a()).get(1);
                                    List listX0 = nq7.x0((CharSequence) ((s75) u75Var2.a()).get(2), new String[]{"|"}, 6);
                                    it = it2;
                                    ArrayList arrayList = new ArrayList(hl1.G0(listX0, 10));
                                    Iterator it3 = listX0.iterator();
                                    while (it3.hasNext()) {
                                        String upperCase = nq7.H0((String) it3.next()).toString().toUpperCase(Locale.ROOT);
                                        upperCase.getClass();
                                        arrayList.add(upperCase);
                                    }
                                    ArrayList arrayList2 = new ArrayList();
                                    for (Object obj2 : arrayList) {
                                        if (((String) obj2).length() > 0) {
                                            arrayList2.add(obj2);
                                        }
                                    }
                                    linkedHashMap2.put(str9, el1.z1(arrayList2));
                                } else {
                                    it = it2;
                                    if (uq7.O(string, ":", false)) {
                                    }
                                }
                            } else {
                                patternCompile2 = patternCompile2;
                                it = it2;
                            }
                        } else {
                            patternCompile2 = patternCompile2;
                            it = it2;
                        }
                        it2 = it;
                        patternCompile2 = patternCompile2;
                    }
                    z2 = false;
                    it2 = it;
                    patternCompile2 = patternCompile2;
                }
                map = linkedHashMap2;
            } else {
                map = pv2.a;
                str = packageName;
            }
            mp6 mp6Var3 = mp6.a;
            fu fuVarO = mp6.f() ? l73.o(str) : null;
            if (strArr2 != null && objArr != 0) {
                int length = strArr2.length;
                for (int i2 = 0; i2 < length; i2++) {
                    String str10 = strArr2[i2];
                    str10.getClass();
                    if (((Map) av.b.getValue()).containsValue(str10)) {
                        boolean z4 = (objArr[i2] & 2) != 0;
                        Set set5 = (Set) map.get(str10);
                        if (set5 == null) {
                            set5 = sv2.a;
                        }
                        if (z4) {
                            uuVar = uu.Granted;
                        } else if (set5.contains("USER_FIXED")) {
                            uuVar = uu.DeniedUserFixed;
                        } else {
                            uuVar = set5.contains("USER_SET") ? uu.DeniedUserSet : null;
                        }
                        if (uuVar != null) {
                            linkedHashMap.put(str10, new su(str10, uuVar));
                        }
                    }
                }
            }
            mp6 mp6Var4 = mp6.a;
            if (mp6.f()) {
                for (String str11 : av.a(str, set, set2, set3, g55Var, set4, fuVarO, true)) {
                    linkedHashMap.put(str11, new su(str11, uu.Granted));
                }
            }
            Collection collectionValues = linkedHashMap.values();
            collectionValues.getClass();
            for (su suVar : av.i(collectionValues)) {
                if (((Map) av.b.getValue()).containsValue(suVar.a)) {
                    vr6 vr6Var2 = vr6.INSTANCE;
                    String str12 = suVar.a;
                    vr6.i$default(vr6Var2, "AppPermissionsHelper", dj7.l("Permission: ", nq7.A0(str12, ".", str12), " = ", av.j(suVar.b)), null, 4, null);
                }
            }
            Collection collectionValues2 = linkedHashMap.values();
            collectionValues2.getClass();
            List listI = av.i(collectionValues2);
            if (listI.isEmpty()) {
                strY0 = null;
            } else {
                List<su> listI2 = av.i(listI);
                ArrayList arrayList3 = new ArrayList();
                for (su suVar2 : listI2) {
                    Integer num = (Integer) ((Map) av.a.getValue()).get(suVar2.a);
                    String str13 = num != null ? num.intValue() + ":" + suVar2.b.getToken() : null;
                    if (str13 != null) {
                        arrayList3.add(str13);
                    }
                }
                ArrayList arrayList4 = !arrayList3.isEmpty() ? arrayList3 : null;
                if (arrayList4 != null) {
                    strY0 = el1.Y0(arrayList4, ",", null, null, null, 62);
                } else {
                    strY0 = null;
                }
            }
            localMetadata3.setPermissionIdsCsv(null);
            localMetadata3.setPermissionStatesCsv(null);
            String str14 = (strY0 == null || nq7.j0(strY0)) ? null : strY0;
            if (str14 == null) {
                vr6.i$default(vr6.INSTANCE, "AppBackupTask", "No permission choices to back up", null, 4, null);
            }
            yo5 yo5Var = (yo5) this.e.invoke();
            String packageName2 = localMetadata3.getPackageName();
            yo5Var.getClass();
            Map map2 = yo5Var.a;
            packageName2.getClass();
            if (map2 == null || !map2.containsKey(packageName2)) {
                str2 = null;
            } else {
                vr6.i$default(vr6.INSTANCE, "AppBackupTask", "Special permission: Notification Access = Granted", null, 4, null);
                String packageName3 = localMetadata3.getPackageName();
                packageName3.getClass();
                str2 = (String) map2.get(packageName3);
            }
            o6 o6Var = (o6) this.g.invoke();
            String packageName4 = localMetadata3.getPackageName();
            o6Var.getClass();
            Map map3 = o6Var.a;
            packageName4.getClass();
            if (map3 == null || !map3.containsKey(packageName4)) {
                str3 = null;
            } else {
                vr6.i$default(vr6.INSTANCE, "AppBackupTask", "Special permission: Accessibility service = Granted", null, 4, null);
                String packageName5 = localMetadata3.getPackageName();
                packageName5.getClass();
                str3 = (String) map3.get(packageName5);
            }
            HashMap map4 = (HashMap) this.d.invoke();
            if (map4 == null || map4.isEmpty()) {
                str4 = null;
            } else {
                kk7 kk7Var = (kk7) map4.get(jiVar2.getPackageName());
                if (kk7Var == null) {
                    vr6.i$default(vr6.INSTANCE, "AppBackupTask", "No ssaid to backup", null, 4, null);
                } else {
                    String str15 = kk7Var.c;
                    ai6 ai6Var = lk7.a;
                    String str16 = kk7Var.b;
                    if (str16 != null && str16.length() != 0 && str15 != null && lk7.a.b(str15)) {
                        vr6.i$default(vr6.INSTANCE, "AppBackupTask", xs1.j("Backed up app ssaid = ", str15), null, 4, null);
                        str4 = str15;
                    }
                }
                str4 = null;
            }
            String packageName6 = jiVar2.getPackageName();
            g00 g00Var2 = g00.a;
            int i3 = g00.i();
            packageName6.getClass();
            if (mp6.g) {
                if (ap5.a(packageName6)) {
                    File fileB = ap5.b("backup");
                    try {
                        try {
                            List listA = bv.a(NotificationPolicyProxy.class.getName(), "swiftbackup_notification_policy_proxy", fl1.A0("backup", String.valueOf(i3), packageName6, fileB.getAbsolutePath()), null);
                            if (listA == null || !listA.isEmpty()) {
                                Iterator it4 = listA.iterator();
                                while (true) {
                                    if (it4.hasNext()) {
                                        if (pe4.d((String) it4.next(), "SB_NOTIFICATION_POLICY:OK")) {
                                            Charset charset = f51.a;
                                            strT = nc3.T(fileB, charset);
                                            byte[] bytes = strT.getBytes(charset);
                                            bytes.getClass();
                                            int length2 = bytes.length;
                                            if (length2 == 0 || length2 > 524288) {
                                                vr6.w$default(vr6.INSTANCE, "NotificationPolicyBackupHelper", "Skipping notification settings backup due to XML size=" + length2, null, 4, null);
                                                strT = null;
                                            } else {
                                                vr6.i$default(vr6.INSTANCE, "NotificationPolicyBackupHelper", "Backed up notification settings", null, 4, null);
                                            }
                                        }
                                    }
                                    fileB.delete();
                                    str5 = strT;
                                }
                            }
                            if (listA == null || !listA.isEmpty()) {
                                Iterator it5 = listA.iterator();
                                while (true) {
                                    if (it5.hasNext()) {
                                        if (pe4.d((String) it5.next(), "SB_NOTIFICATION_POLICY:MISSING")) {
                                        }
                                    }
                                    strT = null;
                                    fileB.delete();
                                    str5 = strT;
                                }
                            }
                            if (listA == null || !listA.isEmpty()) {
                                Iterator it6 = listA.iterator();
                                do {
                                    if (it6.hasNext()) {
                                    }
                                } while (!pe4.d((String) it6.next(), "SB_NOTIFICATION_POLICY:UNSUPPORTED"));
                                strT = null;
                                fileB.delete();
                                str5 = strT;
                            }
                            vr6.w$default(vr6.INSTANCE, "NotificationPolicyBackupHelper", "Notification settings backup failed: " + el1.Y0(listA, null, null, null, null, 63), null, 4, null);
                            strT = null;
                            fileB.delete();
                            str5 = strT;
                        } catch (Exception e) {
                            vr6.w$default(vr6.INSTANCE, "NotificationPolicyBackupHelper", "Notification settings backup failed: " + e.getMessage(), null, 4, null);
                            fileB.delete();
                            str5 = null;
                        }
                    } catch (Throwable th) {
                        fileB.delete();
                        throw th;
                    }
                } else {
                    vr6.w$default(vr6.INSTANCE, "NotificationPolicyBackupHelper", "Skipping notification settings backup for unsafe package name: ".concat(packageName6), null, 4, null);
                }
                str5 = null;
            } else {
                str5 = null;
            }
            AppSpecialDataPayload.Companion.write(str14, str4, str2, str3, str5, ok0Var.n.B());
            localMetadata3.setNtfAccessComponent(null);
            localMetadata3.setAccessibilityComponent(null);
            localMetadata3.setSsaid(null);
            if (ok0Var.u) {
                localMetadata = localMetadata2;
                localMetadata.setDateBackupUpdated(Long.valueOf(System.currentTimeMillis()));
            } else {
                localMetadata = localMetadata2;
            }
            vr6.i$default(vr6Var, "AppBackupTask", "Saving backup metadata", null, 4, null);
            jiVar2.refresh();
            cu.a.f(localMetadata, hkVar2.v());
            Set set6 = j94.a;
            j94.f(jiVar2.getPackageName(), jiVar2.isInstalled());
            hkVar = hkVar2;
            if (hkVar2.E()) {
                this.r = hkVar;
            }
            if (!this.s && ji8.s(hzVar.d)) {
                MultipleBackupStrategy.Representation representationA = f.a(hzVar.i);
                jiVar2.refreshBackupDetails();
                List<gm> localBackups = jiVar2.getLocalBackups();
                if (localBackups != null) {
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj3 : localBackups) {
                        if (((gm) obj3).b.isProtectedBackup()) {
                            arrayList5.add(obj3);
                        }
                    }
                    ArrayList arrayList6 = new ArrayList();
                    for (Object obj4 : localBackups) {
                        if (!arrayList5.contains((gm) obj4)) {
                            arrayList6.add(obj4);
                        }
                    }
                    vr6 vr6Var3 = vr6.INSTANCE;
                    vr6.i$default(vr6Var3, "AppBackupTask: LocalBackupsCleanup", "Multiple backups strategy: " + representationA, null, 4, null);
                    vr6.i$default(vr6Var3, "AppBackupTask: LocalBackupsCleanup", xs1.m(xs1.n("Total backups: ", localBackups.size(), " (", " Normal + ", arrayList6.size()), arrayList5.size(), " Protected)"), null, 4, null);
                    if (arrayList6.isEmpty() || arrayList6.size() <= representationA.getMaxNumOfBackups()) {
                        vr6.i$default(vr6Var3, "AppBackupTask: LocalBackupsCleanup", "No backups to delete", null, 4, null);
                    } else {
                        List listN0 = el1.N0(representationA.getMaxNumOfBackups(), arrayList6);
                        if (!listN0.isEmpty()) {
                            vr6.i$default(vr6Var3, "AppBackupTask: LocalBackupsCleanup", dj7.j("Max normal backups to keep: ", representationA.getMaxNumOfBackups(), ". Deleting ", " old normal backup(s).", listN0.size()), null, 4, null);
                            ArrayList arrayList7 = new ArrayList(hl1.G0(listN0, 10));
                            Iterator it7 = listN0.iterator();
                            while (it7.hasNext()) {
                                arrayList7.add(((gm) it7.next()).a);
                            }
                            ik.a(jiVar2.getPackageName(), new oy7(iu.getEntries(), nc8.I(q05.DEVICE), new my7(arrayList7, ov2.a)));
                        }
                    }
                }
            }
        }
        if (!hkVar.E()) {
            List listA0 = fl1.A0(new pw5("apk", hkVar.c()), new pw5("splits", hkVar.C()), new pw5("data", hkVar.g()), new pw5("extData", hkVar.n()), new pw5("media", hkVar.q()), new pw5("expansion", hkVar.m()), new pw5("metadata", hkVar.v()), new pw5("specialData", hkVar.B()));
            ArrayList arrayList8 = new ArrayList();
            for (Object obj5 : listA0) {
                if (((q63) ((pw5) obj5).b).j()) {
                    arrayList8.add(obj5);
                }
            }
            String strY1 = el1.Y0(arrayList8, null, null, null, new sl(0), 31);
            if (strY1.length() == 0) {
                strY1 = "none";
            }
            vr6.i$default(vr6.INSTANCE, "AppBackupTask", dj7.l("Backup has no committed metadata/app parts, deleting base directory ", hkVar.e().p(), ". Existing files before cleanup: ", strY1), null, 4, null);
            hkVar.e().g();
        }
        xkVar.invoke(100);
        return tlVar2;
    }

    public final c07 h(final long j, final long j2, final mt3 mt3Var) {
        HashSet hashSet = mz6.a;
        return new c07(Long.valueOf(j), new u10(new mt3(j, j2, mt3Var, this) { // from class: rl
            public final /* synthetic */ long a;
            public final /* synthetic */ long b;
            public final /* synthetic */ mt3 c;

            @Override // defpackage.mt3
            public final Object invoke(Object obj) {
                dz6 dz6Var = (dz6) obj;
                dz6Var.getClass();
                Long l = dz6Var.b;
                long jLongValue = l != null ? l.longValue() : this.a;
                long j3 = dz6Var.a;
                long jI = 0;
                if (jLongValue > 0) {
                    long j4 = this.b;
                    if (j4 > 0) {
                        jI = l73.i((long) ((j3 / jLongValue) * j4), 0L, j4);
                    }
                }
                this.c.invoke(Long.valueOf(jI));
                return be8.a;
            }
        }, 17), new my6(d07.a));
    }

    public final boolean i() {
        String str;
        String str2;
        tl tlVar = this.q;
        String str3 = tlVar.g;
        if ((str3 == null || str3.length() == 0) && (((str = tlVar.c) == null || str.length() == 0) && ((!tlVar.c() || (str2 = tlVar.g) == null || str2.length() == 0) && !this.s))) {
            ji jiVar = this.m;
            boolean zCheckInstalled = jiVar.checkInstalled();
            if (!jiVar.isInstalled()) {
                vr6.e$default(vr6.INSTANCE, "AppBackupTask", xs1.j("App uninstalled: ", jiVar.asString()), null, 4, null);
            }
            if (zCheckInstalled) {
                return false;
            }
        }
        return true;
    }
}
