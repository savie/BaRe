package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.f;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c40 extends pw6 {
    public final List m;
    public final String n;
    public final ex6 o;
    public jl p;
    public wv q;
    public lz r;
    public jk s;
    public nq t;
    public boolean u;
    public pw5 v;

    public c40(List list, ty7 ty7Var, b40 b40Var) {
        boolean z;
        super(ty7Var, b40Var);
        this.m = list;
        this.n = "AppsTask";
        ex6 ex6Var = new ex6();
        this.o = ex6Var;
        if (!g()) {
            ex6Var.k(((kz) el1.S0(list)).a());
        }
        if (g()) {
            if (!V.INSTANCE.getVp() && (((ty7Var instanceof ky7) || (ty7Var instanceof ry7)) && !list.isEmpty())) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if (((kz) it.next()).b()) {
                        z = true;
                        break;
                    }
                }
            } else {
                z = false;
                break;
            }
            zc2 zc2Var = re3.a;
            try {
                new qe3("batch_apps_cloud", z ? "novp" : null).invoke();
            } catch (Exception unused) {
            }
        }
    }

    @Override // defpackage.pw6
    public final void a() {
        jl jlVar = this.p;
        if (jlVar != null) {
            jlVar.h = true;
            vl vlVar = jlVar.e;
            if (vlVar != null) {
                vr6.w$default(vr6.INSTANCE, "AppBackupTask", "Backup was cancelled", null, 4, null);
                vlVar.s = true;
            }
            a00 a00Var = jlVar.f;
            if (a00Var != null) {
                a00Var.k = true;
                ArrayList arrayListQ0 = el1.Q0(a00Var.g);
                ArrayList<ag8> arrayList = new ArrayList();
                for (Object obj : arrayListQ0) {
                    if (((ag8) obj).c.isRunning()) {
                        arrayList.add(obj);
                    }
                }
                if (!arrayList.isEmpty()) {
                    vr6 vr6Var = vr6.INSTANCE;
                    vr6.w$default(vr6Var, "AppUploadTask", "User cancelled the upload process", null, 4, null);
                    tb1 tb1Var = tb1.a;
                    vr6.w$default(vr6Var, "AppUploadTask", eq3.k("Closing connection with ", qb1.f().getDisplayNameEn(), ", may result in unknown errors"), null, 4, null);
                    for (ag8 ag8Var : arrayList) {
                        ag8Var.getClass();
                        ag8Var.c = gz7.CANCELLED;
                        ag8Var.b();
                    }
                }
            }
        }
        wv wvVar = this.q;
        if (wvVar != null) {
            wvVar.i = true;
            mq mqVar = wvVar.g;
            if (mqVar != null) {
                mqVar.i = true;
                ArrayList arrayListQ1 = el1.Q0(mqVar.h);
                ArrayList<no2> arrayList2 = new ArrayList();
                for (Object obj2 : arrayListQ1) {
                    if (((no2) obj2).d.isRunning()) {
                        arrayList2.add(obj2);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    vr6 vr6Var2 = vr6.INSTANCE;
                    vr6.w$default(vr6Var2, "AppDownloadTask", "User cancelled the download process", null, 4, null);
                    tb1 tb1Var2 = tb1.a;
                    vr6.w$default(vr6Var2, "AppDownloadTask", eq3.k("Closing connection with ", qb1.f().getDisplayNameEn(), ", may result in unknown errors"), null, 4, null);
                    for (no2 no2Var : arrayList2) {
                        no2Var.getClass();
                        no2Var.d = gz7.CANCELLED;
                        no2Var.a();
                    }
                }
            }
        }
        lz lzVar = this.r;
        if (lzVar != null && lzVar.b.isRunning()) {
            lzVar.b = gz7.CANCELLED;
        }
        jk jkVar = this.s;
        if (jkVar != null && jkVar.c.isRunning()) {
            jkVar.c = gz7.CANCELLED;
        }
        nq nqVar = this.t;
        if (nqVar == null || !nqVar.a.isRunning()) {
            return;
        }
        nqVar.a = gz7.CANCELLED;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0314  */
    /* JADX WARN: Code duplicated, block: B:215:0x0521  */
    /* JADX WARN: Code duplicated, block: B:279:0x0640  */
    /* JADX WARN: Code duplicated, block: B:390:0x0390 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:393:0x02e5 A[SYNTHETIC] */
    @Override // defpackage.pw6
    public final void b() {
        List list;
        dz7 dz7Var;
        String str;
        gj5 gj5Var;
        String str2;
        int i;
        List list2;
        String str3;
        gj5 gj5Var2;
        String str4;
        gj5 gj5Var3;
        Boolean boolValueOf;
        Boolean boolValueOf2;
        sv svVar;
        Boolean bool;
        int i2;
        String str5;
        Boolean bool2;
        lh6 lh6Var;
        String str6;
        jz jzVar;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        Boolean boolValueOf3;
        boolean z;
        boolean z2;
        fo2 fo2Var;
        boolean z3;
        boolean z4;
        cz7 cz7Var = this.a;
        boolean z5 = cz7Var instanceof ky7;
        List list3 = this.m;
        if (z5) {
            q((ky7) cz7Var);
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                iy.d.remove(((kz) it.next()).a().getPackageName());
            }
        }
        boolean z6 = cz7Var instanceof ry7;
        dz7 dz7Var2 = this.b;
        String str16 = "Processing ";
        gj5 gj5Var4 = this.d;
        String str17 = "/";
        if (z6) {
            wv wvVar = new wv(this, (ry7) cz7Var);
            this.q = wvVar;
            g00 g00Var = g00.a;
            String str18 = "AppRestoreManager";
            if (g00.x()) {
                vr6.INSTANCE.i("AppRestoreManager", "Secondary user detected", vr6.a.YELLOW);
            }
            vr6.i$default(vr6.INSTANCE, "AppRestoreManager", "Performing pre-restore tasks", null, 4, null);
            mp6 mp6Var = mp6.a;
            jv1 jv1Var = null;
            if (mp6.f()) {
                List listH = mp6Var.h(new String[]{"settings get global package_verifier_enable"}, ip6.SHIZUKU);
                if (listH == null || !listH.isEmpty()) {
                    Iterator it2 = listH.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            String str19 = (String) it2.next();
                            if (pe4.d(str19, "1") || pe4.d(str19, "null")) {
                                z4 = true;
                            }
                        } else {
                            z4 = false;
                        }
                    }
                } else {
                    z4 = false;
                }
                boolValueOf = Boolean.valueOf(z4);
            } else {
                boolValueOf = null;
            }
            if (pe4.d(boolValueOf, Boolean.TRUE)) {
                mp6.a.h(new String[]{"settings put global package_verifier_enable 0"}, ip6.SHIZUKU);
            }
            mp6 mp6Var2 = mp6.a;
            if (mp6.f()) {
                List listH2 = mp6Var2.h(new String[]{"settings get global verifier_verify_adb_installs"}, ip6.SHIZUKU);
                if (listH2 == null || !listH2.isEmpty()) {
                    Iterator it3 = listH2.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            String str20 = (String) it3.next();
                            if (pe4.d(str20, "1") || pe4.d(str20, "null")) {
                                z3 = true;
                            }
                        } else {
                            z3 = false;
                        }
                    }
                } else {
                    z3 = false;
                }
                boolValueOf2 = Boolean.valueOf(z3);
            } else {
                boolValueOf2 = null;
            }
            if (pe4.d(boolValueOf2, Boolean.TRUE)) {
                mp6.a.h(new String[]{"settings put global verifier_verify_adb_installs 0"}, ip6.SHIZUKU);
            }
            lh6 lh6Var2 = new lh6();
            mp6 mp6Var3 = mp6.a;
            if (mp6.f()) {
                zn4 zn4Var = zn4.a;
                zn4.b(null, new uv(lh6Var2, jv1Var, 0));
            }
            Iterator it4 = list3.iterator();
            int i3 = 0;
            while (true) {
                boolean zHasNext = it4.hasNext();
                svVar = wvVar.h;
                if (zHasNext) {
                    int i4 = i3 + 1;
                    dz7Var = dz7Var2;
                    kz kzVar = (kz) it4.next();
                    if (!wvVar.a()) {
                        kzVar.getClass();
                        Iterator it5 = it4;
                        jz jzVar2 = (jz) kzVar;
                        int i5 = i3;
                        AppCloudBackup appCloudBackup = jzVar2.h;
                        ji jiVar = jzVar2.b;
                        List list4 = list3;
                        cz7 cz7Var2 = cz7Var;
                        String str21 = i4 + str17 + list4.size();
                        if (list4.size() > 1) {
                            gj5Var4.i(str21);
                        }
                        vr6.i$default(vr6.INSTANCE, "AppRestoreManager", str16.concat(str21), null, 4, null);
                        p(jiVar);
                        k(null);
                        int i6 = i5 * 100;
                        nv nvVar = new nv(wvVar, kzVar, i6);
                        boolean z7 = appCloudBackup != null;
                        List list5 = jzVar2.c;
                        int i7 = (z7 ? 2 : 1) * 100;
                        boolean z8 = z7;
                        if (z8) {
                            rv rvVar = (rv) wvVar.f.getValue();
                            rvVar.getClass();
                            c40 c40Var = rvVar.a;
                            String str22 = rvVar.c;
                            if (appCloudBackup == null) {
                                c6.f("props.cloudBackup cannot be null!");
                                return;
                            }
                            final mq mqVar = new mq(jzVar2, c40Var, str22, appCloudBackup, rvVar.b);
                            jzVar = jzVar2;
                            wvVar.g = mqVar;
                            mqVar.l = new pv(nvVar, i7, 0);
                            hq hqVar = mqVar.f;
                            List listA0 = fl1.A0(hqVar.c, hqVar.d, hqVar.e, hqVar.f, hqVar.g, hqVar.h, hqVar.i, hqVar.j);
                            boolean zIsEmpty = listA0.isEmpty();
                            kq kqVar = mqVar.j;
                            if (zIsEmpty) {
                                bool = boolValueOf;
                                i2 = i7;
                                str5 = str17;
                                bool2 = boolValueOf2;
                                lh6Var = lh6Var2;
                                str6 = str18;
                            } else {
                                Iterator it6 = listA0.iterator();
                                while (true) {
                                    if (!it6.hasNext()) {
                                        bool = boolValueOf;
                                        i2 = i7;
                                        str5 = str17;
                                        bool2 = boolValueOf2;
                                        lh6Var = lh6Var2;
                                        str6 = str18;
                                    } else if (((fo2) it6.next()) != null) {
                                        str5 = str17;
                                        ji jiVar2 = mqVar.e;
                                        bool = boolValueOf;
                                        String strAsString = jiVar2.asString();
                                        tb1 tb1Var = tb1.a;
                                        bool2 = boolValueOf2;
                                        lh6Var = lh6Var2;
                                        str6 = str18;
                                        i2 = i7;
                                        vr6.i$default(vr6.INSTANCE, "AppDownloadTask", dj7.n(u48.p("Processing download for app: ", strAsString, ". Cloud: ", qb1.f().getDisplayNameEn(), ", Tag: "), mqVar.c, "."), null, 4, null);
                                        c40Var.p(jiVar2);
                                        List<Long> sBVersionCodesRequired = mqVar.g.getSBVersionCodesRequired();
                                        hj hjVar = new hj(mqVar, 1);
                                        mqVar.k.getClass();
                                        if (nm6.a(sBVersionCodesRequired, hjVar)) {
                                            if (jiVar2.checkInstalled()) {
                                                jiVar2.calculateSize(wx3.p(list5), list5.contains(iu.EXTDATA), list5.contains(iu.MEDIA), list5.contains(iu.EXPANSION));
                                            }
                                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                                            z3 z3Var = (z3) gz.getEntries();
                                            z3Var.getClass();
                                            w3 w3Var = new w3(z3Var);
                                            while (w3Var.hasNext()) {
                                                gz gzVar = (gz) w3Var.next();
                                                switch (lq.a[gzVar.ordinal()]) {
                                                    case 1:
                                                        fo2Var = hqVar.c;
                                                        if (fo2Var == null || !wx3.o(list5) || !mqVar.a(fo2Var)) {
                                                            fo2Var = null;
                                                        }
                                                        if (fo2Var != null) {
                                                            linkedHashMap.put(gzVar, fo2Var);
                                                        }
                                                        break;
                                                    case 2:
                                                        fo2Var = hqVar.d;
                                                        if (fo2Var == null || !wx3.o(list5) || !mqVar.a(fo2Var)) {
                                                            fo2Var = null;
                                                        }
                                                        if (fo2Var != null) {
                                                            linkedHashMap.put(gzVar, fo2Var);
                                                        }
                                                        break;
                                                    case 3:
                                                        fo2Var = hqVar.e;
                                                        if (fo2Var == null || !wx3.o(list5) || !mqVar.a(fo2Var)) {
                                                            fo2Var = null;
                                                        }
                                                        if (fo2Var != null) {
                                                            linkedHashMap.put(gzVar, fo2Var);
                                                        }
                                                        break;
                                                    case 4:
                                                        fo2Var = hqVar.f;
                                                        if (fo2Var == null || !wx3.p(list5) || !mqVar.a(fo2Var)) {
                                                            fo2Var = null;
                                                        }
                                                        if (fo2Var != null) {
                                                            linkedHashMap.put(gzVar, fo2Var);
                                                        }
                                                        break;
                                                    case 5:
                                                        fo2Var = hqVar.g;
                                                        if (fo2Var == null || !wx3.r(list5) || !mqVar.a(fo2Var)) {
                                                            fo2Var = null;
                                                        }
                                                        if (fo2Var != null) {
                                                            linkedHashMap.put(gzVar, fo2Var);
                                                        }
                                                        break;
                                                    case 6:
                                                        fo2Var = hqVar.h;
                                                        if (fo2Var == null || !wx3.s(list5) || !mqVar.a(fo2Var)) {
                                                            fo2Var = null;
                                                        }
                                                        if (fo2Var != null) {
                                                            linkedHashMap.put(gzVar, fo2Var);
                                                        }
                                                        break;
                                                    case 7:
                                                        fo2Var = hqVar.i;
                                                        if (fo2Var == null || !wx3.q(list5) || !mqVar.a(fo2Var)) {
                                                            fo2Var = null;
                                                        }
                                                        if (fo2Var != null) {
                                                            linkedHashMap.put(gzVar, fo2Var);
                                                        }
                                                        break;
                                                    case 8:
                                                        fo2Var = hqVar.j;
                                                        if (fo2Var == null || ((!jzVar.e && !jzVar.f) || !mqVar.a(fo2Var))) {
                                                            fo2Var = null;
                                                        }
                                                        if (fo2Var != null) {
                                                            linkedHashMap.put(gzVar, fo2Var);
                                                        }
                                                        break;
                                                    default:
                                                        q.j();
                                                        return;
                                                }
                                            }
                                            if (linkedHashMap.isEmpty()) {
                                                vr6.i$default(vr6.INSTANCE, "AppDownloadTask", "Nothing to download!", null, 4, null);
                                            } else {
                                                vr6.i$default(vr6.INSTANCE, "AppDownloadTask", "Download tasks: ".concat(el1.Y0(linkedHashMap.keySet(), null, null, null, null, 63)), null, 4, null);
                                                Iterator it7 = linkedHashMap.values().iterator();
                                                long j = 0;
                                                while (it7.hasNext()) {
                                                    j += ((fo2) it7.next()).c;
                                                }
                                                Long lValueOf = Long.valueOf(j);
                                                if (j <= 0) {
                                                    lValueOf = null;
                                                }
                                                final long jLongValue = lValueOf != null ? lValueOf.longValue() : 1L;
                                                final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                                                String str23 = ry5.u;
                                                zn7 zn7Var = mqVar.d;
                                                zn7Var.getClass();
                                                Long lC = qy5.c(zn7Var.n());
                                                long jLongValue2 = lC != null ? lC.longValue() : 0L;
                                                if (jLongValue2 > 104857600) {
                                                    jLongValue2 -= 104857600;
                                                }
                                                boolean z9 = jLongValue2 < jLongValue;
                                                p93 p93Var = p93.a;
                                                String strC = p93.c(Long.valueOf(jLongValue));
                                                String strC2 = p93.c(Long.valueOf(jLongValue2));
                                                if (z9) {
                                                    String name = jiVar2.getName();
                                                    SwiftApp.Companion companion = SwiftApp.d;
                                                    String string = SwiftApp.Companion.c().getString(R.string.space_needed_vs_available_error, strC, strC2);
                                                    string.getClass();
                                                    str15 = name + ": (" + string + ")";
                                                } else {
                                                    str15 = null;
                                                }
                                                if (str15 == null || str15.length() == 0) {
                                                    final kh6 kh6Var = new kh6();
                                                    final kh6 kh6Var2 = new kh6();
                                                    ArrayList arrayList = new ArrayList(linkedHashMap.size());
                                                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                                                        final gz gzVar2 = (gz) entry.getKey();
                                                        final fo2 fo2Var2 = (fo2) entry.getValue();
                                                        zn4 zn4Var2 = zn4.a;
                                                        arrayList.add(new vn4(new bt3() { // from class: iq
                                                            @Override // defpackage.bt3
                                                            public final Object invoke() throws IOException {
                                                                mq mqVar2 = mqVar;
                                                                boolean z10 = mqVar2.i;
                                                                kq kqVar2 = mqVar2.j;
                                                                if (!z10 && kqVar2.a == null && kqVar2.b == null && kqVar2.c == null) {
                                                                    jq jqVar = new jq(concurrentHashMap, gzVar2, kh6Var, mqVar2, jLongValue, kh6Var2);
                                                                    p93 p93Var2 = p93.a;
                                                                    fo2 fo2Var3 = fo2Var2;
                                                                    String strC3 = p93.c(Long.valueOf(fo2Var3.c));
                                                                    vr6 vr6Var = vr6.INSTANCE;
                                                                    vr6.i$default(vr6Var, "AppDownloadTask", eq3.l("Downloading ", fo2Var3.a(), " (", strC3, ")"), null, 4, null);
                                                                    tb1 tb1Var2 = tb1.a;
                                                                    no2 no2VarC = qb1.c().c(fo2Var3);
                                                                    try {
                                                                        mqVar2.h.add(no2VarC);
                                                                        no2VarC.f = new k3(jqVar, 1);
                                                                        ke keVarB = no2VarC.b();
                                                                        if (keVarB.e()) {
                                                                            jqVar.invoke(Long.valueOf(fo2Var3.c));
                                                                        } else {
                                                                            kqVar2.a = mqVar2.e.getName() + ": " + keVarB.b();
                                                                        }
                                                                        boolean zE = keVarB.e();
                                                                        no2VarC.close();
                                                                        if (zE) {
                                                                            vr6.i$default(vr6Var, "AppDownloadTask", "Downloaded ".concat(fo2Var3.a()), null, 4, null);
                                                                        } else {
                                                                            vr6.e$default(vr6Var, "AppDownloadTask", "Failed to download ".concat(fo2Var3.a()), null, 4, null);
                                                                        }
                                                                    } catch (Throwable th) {
                                                                        try {
                                                                            throw th;
                                                                        } catch (Throwable th2) {
                                                                            rs9.c(no2VarC, th);
                                                                            throw th2;
                                                                        }
                                                                    }
                                                                }
                                                                return be8.a;
                                                            }
                                                        }));
                                                    }
                                                    ex6 ex6Var = c40Var.i;
                                                    SwiftApp.Companion companion2 = SwiftApp.d;
                                                    ex6Var.k(SwiftApp.Companion.c().getString(R.string.downloading_backup_files));
                                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                                    zn4 zn4Var3 = zn4.a;
                                                    try {
                                                        d45.b.getClass();
                                                        MFirebaseUser mFirebaseUserA = d45.a();
                                                        boolValueOf3 = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
                                                    } catch (Exception unused) {
                                                    }
                                                    if (pe4.d(boolValueOf3, Boolean.TRUE)) {
                                                        z = false;
                                                    } else {
                                                        try {
                                                            SharedPreferences sharedPreferences = cz4.f;
                                                            if (sharedPreferences == null) {
                                                                pe4.F("prefs");
                                                                throw null;
                                                            }
                                                            z2 = sharedPreferences.getBoolean("parallel_cloud_transfers", false);
                                                        } catch (ClassCastException unused2) {
                                                            z2 = false;
                                                        }
                                                        if (z2) {
                                                            z = true;
                                                        } else {
                                                            z = false;
                                                        }
                                                    }
                                                    zn4.a(4, arrayList, z);
                                                    vr6.i$default(vr6.INSTANCE, "AppDownloadTask", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                                                    c40Var.o(null);
                                                } else {
                                                    kqVar.b = str15;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            if (kqVar.a != null || kqVar.b != null || kqVar.c != null) {
                                svVar.b.add(kqVar);
                            }
                            o(null);
                        } else {
                            bool = boolValueOf;
                            i2 = i7;
                            str5 = str17;
                            bool2 = boolValueOf2;
                            lh6Var = lh6Var2;
                            str6 = str18;
                            jzVar = jzVar2;
                        }
                        if (!wvVar.a()) {
                            mp6 mp6Var4 = mp6.a;
                            if (mp6.f() || !list5.contains(iu.APP)) {
                                int i8 = z8 ? 100 : 0;
                                tv tvVar = (tv) wvVar.e.getValue();
                                tvVar.getClass();
                                c40 c40Var2 = tvVar.a;
                                uw uwVarD = new xw(jzVar, c40Var2, tvVar.b, tvVar.c, !c40Var2.u, new ck(tvVar, 4)).d(new qv(i8, i2, 0, nvVar));
                                String str24 = uwVarD.a;
                                if ((str24 != null && str24.length() != 0) || (((str8 = uwVarD.b) != null && str8.length() != 0) || (((str9 = uwVarD.c) != null && str9.length() != 0) || (((str10 = uwVarD.d) != null && str10.length() != 0) || (((str11 = uwVarD.e) != null && str11.length() != 0) || (((str12 = uwVarD.g) != null && str12.length() != 0) || (((str13 = uwVarD.h) != null && str13.length() != 0) || ((str14 = uwVarD.f) != null && str14.length() != 0)))))))) {
                                    svVar.a.add(uwVarD);
                                }
                            }
                        }
                        if (appCloudBackup != null) {
                            mp6 mp6Var5 = mp6.a;
                            if (mp6.f()) {
                                str7 = str6;
                                Log.i(str7, "Cleaning cloud cache on device");
                                boolean z10 = q63.d;
                                String str25 = ry5.u;
                                cy0.g(qy5.f(false, null).h);
                            } else {
                                str7 = str6;
                            }
                        } else {
                            str7 = str6;
                        }
                        k(new r62(100, jiVar.getPackageName()));
                        n(i6 + 100);
                        str18 = str7;
                        it4 = it5;
                        dz7Var2 = dz7Var;
                        list3 = list4;
                        cz7Var = cz7Var2;
                        i3 = i4;
                        str16 = str16;
                        gj5Var4 = gj5Var4;
                        str17 = str5;
                        boolValueOf = bool;
                        boolValueOf2 = bool2;
                        lh6Var2 = lh6Var;
                    }
                } else {
                    dz7Var = dz7Var2;
                }
            }
            Boolean bool3 = boolValueOf;
            cz7 cz7Var3 = cz7Var;
            list = list3;
            str = str16;
            gj5Var = gj5Var4;
            str2 = str17;
            Boolean bool4 = boolValueOf2;
            lh6 lh6Var3 = lh6Var2;
            i = 0;
            vr6 vr6Var = vr6.INSTANCE;
            vr6.i$default(vr6Var, "AppRestoreManager", "Performing post-restore tasks", null, 4, null);
            zn4 zn4Var4 = zn4.a;
            zn4.b(null, new vv(bool3, bool4, lh6Var3, null));
            if (svVar.a()) {
                ((b40) dz7Var).b = svVar;
            } else {
                mp6 mp6Var6 = mp6.a;
                if (!mp6.f()) {
                    Object objS0 = el1.S0(list);
                    objS0.getClass();
                    jz jzVar3 = (jz) objS0;
                    hk hkVar = jzVar3.g;
                    if (jzVar3.c.contains(iu.APP)) {
                        SwiftApp.Companion companion3 = SwiftApp.d;
                        File cacheDir = SwiftApp.Companion.c().getCacheDir();
                        cacheDir.getClass();
                        q63 q63Var = new q63(cacheDir, 2);
                        cy0.e(q63Var);
                        ArrayList arrayList2 = new ArrayList();
                        q63 q63VarC = hkVar.c();
                        q63 q63VarC2 = hkVar.C();
                        yw ywVar = new yw(q63VarC, q63VarC2);
                        arrayList2.add(q63VarC.v());
                        if (q63VarC2.j()) {
                            List listA = zg.a(q63VarC2, q63Var, ywVar.c, new b7(3), null, null);
                            if (listA == null) {
                                vr6.e$default(vr6Var, this.n, xs1.i(q63VarC2, "Failed extraction of "), null, 4, null);
                            } else {
                                Iterator it8 = listA.iterator();
                                while (it8.hasNext()) {
                                    arrayList2.add(((q63) it8.next()).v());
                                }
                            }
                        }
                        ((b40) dz7Var).c = arrayList2;
                    }
                }
            }
            cz7Var = cz7Var3;
        } else {
            list = list3;
            dz7Var = dz7Var2;
            str = "Processing ";
            gj5Var = gj5Var4;
            str2 = "/";
            i = 0;
        }
        boolean z11 = cz7Var instanceof sy7;
        ex6 ex6Var2 = this.i;
        if (z11) {
            list2 = list;
            ArrayList<ji> arrayList3 = new ArrayList(hl1.G0(list2, 10));
            Iterator it9 = list2.iterator();
            while (it9.hasNext()) {
                arrayList3.add(((kz) it9.next()).a());
            }
            lz lzVar = new lz(this, arrayList3);
            this.r = lzVar;
            lzVar.b = gz7.RUNNING;
            g00 g00Var2 = g00.a;
            int i9 = g00.i();
            vr6 vr6Var2 = vr6.INSTANCE;
            String strH = xs1.h(arrayList3.size(), "Uninstalling ", " apps");
            String str26 = lzVar.a;
            vr6.i$default(vr6Var2, str26, strH, null, 4, null);
            int i10 = i;
            for (ji jiVar3 : arrayList3) {
                i10++;
                if (lzVar.b.isCancelled()) {
                    str3 = str;
                    gj5Var2 = gj5Var;
                    str4 = str2;
                    lzVar.b = gz7.COMPLETE;
                } else {
                    p(jiVar3);
                    int size = arrayList3.size();
                    StringBuilder sb = new StringBuilder();
                    sb.append(i10);
                    String str27 = str2;
                    sb.append(str27);
                    sb.append(size);
                    String string2 = sb.toString();
                    if (arrayList3.size() > 1) {
                        gj5Var3 = gj5Var;
                        gj5Var3.i(string2);
                    } else {
                        gj5Var3 = gj5Var;
                    }
                    vr6 vr6Var3 = vr6.INSTANCE;
                    String str28 = str;
                    vr6.i$default(vr6Var3, str26, str28.concat(string2), null, 4, null);
                    SwiftApp.Companion companion4 = SwiftApp.d;
                    ex6Var2.i(SwiftApp.Companion.c().getString(R.string.uninstalling));
                    vr6.i$default(vr6Var3, str26, xs1.j("Uninstalling: ", jiVar3.asString()), null, 4, null);
                    if (!jiVar3.isBundled()) {
                        mp6.a.h(new String[]{u48.k(i9, "pm uninstall --user ", TokenAuthenticationScheme.SCHEME_DELIMITER, jiVar3.getPackageName())}, ip6.SHIZUKU);
                    }
                    n(i10 * 100);
                    gj5Var = gj5Var3;
                    str = str28;
                    str2 = str27;
                }
            }
            str3 = str;
            gj5Var2 = gj5Var;
            str4 = str2;
            lzVar.b = gz7.COMPLETE;
        } else {
            list2 = list;
            str3 = str;
            gj5Var2 = gj5Var;
            str4 = str2;
        }
        if (cz7Var instanceof oy7) {
            ArrayList arrayList4 = new ArrayList(hl1.G0(list2, 10));
            Iterator it10 = list2.iterator();
            while (it10.hasNext()) {
                arrayList4.add(((kz) it10.next()).a());
            }
            jk jkVar = new jk(this, arrayList4);
            this.s = jkVar;
            try {
                jkVar.a();
            } catch (Exception e) {
                ((b40) dz7Var).d.add(io4.b(e));
            }
        }
        if (cz7Var instanceof py7) {
            ArrayList<ji> arrayList5 = new ArrayList(hl1.G0(list2, 10));
            Iterator it11 = list2.iterator();
            while (it11.hasNext()) {
                arrayList5.add(((kz) it11.next()).a());
            }
            boolean z12 = ((py7) cz7Var).f;
            nq nqVar = new nq();
            nqVar.a = gz7.WAITING;
            this.t = nqVar;
            nqVar.a = gz7.RUNNING;
            int i11 = 0;
            for (ji jiVar4 : arrayList5) {
                i11++;
                if (nqVar.a.isCancelled()) {
                    nqVar.a = gz7.COMPLETE;
                } else {
                    p(jiVar4);
                    String str29 = i11 + str4 + arrayList5.size();
                    if (arrayList5.size() > 1) {
                        gj5Var2.i(str29);
                    }
                    vr6 vr6Var4 = vr6.INSTANCE;
                    vr6.i$default(vr6Var4, "AppEnableDisableHelper", str3.concat(str29), null, 4, null);
                    SwiftApp.Companion companion5 = SwiftApp.d;
                    String string3 = SwiftApp.Companion.c().getString(z12 ? R.string.enable_apps : R.string.disable_apps);
                    string3.getClass();
                    ex6Var2.i(string3);
                    vr6.i$default(vr6Var4, "AppEnableDisableHelper", dj7.k(z12 ? "Enabling" : "Disabling", TokenAuthenticationScheme.SCHEME_DELIMITER, jiVar4.asString()), null, 4, null);
                    if (z12 != jiVar4.getEnabled()) {
                        g00 g00Var3 = g00.a;
                        String packageName = jiVar4.getPackageName();
                        packageName.getClass();
                        g00.d(packageName, "", !z12);
                    }
                    n(i11 * 100);
                }
            }
            nqVar.a = gz7.COMPLETE;
        }
        boolean z13 = this.u;
        String str30 = this.n;
        if (!z13) {
            Log.d(str30, "Reloading local apps");
            dv.i(kz4.g, true, null, false, false, 6);
        }
        if (!g()) {
            ji jiVarA = ((kz) el1.S0(list2)).a();
            Log.d(str30, "executeTask: Posting app event for single app: " + jiVarA.asString());
            w13.q(c40.class, jiVarA.getPackageName());
        }
        ny2.b().e(new d40());
    }

    @Override // defpackage.pw6
    public final String c() {
        return this.n;
    }

    @Override // defpackage.pw6
    public final int d() {
        return this.m.size() * 100;
    }

    @Override // defpackage.pw6
    public final int f() {
        return this.m.size();
    }

    @Override // defpackage.pw6
    public final String h() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(g() ? R.string.apps : R.string.app);
        string.getClass();
        return string;
    }

    @Override // defpackage.pw6
    public final String j() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(R.string.x_apps, String.valueOf(this.m.size()));
        string.getClass();
        return string;
    }

    @Override // defpackage.pw6
    public final void l() {
        zn4 zn4Var = zn4.a;
        zn4.c(new dk(this, 9));
    }

    public final void p(ji jiVar) {
        jiVar.getClass();
        zn4 zn4Var = zn4.a;
        zn4.e(new qf(1, this, jiVar));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:103:0x0381  */
    /* JADX WARN: Code duplicated, block: B:107:0x0437  */
    /* JADX WARN: Code duplicated, block: B:111:0x044c  */
    /* JADX WARN: Code duplicated, block: B:113:0x0458  */
    /* JADX WARN: Code duplicated, block: B:115:0x045c  */
    /* JADX WARN: Code duplicated, block: B:117:0x0464  */
    /* JADX WARN: Code duplicated, block: B:119:0x0474  */
    /* JADX WARN: Code duplicated, block: B:121:0x047d  */
    /* JADX WARN: Code duplicated, block: B:123:0x0482  */
    /* JADX WARN: Code duplicated, block: B:125:0x048a  */
    /* JADX WARN: Code duplicated, block: B:127:0x0490  */
    /* JADX WARN: Code duplicated, block: B:129:0x049f  */
    /* JADX WARN: Code duplicated, block: B:130:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:131:0x04a5 A[PHI: r15 r21 r22 r34
      0x04a5: PHI (r15v17 int) = (r15v16 int), (r15v16 int), (r15v18 int), (r15v19 int) binds: [B:135:0x04b6, B:137:0x04bc, B:130:0x04a2, B:128:0x049d] A[DONT_GENERATE, DONT_INLINE]
      0x04a5: PHI (r21v9 org.swiftapps.swiftbackup.model.app.LocalMetadata) = 
      (r21v7 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v7 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v10 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v10 org.swiftapps.swiftbackup.model.app.LocalMetadata)
     binds: [B:135:0x04b6, B:137:0x04bc, B:130:0x04a2, B:128:0x049d] A[DONT_GENERATE, DONT_INLINE]
      0x04a5: PHI (r22v8 hl) = (r22v6 hl), (r22v6 hl), (r22v10 hl), (r22v11 hl) binds: [B:135:0x04b6, B:137:0x04bc, B:130:0x04a2, B:128:0x049d] A[DONT_GENERATE, DONT_INLINE]
      0x04a5: PHI (r34v19 org.swiftapps.swiftbackup.model.app.CloudMetadata) = 
      (r34v17 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v17 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v20 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v20 org.swiftapps.swiftbackup.model.app.CloudMetadata)
     binds: [B:135:0x04b6, B:137:0x04bc, B:130:0x04a2, B:128:0x049d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:132:0x04a6 A[PHI: r7 r21 r22 r34
      0x04a6: PHI (r7v11 int) = 
      (r7v6 int)
      (r7v6 int)
      (r7v7 int)
      (r7v7 int)
      (r7v8 int)
      (r7v8 int)
      (r7v9 int)
      (r7v9 int)
      (r7v9 int)
      (r7v10 int)
      (r7v12 int)
      (r7v13 int)
     binds: [B:159:0x0517, B:161:0x051d, B:154:0x0505, B:156:0x050b, B:149:0x04f3, B:151:0x04f9, B:142:0x04d5, B:144:0x04db, B:146:0x04e7, B:139:0x04c9, B:131:0x04a5, B:133:0x04a9] A[DONT_GENERATE, DONT_INLINE]
      0x04a6: PHI (r21v8 org.swiftapps.swiftbackup.model.app.LocalMetadata) = 
      (r21v3 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v3 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v4 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v4 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v5 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v5 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v6 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v6 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v6 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v7 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v9 org.swiftapps.swiftbackup.model.app.LocalMetadata)
      (r21v10 org.swiftapps.swiftbackup.model.app.LocalMetadata)
     binds: [B:159:0x0517, B:161:0x051d, B:154:0x0505, B:156:0x050b, B:149:0x04f3, B:151:0x04f9, B:142:0x04d5, B:144:0x04db, B:146:0x04e7, B:139:0x04c9, B:131:0x04a5, B:133:0x04a9] A[DONT_GENERATE, DONT_INLINE]
      0x04a6: PHI (r22v7 hl) = 
      (r22v2 hl)
      (r22v2 hl)
      (r22v3 hl)
      (r22v3 hl)
      (r22v4 hl)
      (r22v4 hl)
      (r22v5 hl)
      (r22v5 hl)
      (r22v5 hl)
      (r22v6 hl)
      (r22v8 hl)
      (r22v9 hl)
     binds: [B:159:0x0517, B:161:0x051d, B:154:0x0505, B:156:0x050b, B:149:0x04f3, B:151:0x04f9, B:142:0x04d5, B:144:0x04db, B:146:0x04e7, B:139:0x04c9, B:131:0x04a5, B:133:0x04a9] A[DONT_GENERATE, DONT_INLINE]
      0x04a6: PHI (r34v18 org.swiftapps.swiftbackup.model.app.CloudMetadata) = 
      (r34v13 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v13 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v14 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v14 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v15 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v15 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v16 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v16 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v16 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v17 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v19 org.swiftapps.swiftbackup.model.app.CloudMetadata)
      (r34v20 org.swiftapps.swiftbackup.model.app.CloudMetadata)
     binds: [B:159:0x0517, B:161:0x051d, B:154:0x0505, B:156:0x050b, B:149:0x04f3, B:151:0x04f9, B:142:0x04d5, B:144:0x04db, B:146:0x04e7, B:139:0x04c9, B:131:0x04a5, B:133:0x04a9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:133:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:134:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:141:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:148:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:153:0x04fc  */
    /* JADX WARN: Code duplicated, block: B:158:0x050e  */
    /* JADX WARN: Code duplicated, block: B:163:0x0521  */
    /* JADX WARN: Code duplicated, block: B:165:0x053a  */
    /* JADX WARN: Code duplicated, block: B:166:0x0543  */
    /* JADX WARN: Code duplicated, block: B:170:0x055a  */
    /* JADX WARN: Code duplicated, block: B:172:0x0561  */
    /* JADX WARN: Code duplicated, block: B:174:0x056b  */
    /* JADX WARN: Code duplicated, block: B:177:0x05a8 A[PHI: r6
      0x05a8: PHI (r6v39 java.lang.String) = 
      (r6v33 java.lang.String)
      (r6v34 java.lang.String)
      (r6v35 java.lang.String)
      (r6v36 java.lang.String)
      (r6v37 java.lang.String)
      (r6v38 java.lang.String)
      (r6v40 java.lang.String)
     binds: [B:251:0x07ce, B:231:0x075d, B:211:0x06ec, B:191:0x067b, B:186:0x0633, B:181:0x05ef, B:175:0x05a5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:178:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:180:0x05b5  */
    /* JADX WARN: Code duplicated, block: B:183:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:185:0x05fd  */
    /* JADX WARN: Code duplicated, block: B:188:0x0637  */
    /* JADX WARN: Code duplicated, block: B:190:0x0641  */
    /* JADX WARN: Code duplicated, block: B:193:0x067f  */
    /* JADX WARN: Code duplicated, block: B:195:0x0689  */
    /* JADX WARN: Code duplicated, block: B:197:0x069d  */
    /* JADX WARN: Code duplicated, block: B:198:0x06a0  */
    /* JADX WARN: Code duplicated, block: B:201:0x06a8  */
    /* JADX WARN: Code duplicated, block: B:202:0x06af  */
    /* JADX WARN: Code duplicated, block: B:205:0x06c4  */
    /* JADX WARN: Code duplicated, block: B:206:0x06c7  */
    /* JADX WARN: Code duplicated, block: B:209:0x06cf  */
    /* JADX WARN: Code duplicated, block: B:213:0x06f0  */
    /* JADX WARN: Code duplicated, block: B:215:0x06fa  */
    /* JADX WARN: Code duplicated, block: B:217:0x070e  */
    /* JADX WARN: Code duplicated, block: B:218:0x0711  */
    /* JADX WARN: Code duplicated, block: B:221:0x0719  */
    /* JADX WARN: Code duplicated, block: B:222:0x0720  */
    /* JADX WARN: Code duplicated, block: B:225:0x0735  */
    /* JADX WARN: Code duplicated, block: B:226:0x0738  */
    /* JADX WARN: Code duplicated, block: B:229:0x0740  */
    /* JADX WARN: Code duplicated, block: B:233:0x0761  */
    /* JADX WARN: Code duplicated, block: B:235:0x076b  */
    /* JADX WARN: Code duplicated, block: B:237:0x077f  */
    /* JADX WARN: Code duplicated, block: B:238:0x0782  */
    /* JADX WARN: Code duplicated, block: B:241:0x078a  */
    /* JADX WARN: Code duplicated, block: B:242:0x0791  */
    /* JADX WARN: Code duplicated, block: B:245:0x07a6  */
    /* JADX WARN: Code duplicated, block: B:246:0x07a9  */
    /* JADX WARN: Code duplicated, block: B:249:0x07b1  */
    /* JADX WARN: Code duplicated, block: B:255:0x07d6  */
    /* JADX WARN: Code duplicated, block: B:259:0x07ed  */
    /* JADX WARN: Code duplicated, block: B:263:0x080a  */
    /* JADX WARN: Code duplicated, block: B:266:0x0843 A[LOOP:2: B:264:0x083d->B:266:0x0843, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:270:0x0859  */
    /* JADX WARN: Code duplicated, block: B:272:0x085c  */
    /* JADX WARN: Code duplicated, block: B:274:0x0863  */
    /* JADX WARN: Code duplicated, block: B:278:0x088c  */
    /* JADX WARN: Code duplicated, block: B:282:0x08b1  */
    /* JADX WARN: Code duplicated, block: B:284:0x08c5  */
    /* JADX WARN: Code duplicated, block: B:285:0x08d6  */
    /* JADX WARN: Code duplicated, block: B:286:0x08e7  */
    /* JADX WARN: Code duplicated, block: B:287:0x08f8  */
    /* JADX WARN: Code duplicated, block: B:288:0x0909  */
    /* JADX WARN: Code duplicated, block: B:289:0x091a  */
    /* JADX WARN: Code duplicated, block: B:290:0x092b  */
    /* JADX WARN: Code duplicated, block: B:295:0x0968 A[Catch: Exception -> 0x0971, TRY_LEAVE, TryCatch #2 {Exception -> 0x0971, blocks: (B:293:0x095d, B:295:0x0968), top: B:479:0x095d }] */
    /* JADX WARN: Code duplicated, block: B:297:0x0971  */
    /* JADX WARN: Code duplicated, block: B:300:0x097a  */
    /* JADX WARN: Code duplicated, block: B:303:0x0980 A[Catch: ClassCastException -> 0x098d, TryCatch #1 {ClassCastException -> 0x098d, blocks: (B:301:0x097c, B:303:0x0980, B:304:0x0986, B:305:0x098c), top: B:477:0x097c }] */
    /* JADX WARN: Code duplicated, block: B:304:0x0986 A[Catch: ClassCastException -> 0x098d, TryCatch #1 {ClassCastException -> 0x098d, blocks: (B:301:0x097c, B:303:0x0980, B:304:0x0986, B:305:0x098c), top: B:477:0x097c }] */
    /* JADX WARN: Code duplicated, block: B:308:0x0990  */
    /* JADX WARN: Code duplicated, block: B:309:0x0992  */
    /* JADX WARN: Code duplicated, block: B:312:0x09aa  */
    /* JADX WARN: Code duplicated, block: B:315:0x09de  */
    /* JADX WARN: Code duplicated, block: B:317:0x09e6  */
    /* JADX WARN: Code duplicated, block: B:318:0x09f1  */
    /* JADX WARN: Code duplicated, block: B:320:0x09f5  */
    /* JADX WARN: Code duplicated, block: B:325:0x0a04  */
    /* JADX WARN: Code duplicated, block: B:330:0x0a1b  */
    /* JADX WARN: Code duplicated, block: B:332:0x0a21  */
    /* JADX WARN: Code duplicated, block: B:341:0x0a3f  */
    /* JADX WARN: Code duplicated, block: B:346:0x0a52  */
    /* JADX WARN: Code duplicated, block: B:349:0x0a5f  */
    /* JADX WARN: Code duplicated, block: B:350:0x0a67  */
    /* JADX WARN: Code duplicated, block: B:352:0x0a6b  */
    /* JADX WARN: Code duplicated, block: B:354:0x0a71  */
    /* JADX WARN: Code duplicated, block: B:358:0x0a85  */
    /* JADX WARN: Code duplicated, block: B:360:0x0aa0  */
    /* JADX WARN: Code duplicated, block: B:362:0x0aac  */
    /* JADX WARN: Code duplicated, block: B:363:0x0abd  */
    /* JADX WARN: Code duplicated, block: B:365:0x0ac1  */
    /* JADX WARN: Code duplicated, block: B:377:0x0b11  */
    /* JADX WARN: Code duplicated, block: B:378:0x0b42  */
    /* JADX WARN: Code duplicated, block: B:380:0x0b48  */
    /* JADX WARN: Code duplicated, block: B:383:0x0b4f  */
    /* JADX WARN: Code duplicated, block: B:386:0x0b54  */
    /* JADX WARN: Code duplicated, block: B:389:0x0b67  */
    /* JADX WARN: Code duplicated, block: B:395:0x0b8b  */
    /* JADX WARN: Code duplicated, block: B:406:0x0c2a  */
    /* JADX WARN: Code duplicated, block: B:484:0x0448 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:485:0x054c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:486:0x08ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:488:0x0c6d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:489:0x0c68 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:490:0x0c63 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:491:0x0c5f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:496:0x07fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:498:0x07f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:499:0x07f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:505:0x0b78 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:507:0x0b61 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:510:0x0b98 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:512:0x0b85 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:60:0x01c1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:62:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:67:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:77:0x0278  */
    /* JADX WARN: Code duplicated, block: B:79:0x029c  */
    /* JADX WARN: Code duplicated, block: B:80:0x029f  */
    /* JADX WARN: Code duplicated, block: B:82:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:83:0x02ad  */
    /* JADX WARN: Instruction removed from duplicated block: B:166:0x0543, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:377:0x0b11, please report this as an issue */
    public final void q(ky7 ky7Var) {
        hl hlVar;
        int i;
        List list;
        Iterator it;
        int i2;
        int i3;
        boolean z;
        wk wkVar;
        List list2;
        tl tlVarG;
        jl jlVar;
        int i4;
        int i5;
        int i6;
        ji jiVar;
        int i7;
        vl vlVar;
        hk hkVar;
        l73 l73VarA;
        xe3 xe3Var;
        CloudMetadata cloudMetadata;
        CloudMetadata cloudMetadata2;
        ConcurrentHashMap concurrentHashMap;
        w3 w3Var;
        boolean zHasNext;
        mz mzVar;
        LocalMetadata localMetadata;
        final CloudMetadata cloudMetadata3;
        hl hlVar2;
        a00 a00Var;
        vr6 vr6Var;
        CloudMetadata cloudMetadata4;
        String installerPackage;
        Long dateBackup;
        Long dateBackupUpdated;
        zc2 zc2Var;
        vr6 vr6Var2;
        zc2 zc2Var2;
        af3 af3VarC;
        String note;
        String str;
        MultipleBackupStrategy.Representation representationA;
        AppCloudBackups.a.C0014a c0014aFetchForPackage;
        AppCloudBackups appCloudBackups;
        ArrayList arrayList;
        ArrayList arrayList2;
        vr6 vr6Var3;
        Iterator it2;
        long jA;
        Long lValueOf;
        long jLongValue;
        final long j;
        final ConcurrentHashMap concurrentHashMap2;
        final kh6 kh6Var;
        final kh6 kh6Var2;
        ArrayList arrayList3;
        Boolean boolValueOf;
        boolean z2;
        boolean z3;
        SharedPreferences sharedPreferences;
        MFirebaseUser mFirebaseUserA;
        final gz gzVar;
        final rf8 rf8Var;
        a00 a00Var2;
        vn4 vn4Var;
        final a00 a00Var3;
        gz gzVar2;
        CloudMetadata cloudMetadata5;
        LocalMetadata localMetadata2;
        int i8;
        rf8 rf8Var2;
        int i9;
        rf8 rf8Var3;
        String str2;
        vr6 vr6Var4;
        CloudMetadata cloudMetadata6;
        String apkLink;
        long jH;
        Long apkSize;
        pg pgVar;
        String versionName;
        String str3;
        Long versionCode;
        long jLongValue2;
        String versionName2;
        String str4;
        Long versionCode2;
        long jH2;
        Long apkSize2;
        pg pgVar2;
        String versionName3;
        String str5;
        Long versionCode3;
        long jLongValue3;
        String versionName4;
        String str6;
        Long versionCode4;
        long jH3;
        Long apkSize3;
        pg pgVar3;
        String versionName5;
        String str7;
        Long versionCode5;
        long jLongValue4;
        String versionName6;
        String str8;
        Long versionCode6;
        boolean z4;
        ea3 ea3Var;
        List<String> splitSourceDirs;
        String str9;
        c40 c40Var = this;
        jl jlVar2 = new jl(c40Var, ky7Var);
        c40Var.p = jlVar2;
        List list3 = c40Var.m;
        Iterator it3 = list3.iterator();
        int i10 = 0;
        while (true) {
            boolean zHasNext2 = it3.hasNext();
            hlVar = jlVar2.g;
            if (zHasNext2) {
                int i11 = i10 + 1;
                kz kzVar = (kz) it3.next();
                if (!jlVar2.a()) {
                    kzVar.getClass();
                    hz hzVar = (hz) kzVar;
                    ji jiVar2 = hzVar.b;
                    String str10 = i11 + "/" + list3.size();
                    if (list3.size() > 1) {
                        c40Var.d.i(str10);
                    }
                    vr6.i$default(vr6.INSTANCE, "AppBackupManager", "Processing ".concat(str10), null, 4, null);
                    c40Var.p(jiVar2);
                    c40Var.k(null);
                    int i12 = i10 * 100;
                    wk wkVar2 = new wk(jlVar2, kzVar, i12);
                    boolean zD = hzVar.d();
                    List list4 = hzVar.c;
                    boolean z5 = !zD;
                    boolean z6 = ji8.r(hzVar.d) || hzVar.d();
                    List listA0 = fl1.A0(Boolean.valueOf(z5), Boolean.valueOf(z6));
                    if (listA0.isEmpty()) {
                        i = 0;
                    } else {
                        Iterator it4 = listA0.iterator();
                        i = 0;
                        while (it4.hasNext()) {
                            if (((Boolean) it4.next()).booleanValue() && (i = i + 1) < 0) {
                                fl1.E0();
                                throw null;
                            }
                        }
                    }
                    int i13 = i * 100;
                    int i14 = 2;
                    if (zD) {
                        list = list3;
                        it = it3;
                        i2 = i13;
                        i3 = i12;
                        z = true;
                        wkVar = wkVar2;
                        list2 = list4;
                        tlVarG = null;
                    } else {
                        gl glVar = (gl) jlVar2.c.getValue();
                        glVar.getClass();
                        c40 c40Var2 = glVar.a;
                        boolean zG = c40Var2.g();
                        ek ekVar = new ek(glVar, i14);
                        ah ahVar = new ah(glVar, i14);
                        list = list3;
                        al alVar = new al(glVar, 0);
                        it = it3;
                        d76 d76Var = new d76(glVar, 2);
                        bl blVar = new bl(glVar, 0);
                        int i15 = 2;
                        lf lfVar = new lf(glVar, i15);
                        ej ejVar = new ej(glVar, i15);
                        int i16 = 3;
                        fj fjVar = new fj(glVar, i16);
                        gj gjVar = new gj(glVar, i16);
                        wkVar = wkVar2;
                        list2 = list4;
                        z = true;
                        i2 = i13;
                        i3 = i12;
                        vl vlVar2 = new vl(hzVar, c40Var2, zG, ekVar, ahVar, alVar, d76Var, blVar, lfVar, ejVar, fjVar, gjVar);
                        jlVar2.e = vlVar2;
                        try {
                            tlVarG = vlVar2.g(new xk(i2, wkVar));
                        } catch (Exception e) {
                            vr6.e$default(vr6.INSTANCE, "AppBackupTask", "Unexpected app backup failure", e, null, 8, null);
                            boolean z7 = vlVar2.s;
                            tlVarG = vlVar2.q;
                            if (!z7) {
                                String message = e.getMessage();
                                if (message == null) {
                                    message = "App backup failed";
                                }
                                tlVarG.a(message);
                            }
                        }
                        if (tlVarG.c()) {
                            hlVar.a.add(tlVarG);
                        }
                    }
                    boolean zA = jlVar2.a();
                    List list5 = ov2.a;
                    if (zA) {
                        jlVar = jlVar2;
                        i4 = i3;
                        i5 = i10;
                        i6 = i11;
                        jiVar = jiVar2;
                    } else if (tlVarG == null) {
                        if (zD) {
                            i7 = 0;
                        } else {
                            i7 = 100;
                        }
                        vlVar = jlVar2.e;
                        if (vlVar != null || (hkVar = vlVar.r) == null) {
                            hkVar = hzVar.e;
                        }
                        if (z6 || hkVar == null) {
                            jlVar = jlVar2;
                            i4 = i3;
                            i5 = i10;
                            i6 = i11;
                            jiVar = jiVar2;
                        } else {
                            il ilVar = (il) jlVar2.d.getValue();
                            ilVar.getClass();
                            i4 = i3;
                            i6 = i11;
                            c40 c40Var3 = ilVar.a;
                            String str11 = ilVar.b;
                            a00 a00Var4 = new a00(hzVar, c40Var3, hkVar, str11);
                            jlVar2.f = a00Var4;
                            jlVar = jlVar2;
                            yk ykVar = new yk(i7, wkVar, i2);
                            ji jiVar3 = a00Var4.d;
                            String strAsString = jiVar3.asString();
                            tb1 tb1Var = tb1.a;
                            jiVar = jiVar2;
                            String strN = dj7.n(u48.p("Processing upload for app: ", strAsString, ". Cloud: ", qb1.f().getDisplayNameEn(), ", Tag: "), str11, ".");
                            vr6 vr6Var5 = vr6.INSTANCE;
                            vr6.i$default(vr6Var5, "AppUploadTask", strN, null, 4, null);
                            a00Var4.n = ykVar;
                            SyncOption syncOption = hzVar.f;
                            SyncOption syncOption2 = SyncOption.WIFI;
                            xz xzVar = a00Var4.l;
                            if (syncOption != syncOption2 || Const.z()) {
                                vr6.i$default(vr6Var5, "AppUploadTask", "Checking cloud for current sync status", null, 4, null);
                                String appId = jiVar3.getAppId();
                                zc2 zc2Var3 = re3.a;
                                zc2 zc2VarA = re3.a(appId, hkVar.a);
                                a00Var4.j = zc2VarA;
                                l73VarA = cf3.a(zc2VarA, true);
                                if (l73VarA instanceof xe3) {
                                    xe3Var = (xe3) l73VarA;
                                } else {
                                    xe3Var = null;
                                }
                                if (xe3Var != null) {
                                    cloudMetadata = (CloudMetadata) xe3Var.n.c(CloudMetadata.class);
                                } else {
                                    cloudMetadata = null;
                                }
                                if (cloudMetadata != null && cloudMetadata.isValidCloudDetails()) {
                                    a00Var4.i = true;
                                }
                                if (cloudMetadata != null && cloudMetadata.hasSplitApks() && !hzVar.d() && jiVar3.isInstalled() && ((splitSourceDirs = jiVar3.getSplitSourceDirs()) == null || splitSourceDirs.isEmpty())) {
                                    vr6.w$default(vr6Var5, "AppUploadTask", "Removing split details from cloud, currently installed app doesn't have splits.", null, 4, null);
                                    cloudMetadata.removeSplitsDetails();
                                }
                                if (cloudMetadata != null) {
                                    cloudMetadata2 = CloudMetadata.copy$default(cloudMetadata, null, jiVar3.getName(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -3, -1, 3, null);
                                    if (cloudMetadata2 == null) {
                                        cloudMetadata2 = new CloudMetadata(jiVar3.getPackageName(), jiVar3.getName(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -4, -1, 3, null);
                                    }
                                } else {
                                    cloudMetadata2 = new CloudMetadata(jiVar3.getPackageName(), jiVar3.getName(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -4, -1, 3, null);
                                }
                                a00Var4.h = cloudMetadata2;
                                concurrentHashMap = new ConcurrentHashMap();
                                z3 z3Var = (z3) gz.getEntries();
                                z3Var.getClass();
                                w3Var = new w3(z3Var);
                                while (true) {
                                    zHasNext = w3Var.hasNext();
                                    mzVar = a00Var4.e;
                                    localMetadata = a00Var4.f;
                                    if (zHasNext) {
                                        gzVar2 = (gz) w3Var.next();
                                        switch (yz.a[gzVar2.ordinal()]) {
                                            case 1:
                                                cloudMetadata5 = cloudMetadata2;
                                                hlVar = hlVar;
                                                localMetadata2 = localMetadata;
                                                i8 = i10;
                                                rf8Var2 = mzVar.a;
                                                if (rf8Var2 != null || !wx3.o(list2)) {
                                                    rf8Var2 = null;
                                                }
                                                if (rf8Var2 != null) {
                                                    str2 = rf8Var2.h;
                                                    vr6Var4 = vr6.INSTANCE;
                                                    vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                    cloudMetadata6 = a00Var4.h;
                                                    if (cloudMetadata6 == null) {
                                                        ea3Var = new ea3(null, false);
                                                    } else {
                                                        switch (rf8Var2.b) {
                                                            case 1:
                                                                apkLink = cloudMetadata6.getApkLink();
                                                                if (cloudMetadata6.hasApk()) {
                                                                    jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize = cloudMetadata6.getApkSize();
                                                                    versionName = localMetadata2.getVersionName();
                                                                    if (versionName == null) {
                                                                        str3 = "Empty";
                                                                    } else {
                                                                        str3 = versionName;
                                                                    }
                                                                    versionCode = localMetadata2.getVersionCode();
                                                                    if (versionCode != null) {
                                                                        jLongValue2 = versionCode.longValue();
                                                                    } else {
                                                                        jLongValue2 = -1;
                                                                    }
                                                                    pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName2 = cloudMetadata6.getVersionName();
                                                                    if (versionName2 == null) {
                                                                        str4 = "Empty";
                                                                    } else {
                                                                        str4 = versionName2;
                                                                    }
                                                                    versionCode2 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z8 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z8);
                                                                }
                                                                z4 = true;
                                                                boolean z9 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z9);
                                                                break;
                                                            case 2:
                                                                apkLink = cloudMetadata6.getSplitsLink();
                                                                if (cloudMetadata6.hasSplitApks()) {
                                                                    jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize2 = cloudMetadata6.getApkSize();
                                                                    versionName3 = localMetadata2.getVersionName();
                                                                    if (versionName3 == null) {
                                                                        str5 = "Empty";
                                                                    } else {
                                                                        str5 = versionName3;
                                                                    }
                                                                    versionCode3 = localMetadata2.getVersionCode();
                                                                    if (versionCode3 != null) {
                                                                        jLongValue3 = versionCode3.longValue();
                                                                    } else {
                                                                        jLongValue3 = -1;
                                                                    }
                                                                    pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName4 = cloudMetadata6.getVersionName();
                                                                    if (versionName4 == null) {
                                                                        str6 = "Empty";
                                                                    } else {
                                                                        str6 = versionName4;
                                                                    }
                                                                    versionCode4 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z10 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z10);
                                                                }
                                                                z4 = true;
                                                                boolean z11 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11);
                                                                break;
                                                            case 3:
                                                                apkLink = cloudMetadata6.getSharedLibsLink();
                                                                if (cloudMetadata6.hasSharedLibs()) {
                                                                    jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize3 = cloudMetadata6.getApkSize();
                                                                    versionName5 = localMetadata2.getVersionName();
                                                                    if (versionName5 == null) {
                                                                        str7 = "Empty";
                                                                    } else {
                                                                        str7 = versionName5;
                                                                    }
                                                                    versionCode5 = localMetadata2.getVersionCode();
                                                                    if (versionCode5 != null) {
                                                                        jLongValue4 = versionCode5.longValue();
                                                                    } else {
                                                                        jLongValue4 = -1;
                                                                    }
                                                                    pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName6 = cloudMetadata6.getVersionName();
                                                                    if (versionName6 == null) {
                                                                        str8 = "Empty";
                                                                    } else {
                                                                        str8 = versionName6;
                                                                    }
                                                                    versionCode6 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z12 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z12);
                                                                }
                                                                z4 = true;
                                                                boolean z13 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z13);
                                                                break;
                                                            case 4:
                                                                apkLink = cloudMetadata6.getDataLink();
                                                                if (cloudMetadata6.hasData()) {
                                                                    if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z14 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z14);
                                                                }
                                                                z4 = true;
                                                                boolean z15 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z15);
                                                                break;
                                                            case 5:
                                                                apkLink = cloudMetadata6.getExpLink();
                                                                if (cloudMetadata6.hasExpansion()) {
                                                                    if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z16 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z16);
                                                                }
                                                                z4 = true;
                                                                boolean z17 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z17);
                                                                break;
                                                            case 6:
                                                                apkLink = cloudMetadata6.getExtDataLink();
                                                                if (cloudMetadata6.hasExtData()) {
                                                                    if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z18 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z18);
                                                                }
                                                                z4 = true;
                                                                boolean z19 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z19);
                                                                break;
                                                            case 7:
                                                                apkLink = cloudMetadata6.getMediaLink();
                                                                if (cloudMetadata6.hasMedia()) {
                                                                    if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z110);
                                                                }
                                                                z4 = true;
                                                                boolean z111 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111);
                                                                break;
                                                            case 8:
                                                                apkLink = cloudMetadata6.getSpecialDataLink();
                                                                z4 = true;
                                                                boolean z112 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z112);
                                                                break;
                                                            default:
                                                                throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                        }
                                                    }
                                                    if (!ea3Var.a) {
                                                        rf8Var2.f = (String) ea3Var.b;
                                                        concurrentHashMap.put(gzVar2, rf8Var2);
                                                    }
                                                }
                                                i10 = i8;
                                                hlVar = hlVar;
                                                cloudMetadata2 = cloudMetadata5;
                                                break;
                                            case 2:
                                                cloudMetadata5 = cloudMetadata2;
                                                hlVar = hlVar;
                                                localMetadata2 = localMetadata;
                                                i8 = i10;
                                                rf8Var2 = mzVar.b;
                                                if (rf8Var2 != null || !wx3.o(list2)) {
                                                    rf8Var2 = null;
                                                }
                                                if (rf8Var2 != null) {
                                                    str2 = rf8Var2.h;
                                                    vr6Var4 = vr6.INSTANCE;
                                                    vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                    cloudMetadata6 = a00Var4.h;
                                                    if (cloudMetadata6 == null) {
                                                        ea3Var = new ea3(null, false);
                                                    } else {
                                                        switch (rf8Var2.b) {
                                                            case 1:
                                                                apkLink = cloudMetadata6.getApkLink();
                                                                if (cloudMetadata6.hasApk()) {
                                                                    jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize = cloudMetadata6.getApkSize();
                                                                    versionName = localMetadata2.getVersionName();
                                                                    if (versionName == null) {
                                                                        str3 = "Empty";
                                                                    } else {
                                                                        str3 = versionName;
                                                                    }
                                                                    versionCode = localMetadata2.getVersionCode();
                                                                    if (versionCode != null) {
                                                                        jLongValue2 = versionCode.longValue();
                                                                    } else {
                                                                        jLongValue2 = -1;
                                                                    }
                                                                    pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName2 = cloudMetadata6.getVersionName();
                                                                    if (versionName2 == null) {
                                                                        str4 = "Empty";
                                                                    } else {
                                                                        str4 = versionName2;
                                                                    }
                                                                    versionCode2 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z113);
                                                                }
                                                                z4 = true;
                                                                boolean z114 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z114);
                                                                break;
                                                            case 2:
                                                                apkLink = cloudMetadata6.getSplitsLink();
                                                                if (cloudMetadata6.hasSplitApks()) {
                                                                    jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize2 = cloudMetadata6.getApkSize();
                                                                    versionName3 = localMetadata2.getVersionName();
                                                                    if (versionName3 == null) {
                                                                        str5 = "Empty";
                                                                    } else {
                                                                        str5 = versionName3;
                                                                    }
                                                                    versionCode3 = localMetadata2.getVersionCode();
                                                                    if (versionCode3 != null) {
                                                                        jLongValue3 = versionCode3.longValue();
                                                                    } else {
                                                                        jLongValue3 = -1;
                                                                    }
                                                                    pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName4 = cloudMetadata6.getVersionName();
                                                                    if (versionName4 == null) {
                                                                        str6 = "Empty";
                                                                    } else {
                                                                        str6 = versionName4;
                                                                    }
                                                                    versionCode4 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z115);
                                                                }
                                                                z4 = true;
                                                                boolean z116 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z116);
                                                                break;
                                                            case 3:
                                                                apkLink = cloudMetadata6.getSharedLibsLink();
                                                                if (cloudMetadata6.hasSharedLibs()) {
                                                                    jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize3 = cloudMetadata6.getApkSize();
                                                                    versionName5 = localMetadata2.getVersionName();
                                                                    if (versionName5 == null) {
                                                                        str7 = "Empty";
                                                                    } else {
                                                                        str7 = versionName5;
                                                                    }
                                                                    versionCode5 = localMetadata2.getVersionCode();
                                                                    if (versionCode5 != null) {
                                                                        jLongValue4 = versionCode5.longValue();
                                                                    } else {
                                                                        jLongValue4 = -1;
                                                                    }
                                                                    pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName6 = cloudMetadata6.getVersionName();
                                                                    if (versionName6 == null) {
                                                                        str8 = "Empty";
                                                                    } else {
                                                                        str8 = versionName6;
                                                                    }
                                                                    versionCode6 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z117);
                                                                }
                                                                z4 = true;
                                                                boolean z118 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z118);
                                                                break;
                                                            case 4:
                                                                apkLink = cloudMetadata6.getDataLink();
                                                                if (cloudMetadata6.hasData()) {
                                                                    if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z119);
                                                                }
                                                                z4 = true;
                                                                boolean z1110 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1110);
                                                                break;
                                                            case 5:
                                                                apkLink = cloudMetadata6.getExpLink();
                                                                if (cloudMetadata6.hasExpansion()) {
                                                                    if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111);
                                                                }
                                                                z4 = true;
                                                                boolean z1112 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1112);
                                                                break;
                                                            case 6:
                                                                apkLink = cloudMetadata6.getExtDataLink();
                                                                if (cloudMetadata6.hasExtData()) {
                                                                    if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1113);
                                                                }
                                                                z4 = true;
                                                                boolean z1114 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1114);
                                                                break;
                                                            case 7:
                                                                apkLink = cloudMetadata6.getMediaLink();
                                                                if (cloudMetadata6.hasMedia()) {
                                                                    if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1115);
                                                                }
                                                                z4 = true;
                                                                boolean z1116 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1116);
                                                                break;
                                                            case 8:
                                                                apkLink = cloudMetadata6.getSpecialDataLink();
                                                                z4 = true;
                                                                boolean z1117 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1117);
                                                                break;
                                                            default:
                                                                throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                        }
                                                    }
                                                    if (!ea3Var.a) {
                                                        rf8Var2.f = (String) ea3Var.b;
                                                        concurrentHashMap.put(gzVar2, rf8Var2);
                                                    }
                                                }
                                                i10 = i8;
                                                hlVar = hlVar;
                                                cloudMetadata2 = cloudMetadata5;
                                                break;
                                            case 3:
                                                cloudMetadata5 = cloudMetadata2;
                                                hlVar = hlVar;
                                                localMetadata2 = localMetadata;
                                                i8 = i10;
                                                rf8Var2 = mzVar.c;
                                                if (rf8Var2 != null || !wx3.o(list2)) {
                                                    rf8Var2 = null;
                                                }
                                                if (rf8Var2 != null) {
                                                    str2 = rf8Var2.h;
                                                    vr6Var4 = vr6.INSTANCE;
                                                    vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                    cloudMetadata6 = a00Var4.h;
                                                    if (cloudMetadata6 == null) {
                                                        ea3Var = new ea3(null, false);
                                                    } else {
                                                        switch (rf8Var2.b) {
                                                            case 1:
                                                                apkLink = cloudMetadata6.getApkLink();
                                                                if (cloudMetadata6.hasApk()) {
                                                                    jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize = cloudMetadata6.getApkSize();
                                                                    versionName = localMetadata2.getVersionName();
                                                                    if (versionName == null) {
                                                                        str3 = "Empty";
                                                                    } else {
                                                                        str3 = versionName;
                                                                    }
                                                                    versionCode = localMetadata2.getVersionCode();
                                                                    if (versionCode != null) {
                                                                        jLongValue2 = versionCode.longValue();
                                                                    } else {
                                                                        jLongValue2 = -1;
                                                                    }
                                                                    pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName2 = cloudMetadata6.getVersionName();
                                                                    if (versionName2 == null) {
                                                                        str4 = "Empty";
                                                                    } else {
                                                                        str4 = versionName2;
                                                                    }
                                                                    versionCode2 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1118);
                                                                }
                                                                z4 = true;
                                                                boolean z1119 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1119);
                                                                break;
                                                            case 2:
                                                                apkLink = cloudMetadata6.getSplitsLink();
                                                                if (cloudMetadata6.hasSplitApks()) {
                                                                    jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize2 = cloudMetadata6.getApkSize();
                                                                    versionName3 = localMetadata2.getVersionName();
                                                                    if (versionName3 == null) {
                                                                        str5 = "Empty";
                                                                    } else {
                                                                        str5 = versionName3;
                                                                    }
                                                                    versionCode3 = localMetadata2.getVersionCode();
                                                                    if (versionCode3 != null) {
                                                                        jLongValue3 = versionCode3.longValue();
                                                                    } else {
                                                                        jLongValue3 = -1;
                                                                    }
                                                                    pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName4 = cloudMetadata6.getVersionName();
                                                                    if (versionName4 == null) {
                                                                        str6 = "Empty";
                                                                    } else {
                                                                        str6 = versionName4;
                                                                    }
                                                                    versionCode4 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11110);
                                                                }
                                                                z4 = true;
                                                                boolean z11111 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111);
                                                                break;
                                                            case 3:
                                                                apkLink = cloudMetadata6.getSharedLibsLink();
                                                                if (cloudMetadata6.hasSharedLibs()) {
                                                                    jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize3 = cloudMetadata6.getApkSize();
                                                                    versionName5 = localMetadata2.getVersionName();
                                                                    if (versionName5 == null) {
                                                                        str7 = "Empty";
                                                                    } else {
                                                                        str7 = versionName5;
                                                                    }
                                                                    versionCode5 = localMetadata2.getVersionCode();
                                                                    if (versionCode5 != null) {
                                                                        jLongValue4 = versionCode5.longValue();
                                                                    } else {
                                                                        jLongValue4 = -1;
                                                                    }
                                                                    pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName6 = cloudMetadata6.getVersionName();
                                                                    if (versionName6 == null) {
                                                                        str8 = "Empty";
                                                                    } else {
                                                                        str8 = versionName6;
                                                                    }
                                                                    versionCode6 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11112);
                                                                }
                                                                z4 = true;
                                                                boolean z11113 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11113);
                                                                break;
                                                            case 4:
                                                                apkLink = cloudMetadata6.getDataLink();
                                                                if (cloudMetadata6.hasData()) {
                                                                    if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11114);
                                                                }
                                                                z4 = true;
                                                                boolean z11115 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11115);
                                                                break;
                                                            case 5:
                                                                apkLink = cloudMetadata6.getExpLink();
                                                                if (cloudMetadata6.hasExpansion()) {
                                                                    if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11116);
                                                                }
                                                                z4 = true;
                                                                boolean z11117 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11117);
                                                                break;
                                                            case 6:
                                                                apkLink = cloudMetadata6.getExtDataLink();
                                                                if (cloudMetadata6.hasExtData()) {
                                                                    if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11118);
                                                                }
                                                                z4 = true;
                                                                boolean z11119 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11119);
                                                                break;
                                                            case 7:
                                                                apkLink = cloudMetadata6.getMediaLink();
                                                                if (cloudMetadata6.hasMedia()) {
                                                                    if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111110);
                                                                }
                                                                z4 = true;
                                                                boolean z111111 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111);
                                                                break;
                                                            case 8:
                                                                apkLink = cloudMetadata6.getSpecialDataLink();
                                                                z4 = true;
                                                                boolean z111112 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111112);
                                                                break;
                                                            default:
                                                                throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                        }
                                                    }
                                                    if (!ea3Var.a) {
                                                        rf8Var2.f = (String) ea3Var.b;
                                                        concurrentHashMap.put(gzVar2, rf8Var2);
                                                    }
                                                }
                                                i10 = i8;
                                                hlVar = hlVar;
                                                cloudMetadata2 = cloudMetadata5;
                                                break;
                                            case 4:
                                                cloudMetadata5 = cloudMetadata2;
                                                hlVar = hlVar;
                                                localMetadata2 = localMetadata;
                                                i8 = i10;
                                                rf8Var2 = mzVar.d;
                                                if (rf8Var2 != null || !wx3.p(list2) || !a00Var4.a(iu.DATA, rf8Var2.a())) {
                                                    rf8Var2 = null;
                                                }
                                                if (rf8Var2 != null) {
                                                    str2 = rf8Var2.h;
                                                    vr6Var4 = vr6.INSTANCE;
                                                    vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                    cloudMetadata6 = a00Var4.h;
                                                    if (cloudMetadata6 == null) {
                                                        ea3Var = new ea3(null, false);
                                                    } else {
                                                        switch (rf8Var2.b) {
                                                            case 1:
                                                                apkLink = cloudMetadata6.getApkLink();
                                                                if (cloudMetadata6.hasApk()) {
                                                                    jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize = cloudMetadata6.getApkSize();
                                                                    versionName = localMetadata2.getVersionName();
                                                                    if (versionName == null) {
                                                                        str3 = "Empty";
                                                                    } else {
                                                                        str3 = versionName;
                                                                    }
                                                                    versionCode = localMetadata2.getVersionCode();
                                                                    if (versionCode != null) {
                                                                        jLongValue2 = versionCode.longValue();
                                                                    } else {
                                                                        jLongValue2 = -1;
                                                                    }
                                                                    pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName2 = cloudMetadata6.getVersionName();
                                                                    if (versionName2 == null) {
                                                                        str4 = "Empty";
                                                                    } else {
                                                                        str4 = versionName2;
                                                                    }
                                                                    versionCode2 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111113);
                                                                }
                                                                z4 = true;
                                                                boolean z111114 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111114);
                                                                break;
                                                            case 2:
                                                                apkLink = cloudMetadata6.getSplitsLink();
                                                                if (cloudMetadata6.hasSplitApks()) {
                                                                    jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize2 = cloudMetadata6.getApkSize();
                                                                    versionName3 = localMetadata2.getVersionName();
                                                                    if (versionName3 == null) {
                                                                        str5 = "Empty";
                                                                    } else {
                                                                        str5 = versionName3;
                                                                    }
                                                                    versionCode3 = localMetadata2.getVersionCode();
                                                                    if (versionCode3 != null) {
                                                                        jLongValue3 = versionCode3.longValue();
                                                                    } else {
                                                                        jLongValue3 = -1;
                                                                    }
                                                                    pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName4 = cloudMetadata6.getVersionName();
                                                                    if (versionName4 == null) {
                                                                        str6 = "Empty";
                                                                    } else {
                                                                        str6 = versionName4;
                                                                    }
                                                                    versionCode4 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111115);
                                                                }
                                                                z4 = true;
                                                                boolean z111116 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111116);
                                                                break;
                                                            case 3:
                                                                apkLink = cloudMetadata6.getSharedLibsLink();
                                                                if (cloudMetadata6.hasSharedLibs()) {
                                                                    jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize3 = cloudMetadata6.getApkSize();
                                                                    versionName5 = localMetadata2.getVersionName();
                                                                    if (versionName5 == null) {
                                                                        str7 = "Empty";
                                                                    } else {
                                                                        str7 = versionName5;
                                                                    }
                                                                    versionCode5 = localMetadata2.getVersionCode();
                                                                    if (versionCode5 != null) {
                                                                        jLongValue4 = versionCode5.longValue();
                                                                    } else {
                                                                        jLongValue4 = -1;
                                                                    }
                                                                    pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName6 = cloudMetadata6.getVersionName();
                                                                    if (versionName6 == null) {
                                                                        str8 = "Empty";
                                                                    } else {
                                                                        str8 = versionName6;
                                                                    }
                                                                    versionCode6 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111117);
                                                                }
                                                                z4 = true;
                                                                boolean z111118 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111118);
                                                                break;
                                                            case 4:
                                                                apkLink = cloudMetadata6.getDataLink();
                                                                if (cloudMetadata6.hasData()) {
                                                                    if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111119);
                                                                }
                                                                z4 = true;
                                                                boolean z1111110 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111110);
                                                                break;
                                                            case 5:
                                                                apkLink = cloudMetadata6.getExpLink();
                                                                if (cloudMetadata6.hasExpansion()) {
                                                                    if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111);
                                                                }
                                                                z4 = true;
                                                                boolean z1111112 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111112);
                                                                break;
                                                            case 6:
                                                                apkLink = cloudMetadata6.getExtDataLink();
                                                                if (cloudMetadata6.hasExtData()) {
                                                                    if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111113);
                                                                }
                                                                z4 = true;
                                                                boolean z1111114 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111114);
                                                                break;
                                                            case 7:
                                                                apkLink = cloudMetadata6.getMediaLink();
                                                                if (cloudMetadata6.hasMedia()) {
                                                                    if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111115);
                                                                }
                                                                z4 = true;
                                                                boolean z1111116 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111116);
                                                                break;
                                                            case 8:
                                                                apkLink = cloudMetadata6.getSpecialDataLink();
                                                                z4 = true;
                                                                boolean z1111117 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111117);
                                                                break;
                                                            default:
                                                                throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                        }
                                                    }
                                                    if (!ea3Var.a) {
                                                        rf8Var2.f = (String) ea3Var.b;
                                                        concurrentHashMap.put(gzVar2, rf8Var2);
                                                    }
                                                }
                                                i10 = i8;
                                                hlVar = hlVar;
                                                cloudMetadata2 = cloudMetadata5;
                                                break;
                                            case 5:
                                                cloudMetadata5 = cloudMetadata2;
                                                hlVar = hlVar;
                                                localMetadata2 = localMetadata;
                                                i9 = i10;
                                                rf8Var2 = mzVar.e;
                                                if (rf8Var2 == null && wx3.r(list2)) {
                                                    i8 = i9;
                                                    if (!a00Var4.a(iu.EXTDATA, rf8Var2.a())) {
                                                    }
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111119);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111112 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111112);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111113);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111114 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111114);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111115);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111116 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111116);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111117);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111119);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111112);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                } else {
                                                    i8 = i9;
                                                }
                                                rf8Var2 = null;
                                                if (rf8Var2 != null) {
                                                    str2 = rf8Var2.h;
                                                    vr6Var4 = vr6.INSTANCE;
                                                    vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                    cloudMetadata6 = a00Var4.h;
                                                    if (cloudMetadata6 == null) {
                                                        ea3Var = new ea3(null, false);
                                                    } else {
                                                        switch (rf8Var2.b) {
                                                            case 1:
                                                                apkLink = cloudMetadata6.getApkLink();
                                                                if (cloudMetadata6.hasApk()) {
                                                                    jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize = cloudMetadata6.getApkSize();
                                                                    versionName = localMetadata2.getVersionName();
                                                                    if (versionName == null) {
                                                                        str3 = "Empty";
                                                                    } else {
                                                                        str3 = versionName;
                                                                    }
                                                                    versionCode = localMetadata2.getVersionCode();
                                                                    if (versionCode != null) {
                                                                        jLongValue2 = versionCode.longValue();
                                                                    } else {
                                                                        jLongValue2 = -1;
                                                                    }
                                                                    pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName2 = cloudMetadata6.getVersionName();
                                                                    if (versionName2 == null) {
                                                                        str4 = "Empty";
                                                                    } else {
                                                                        str4 = versionName2;
                                                                    }
                                                                    versionCode2 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111113);
                                                                }
                                                                z4 = true;
                                                                boolean z111111114 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111114);
                                                                break;
                                                            case 2:
                                                                apkLink = cloudMetadata6.getSplitsLink();
                                                                if (cloudMetadata6.hasSplitApks()) {
                                                                    jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize2 = cloudMetadata6.getApkSize();
                                                                    versionName3 = localMetadata2.getVersionName();
                                                                    if (versionName3 == null) {
                                                                        str5 = "Empty";
                                                                    } else {
                                                                        str5 = versionName3;
                                                                    }
                                                                    versionCode3 = localMetadata2.getVersionCode();
                                                                    if (versionCode3 != null) {
                                                                        jLongValue3 = versionCode3.longValue();
                                                                    } else {
                                                                        jLongValue3 = -1;
                                                                    }
                                                                    pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName4 = cloudMetadata6.getVersionName();
                                                                    if (versionName4 == null) {
                                                                        str6 = "Empty";
                                                                    } else {
                                                                        str6 = versionName4;
                                                                    }
                                                                    versionCode4 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111115);
                                                                }
                                                                z4 = true;
                                                                boolean z111111116 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111116);
                                                                break;
                                                            case 3:
                                                                apkLink = cloudMetadata6.getSharedLibsLink();
                                                                if (cloudMetadata6.hasSharedLibs()) {
                                                                    jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize3 = cloudMetadata6.getApkSize();
                                                                    versionName5 = localMetadata2.getVersionName();
                                                                    if (versionName5 == null) {
                                                                        str7 = "Empty";
                                                                    } else {
                                                                        str7 = versionName5;
                                                                    }
                                                                    versionCode5 = localMetadata2.getVersionCode();
                                                                    if (versionCode5 != null) {
                                                                        jLongValue4 = versionCode5.longValue();
                                                                    } else {
                                                                        jLongValue4 = -1;
                                                                    }
                                                                    pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName6 = cloudMetadata6.getVersionName();
                                                                    if (versionName6 == null) {
                                                                        str8 = "Empty";
                                                                    } else {
                                                                        str8 = versionName6;
                                                                    }
                                                                    versionCode6 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111117);
                                                                }
                                                                z4 = true;
                                                                boolean z111111118 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111118);
                                                                break;
                                                            case 4:
                                                                apkLink = cloudMetadata6.getDataLink();
                                                                if (cloudMetadata6.hasData()) {
                                                                    if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111119);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111110 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111110);
                                                                break;
                                                            case 5:
                                                                apkLink = cloudMetadata6.getExpLink();
                                                                if (cloudMetadata6.hasExpansion()) {
                                                                    if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111112 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111112);
                                                                break;
                                                            case 6:
                                                                apkLink = cloudMetadata6.getExtDataLink();
                                                                if (cloudMetadata6.hasExtData()) {
                                                                    if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111113);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111114 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111114);
                                                                break;
                                                            case 7:
                                                                apkLink = cloudMetadata6.getMediaLink();
                                                                if (cloudMetadata6.hasMedia()) {
                                                                    if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111115);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111116 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111116);
                                                                break;
                                                            case 8:
                                                                apkLink = cloudMetadata6.getSpecialDataLink();
                                                                z4 = true;
                                                                boolean z1111111117 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111117);
                                                                break;
                                                            default:
                                                                throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                        }
                                                    }
                                                    if (!ea3Var.a) {
                                                        rf8Var2.f = (String) ea3Var.b;
                                                        concurrentHashMap.put(gzVar2, rf8Var2);
                                                    }
                                                }
                                                i10 = i8;
                                                hlVar = hlVar;
                                                cloudMetadata2 = cloudMetadata5;
                                                break;
                                            case 6:
                                                cloudMetadata5 = cloudMetadata2;
                                                localMetadata2 = localMetadata;
                                                rf8Var2 = mzVar.f;
                                                if (rf8Var2 != null) {
                                                    if (wx3.s(list2)) {
                                                        i9 = i10;
                                                        hlVar = hlVar;
                                                        if (a00Var4.a(iu.MEDIA, rf8Var2.a())) {
                                                            i8 = i9;
                                                        }
                                                    } else {
                                                        i9 = i10;
                                                        hlVar = hlVar;
                                                    }
                                                    i8 = i9;
                                                    rf8Var2 = null;
                                                } else {
                                                    hlVar = hlVar;
                                                    i8 = i10;
                                                    rf8Var2 = null;
                                                }
                                                if (rf8Var2 != null) {
                                                    str2 = rf8Var2.h;
                                                    vr6Var4 = vr6.INSTANCE;
                                                    vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                    cloudMetadata6 = a00Var4.h;
                                                    if (cloudMetadata6 == null) {
                                                        ea3Var = new ea3(null, false);
                                                    } else {
                                                        switch (rf8Var2.b) {
                                                            case 1:
                                                                apkLink = cloudMetadata6.getApkLink();
                                                                if (cloudMetadata6.hasApk()) {
                                                                    jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize = cloudMetadata6.getApkSize();
                                                                    versionName = localMetadata2.getVersionName();
                                                                    if (versionName == null) {
                                                                        str3 = "Empty";
                                                                    } else {
                                                                        str3 = versionName;
                                                                    }
                                                                    versionCode = localMetadata2.getVersionCode();
                                                                    if (versionCode != null) {
                                                                        jLongValue2 = versionCode.longValue();
                                                                    } else {
                                                                        jLongValue2 = -1;
                                                                    }
                                                                    pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName2 = cloudMetadata6.getVersionName();
                                                                    if (versionName2 == null) {
                                                                        str4 = "Empty";
                                                                    } else {
                                                                        str4 = versionName2;
                                                                    }
                                                                    versionCode2 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111111118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111118);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111119 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111119);
                                                                break;
                                                            case 2:
                                                                apkLink = cloudMetadata6.getSplitsLink();
                                                                if (cloudMetadata6.hasSplitApks()) {
                                                                    jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize2 = cloudMetadata6.getApkSize();
                                                                    versionName3 = localMetadata2.getVersionName();
                                                                    if (versionName3 == null) {
                                                                        str5 = "Empty";
                                                                    } else {
                                                                        str5 = versionName3;
                                                                    }
                                                                    versionCode3 = localMetadata2.getVersionCode();
                                                                    if (versionCode3 != null) {
                                                                        jLongValue3 = versionCode3.longValue();
                                                                    } else {
                                                                        jLongValue3 = -1;
                                                                    }
                                                                    pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName4 = cloudMetadata6.getVersionName();
                                                                    if (versionName4 == null) {
                                                                        str6 = "Empty";
                                                                    } else {
                                                                        str6 = versionName4;
                                                                    }
                                                                    versionCode4 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111110);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111111 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111111);
                                                                break;
                                                            case 3:
                                                                apkLink = cloudMetadata6.getSharedLibsLink();
                                                                if (cloudMetadata6.hasSharedLibs()) {
                                                                    jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize3 = cloudMetadata6.getApkSize();
                                                                    versionName5 = localMetadata2.getVersionName();
                                                                    if (versionName5 == null) {
                                                                        str7 = "Empty";
                                                                    } else {
                                                                        str7 = versionName5;
                                                                    }
                                                                    versionCode5 = localMetadata2.getVersionCode();
                                                                    if (versionCode5 != null) {
                                                                        jLongValue4 = versionCode5.longValue();
                                                                    } else {
                                                                        jLongValue4 = -1;
                                                                    }
                                                                    pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName6 = cloudMetadata6.getVersionName();
                                                                    if (versionName6 == null) {
                                                                        str8 = "Empty";
                                                                    } else {
                                                                        str8 = versionName6;
                                                                    }
                                                                    versionCode6 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111112);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111113 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111113);
                                                                break;
                                                            case 4:
                                                                apkLink = cloudMetadata6.getDataLink();
                                                                if (cloudMetadata6.hasData()) {
                                                                    if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111114);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111115 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111115);
                                                                break;
                                                            case 5:
                                                                apkLink = cloudMetadata6.getExpLink();
                                                                if (cloudMetadata6.hasExpansion()) {
                                                                    if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111116);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111117 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111117);
                                                                break;
                                                            case 6:
                                                                apkLink = cloudMetadata6.getExtDataLink();
                                                                if (cloudMetadata6.hasExtData()) {
                                                                    if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111118);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111119 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111119);
                                                                break;
                                                            case 7:
                                                                apkLink = cloudMetadata6.getMediaLink();
                                                                if (cloudMetadata6.hasMedia()) {
                                                                    if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111111110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111110);
                                                                }
                                                                z4 = true;
                                                                boolean z111111111111 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111111111);
                                                                break;
                                                            case 8:
                                                                apkLink = cloudMetadata6.getSpecialDataLink();
                                                                z4 = true;
                                                                boolean z111111111112 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111111112);
                                                                break;
                                                            default:
                                                                throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                        }
                                                    }
                                                    if (!ea3Var.a) {
                                                        rf8Var2.f = (String) ea3Var.b;
                                                        concurrentHashMap.put(gzVar2, rf8Var2);
                                                    }
                                                }
                                                i10 = i8;
                                                hlVar = hlVar;
                                                cloudMetadata2 = cloudMetadata5;
                                                break;
                                            case 7:
                                                rf8Var3 = mzVar.g;
                                                if (rf8Var3 != null) {
                                                    cloudMetadata5 = cloudMetadata2;
                                                    if (wx3.q(list2)) {
                                                        localMetadata2 = localMetadata;
                                                        if (a00Var4.a(iu.EXPANSION, rf8Var3.a())) {
                                                            rf8Var2 = rf8Var3;
                                                        }
                                                        i8 = i10;
                                                        if (rf8Var2 != null) {
                                                            str2 = rf8Var2.h;
                                                            vr6Var4 = vr6.INSTANCE;
                                                            vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                            cloudMetadata6 = a00Var4.h;
                                                            if (cloudMetadata6 == null) {
                                                                ea3Var = new ea3(null, false);
                                                            } else {
                                                                switch (rf8Var2.b) {
                                                                    case 1:
                                                                        apkLink = cloudMetadata6.getApkLink();
                                                                        if (cloudMetadata6.hasApk()) {
                                                                            jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                            apkSize = cloudMetadata6.getApkSize();
                                                                            versionName = localMetadata2.getVersionName();
                                                                            if (versionName == null) {
                                                                                str3 = "Empty";
                                                                            } else {
                                                                                str3 = versionName;
                                                                            }
                                                                            versionCode = localMetadata2.getVersionCode();
                                                                            if (versionCode != null) {
                                                                                jLongValue2 = versionCode.longValue();
                                                                            } else {
                                                                                jLongValue2 = -1;
                                                                            }
                                                                            pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                            versionName2 = cloudMetadata6.getVersionName();
                                                                            if (versionName2 == null) {
                                                                                str4 = "Empty";
                                                                            } else {
                                                                                str4 = versionName2;
                                                                            }
                                                                            versionCode2 = cloudMetadata6.getVersionCode();
                                                                            if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z111111111113 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z111111111113);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z111111111114 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111114);
                                                                        break;
                                                                    case 2:
                                                                        apkLink = cloudMetadata6.getSplitsLink();
                                                                        if (cloudMetadata6.hasSplitApks()) {
                                                                            jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                            apkSize2 = cloudMetadata6.getApkSize();
                                                                            versionName3 = localMetadata2.getVersionName();
                                                                            if (versionName3 == null) {
                                                                                str5 = "Empty";
                                                                            } else {
                                                                                str5 = versionName3;
                                                                            }
                                                                            versionCode3 = localMetadata2.getVersionCode();
                                                                            if (versionCode3 != null) {
                                                                                jLongValue3 = versionCode3.longValue();
                                                                            } else {
                                                                                jLongValue3 = -1;
                                                                            }
                                                                            pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                            versionName4 = cloudMetadata6.getVersionName();
                                                                            if (versionName4 == null) {
                                                                                str6 = "Empty";
                                                                            } else {
                                                                                str6 = versionName4;
                                                                            }
                                                                            versionCode4 = cloudMetadata6.getVersionCode();
                                                                            if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z111111111115 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z111111111115);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z111111111116 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111116);
                                                                        break;
                                                                    case 3:
                                                                        apkLink = cloudMetadata6.getSharedLibsLink();
                                                                        if (cloudMetadata6.hasSharedLibs()) {
                                                                            jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                            apkSize3 = cloudMetadata6.getApkSize();
                                                                            versionName5 = localMetadata2.getVersionName();
                                                                            if (versionName5 == null) {
                                                                                str7 = "Empty";
                                                                            } else {
                                                                                str7 = versionName5;
                                                                            }
                                                                            versionCode5 = localMetadata2.getVersionCode();
                                                                            if (versionCode5 != null) {
                                                                                jLongValue4 = versionCode5.longValue();
                                                                            } else {
                                                                                jLongValue4 = -1;
                                                                            }
                                                                            pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                            versionName6 = cloudMetadata6.getVersionName();
                                                                            if (versionName6 == null) {
                                                                                str8 = "Empty";
                                                                            } else {
                                                                                str8 = versionName6;
                                                                            }
                                                                            versionCode6 = cloudMetadata6.getVersionCode();
                                                                            if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z111111111117 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z111111111117);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111118);
                                                                        break;
                                                                    case 4:
                                                                        apkLink = cloudMetadata6.getDataLink();
                                                                        if (cloudMetadata6.hasData()) {
                                                                            if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z111111111119 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z111111111119);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z1111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111110);
                                                                        break;
                                                                    case 5:
                                                                        apkLink = cloudMetadata6.getExpLink();
                                                                        if (cloudMetadata6.hasExpansion()) {
                                                                            if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z1111111111111 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z1111111111111);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z1111111111112 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111112);
                                                                        break;
                                                                    case 6:
                                                                        apkLink = cloudMetadata6.getExtDataLink();
                                                                        if (cloudMetadata6.hasExtData()) {
                                                                            if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z1111111111113 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z1111111111113);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z1111111111114 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111114);
                                                                        break;
                                                                    case 7:
                                                                        apkLink = cloudMetadata6.getMediaLink();
                                                                        if (cloudMetadata6.hasMedia()) {
                                                                            if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z1111111111115 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z1111111111115);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z1111111111116 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111116);
                                                                        break;
                                                                    case 8:
                                                                        apkLink = cloudMetadata6.getSpecialDataLink();
                                                                        z4 = true;
                                                                        boolean z1111111111117 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111117);
                                                                        break;
                                                                    default:
                                                                        throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                                }
                                                            }
                                                            if (!ea3Var.a) {
                                                                rf8Var2.f = (String) ea3Var.b;
                                                                concurrentHashMap.put(gzVar2, rf8Var2);
                                                            }
                                                        }
                                                        i10 = i8;
                                                        hlVar = hlVar;
                                                        cloudMetadata2 = cloudMetadata5;
                                                    }
                                                    rf8Var2 = null;
                                                    i8 = i10;
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111119);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111112 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111112);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111113);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111114 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111114);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111115);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111116 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111116);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111117);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111119);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111112);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                } else {
                                                    cloudMetadata5 = cloudMetadata2;
                                                }
                                                localMetadata2 = localMetadata;
                                                rf8Var2 = null;
                                                i8 = i10;
                                                if (rf8Var2 != null) {
                                                    str2 = rf8Var2.h;
                                                    vr6Var4 = vr6.INSTANCE;
                                                    vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                    cloudMetadata6 = a00Var4.h;
                                                    if (cloudMetadata6 == null) {
                                                        ea3Var = new ea3(null, false);
                                                    } else {
                                                        switch (rf8Var2.b) {
                                                            case 1:
                                                                apkLink = cloudMetadata6.getApkLink();
                                                                if (cloudMetadata6.hasApk()) {
                                                                    jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize = cloudMetadata6.getApkSize();
                                                                    versionName = localMetadata2.getVersionName();
                                                                    if (versionName == null) {
                                                                        str3 = "Empty";
                                                                    } else {
                                                                        str3 = versionName;
                                                                    }
                                                                    versionCode = localMetadata2.getVersionCode();
                                                                    if (versionCode != null) {
                                                                        jLongValue2 = versionCode.longValue();
                                                                    } else {
                                                                        jLongValue2 = -1;
                                                                    }
                                                                    pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName2 = cloudMetadata6.getVersionName();
                                                                    if (versionName2 == null) {
                                                                        str4 = "Empty";
                                                                    } else {
                                                                        str4 = versionName2;
                                                                    }
                                                                    versionCode2 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111111111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111113);
                                                                }
                                                                z4 = true;
                                                                boolean z111111111111114 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111111111114);
                                                                break;
                                                            case 2:
                                                                apkLink = cloudMetadata6.getSplitsLink();
                                                                if (cloudMetadata6.hasSplitApks()) {
                                                                    jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize2 = cloudMetadata6.getApkSize();
                                                                    versionName3 = localMetadata2.getVersionName();
                                                                    if (versionName3 == null) {
                                                                        str5 = "Empty";
                                                                    } else {
                                                                        str5 = versionName3;
                                                                    }
                                                                    versionCode3 = localMetadata2.getVersionCode();
                                                                    if (versionCode3 != null) {
                                                                        jLongValue3 = versionCode3.longValue();
                                                                    } else {
                                                                        jLongValue3 = -1;
                                                                    }
                                                                    pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName4 = cloudMetadata6.getVersionName();
                                                                    if (versionName4 == null) {
                                                                        str6 = "Empty";
                                                                    } else {
                                                                        str6 = versionName4;
                                                                    }
                                                                    versionCode4 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111111111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111115);
                                                                }
                                                                z4 = true;
                                                                boolean z111111111111116 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111111111116);
                                                                break;
                                                            case 3:
                                                                apkLink = cloudMetadata6.getSharedLibsLink();
                                                                if (cloudMetadata6.hasSharedLibs()) {
                                                                    jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize3 = cloudMetadata6.getApkSize();
                                                                    versionName5 = localMetadata2.getVersionName();
                                                                    if (versionName5 == null) {
                                                                        str7 = "Empty";
                                                                    } else {
                                                                        str7 = versionName5;
                                                                    }
                                                                    versionCode5 = localMetadata2.getVersionCode();
                                                                    if (versionCode5 != null) {
                                                                        jLongValue4 = versionCode5.longValue();
                                                                    } else {
                                                                        jLongValue4 = -1;
                                                                    }
                                                                    pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName6 = cloudMetadata6.getVersionName();
                                                                    if (versionName6 == null) {
                                                                        str8 = "Empty";
                                                                    } else {
                                                                        str8 = versionName6;
                                                                    }
                                                                    versionCode6 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111117);
                                                                }
                                                                z4 = true;
                                                                boolean z111111111111118 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111111111118);
                                                                break;
                                                            case 4:
                                                                apkLink = cloudMetadata6.getDataLink();
                                                                if (cloudMetadata6.hasData()) {
                                                                    if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111119);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111111111110 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111111111110);
                                                                break;
                                                            case 5:
                                                                apkLink = cloudMetadata6.getExpLink();
                                                                if (cloudMetadata6.hasExpansion()) {
                                                                    if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111111111112 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111111111112);
                                                                break;
                                                            case 6:
                                                                apkLink = cloudMetadata6.getExtDataLink();
                                                                if (cloudMetadata6.hasExtData()) {
                                                                    if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111111111111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111113);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111111111114 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111111111114);
                                                                break;
                                                            case 7:
                                                                apkLink = cloudMetadata6.getMediaLink();
                                                                if (cloudMetadata6.hasMedia()) {
                                                                    if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111111111111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111115);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111111111116 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111111111116);
                                                                break;
                                                            case 8:
                                                                apkLink = cloudMetadata6.getSpecialDataLink();
                                                                z4 = true;
                                                                boolean z1111111111111117 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111111111117);
                                                                break;
                                                            default:
                                                                throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                        }
                                                    }
                                                    if (!ea3Var.a) {
                                                        rf8Var2.f = (String) ea3Var.b;
                                                        concurrentHashMap.put(gzVar2, rf8Var2);
                                                    }
                                                }
                                                i10 = i8;
                                                hlVar = hlVar;
                                                cloudMetadata2 = cloudMetadata5;
                                                break;
                                            case 8:
                                                cloudMetadata5 = cloudMetadata2;
                                                rf8Var2 = mzVar.h;
                                                localMetadata2 = localMetadata;
                                                i8 = i10;
                                                if (rf8Var2 != null) {
                                                    str2 = rf8Var2.h;
                                                    vr6Var4 = vr6.INSTANCE;
                                                    vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                    cloudMetadata6 = a00Var4.h;
                                                    if (cloudMetadata6 == null) {
                                                        ea3Var = new ea3(null, false);
                                                    } else {
                                                        switch (rf8Var2.b) {
                                                            case 1:
                                                                apkLink = cloudMetadata6.getApkLink();
                                                                if (cloudMetadata6.hasApk()) {
                                                                    jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize = cloudMetadata6.getApkSize();
                                                                    versionName = localMetadata2.getVersionName();
                                                                    if (versionName == null) {
                                                                        str3 = "Empty";
                                                                    } else {
                                                                        str3 = versionName;
                                                                    }
                                                                    versionCode = localMetadata2.getVersionCode();
                                                                    if (versionCode != null) {
                                                                        jLongValue2 = versionCode.longValue();
                                                                    } else {
                                                                        jLongValue2 = -1;
                                                                    }
                                                                    pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName2 = cloudMetadata6.getVersionName();
                                                                    if (versionName2 == null) {
                                                                        str4 = "Empty";
                                                                    } else {
                                                                        str4 = versionName2;
                                                                    }
                                                                    versionCode2 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z1111111111111118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111118);
                                                                }
                                                                z4 = true;
                                                                boolean z1111111111111119 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z1111111111111119);
                                                                break;
                                                            case 2:
                                                                apkLink = cloudMetadata6.getSplitsLink();
                                                                if (cloudMetadata6.hasSplitApks()) {
                                                                    jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize2 = cloudMetadata6.getApkSize();
                                                                    versionName3 = localMetadata2.getVersionName();
                                                                    if (versionName3 == null) {
                                                                        str5 = "Empty";
                                                                    } else {
                                                                        str5 = versionName3;
                                                                    }
                                                                    versionCode3 = localMetadata2.getVersionCode();
                                                                    if (versionCode3 != null) {
                                                                        jLongValue3 = versionCode3.longValue();
                                                                    } else {
                                                                        jLongValue3 = -1;
                                                                    }
                                                                    pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName4 = cloudMetadata6.getVersionName();
                                                                    if (versionName4 == null) {
                                                                        str6 = "Empty";
                                                                    } else {
                                                                        str6 = versionName4;
                                                                    }
                                                                    versionCode4 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111111111110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111110);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111111111111 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111111111111);
                                                                break;
                                                            case 3:
                                                                apkLink = cloudMetadata6.getSharedLibsLink();
                                                                if (cloudMetadata6.hasSharedLibs()) {
                                                                    jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                    apkSize3 = cloudMetadata6.getApkSize();
                                                                    versionName5 = localMetadata2.getVersionName();
                                                                    if (versionName5 == null) {
                                                                        str7 = "Empty";
                                                                    } else {
                                                                        str7 = versionName5;
                                                                    }
                                                                    versionCode5 = localMetadata2.getVersionCode();
                                                                    if (versionCode5 != null) {
                                                                        jLongValue4 = versionCode5.longValue();
                                                                    } else {
                                                                        jLongValue4 = -1;
                                                                    }
                                                                    pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                    versionName6 = cloudMetadata6.getVersionName();
                                                                    if (versionName6 == null) {
                                                                        str8 = "Empty";
                                                                    } else {
                                                                        str8 = versionName6;
                                                                    }
                                                                    versionCode6 = cloudMetadata6.getVersionCode();
                                                                    if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111112);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111111111113 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111111111113);
                                                                break;
                                                            case 4:
                                                                apkLink = cloudMetadata6.getDataLink();
                                                                if (cloudMetadata6.hasData()) {
                                                                    if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111114);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111111111115 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111111111115);
                                                                break;
                                                            case 5:
                                                                apkLink = cloudMetadata6.getExpLink();
                                                                if (cloudMetadata6.hasExpansion()) {
                                                                    if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111116);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111111111117 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111111111117);
                                                                break;
                                                            case 6:
                                                                apkLink = cloudMetadata6.getExtDataLink();
                                                                if (cloudMetadata6.hasExtData()) {
                                                                    if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z11111111111111118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111118);
                                                                }
                                                                z4 = true;
                                                                boolean z11111111111111119 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z11111111111111119);
                                                                break;
                                                            case 7:
                                                                apkLink = cloudMetadata6.getMediaLink();
                                                                if (cloudMetadata6.hasMedia()) {
                                                                    if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                        z4 = false;
                                                                    }
                                                                    boolean z111111111111111110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111110);
                                                                }
                                                                z4 = true;
                                                                boolean z111111111111111111 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111111111111111);
                                                                break;
                                                            case 8:
                                                                apkLink = cloudMetadata6.getSpecialDataLink();
                                                                z4 = true;
                                                                boolean z111111111111111112 = !z4;
                                                                if (!z4) {
                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                }
                                                                ea3Var = new ea3(apkLink, z111111111111111112);
                                                                break;
                                                            default:
                                                                throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                        }
                                                    }
                                                    if (!ea3Var.a) {
                                                        rf8Var2.f = (String) ea3Var.b;
                                                        concurrentHashMap.put(gzVar2, rf8Var2);
                                                    }
                                                }
                                                i10 = i8;
                                                hlVar = hlVar;
                                                cloudMetadata2 = cloudMetadata5;
                                                break;
                                            default:
                                                q.j();
                                                return;
                                        }
                                    } else {
                                        cloudMetadata3 = cloudMetadata2;
                                        hlVar2 = hlVar;
                                        i5 = i10;
                                        if (concurrentHashMap.isEmpty()) {
                                            a00Var = a00Var4;
                                            vr6.i$default(vr6.INSTANCE, "AppUploadTask", "Nothing to upload!", null, 4, null);
                                        } else {
                                            vr6 vr6Var6 = vr6.INSTANCE;
                                            Set setKeySet = concurrentHashMap.keySet();
                                            setKeySet.getClass();
                                            vr6.i$default(vr6Var6, "AppUploadTask", "Upload tasks: ".concat(el1.Y0(setKeySet, null, null, null, null, 63)), null, 4, null);
                                            Collection collectionValues = concurrentHashMap.values();
                                            collectionValues.getClass();
                                            it2 = collectionValues.iterator();
                                            jA = 0;
                                            while (it2.hasNext()) {
                                                jA = ((rf8) it2.next()).a() + jA;
                                            }
                                            lValueOf = Long.valueOf(jA);
                                            if (jA <= 0) {
                                                lValueOf = null;
                                            }
                                            if (lValueOf != null) {
                                                jLongValue = lValueOf.longValue();
                                            } else {
                                                jLongValue = 1;
                                            }
                                            j = jLongValue;
                                            concurrentHashMap2 = new ConcurrentHashMap();
                                            kh6Var = new kh6();
                                            kh6Var2 = new kh6();
                                            arrayList3 = new ArrayList(concurrentHashMap.size());
                                            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                                                gzVar = (gz) entry.getKey();
                                                rf8Var = (rf8) entry.getValue();
                                                switch (yz.a[gzVar.ordinal()]) {
                                                    case 1:
                                                        final a00 a00Var5 = a00Var4;
                                                        zn4 zn4Var = zn4.a;
                                                        a00Var2 = a00Var5;
                                                        vn4Var = new vn4(new bt3() { // from class: pz
                                                            @Override // defpackage.bt3
                                                            public final Object invoke() {
                                                                a00 a00Var6 = a00Var5;
                                                                boolean zC = a00Var6.c();
                                                                be8 be8Var = be8.a;
                                                                if (!zC) {
                                                                    ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                    kh6 kh6Var3 = kh6Var;
                                                                    long j2 = j;
                                                                    kh6 kh6Var4 = kh6Var2;
                                                                    gz gzVar3 = gzVar;
                                                                    rf8 rf8Var4 = rf8Var;
                                                                    zf8 zf8VarB = a00.b(a00Var6, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                    rg rgVarA = ng.a(rf8Var4.a, false);
                                                                    if (zf8VarB.a()) {
                                                                        cloudMetadata3.updateApkDetails(rgVarA.d(), Long.valueOf(rgVarA.c()), zf8VarB.a, Long.valueOf(rf8Var4.a()), Long.valueOf(System.currentTimeMillis()));
                                                                    }
                                                                }
                                                                return be8Var;
                                                            }
                                                        });
                                                        arrayList3.add(vn4Var);
                                                        a00Var4 = a00Var2;
                                                        break;
                                                    case 2:
                                                        a00Var3 = a00Var4;
                                                        zn4 zn4Var2 = zn4.a;
                                                        vn4Var = new vn4(new bt3() { // from class: qz
                                                            @Override // defpackage.bt3
                                                            public final Object invoke() {
                                                                a00 a00Var6 = a00Var3;
                                                                boolean zC = a00Var6.c();
                                                                be8 be8Var = be8.a;
                                                                if (!zC) {
                                                                    ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                    kh6 kh6Var3 = kh6Var;
                                                                    long j2 = j;
                                                                    kh6 kh6Var4 = kh6Var2;
                                                                    gz gzVar3 = gzVar;
                                                                    rf8 rf8Var4 = rf8Var;
                                                                    zf8 zf8VarB = a00.b(a00Var6, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                    if (zf8VarB.a()) {
                                                                        cloudMetadata3.updateSplitsDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), Long.valueOf(io4.h(a00Var6.f.getSplitsSizeMirrored())));
                                                                    }
                                                                }
                                                                return be8Var;
                                                            }
                                                        });
                                                        a00Var2 = a00Var3;
                                                        arrayList3.add(vn4Var);
                                                        a00Var4 = a00Var2;
                                                        break;
                                                    case 3:
                                                        a00Var3 = a00Var4;
                                                        zn4 zn4Var3 = zn4.a;
                                                        vn4Var = new vn4(new rz(a00Var3, gzVar, rf8Var, cloudMetadata3, concurrentHashMap2, kh6Var, j, kh6Var2));
                                                        a00Var2 = a00Var3;
                                                        arrayList3.add(vn4Var);
                                                        a00Var4 = a00Var2;
                                                        break;
                                                    case 4:
                                                        a00Var3 = a00Var4;
                                                        zn4 zn4Var4 = zn4.a;
                                                        vn4Var = new vn4(new bt3() { // from class: sz
                                                            @Override // defpackage.bt3
                                                            public final Object invoke() {
                                                                a00 a00Var6 = a00Var3;
                                                                boolean zC = a00Var6.c();
                                                                LocalMetadata localMetadata3 = a00Var6.f;
                                                                be8 be8Var = be8.a;
                                                                if (!zC) {
                                                                    ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                    kh6 kh6Var3 = kh6Var;
                                                                    long j2 = j;
                                                                    kh6 kh6Var4 = kh6Var2;
                                                                    gz gzVar3 = gzVar;
                                                                    rf8 rf8Var4 = rf8Var;
                                                                    zf8 zf8VarB = a00.b(a00Var6, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                    if (zf8VarB.a()) {
                                                                        cloudMetadata3.updateDataDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), localMetadata3.getDataSizeMirrored(), localMetadata3.isDataEncrypted(), localMetadata3.getDataEncryptionMethod(), localMetadata3.getDataPasswordHash(), Long.valueOf(System.currentTimeMillis()));
                                                                    }
                                                                }
                                                                return be8Var;
                                                            }
                                                        });
                                                        a00Var2 = a00Var3;
                                                        arrayList3.add(vn4Var);
                                                        a00Var4 = a00Var2;
                                                        break;
                                                    case 5:
                                                        a00Var3 = a00Var4;
                                                        zn4 zn4Var5 = zn4.a;
                                                        vn4Var = new vn4(new bt3() { // from class: tz
                                                            @Override // defpackage.bt3
                                                            public final Object invoke() {
                                                                a00 a00Var6 = a00Var3;
                                                                boolean zC = a00Var6.c();
                                                                LocalMetadata localMetadata3 = a00Var6.f;
                                                                be8 be8Var = be8.a;
                                                                if (!zC) {
                                                                    ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                    kh6 kh6Var3 = kh6Var;
                                                                    long j2 = j;
                                                                    kh6 kh6Var4 = kh6Var2;
                                                                    gz gzVar3 = gzVar;
                                                                    rf8 rf8Var4 = rf8Var;
                                                                    zf8 zf8VarB = a00.b(a00Var6, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                    if (zf8VarB.a()) {
                                                                        cloudMetadata3.updateExtDataDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), localMetadata3.getExtDataSizeMirrored(), localMetadata3.isExtDataEncrypted(), localMetadata3.getExtDataEncryptionMethod(), localMetadata3.getExtDataPasswordHash(), Long.valueOf(System.currentTimeMillis()));
                                                                    }
                                                                }
                                                                return be8Var;
                                                            }
                                                        });
                                                        a00Var2 = a00Var3;
                                                        arrayList3.add(vn4Var);
                                                        a00Var4 = a00Var2;
                                                        break;
                                                    case 6:
                                                        a00Var3 = a00Var4;
                                                        zn4 zn4Var6 = zn4.a;
                                                        vn4Var = new vn4(new bt3() { // from class: uz
                                                            @Override // defpackage.bt3
                                                            public final Object invoke() {
                                                                a00 a00Var6 = a00Var3;
                                                                boolean zC = a00Var6.c();
                                                                LocalMetadata localMetadata3 = a00Var6.f;
                                                                be8 be8Var = be8.a;
                                                                if (!zC) {
                                                                    ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                    kh6 kh6Var3 = kh6Var;
                                                                    long j2 = j;
                                                                    kh6 kh6Var4 = kh6Var2;
                                                                    gz gzVar3 = gzVar;
                                                                    rf8 rf8Var4 = rf8Var;
                                                                    zf8 zf8VarB = a00.b(a00Var6, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                    if (zf8VarB.a()) {
                                                                        cloudMetadata3.updateMediaDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), localMetadata3.getMediaSizeMirrored(), localMetadata3.isMediaEncrypted(), localMetadata3.getMediaEncryptionMethod(), localMetadata3.getMediaPasswordHash(), Long.valueOf(System.currentTimeMillis()));
                                                                    }
                                                                }
                                                                return be8Var;
                                                            }
                                                        });
                                                        a00Var2 = a00Var3;
                                                        arrayList3.add(vn4Var);
                                                        a00Var4 = a00Var2;
                                                        break;
                                                    case 7:
                                                        a00Var3 = a00Var4;
                                                        zn4 zn4Var7 = zn4.a;
                                                        vn4Var = new vn4(new bt3() { // from class: vz
                                                            @Override // defpackage.bt3
                                                            public final Object invoke() {
                                                                a00 a00Var6 = a00Var3;
                                                                boolean zC = a00Var6.c();
                                                                be8 be8Var = be8.a;
                                                                if (!zC) {
                                                                    ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                    kh6 kh6Var3 = kh6Var;
                                                                    long j2 = j;
                                                                    kh6 kh6Var4 = kh6Var2;
                                                                    gz gzVar3 = gzVar;
                                                                    rf8 rf8Var4 = rf8Var;
                                                                    zf8 zf8VarB = a00.b(a00Var6, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                    if (zf8VarB.a()) {
                                                                        cloudMetadata3.updateExpansionDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), a00Var6.f.getExpSizeMirrored(), Long.valueOf(System.currentTimeMillis()));
                                                                    }
                                                                }
                                                                return be8Var;
                                                            }
                                                        });
                                                        a00Var2 = a00Var3;
                                                        arrayList3.add(vn4Var);
                                                        a00Var4 = a00Var2;
                                                        break;
                                                    case 8:
                                                        zn4 zn4Var8 = zn4.a;
                                                        a00Var3 = a00Var4;
                                                        vn4Var = new vn4(new bt3() { // from class: wz
                                                            @Override // defpackage.bt3
                                                            public final Object invoke() {
                                                                a00 a00Var6 = a00Var3;
                                                                boolean zC = a00Var6.c();
                                                                be8 be8Var = be8.a;
                                                                if (!zC) {
                                                                    ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                    kh6 kh6Var3 = kh6Var;
                                                                    long j2 = j;
                                                                    kh6 kh6Var4 = kh6Var2;
                                                                    gz gzVar3 = gzVar;
                                                                    rf8 rf8Var4 = rf8Var;
                                                                    zf8 zf8VarB = a00.b(a00Var6, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                    if (zf8VarB.a()) {
                                                                        cloudMetadata3.updateSpecialDataDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()));
                                                                    }
                                                                }
                                                                return be8Var;
                                                            }
                                                        });
                                                        a00Var2 = a00Var3;
                                                        arrayList3.add(vn4Var);
                                                        a00Var4 = a00Var2;
                                                        break;
                                                    default:
                                                        q.j();
                                                        return;
                                                }
                                            }
                                            a00Var = a00Var4;
                                            ex6 ex6Var = c40Var3.i;
                                            SwiftApp.Companion companion = SwiftApp.d;
                                            ex6Var.k(SwiftApp.Companion.c().getString(R.string.uploading_backup_files));
                                            long jCurrentTimeMillis = System.currentTimeMillis();
                                            zn4 zn4Var9 = zn4.a;
                                            try {
                                                d45.b.getClass();
                                                mFirebaseUserA = d45.a();
                                                if (mFirebaseUserA != null) {
                                                    boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                                                } else {
                                                    boolValueOf = null;
                                                }
                                            } catch (Exception unused) {
                                            }
                                            if (pe4.d(boolValueOf, Boolean.TRUE)) {
                                                z2 = false;
                                            } else {
                                                try {
                                                    sharedPreferences = cz4.f;
                                                    if (sharedPreferences != null) {
                                                        pe4.F("prefs");
                                                        throw null;
                                                    }
                                                    z3 = sharedPreferences.getBoolean("parallel_cloud_transfers", false);
                                                } catch (ClassCastException unused2) {
                                                    z3 = false;
                                                }
                                                if (z3) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                            }
                                            zn4.a(4, arrayList3, z2);
                                            vr6.i$default(vr6.INSTANCE, "AppUploadTask", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                                        }
                                        jv1 jv1Var = null;
                                        c40Var3.o(null);
                                        vr6Var = vr6.INSTANCE;
                                        vr6.i$default(vr6Var, "AppUploadTask", "Uploading metadata", null, 4, null);
                                        zn4 zn4Var10 = zn4.a;
                                        zn4.b(null, new zz(a00Var, jv1Var, 0));
                                        cloudMetadata4 = a00Var.h;
                                        if (cloudMetadata4 != null) {
                                            c6.f("Cloud metadata null!!");
                                            return;
                                        }
                                        if (cloudMetadata4.hasBackups()) {
                                            if (mzVar.h == null) {
                                                cloudMetadata4.removeSpecialDataDetails();
                                            }
                                            installerPackage = localMetadata.getInstallerPackage();
                                            if (installerPackage != null || installerPackage.length() == 0) {
                                                installerPackage = null;
                                            }
                                            cloudMetadata4.setInstallerPackage(installerPackage);
                                            cloudMetadata4.setKeyVersion(localMetadata.getKeyVersion());
                                            if (hzVar.d() || cloudMetadata4.getDateBackup() == null) {
                                                dateBackup = localMetadata.getDateBackup();
                                                if (dateBackup == null) {
                                                    dateBackup = Long.valueOf(System.currentTimeMillis());
                                                }
                                                cloudMetadata4.setDateBackup(dateBackup);
                                            }
                                            if (hzVar.d() || ((note = localMetadata.getNote()) != null && note.length() != 0)) {
                                                cloudMetadata4.updateNote(localMetadata.getNote());
                                            }
                                            if (hzVar.d() || localMetadata.isProtectedBackup()) {
                                                cloudMetadata4.updateProtection(localMetadata.isProtectedBackup());
                                            }
                                            if (hzVar.d()) {
                                                cloudMetadata4.setDateBackupUpdated(localMetadata.getDateBackupUpdated());
                                            } else if (a00Var.i) {
                                                dateBackupUpdated = localMetadata.getDateBackupUpdated();
                                                if (dateBackupUpdated == null) {
                                                    dateBackupUpdated = Long.valueOf(System.currentTimeMillis());
                                                }
                                                cloudMetadata4.setDateBackupUpdated(dateBackupUpdated);
                                            }
                                            cloudMetadata4.prepareForFirebaseUpload();
                                            zc2Var = a00Var.j;
                                            if (zc2Var != null) {
                                                pe4.F("cloudDetailNode");
                                                throw null;
                                            }
                                            vr6.i$default(vr6Var2, "AppUploadTask", xs1.j("Metadata node=", zc2Var.e()), null, 4, null);
                                            zc2Var2 = a00Var.j;
                                            if (zc2Var2 != null) {
                                                vr6Var2 = vr6Var;
                                                pe4.F("cloudDetailNode");
                                                throw null;
                                            }
                                            af3VarC = cf3.c(zc2Var2, cloudMetadata4);
                                            if (pe4.d(af3VarC, ze3.b)) {
                                                vr6Var2 = vr6Var;
                                                vr6.i$default(vr6Var2, "AppUploadTask", "Uploading metadata complete", null, 4, null);
                                                mzVar.l = true;
                                            } else if (af3VarC instanceof ye3) {
                                                vr6Var2 = vr6Var;
                                                q.j();
                                                return;
                                            } else {
                                                vr6Var2 = vr6Var;
                                                xzVar.d = dj7.k(jiVar3.getName(), ": ", ((ye3) af3VarC).b.b);
                                                vr6.i$default(vr6Var2, "AppUploadTask", "Error while uploading metadata", null, 4, null);
                                                u48.s("uploadMetadata: Error occurred while updating cloud details for app = ", jiVar3.asString(), "AppUploadTask");
                                            }
                                        } else {
                                            vr6Var.i("AppUploadTask", "CloudMetadata has no backups! Not uploading to database.", vr6.a.YELLOW);
                                            vr6Var2 = vr6Var;
                                        }
                                        if (!a00Var.k && xzVar.a == null && xzVar.c == null && xzVar.d == null) {
                                            representationA = f.a(hzVar.i);
                                            c0014aFetchForPackage = AppCloudBackups.Companion.fetchForPackage(jiVar3.getPackageName());
                                            if (c0014aFetchForPackage.getDatabaseError() != null) {
                                                vr6.e$default(vr6Var2, "AppUploadTask: CloudBackupsCleanup", "Error while fetching cloud backups: " + c0014aFetchForPackage.getDatabaseError(), null, 4, null);
                                                xzVar.d = dj7.k(jiVar3.getName(), ": ", c0014aFetchForPackage.getDatabaseError().b);
                                            } else {
                                                appCloudBackups = c0014aFetchForPackage.getAppCloudBackups();
                                                if (appCloudBackups != null) {
                                                    if (!appCloudBackups.hasBackups()) {
                                                        appCloudBackups = null;
                                                    }
                                                    if (appCloudBackups != null) {
                                                        List<AppCloudBackup> backups = appCloudBackups.getBackups();
                                                        arrayList = new ArrayList();
                                                        for (Object obj : backups) {
                                                            if (((AppCloudBackup) obj).getMetadata().isProtectedBackup()) {
                                                                arrayList.add(obj);
                                                            }
                                                        }
                                                        arrayList2 = new ArrayList();
                                                        for (Object obj2 : backups) {
                                                            if (!arrayList.contains((AppCloudBackup) obj2)) {
                                                                arrayList2.add(obj2);
                                                            }
                                                        }
                                                        vr6Var3 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var3, "AppUploadTask: CloudBackupsCleanup", "Multiple backups strategy: " + representationA, null, 4, null);
                                                        vr6.i$default(vr6Var3, "AppUploadTask: CloudBackupsCleanup", xs1.m(xs1.n("Total backups: ", backups.size(), " (", " Normal + ", arrayList2.size()), arrayList.size(), " Protected)"), null, 4, null);
                                                        if (!arrayList2.isEmpty() || arrayList2.size() <= representationA.getMaxNumOfBackups()) {
                                                            vr6.i$default(vr6Var3, "AppUploadTask: CloudBackupsCleanup", "No backups to delete", null, 4, null);
                                                        } else {
                                                            List listN0 = el1.N0(representationA.getMaxNumOfBackups(), arrayList2);
                                                            if (!listN0.isEmpty()) {
                                                                vr6.i$default(vr6Var3, "AppUploadTask: CloudBackupsCleanup", dj7.j("Max normal backups to keep: ", representationA.getMaxNumOfBackups(), ". Deleting ", " old normal backup(s).", listN0.size()), null, 4, null);
                                                                ik.a(jiVar3.getPackageName(), new oy7(iu.getEntries(), nc8.I(q05.CLOUD), new my7(list5, listN0)));
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        str = null;
                                    }
                                }
                            } else {
                                vr6.e$default(vr6Var5, "AppUploadTask", "Upload requires WiFi, but WiFi isn't available. Wait for it in case of network switch.", null, 4, null);
                                if (Const.a()) {
                                    vr6.i$default(vr6Var5, "AppUploadTask", "Checking cloud for current sync status", null, 4, null);
                                    String appId2 = jiVar3.getAppId();
                                    zc2 zc2Var4 = re3.a;
                                    zc2 zc2VarA2 = re3.a(appId2, hkVar.a);
                                    a00Var4.j = zc2VarA2;
                                    l73VarA = cf3.a(zc2VarA2, true);
                                    if (l73VarA instanceof xe3) {
                                        xe3Var = (xe3) l73VarA;
                                    } else {
                                        xe3Var = null;
                                    }
                                    if (xe3Var != null) {
                                        cloudMetadata = (CloudMetadata) xe3Var.n.c(CloudMetadata.class);
                                    } else {
                                        cloudMetadata = null;
                                    }
                                    if (cloudMetadata != null) {
                                        a00Var4.i = true;
                                    }
                                    if (cloudMetadata != null) {
                                        vr6.w$default(vr6Var5, "AppUploadTask", "Removing split details from cloud, currently installed app doesn't have splits.", null, 4, null);
                                        cloudMetadata.removeSplitsDetails();
                                    }
                                    if (cloudMetadata != null) {
                                        cloudMetadata2 = CloudMetadata.copy$default(cloudMetadata, null, jiVar3.getName(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -3, -1, 3, null);
                                        if (cloudMetadata2 == null) {
                                            cloudMetadata2 = new CloudMetadata(jiVar3.getPackageName(), jiVar3.getName(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -4, -1, 3, null);
                                        }
                                    } else {
                                        cloudMetadata2 = new CloudMetadata(jiVar3.getPackageName(), jiVar3.getName(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -4, -1, 3, null);
                                    }
                                    a00Var4.h = cloudMetadata2;
                                    concurrentHashMap = new ConcurrentHashMap();
                                    z3 z3Var2 = (z3) gz.getEntries();
                                    z3Var2.getClass();
                                    w3Var = new w3(z3Var2);
                                    while (true) {
                                        zHasNext = w3Var.hasNext();
                                        mzVar = a00Var4.e;
                                        localMetadata = a00Var4.f;
                                        if (zHasNext) {
                                            gzVar2 = (gz) w3Var.next();
                                            switch (yz.a[gzVar2.ordinal()]) {
                                                case 1:
                                                    cloudMetadata5 = cloudMetadata2;
                                                    hlVar = hlVar;
                                                    localMetadata2 = localMetadata;
                                                    i8 = i10;
                                                    rf8Var2 = mzVar.a;
                                                    if (rf8Var2 != null) {
                                                        rf8Var2 = null;
                                                    } else {
                                                        rf8Var2 = null;
                                                    }
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111113 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111113);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111114);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111115 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111115);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111116);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111117 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111117);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111118);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111119 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111119);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111110);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111112);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111113 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111113);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111114);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111115 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111115);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111116);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z1111111111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111117);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                    break;
                                                case 2:
                                                    cloudMetadata5 = cloudMetadata2;
                                                    hlVar = hlVar;
                                                    localMetadata2 = localMetadata;
                                                    i8 = i10;
                                                    rf8Var2 = mzVar.b;
                                                    if (rf8Var2 != null) {
                                                        rf8Var2 = null;
                                                    } else {
                                                        rf8Var2 = null;
                                                    }
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111119);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111112 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111112);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111113);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111114 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111114);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111115);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111116 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111116);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111117);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111119);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z111111111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111112);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                    break;
                                                case 3:
                                                    cloudMetadata5 = cloudMetadata2;
                                                    hlVar = hlVar;
                                                    localMetadata2 = localMetadata;
                                                    i8 = i10;
                                                    rf8Var2 = mzVar.c;
                                                    if (rf8Var2 != null) {
                                                        rf8Var2 = null;
                                                    } else {
                                                        rf8Var2 = null;
                                                    }
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111113 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111113);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111114);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111115 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111115);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111116);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111117 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111117);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111118);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111119 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111119);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111110);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111111 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111112);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111113 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111113);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111114);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111115 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111115);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111116);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z1111111111111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111117);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                    break;
                                                case 4:
                                                    cloudMetadata5 = cloudMetadata2;
                                                    hlVar = hlVar;
                                                    localMetadata2 = localMetadata;
                                                    i8 = i10;
                                                    rf8Var2 = mzVar.d;
                                                    if (rf8Var2 != null) {
                                                        rf8Var2 = null;
                                                    } else {
                                                        rf8Var2 = null;
                                                    }
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111119);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111112 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111112);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111113);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111114 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111114);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111115);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111116 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111116);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111117);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111119);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111111);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z111111111111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111112);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                    break;
                                                case 5:
                                                    cloudMetadata5 = cloudMetadata2;
                                                    hlVar = hlVar;
                                                    localMetadata2 = localMetadata;
                                                    i9 = i10;
                                                    rf8Var2 = mzVar.e;
                                                    if (rf8Var2 == null) {
                                                        i8 = i9;
                                                        rf8Var2 = null;
                                                    } else {
                                                        i8 = i9;
                                                        rf8Var2 = null;
                                                    }
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111113 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111113);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111114);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111115 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111115);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111116);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111117 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111117);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111118);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111119 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111119);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111110);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111111111 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111111);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111112);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111111113 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111113);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111114);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111111115 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111115);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111116);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111117);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                    break;
                                                case 6:
                                                    cloudMetadata5 = cloudMetadata2;
                                                    localMetadata2 = localMetadata;
                                                    rf8Var2 = mzVar.f;
                                                    if (rf8Var2 != null) {
                                                        if (wx3.s(list2)) {
                                                            i9 = i10;
                                                            hlVar = hlVar;
                                                            if (a00Var4.a(iu.MEDIA, rf8Var2.a())) {
                                                                i8 = i9;
                                                            }
                                                        } else {
                                                            i9 = i10;
                                                            hlVar = hlVar;
                                                        }
                                                        i8 = i9;
                                                        rf8Var2 = null;
                                                    } else {
                                                        hlVar = hlVar;
                                                        i8 = i10;
                                                        rf8Var2 = null;
                                                    }
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111119);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111111);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111112 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111112);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111113);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111114 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111114);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111115);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111116 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111116);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111117);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111119);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111111111);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z111111111111111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111111112);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                    break;
                                                case 7:
                                                    rf8Var3 = mzVar.g;
                                                    if (rf8Var3 != null) {
                                                        cloudMetadata5 = cloudMetadata2;
                                                        if (wx3.q(list2)) {
                                                            localMetadata2 = localMetadata;
                                                            if (a00Var4.a(iu.EXPANSION, rf8Var3.a())) {
                                                                rf8Var2 = rf8Var3;
                                                            }
                                                            i8 = i10;
                                                            if (rf8Var2 != null) {
                                                                str2 = rf8Var2.h;
                                                                vr6Var4 = vr6.INSTANCE;
                                                                vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                                cloudMetadata6 = a00Var4.h;
                                                                if (cloudMetadata6 == null) {
                                                                    ea3Var = new ea3(null, false);
                                                                } else {
                                                                    switch (rf8Var2.b) {
                                                                        case 1:
                                                                            apkLink = cloudMetadata6.getApkLink();
                                                                            if (cloudMetadata6.hasApk()) {
                                                                                jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                                apkSize = cloudMetadata6.getApkSize();
                                                                                versionName = localMetadata2.getVersionName();
                                                                                if (versionName == null) {
                                                                                    str3 = "Empty";
                                                                                } else {
                                                                                    str3 = versionName;
                                                                                }
                                                                                versionCode = localMetadata2.getVersionCode();
                                                                                if (versionCode != null) {
                                                                                    jLongValue2 = versionCode.longValue();
                                                                                } else {
                                                                                    jLongValue2 = -1;
                                                                                }
                                                                                pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                                versionName2 = cloudMetadata6.getVersionName();
                                                                                if (versionName2 == null) {
                                                                                    str4 = "Empty";
                                                                                } else {
                                                                                    str4 = versionName2;
                                                                                }
                                                                                versionCode2 = cloudMetadata6.getVersionCode();
                                                                                if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                                    z4 = false;
                                                                                }
                                                                                boolean z111111111111111111111111113 = !z4;
                                                                                if (!z4) {
                                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                                }
                                                                                ea3Var = new ea3(apkLink, z111111111111111111111111113);
                                                                            }
                                                                            z4 = true;
                                                                            boolean z111111111111111111111111114 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z111111111111111111111111114);
                                                                            break;
                                                                        case 2:
                                                                            apkLink = cloudMetadata6.getSplitsLink();
                                                                            if (cloudMetadata6.hasSplitApks()) {
                                                                                jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                                apkSize2 = cloudMetadata6.getApkSize();
                                                                                versionName3 = localMetadata2.getVersionName();
                                                                                if (versionName3 == null) {
                                                                                    str5 = "Empty";
                                                                                } else {
                                                                                    str5 = versionName3;
                                                                                }
                                                                                versionCode3 = localMetadata2.getVersionCode();
                                                                                if (versionCode3 != null) {
                                                                                    jLongValue3 = versionCode3.longValue();
                                                                                } else {
                                                                                    jLongValue3 = -1;
                                                                                }
                                                                                pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                                versionName4 = cloudMetadata6.getVersionName();
                                                                                if (versionName4 == null) {
                                                                                    str6 = "Empty";
                                                                                } else {
                                                                                    str6 = versionName4;
                                                                                }
                                                                                versionCode4 = cloudMetadata6.getVersionCode();
                                                                                if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                                    z4 = false;
                                                                                }
                                                                                boolean z111111111111111111111111115 = !z4;
                                                                                if (!z4) {
                                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                                }
                                                                                ea3Var = new ea3(apkLink, z111111111111111111111111115);
                                                                            }
                                                                            z4 = true;
                                                                            boolean z111111111111111111111111116 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z111111111111111111111111116);
                                                                            break;
                                                                        case 3:
                                                                            apkLink = cloudMetadata6.getSharedLibsLink();
                                                                            if (cloudMetadata6.hasSharedLibs()) {
                                                                                jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                                apkSize3 = cloudMetadata6.getApkSize();
                                                                                versionName5 = localMetadata2.getVersionName();
                                                                                if (versionName5 == null) {
                                                                                    str7 = "Empty";
                                                                                } else {
                                                                                    str7 = versionName5;
                                                                                }
                                                                                versionCode5 = localMetadata2.getVersionCode();
                                                                                if (versionCode5 != null) {
                                                                                    jLongValue4 = versionCode5.longValue();
                                                                                } else {
                                                                                    jLongValue4 = -1;
                                                                                }
                                                                                pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                                versionName6 = cloudMetadata6.getVersionName();
                                                                                if (versionName6 == null) {
                                                                                    str8 = "Empty";
                                                                                } else {
                                                                                    str8 = versionName6;
                                                                                }
                                                                                versionCode6 = cloudMetadata6.getVersionCode();
                                                                                if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                                    z4 = false;
                                                                                }
                                                                                boolean z111111111111111111111111117 = !z4;
                                                                                if (!z4) {
                                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                                }
                                                                                ea3Var = new ea3(apkLink, z111111111111111111111111117);
                                                                            }
                                                                            z4 = true;
                                                                            boolean z111111111111111111111111118 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z111111111111111111111111118);
                                                                            break;
                                                                        case 4:
                                                                            apkLink = cloudMetadata6.getDataLink();
                                                                            if (cloudMetadata6.hasData()) {
                                                                                if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                                    z4 = false;
                                                                                }
                                                                                boolean z111111111111111111111111119 = !z4;
                                                                                if (!z4) {
                                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                                }
                                                                                ea3Var = new ea3(apkLink, z111111111111111111111111119);
                                                                            }
                                                                            z4 = true;
                                                                            boolean z1111111111111111111111111110 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z1111111111111111111111111110);
                                                                            break;
                                                                        case 5:
                                                                            apkLink = cloudMetadata6.getExpLink();
                                                                            if (cloudMetadata6.hasExpansion()) {
                                                                                if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                                    z4 = false;
                                                                                }
                                                                                boolean z1111111111111111111111111111 = !z4;
                                                                                if (!z4) {
                                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                                }
                                                                                ea3Var = new ea3(apkLink, z1111111111111111111111111111);
                                                                            }
                                                                            z4 = true;
                                                                            boolean z1111111111111111111111111112 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z1111111111111111111111111112);
                                                                            break;
                                                                        case 6:
                                                                            apkLink = cloudMetadata6.getExtDataLink();
                                                                            if (cloudMetadata6.hasExtData()) {
                                                                                if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                                    z4 = false;
                                                                                }
                                                                                boolean z1111111111111111111111111113 = !z4;
                                                                                if (!z4) {
                                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                                }
                                                                                ea3Var = new ea3(apkLink, z1111111111111111111111111113);
                                                                            }
                                                                            z4 = true;
                                                                            boolean z1111111111111111111111111114 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z1111111111111111111111111114);
                                                                            break;
                                                                        case 7:
                                                                            apkLink = cloudMetadata6.getMediaLink();
                                                                            if (cloudMetadata6.hasMedia()) {
                                                                                if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                                    z4 = false;
                                                                                }
                                                                                boolean z1111111111111111111111111115 = !z4;
                                                                                if (!z4) {
                                                                                    vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                                }
                                                                                ea3Var = new ea3(apkLink, z1111111111111111111111111115);
                                                                            }
                                                                            z4 = true;
                                                                            boolean z1111111111111111111111111116 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z1111111111111111111111111116);
                                                                            break;
                                                                        case 8:
                                                                            apkLink = cloudMetadata6.getSpecialDataLink();
                                                                            z4 = true;
                                                                            boolean z1111111111111111111111111117 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z1111111111111111111111111117);
                                                                            break;
                                                                        default:
                                                                            throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                                    }
                                                                }
                                                                if (!ea3Var.a) {
                                                                    rf8Var2.f = (String) ea3Var.b;
                                                                    concurrentHashMap.put(gzVar2, rf8Var2);
                                                                }
                                                            }
                                                            i10 = i8;
                                                            hlVar = hlVar;
                                                            cloudMetadata2 = cloudMetadata5;
                                                        }
                                                        rf8Var2 = null;
                                                        i8 = i10;
                                                        if (rf8Var2 != null) {
                                                            str2 = rf8Var2.h;
                                                            vr6Var4 = vr6.INSTANCE;
                                                            vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                            cloudMetadata6 = a00Var4.h;
                                                            if (cloudMetadata6 == null) {
                                                                ea3Var = new ea3(null, false);
                                                            } else {
                                                                switch (rf8Var2.b) {
                                                                    case 1:
                                                                        apkLink = cloudMetadata6.getApkLink();
                                                                        if (cloudMetadata6.hasApk()) {
                                                                            jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                            apkSize = cloudMetadata6.getApkSize();
                                                                            versionName = localMetadata2.getVersionName();
                                                                            if (versionName == null) {
                                                                                str3 = "Empty";
                                                                            } else {
                                                                                str3 = versionName;
                                                                            }
                                                                            versionCode = localMetadata2.getVersionCode();
                                                                            if (versionCode != null) {
                                                                                jLongValue2 = versionCode.longValue();
                                                                            } else {
                                                                                jLongValue2 = -1;
                                                                            }
                                                                            pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                            versionName2 = cloudMetadata6.getVersionName();
                                                                            if (versionName2 == null) {
                                                                                str4 = "Empty";
                                                                            } else {
                                                                                str4 = versionName2;
                                                                            }
                                                                            versionCode2 = cloudMetadata6.getVersionCode();
                                                                            if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z1111111111111111111111111118 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z1111111111111111111111111118);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z1111111111111111111111111119 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111111119);
                                                                        break;
                                                                    case 2:
                                                                        apkLink = cloudMetadata6.getSplitsLink();
                                                                        if (cloudMetadata6.hasSplitApks()) {
                                                                            jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                            apkSize2 = cloudMetadata6.getApkSize();
                                                                            versionName3 = localMetadata2.getVersionName();
                                                                            if (versionName3 == null) {
                                                                                str5 = "Empty";
                                                                            } else {
                                                                                str5 = versionName3;
                                                                            }
                                                                            versionCode3 = localMetadata2.getVersionCode();
                                                                            if (versionCode3 != null) {
                                                                                jLongValue3 = versionCode3.longValue();
                                                                            } else {
                                                                                jLongValue3 = -1;
                                                                            }
                                                                            pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                            versionName4 = cloudMetadata6.getVersionName();
                                                                            if (versionName4 == null) {
                                                                                str6 = "Empty";
                                                                            } else {
                                                                                str6 = versionName4;
                                                                            }
                                                                            versionCode4 = cloudMetadata6.getVersionCode();
                                                                            if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z11111111111111111111111111110 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z11111111111111111111111111110);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z11111111111111111111111111111 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111111);
                                                                        break;
                                                                    case 3:
                                                                        apkLink = cloudMetadata6.getSharedLibsLink();
                                                                        if (cloudMetadata6.hasSharedLibs()) {
                                                                            jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                            apkSize3 = cloudMetadata6.getApkSize();
                                                                            versionName5 = localMetadata2.getVersionName();
                                                                            if (versionName5 == null) {
                                                                                str7 = "Empty";
                                                                            } else {
                                                                                str7 = versionName5;
                                                                            }
                                                                            versionCode5 = localMetadata2.getVersionCode();
                                                                            if (versionCode5 != null) {
                                                                                jLongValue4 = versionCode5.longValue();
                                                                            } else {
                                                                                jLongValue4 = -1;
                                                                            }
                                                                            pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                            versionName6 = cloudMetadata6.getVersionName();
                                                                            if (versionName6 == null) {
                                                                                str8 = "Empty";
                                                                            } else {
                                                                                str8 = versionName6;
                                                                            }
                                                                            versionCode6 = cloudMetadata6.getVersionCode();
                                                                            if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z11111111111111111111111111112 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z11111111111111111111111111112);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z11111111111111111111111111113 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111113);
                                                                        break;
                                                                    case 4:
                                                                        apkLink = cloudMetadata6.getDataLink();
                                                                        if (cloudMetadata6.hasData()) {
                                                                            if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z11111111111111111111111111114 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z11111111111111111111111111114);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z11111111111111111111111111115 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111115);
                                                                        break;
                                                                    case 5:
                                                                        apkLink = cloudMetadata6.getExpLink();
                                                                        if (cloudMetadata6.hasExpansion()) {
                                                                            if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z11111111111111111111111111116 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z11111111111111111111111111116);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z11111111111111111111111111117 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111117);
                                                                        break;
                                                                    case 6:
                                                                        apkLink = cloudMetadata6.getExtDataLink();
                                                                        if (cloudMetadata6.hasExtData()) {
                                                                            if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z11111111111111111111111111118 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z11111111111111111111111111118);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z11111111111111111111111111119 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111119);
                                                                        break;
                                                                    case 7:
                                                                        apkLink = cloudMetadata6.getMediaLink();
                                                                        if (cloudMetadata6.hasMedia()) {
                                                                            if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                                z4 = false;
                                                                            }
                                                                            boolean z111111111111111111111111111110 = !z4;
                                                                            if (!z4) {
                                                                                vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                            }
                                                                            ea3Var = new ea3(apkLink, z111111111111111111111111111110);
                                                                        }
                                                                        z4 = true;
                                                                        boolean z111111111111111111111111111111 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111111111111);
                                                                        break;
                                                                    case 8:
                                                                        apkLink = cloudMetadata6.getSpecialDataLink();
                                                                        z4 = true;
                                                                        boolean z111111111111111111111111111112 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111111111112);
                                                                        break;
                                                                    default:
                                                                        throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                                }
                                                            }
                                                            if (!ea3Var.a) {
                                                                rf8Var2.f = (String) ea3Var.b;
                                                                concurrentHashMap.put(gzVar2, rf8Var2);
                                                            }
                                                        }
                                                        i10 = i8;
                                                        hlVar = hlVar;
                                                        cloudMetadata2 = cloudMetadata5;
                                                    } else {
                                                        cloudMetadata5 = cloudMetadata2;
                                                    }
                                                    localMetadata2 = localMetadata;
                                                    rf8Var2 = null;
                                                    i8 = i10;
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111111111113 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111111111113);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111111111114);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111111111115 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111111111115);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111111111116);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111111111117 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111111111117);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111111111118 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111111111118);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111111111119 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111111111119);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111111111110 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111111111110);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111111111111111 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111111111111);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111111111112);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111111111111113 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111111111113);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111111111114 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111111111114);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111111111111115 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111111111115);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111111111116 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111111111116);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111111111117);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                    break;
                                                case 8:
                                                    cloudMetadata5 = cloudMetadata2;
                                                    rf8Var2 = mzVar.h;
                                                    localMetadata2 = localMetadata;
                                                    i8 = i10;
                                                    if (rf8Var2 != null) {
                                                        str2 = rf8Var2.h;
                                                        vr6Var4 = vr6.INSTANCE;
                                                        vr6.i$default(vr6Var4, "AppUploadTask", xs1.j("Checking upload for ", str2), null, 4, null);
                                                        cloudMetadata6 = a00Var4.h;
                                                        if (cloudMetadata6 == null) {
                                                            ea3Var = new ea3(null, false);
                                                        } else {
                                                            switch (rf8Var2.b) {
                                                                case 1:
                                                                    apkLink = cloudMetadata6.getApkLink();
                                                                    if (cloudMetadata6.hasApk()) {
                                                                        jH = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize = cloudMetadata6.getApkSize();
                                                                        versionName = localMetadata2.getVersionName();
                                                                        if (versionName == null) {
                                                                            str3 = "Empty";
                                                                        } else {
                                                                            str3 = versionName;
                                                                        }
                                                                        versionCode = localMetadata2.getVersionCode();
                                                                        if (versionCode != null) {
                                                                            jLongValue2 = versionCode.longValue();
                                                                        } else {
                                                                            jLongValue2 = -1;
                                                                        }
                                                                        pgVar = new pg(str3, jLongValue2, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName2 = cloudMetadata6.getVersionName();
                                                                        if (versionName2 == null) {
                                                                            str4 = "Empty";
                                                                        } else {
                                                                            str4 = versionName2;
                                                                        }
                                                                        versionCode2 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH, apkSize, pgVar, new pg(str4, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z1111111111111111111111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z1111111111111111111111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z1111111111111111111111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z1111111111111111111111111111119);
                                                                    break;
                                                                case 2:
                                                                    apkLink = cloudMetadata6.getSplitsLink();
                                                                    if (cloudMetadata6.hasSplitApks()) {
                                                                        jH2 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize2 = cloudMetadata6.getApkSize();
                                                                        versionName3 = localMetadata2.getVersionName();
                                                                        if (versionName3 == null) {
                                                                            str5 = "Empty";
                                                                        } else {
                                                                            str5 = versionName3;
                                                                        }
                                                                        versionCode3 = localMetadata2.getVersionCode();
                                                                        if (versionCode3 != null) {
                                                                            jLongValue3 = versionCode3.longValue();
                                                                        } else {
                                                                            jLongValue3 = -1;
                                                                        }
                                                                        pgVar2 = new pg(str5, jLongValue3, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName4 = cloudMetadata6.getVersionName();
                                                                        if (versionName4 == null) {
                                                                            str6 = "Empty";
                                                                        } else {
                                                                            str6 = versionName4;
                                                                        }
                                                                        versionCode4 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH2, apkSize2, pgVar2, new pg(str6, versionCode4 != null ? versionCode4.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111111111111);
                                                                    break;
                                                                case 3:
                                                                    apkLink = cloudMetadata6.getSharedLibsLink();
                                                                    if (cloudMetadata6.hasSharedLibs()) {
                                                                        jH3 = io4.h(localMetadata2.getApkSizeMirrored());
                                                                        apkSize3 = cloudMetadata6.getApkSize();
                                                                        versionName5 = localMetadata2.getVersionName();
                                                                        if (versionName5 == null) {
                                                                            str7 = "Empty";
                                                                        } else {
                                                                            str7 = versionName5;
                                                                        }
                                                                        versionCode5 = localMetadata2.getVersionCode();
                                                                        if (versionCode5 != null) {
                                                                            jLongValue4 = versionCode5.longValue();
                                                                        } else {
                                                                            jLongValue4 = -1;
                                                                        }
                                                                        pgVar3 = new pg(str7, jLongValue4, localMetadata2.hasSplitApks(), localMetadata2.hasSharedLibs());
                                                                        versionName6 = cloudMetadata6.getVersionName();
                                                                        if (versionName6 == null) {
                                                                            str8 = "Empty";
                                                                        } else {
                                                                            str8 = versionName6;
                                                                        }
                                                                        versionCode6 = cloudMetadata6.getVersionCode();
                                                                        if (!eq.a(jH3, apkSize3, pgVar3, new pg(str8, versionCode6 != null ? versionCode6.longValue() : -1L, cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs()), cloudMetadata6.hasSplitApks(), cloudMetadata6.hasSharedLibs())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111111111112 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111111112);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111111111113 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111111111113);
                                                                    break;
                                                                case 4:
                                                                    apkLink = cloudMetadata6.getDataLink();
                                                                    if (cloudMetadata6.hasData()) {
                                                                        if (!a00Var4.m.a(iu.DATA, jiVar3.getDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getDataBackupDate()), io4.h(localMetadata2.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSizeMirrored()), io4.h(cloudMetadata6.getDataSize()), localMetadata2.getDataPasswordHash(), cloudMetadata6.getDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111111111114 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111111114);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111111111115 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111111111115);
                                                                    break;
                                                                case 5:
                                                                    apkLink = cloudMetadata6.getExpLink();
                                                                    if (cloudMetadata6.hasExpansion()) {
                                                                        if (!a00Var4.m.a(iu.EXPANSION, jiVar3.getExpansionDir(), rf8Var2.a, io4.h(cloudMetadata6.getExpansionBackupDate()), io4.h(localMetadata2.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSizeMirrored()), io4.h(cloudMetadata6.getExpSize()), null, null)) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111111111116 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111111116);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111111111117 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111111111117);
                                                                    break;
                                                                case 6:
                                                                    apkLink = cloudMetadata6.getExtDataLink();
                                                                    if (cloudMetadata6.hasExtData()) {
                                                                        if (!a00Var4.m.a(iu.EXTDATA, jiVar3.getExternalDataDir(), rf8Var2.a, io4.h(cloudMetadata6.getExtDataBackupDate()), io4.h(localMetadata2.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSizeMirrored()), io4.h(cloudMetadata6.getExtDataSize()), localMetadata2.getExtDataPasswordHash(), cloudMetadata6.getExtDataPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z11111111111111111111111111111118 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z11111111111111111111111111111118);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z11111111111111111111111111111119 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z11111111111111111111111111111119);
                                                                    break;
                                                                case 7:
                                                                    apkLink = cloudMetadata6.getMediaLink();
                                                                    if (cloudMetadata6.hasMedia()) {
                                                                        if (!a00Var4.m.a(iu.MEDIA, jiVar3.getMediaDir(), rf8Var2.a, io4.h(cloudMetadata6.getMediaBackupDate()), io4.h(localMetadata2.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSizeMirrored()), io4.h(cloudMetadata6.getMediaSize()), localMetadata2.getMediaPasswordHash(), cloudMetadata6.getMediaPasswordHash())) {
                                                                            z4 = false;
                                                                        }
                                                                        boolean z111111111111111111111111111111110 = !z4;
                                                                        if (!z4) {
                                                                            vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                        }
                                                                        ea3Var = new ea3(apkLink, z111111111111111111111111111111110);
                                                                    }
                                                                    z4 = true;
                                                                    boolean z111111111111111111111111111111111 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111111111111111);
                                                                    break;
                                                                case 8:
                                                                    apkLink = cloudMetadata6.getSpecialDataLink();
                                                                    z4 = true;
                                                                    boolean z111111111111111111111111111111112 = !z4;
                                                                    if (!z4) {
                                                                        vr6.i$default(vr6Var4, "AppUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                                    }
                                                                    ea3Var = new ea3(apkLink, z111111111111111111111111111111112);
                                                                    break;
                                                                default:
                                                                    throw new io5(eq3.k("Cloud file type ", str2, " not implemented"));
                                                            }
                                                        }
                                                        if (!ea3Var.a) {
                                                            rf8Var2.f = (String) ea3Var.b;
                                                            concurrentHashMap.put(gzVar2, rf8Var2);
                                                        }
                                                    }
                                                    i10 = i8;
                                                    hlVar = hlVar;
                                                    cloudMetadata2 = cloudMetadata5;
                                                    break;
                                                default:
                                                    q.j();
                                                    return;
                                            }
                                        } else {
                                            cloudMetadata3 = cloudMetadata2;
                                            hlVar2 = hlVar;
                                            i5 = i10;
                                            if (concurrentHashMap.isEmpty()) {
                                                vr6 vr6Var7 = vr6.INSTANCE;
                                                Set setKeySet2 = concurrentHashMap.keySet();
                                                setKeySet2.getClass();
                                                vr6.i$default(vr6Var7, "AppUploadTask", "Upload tasks: ".concat(el1.Y0(setKeySet2, null, null, null, null, 63)), null, 4, null);
                                                Collection collectionValues2 = concurrentHashMap.values();
                                                collectionValues2.getClass();
                                                it2 = collectionValues2.iterator();
                                                jA = 0;
                                                while (it2.hasNext()) {
                                                    jA = ((rf8) it2.next()).a() + jA;
                                                }
                                                lValueOf = Long.valueOf(jA);
                                                if (jA <= 0) {
                                                    lValueOf = null;
                                                }
                                                if (lValueOf != null) {
                                                    jLongValue = lValueOf.longValue();
                                                } else {
                                                    jLongValue = 1;
                                                }
                                                j = jLongValue;
                                                concurrentHashMap2 = new ConcurrentHashMap();
                                                kh6Var = new kh6();
                                                kh6Var2 = new kh6();
                                                arrayList3 = new ArrayList(concurrentHashMap.size());
                                                while (r1.hasNext()) {
                                                    gzVar = (gz) entry.getKey();
                                                    rf8Var = (rf8) entry.getValue();
                                                    switch (yz.a[gzVar.ordinal()]) {
                                                        case 1:
                                                            final a00 a00Var6 = a00Var4;
                                                            zn4 zn4Var11 = zn4.a;
                                                            a00Var2 = a00Var6;
                                                            vn4Var = new vn4(new bt3() { // from class: pz
                                                                @Override // defpackage.bt3
                                                                public final Object invoke() {
                                                                    a00 a00Var7 = a00Var6;
                                                                    boolean zC = a00Var7.c();
                                                                    be8 be8Var = be8.a;
                                                                    if (!zC) {
                                                                        ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                        kh6 kh6Var3 = kh6Var;
                                                                        long j2 = j;
                                                                        kh6 kh6Var4 = kh6Var2;
                                                                        gz gzVar3 = gzVar;
                                                                        rf8 rf8Var4 = rf8Var;
                                                                        zf8 zf8VarB = a00.b(a00Var7, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                        rg rgVarA = ng.a(rf8Var4.a, false);
                                                                        if (zf8VarB.a()) {
                                                                            cloudMetadata3.updateApkDetails(rgVarA.d(), Long.valueOf(rgVarA.c()), zf8VarB.a, Long.valueOf(rf8Var4.a()), Long.valueOf(System.currentTimeMillis()));
                                                                        }
                                                                    }
                                                                    return be8Var;
                                                                }
                                                            });
                                                            arrayList3.add(vn4Var);
                                                            a00Var4 = a00Var2;
                                                            break;
                                                        case 2:
                                                            a00Var3 = a00Var4;
                                                            zn4 zn4Var12 = zn4.a;
                                                            vn4Var = new vn4(new bt3() { // from class: qz
                                                                @Override // defpackage.bt3
                                                                public final Object invoke() {
                                                                    a00 a00Var7 = a00Var3;
                                                                    boolean zC = a00Var7.c();
                                                                    be8 be8Var = be8.a;
                                                                    if (!zC) {
                                                                        ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                        kh6 kh6Var3 = kh6Var;
                                                                        long j2 = j;
                                                                        kh6 kh6Var4 = kh6Var2;
                                                                        gz gzVar3 = gzVar;
                                                                        rf8 rf8Var4 = rf8Var;
                                                                        zf8 zf8VarB = a00.b(a00Var7, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                        if (zf8VarB.a()) {
                                                                            cloudMetadata3.updateSplitsDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), Long.valueOf(io4.h(a00Var7.f.getSplitsSizeMirrored())));
                                                                        }
                                                                    }
                                                                    return be8Var;
                                                                }
                                                            });
                                                            a00Var2 = a00Var3;
                                                            arrayList3.add(vn4Var);
                                                            a00Var4 = a00Var2;
                                                            break;
                                                        case 3:
                                                            a00Var3 = a00Var4;
                                                            zn4 zn4Var13 = zn4.a;
                                                            vn4Var = new vn4(new rz(a00Var3, gzVar, rf8Var, cloudMetadata3, concurrentHashMap2, kh6Var, j, kh6Var2));
                                                            a00Var2 = a00Var3;
                                                            arrayList3.add(vn4Var);
                                                            a00Var4 = a00Var2;
                                                            break;
                                                        case 4:
                                                            a00Var3 = a00Var4;
                                                            zn4 zn4Var14 = zn4.a;
                                                            vn4Var = new vn4(new bt3() { // from class: sz
                                                                @Override // defpackage.bt3
                                                                public final Object invoke() {
                                                                    a00 a00Var7 = a00Var3;
                                                                    boolean zC = a00Var7.c();
                                                                    LocalMetadata localMetadata3 = a00Var7.f;
                                                                    be8 be8Var = be8.a;
                                                                    if (!zC) {
                                                                        ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                        kh6 kh6Var3 = kh6Var;
                                                                        long j2 = j;
                                                                        kh6 kh6Var4 = kh6Var2;
                                                                        gz gzVar3 = gzVar;
                                                                        rf8 rf8Var4 = rf8Var;
                                                                        zf8 zf8VarB = a00.b(a00Var7, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                        if (zf8VarB.a()) {
                                                                            cloudMetadata3.updateDataDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), localMetadata3.getDataSizeMirrored(), localMetadata3.isDataEncrypted(), localMetadata3.getDataEncryptionMethod(), localMetadata3.getDataPasswordHash(), Long.valueOf(System.currentTimeMillis()));
                                                                        }
                                                                    }
                                                                    return be8Var;
                                                                }
                                                            });
                                                            a00Var2 = a00Var3;
                                                            arrayList3.add(vn4Var);
                                                            a00Var4 = a00Var2;
                                                            break;
                                                        case 5:
                                                            a00Var3 = a00Var4;
                                                            zn4 zn4Var15 = zn4.a;
                                                            vn4Var = new vn4(new bt3() { // from class: tz
                                                                @Override // defpackage.bt3
                                                                public final Object invoke() {
                                                                    a00 a00Var7 = a00Var3;
                                                                    boolean zC = a00Var7.c();
                                                                    LocalMetadata localMetadata3 = a00Var7.f;
                                                                    be8 be8Var = be8.a;
                                                                    if (!zC) {
                                                                        ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                        kh6 kh6Var3 = kh6Var;
                                                                        long j2 = j;
                                                                        kh6 kh6Var4 = kh6Var2;
                                                                        gz gzVar3 = gzVar;
                                                                        rf8 rf8Var4 = rf8Var;
                                                                        zf8 zf8VarB = a00.b(a00Var7, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                        if (zf8VarB.a()) {
                                                                            cloudMetadata3.updateExtDataDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), localMetadata3.getExtDataSizeMirrored(), localMetadata3.isExtDataEncrypted(), localMetadata3.getExtDataEncryptionMethod(), localMetadata3.getExtDataPasswordHash(), Long.valueOf(System.currentTimeMillis()));
                                                                        }
                                                                    }
                                                                    return be8Var;
                                                                }
                                                            });
                                                            a00Var2 = a00Var3;
                                                            arrayList3.add(vn4Var);
                                                            a00Var4 = a00Var2;
                                                            break;
                                                        case 6:
                                                            a00Var3 = a00Var4;
                                                            zn4 zn4Var16 = zn4.a;
                                                            vn4Var = new vn4(new bt3() { // from class: uz
                                                                @Override // defpackage.bt3
                                                                public final Object invoke() {
                                                                    a00 a00Var7 = a00Var3;
                                                                    boolean zC = a00Var7.c();
                                                                    LocalMetadata localMetadata3 = a00Var7.f;
                                                                    be8 be8Var = be8.a;
                                                                    if (!zC) {
                                                                        ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                        kh6 kh6Var3 = kh6Var;
                                                                        long j2 = j;
                                                                        kh6 kh6Var4 = kh6Var2;
                                                                        gz gzVar3 = gzVar;
                                                                        rf8 rf8Var4 = rf8Var;
                                                                        zf8 zf8VarB = a00.b(a00Var7, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                        if (zf8VarB.a()) {
                                                                            cloudMetadata3.updateMediaDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), localMetadata3.getMediaSizeMirrored(), localMetadata3.isMediaEncrypted(), localMetadata3.getMediaEncryptionMethod(), localMetadata3.getMediaPasswordHash(), Long.valueOf(System.currentTimeMillis()));
                                                                        }
                                                                    }
                                                                    return be8Var;
                                                                }
                                                            });
                                                            a00Var2 = a00Var3;
                                                            arrayList3.add(vn4Var);
                                                            a00Var4 = a00Var2;
                                                            break;
                                                        case 7:
                                                            a00Var3 = a00Var4;
                                                            zn4 zn4Var17 = zn4.a;
                                                            vn4Var = new vn4(new bt3() { // from class: vz
                                                                @Override // defpackage.bt3
                                                                public final Object invoke() {
                                                                    a00 a00Var7 = a00Var3;
                                                                    boolean zC = a00Var7.c();
                                                                    be8 be8Var = be8.a;
                                                                    if (!zC) {
                                                                        ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                        kh6 kh6Var3 = kh6Var;
                                                                        long j2 = j;
                                                                        kh6 kh6Var4 = kh6Var2;
                                                                        gz gzVar3 = gzVar;
                                                                        rf8 rf8Var4 = rf8Var;
                                                                        zf8 zf8VarB = a00.b(a00Var7, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                        if (zf8VarB.a()) {
                                                                            cloudMetadata3.updateExpansionDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()), a00Var7.f.getExpSizeMirrored(), Long.valueOf(System.currentTimeMillis()));
                                                                        }
                                                                    }
                                                                    return be8Var;
                                                                }
                                                            });
                                                            a00Var2 = a00Var3;
                                                            arrayList3.add(vn4Var);
                                                            a00Var4 = a00Var2;
                                                            break;
                                                        case 8:
                                                            zn4 zn4Var18 = zn4.a;
                                                            a00Var3 = a00Var4;
                                                            vn4Var = new vn4(new bt3() { // from class: wz
                                                                @Override // defpackage.bt3
                                                                public final Object invoke() {
                                                                    a00 a00Var7 = a00Var3;
                                                                    boolean zC = a00Var7.c();
                                                                    be8 be8Var = be8.a;
                                                                    if (!zC) {
                                                                        ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
                                                                        kh6 kh6Var3 = kh6Var;
                                                                        long j2 = j;
                                                                        kh6 kh6Var4 = kh6Var2;
                                                                        gz gzVar3 = gzVar;
                                                                        rf8 rf8Var4 = rf8Var;
                                                                        zf8 zf8VarB = a00.b(a00Var7, concurrentHashMap3, kh6Var3, j2, kh6Var4, gzVar3, rf8Var4);
                                                                        if (zf8VarB.a()) {
                                                                            cloudMetadata3.updateSpecialDataDetails(zf8VarB.a, Long.valueOf(rf8Var4.a()));
                                                                        }
                                                                    }
                                                                    return be8Var;
                                                                }
                                                            });
                                                            a00Var2 = a00Var3;
                                                            arrayList3.add(vn4Var);
                                                            a00Var4 = a00Var2;
                                                            break;
                                                        default:
                                                            q.j();
                                                            return;
                                                    }
                                                }
                                                a00Var = a00Var4;
                                                ex6 ex6Var2 = c40Var3.i;
                                                SwiftApp.Companion companion2 = SwiftApp.d;
                                                ex6Var2.k(SwiftApp.Companion.c().getString(R.string.uploading_backup_files));
                                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                                zn4 zn4Var19 = zn4.a;
                                                d45.b.getClass();
                                                mFirebaseUserA = d45.a();
                                                if (mFirebaseUserA != null) {
                                                    boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                                                } else {
                                                    boolValueOf = null;
                                                }
                                                if (pe4.d(boolValueOf, Boolean.TRUE)) {
                                                    sharedPreferences = cz4.f;
                                                    if (sharedPreferences != null) {
                                                        pe4.F("prefs");
                                                        throw null;
                                                    }
                                                    z3 = sharedPreferences.getBoolean("parallel_cloud_transfers", false);
                                                    if (z3) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                } else {
                                                    z2 = false;
                                                }
                                                zn4.a(4, arrayList3, z2);
                                                vr6.i$default(vr6.INSTANCE, "AppUploadTask", Const.u(jCurrentTimeMillis2, System.currentTimeMillis()), null, 4, null);
                                            } else {
                                                a00Var = a00Var4;
                                                vr6.i$default(vr6.INSTANCE, "AppUploadTask", "Nothing to upload!", null, 4, null);
                                            }
                                            jv1 jv1Var2 = null;
                                            c40Var3.o(null);
                                            vr6Var = vr6.INSTANCE;
                                            vr6.i$default(vr6Var, "AppUploadTask", "Uploading metadata", null, 4, null);
                                            zn4 zn4Var110 = zn4.a;
                                            zn4.b(null, new zz(a00Var, jv1Var2, 0));
                                            cloudMetadata4 = a00Var.h;
                                            if (cloudMetadata4 != null) {
                                                c6.f("Cloud metadata null!!");
                                                return;
                                            }
                                            if (cloudMetadata4.hasBackups()) {
                                                vr6Var.i("AppUploadTask", "CloudMetadata has no backups! Not uploading to database.", vr6.a.YELLOW);
                                                vr6Var2 = vr6Var;
                                            } else {
                                                if (mzVar.h == null) {
                                                    cloudMetadata4.removeSpecialDataDetails();
                                                }
                                                installerPackage = localMetadata.getInstallerPackage();
                                                if (installerPackage != null) {
                                                    installerPackage = null;
                                                } else {
                                                    installerPackage = null;
                                                }
                                                cloudMetadata4.setInstallerPackage(installerPackage);
                                                cloudMetadata4.setKeyVersion(localMetadata.getKeyVersion());
                                                if (hzVar.d()) {
                                                    dateBackup = localMetadata.getDateBackup();
                                                    if (dateBackup == null) {
                                                        dateBackup = Long.valueOf(System.currentTimeMillis());
                                                    }
                                                    cloudMetadata4.setDateBackup(dateBackup);
                                                } else {
                                                    dateBackup = localMetadata.getDateBackup();
                                                    if (dateBackup == null) {
                                                        dateBackup = Long.valueOf(System.currentTimeMillis());
                                                    }
                                                    cloudMetadata4.setDateBackup(dateBackup);
                                                }
                                                if (hzVar.d()) {
                                                    cloudMetadata4.updateNote(localMetadata.getNote());
                                                } else {
                                                    cloudMetadata4.updateNote(localMetadata.getNote());
                                                }
                                                if (hzVar.d()) {
                                                    cloudMetadata4.updateProtection(localMetadata.isProtectedBackup());
                                                } else {
                                                    cloudMetadata4.updateProtection(localMetadata.isProtectedBackup());
                                                }
                                                if (hzVar.d()) {
                                                    cloudMetadata4.setDateBackupUpdated(localMetadata.getDateBackupUpdated());
                                                } else if (a00Var.i) {
                                                    dateBackupUpdated = localMetadata.getDateBackupUpdated();
                                                    if (dateBackupUpdated == null) {
                                                        dateBackupUpdated = Long.valueOf(System.currentTimeMillis());
                                                    }
                                                    cloudMetadata4.setDateBackupUpdated(dateBackupUpdated);
                                                }
                                                cloudMetadata4.prepareForFirebaseUpload();
                                                zc2Var = a00Var.j;
                                                if (zc2Var != null) {
                                                    pe4.F("cloudDetailNode");
                                                    throw null;
                                                }
                                                vr6.i$default(vr6Var2, "AppUploadTask", xs1.j("Metadata node=", zc2Var.e()), null, 4, null);
                                                zc2Var2 = a00Var.j;
                                                if (zc2Var2 != null) {
                                                    vr6Var2 = vr6Var;
                                                    pe4.F("cloudDetailNode");
                                                    throw null;
                                                }
                                                af3VarC = cf3.c(zc2Var2, cloudMetadata4);
                                                if (pe4.d(af3VarC, ze3.b)) {
                                                    vr6Var2 = vr6Var;
                                                    vr6.i$default(vr6Var2, "AppUploadTask", "Uploading metadata complete", null, 4, null);
                                                    mzVar.l = true;
                                                } else if (af3VarC instanceof ye3) {
                                                    vr6Var2 = vr6Var;
                                                    q.j();
                                                    return;
                                                } else {
                                                    vr6Var2 = vr6Var;
                                                    xzVar.d = dj7.k(jiVar3.getName(), ": ", ((ye3) af3VarC).b.b);
                                                    vr6.i$default(vr6Var2, "AppUploadTask", "Error while uploading metadata", null, 4, null);
                                                    u48.s("uploadMetadata: Error occurred while updating cloud details for app = ", jiVar3.asString(), "AppUploadTask");
                                                }
                                            }
                                            if (!a00Var.k) {
                                                representationA = f.a(hzVar.i);
                                                c0014aFetchForPackage = AppCloudBackups.Companion.fetchForPackage(jiVar3.getPackageName());
                                                if (c0014aFetchForPackage.getDatabaseError() != null) {
                                                    vr6.e$default(vr6Var2, "AppUploadTask: CloudBackupsCleanup", "Error while fetching cloud backups: " + c0014aFetchForPackage.getDatabaseError(), null, 4, null);
                                                    xzVar.d = dj7.k(jiVar3.getName(), ": ", c0014aFetchForPackage.getDatabaseError().b);
                                                } else {
                                                    appCloudBackups = c0014aFetchForPackage.getAppCloudBackups();
                                                    if (appCloudBackups != null) {
                                                        if (!appCloudBackups.hasBackups()) {
                                                            appCloudBackups = null;
                                                        }
                                                        if (appCloudBackups != null) {
                                                            List<AppCloudBackup> backups2 = appCloudBackups.getBackups();
                                                            arrayList = new ArrayList();
                                                            while (r4.hasNext()) {
                                                                if (((AppCloudBackup) obj).getMetadata().isProtectedBackup()) {
                                                                    arrayList.add(obj);
                                                                }
                                                            }
                                                            arrayList2 = new ArrayList();
                                                            while (r5.hasNext()) {
                                                                if (!arrayList.contains((AppCloudBackup) obj2)) {
                                                                    arrayList2.add(obj2);
                                                                }
                                                            }
                                                            vr6Var3 = vr6.INSTANCE;
                                                            vr6.i$default(vr6Var3, "AppUploadTask: CloudBackupsCleanup", "Multiple backups strategy: " + representationA, null, 4, null);
                                                            vr6.i$default(vr6Var3, "AppUploadTask: CloudBackupsCleanup", xs1.m(xs1.n("Total backups: ", backups2.size(), " (", " Normal + ", arrayList2.size()), arrayList.size(), " Protected)"), null, 4, null);
                                                            if (arrayList2.isEmpty()) {
                                                                vr6.i$default(vr6Var3, "AppUploadTask: CloudBackupsCleanup", "No backups to delete", null, 4, null);
                                                            } else {
                                                                vr6.i$default(vr6Var3, "AppUploadTask: CloudBackupsCleanup", "No backups to delete", null, 4, null);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            str = null;
                                        }
                                    }
                                } else {
                                    vr6.e$default(vr6Var5, "AppUploadTask", "Still no WiFi, skipping upload.", null, 4, null);
                                    String name = jiVar3.getName();
                                    SwiftApp.Companion companion3 = SwiftApp.d;
                                    xzVar.a = dj7.k(name, ": ", SwiftApp.Companion.c().getString(R.string.cloud_upload_skipped_no_wifi_error));
                                    hlVar2 = hlVar;
                                    str = null;
                                    i5 = i10;
                                }
                            }
                            c40Var3.o(str);
                            if (tlVarG != null && (str9 = tlVarG.e) != null) {
                                if (str9.length() <= 0) {
                                    str9 = null;
                                }
                                if (str9 != null) {
                                    xzVar.c = str9;
                                }
                            }
                            if (xzVar.a != null || xzVar.c != null || xzVar.d != null) {
                                hlVar2.b.add(xzVar);
                            }
                        }
                    } else {
                        String str12 = tlVarG.g;
                        if ((!((str12 == null || str12.length() == 0) ? z : false)) == z) {
                            jlVar = jlVar2;
                            i4 = i3;
                            i5 = i10;
                            i6 = i11;
                            jiVar = jiVar2;
                        } else {
                            if (zD) {
                                i7 = 100;
                            } else {
                                i7 = 0;
                            }
                            vlVar = jlVar2.e;
                            if (vlVar != null) {
                                hkVar = hzVar.e;
                            } else {
                                hkVar = hzVar.e;
                            }
                            if (z6) {
                                jlVar = jlVar2;
                                i4 = i3;
                                i5 = i10;
                                i6 = i11;
                                jiVar = jiVar2;
                            } else {
                                jlVar = jlVar2;
                                i4 = i3;
                                i5 = i10;
                                i6 = i11;
                                jiVar = jiVar2;
                            }
                        }
                    }
                    boolean z20 = i5 == fl1.z0(list);
                    String str13 = ry5.u;
                    int i17 = 0;
                    q63 q63Var = new q63(qy5.f(false, null).h, 2);
                    q63 q63VarT = q63Var.t();
                    if (q63VarT != null) {
                        ArrayList arrayListC = q63VarT.C(new vm(eq3.k(".", q63Var.p(), ".cleanup-"), i17));
                        if (arrayListC != null) {
                            list5 = arrayListC;
                        }
                        if (!list5.isEmpty()) {
                            zn4 zn4Var20 = zn4.a;
                            zn4.b(null, new z2(list5, null, 1));
                        }
                    }
                    if (z20) {
                        Log.i("AppCloudCacheCleaner", "Cleaning cloud cache on device");
                        if (q63Var.j()) {
                            String parent = q63Var.n().getFile().getParent();
                            if (parent == null || nq7.j0(parent)) {
                                Log.i("AppCloudCacheCleaner", "Cleaning cloud cache on device");
                                cy0.f(q63Var);
                            } else {
                                q63 q63Var2 = new q63(parent, "." + q63Var.p() + ".cleanup-" + System.currentTimeMillis(), 2);
                                if (!q63Var.I(q63Var2)) {
                                    Log.i("AppCloudCacheCleaner", "Cleaning cloud cache on device");
                                    cy0.f(q63Var);
                                } else if (q63.E(q63Var) || q63Var.x()) {
                                    zn4 zn4Var21 = zn4.a;
                                    zn4.b(null, new wm(q63Var2, null, 0));
                                } else {
                                    Log.w("AppCloudCacheCleaner", "Unable to recreate active cloud cache at ".concat(q63Var.v()));
                                    q63Var2.I(q63Var);
                                }
                            }
                        }
                    } else {
                        Log.i("AppCloudCacheCleaner", "Cleaning cloud cache on device");
                        cy0.f(q63Var);
                    }
                    k(new r62(100, jiVar.getPackageName()));
                    n(i4 + 100);
                    c40Var = this;
                    i10 = i6;
                    jlVar2 = jlVar;
                    list3 = list;
                    it3 = it;
                }
            }
        }
        c40 c40Var4 = c40Var;
        if (hlVar.a()) {
            ((b40) c40Var4.b).a = hlVar;
        }
    }
}
