package defpackage;

import android.content.SharedPreferences;
import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qp3 extends pw6 {
    public final List m;
    public final String n;
    public final ex6 o;
    public ek3 p;
    public sn3 q;
    public bl3 r;

    public qp3(List list, ty7 ty7Var, pp3 pp3Var) {
        boolean z;
        super(ty7Var, pp3Var);
        this.m = list;
        this.n = "FoldersTask";
        ex6 ex6Var = new ex6();
        this.o = ex6Var;
        if (!g()) {
            ex6Var.k(((eo3) el1.S0(list)).a());
        }
        if (g()) {
            if (!V.INSTANCE.getVp() && (((ty7Var instanceof uy7) || (ty7Var instanceof wy7)) && !list.isEmpty())) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    } else if (((eo3) it.next()).b()) {
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
                new qe3("batch_folders_cloud", z ? "novp" : null).invoke();
            } catch (Exception unused) {
            }
        }
    }

    @Override // defpackage.pw6
    public final void a() {
        ek3 ek3Var = this.p;
        if (ek3Var != null) {
            ek3Var.e = true;
            hk3 hk3Var = ek3Var.b;
            if (hk3Var != null) {
                vr6.w$default(vr6.INSTANCE, "FolderBackupTask", "Backup was cancelled", null, 4, null);
                hk3Var.c = true;
            }
            io3 io3Var = ek3Var.c;
            if (io3Var != null) {
                io3Var.i = true;
                ArrayList arrayListQ0 = el1.Q0(io3Var.g);
                ArrayList<ag8> arrayList = new ArrayList();
                for (Object obj : arrayListQ0) {
                    if (((ag8) obj).c.isRunning()) {
                        arrayList.add(obj);
                    }
                }
                if (!arrayList.isEmpty()) {
                    vr6 vr6Var = vr6.INSTANCE;
                    vr6.w$default(vr6Var, "FolderUploadTask", "User cancelled the upload process", null, 4, null);
                    tb1 tb1Var = tb1.a;
                    vr6.w$default(vr6Var, "FolderUploadTask", eq3.k("Closing connection with ", qb1.f().getDisplayNameEn(), ", may result in unknown errors"), null, 4, null);
                    for (ag8 ag8Var : arrayList) {
                        ag8Var.getClass();
                        ag8Var.c = gz7.CANCELLED;
                        ag8Var.b();
                    }
                }
            }
        }
        sn3 sn3Var = this.q;
        if (sn3Var != null) {
            sn3Var.d = true;
            im3 im3Var = sn3Var.b;
            if (im3Var != null) {
                im3Var.e = true;
                ArrayList arrayListQ1 = el1.Q0(im3Var.d);
                ArrayList<no2> arrayList2 = new ArrayList();
                for (Object obj2 : arrayListQ1) {
                    if (((no2) obj2).d.isRunning()) {
                        arrayList2.add(obj2);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    vr6 vr6Var2 = vr6.INSTANCE;
                    vr6.w$default(vr6Var2, "FolderDownloadTask", "User cancelled the download process", null, 4, null);
                    tb1 tb1Var2 = tb1.a;
                    vr6.w$default(vr6Var2, "FolderDownloadTask", eq3.k("Closing connection with ", qb1.f().getDisplayNameEn(), ", may result in unknown errors"), null, 4, null);
                    for (no2 no2Var : arrayList2) {
                        no2Var.getClass();
                        no2Var.d = gz7.CANCELLED;
                        no2Var.a();
                    }
                }
            }
        }
        bl3 bl3Var = this.r;
        if (bl3Var == null || !bl3Var.c.isRunning()) {
            return;
        }
        bl3Var.c = gz7.CANCELLED;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x036b  */
    /* JADX WARN: Code duplicated, block: B:141:0x0429  */
    /* JADX WARN: Code duplicated, block: B:179:0x0527  */
    /* JADX WARN: Code duplicated, block: B:180:0x0537  */
    @Override // defpackage.pw6
    public final void b() {
        dz7 dz7Var;
        List list;
        rn3 rn3Var;
        String str;
        FolderMetadata folderMetadata;
        int i;
        Object qm6Var;
        Boolean boolValueOf;
        boolean z;
        String str2;
        boolean z2;
        im3 im3Var;
        List list2;
        cz7 cz7Var = this.a;
        boolean z3 = cz7Var instanceof uy7;
        String str3 = "Processing ";
        gj5 gj5Var = this.d;
        String str4 = "/";
        dz7 dz7Var2 = this.b;
        List<eo3> list3 = this.m;
        if (z3) {
            ek3 ek3Var = new ek3(this);
            this.p = ek3Var;
            int i2 = 0;
            for (eo3 eo3Var : list3) {
                int i3 = i2 + 1;
                if (ek3Var.b()) {
                    break;
                }
                eo3Var.getClass();
                bo3 bo3Var = (bo3) eo3Var;
                dz7 dz7Var3 = dz7Var2;
                String str5 = i3 + "/" + list3.size();
                List list4 = list3;
                if (list3.size() > 1) {
                    gj5Var.i(str5);
                }
                vr6.i$default(vr6.INSTANCE, "FolderBackupManager", "Processing ".concat(str5), null, 4, null);
                p(bo3Var.a);
                k(null);
                int i4 = i2 * 100;
                try {
                    ek3Var.a((bo3) eo3Var, new bk3(ek3Var, eo3Var, i4));
                    n(i4 + 100);
                    Log.i("FolderBackupManager", "Cleaning cloud cache on device");
                    boolean z4 = q63.d;
                    String str6 = ry5.u;
                    cy0.g(qy5.f(false, null).t);
                    i2 = i3;
                    dz7Var2 = dz7Var3;
                    list3 = list4;
                } catch (Throwable th) {
                    Log.i("FolderBackupManager", "Cleaning cloud cache on device");
                    boolean z5 = q63.d;
                    String str7 = ry5.u;
                    cy0.g(qy5.f(false, null).t);
                    throw th;
                }
            }
            dz7Var = dz7Var2;
            list = list3;
            cd cdVar = ek3Var.d;
            if (cdVar.g()) {
                ((pp3) dz7Var).a = cdVar;
            }
        } else {
            dz7Var = dz7Var2;
            list = list3;
        }
        if (cz7Var instanceof wy7) {
            sn3 sn3Var = new sn3(this);
            this.q = sn3Var;
            Iterator it = list.iterator();
            int i5 = 0;
            while (true) {
                boolean zHasNext = it.hasNext();
                rn3Var = sn3Var.c;
                if (!zHasNext) {
                    break;
                }
                int i6 = i5 + 1;
                eo3 eo3Var2 = (eo3) it.next();
                if (sn3Var.a()) {
                    break;
                }
                eo3Var2.getClass();
                do3 do3Var = (do3) eo3Var2;
                FolderItem folderItem = do3Var.a;
                FolderMetadata folderMetadata2 = do3Var.c;
                String str8 = i6 + str4 + list.size();
                String str9 = str4;
                if (list.size() > 1) {
                    gj5Var.i(str8);
                }
                vr6 vr6Var = vr6.INSTANCE;
                vr6.i$default(vr6Var, "FolderRestoreManager", str3.concat(str8), null, 4, null);
                p(folderItem);
                k(null);
                int i7 = i5 * 100;
                qn3 qn3Var = new qn3(sn3Var, eo3Var2, i7);
                nn3 nn3VarA = pn3.a(do3Var, false, null);
                if (nn3VarA.a) {
                    boolean z6 = folderMetadata2 != null;
                    int i8 = (z6 ? 2 : 1) * 100;
                    str = str3;
                    ex6 ex6Var = this.i;
                    if (!z6) {
                        folderMetadata = folderMetadata2;
                    } else {
                        if (folderMetadata2 == null) {
                            c6.f("props.cloudBackup cannot be null!");
                            return;
                        }
                        im3 im3Var2 = new im3(this, folderMetadata2);
                        sn3Var.b = im3Var2;
                        im3Var2.g = new pv(qn3Var, i8, 1);
                        String displayString = folderMetadata2.toDisplayString();
                        tb1 tb1Var = tb1.a;
                        folderMetadata = folderMetadata2;
                        vr6.i$default(vr6Var, "FolderDownloadTask", dj7.n(u48.p("Processing download for folder: ", displayString, ". Cloud: ", qb1.f().getDisplayNameEn(), ", Tag: "), qb1.e(), "."), null, 4, null);
                        p(folderMetadata.getFolderItem());
                        em3 em3Var = im3Var2.c;
                        List list5 = em3Var.b;
                        List list6 = em3Var.c;
                        ArrayList<fo2> arrayList = new ArrayList();
                        for (fo2 fo2Var : el1.g1(list5, list6 == null ? ov2.a : list6)) {
                            vr6 vr6Var2 = vr6.INSTANCE;
                            vr6.i$default(vr6Var2, "FolderDownloadTask", "Checking download for ".concat(fo2Var.a()), null, 4, null);
                            q63 q63Var = fo2Var.d;
                            if (q63Var.j()) {
                                im3Var = im3Var2;
                                list2 = list6;
                                if (q63Var.A() == fo2Var.c) {
                                    vr6.i$default(vr6Var2, "FolderDownloadTask", "Skipped downloading, cloud copy available on device", null, 4, null);
                                }
                                list6 = list2;
                                im3Var2 = im3Var;
                            } else {
                                im3Var = im3Var2;
                                list2 = list6;
                            }
                            arrayList.add(fo2Var);
                            list6 = list2;
                            im3Var2 = im3Var;
                        }
                        final im3 im3Var3 = im3Var2;
                        List list7 = list6;
                        if (arrayList.isEmpty()) {
                            vr6.i$default(vr6.INSTANCE, "FolderDownloadTask", "Nothing to download", null, 4, null);
                            str2 = null;
                        } else {
                            StringBuilder sb = new StringBuilder("Download tasks: Base backup");
                            if (list7 != null && !list7.isEmpty()) {
                                ArrayList arrayList2 = new ArrayList();
                                for (Object obj : list7) {
                                    if (((fo2) obj).b == 32) {
                                        arrayList2.add(obj);
                                    }
                                }
                                sb.append(" & " + arrayList2.size() + " incremental backups");
                            }
                            vr6.i$default(vr6.INSTANCE, "FolderDownloadTask", sb.toString(), null, 4, null);
                            Iterator it2 = arrayList.iterator();
                            long j = 0;
                            while (it2.hasNext()) {
                                j += ((fo2) it2.next()).c;
                            }
                            Long lValueOf = Long.valueOf(j);
                            if (j <= 0) {
                                lValueOf = null;
                            }
                            final long jLongValue = lValueOf != null ? lValueOf.longValue() : 1L;
                            final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                            final kh6 kh6Var = new kh6();
                            final kh6 kh6Var2 = new kh6();
                            ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList, 10));
                            for (final fo2 fo2Var2 : arrayList) {
                                zn4 zn4Var = zn4.a;
                                arrayList3.add(new vn4(new bt3() { // from class: fm3
                                    @Override // defpackage.bt3
                                    public final Object invoke() throws IOException {
                                        im3 im3Var4 = im3Var3;
                                        boolean z7 = im3Var4.e;
                                        hm3 hm3Var = im3Var4.f;
                                        if (!z7 && hm3Var.a == null) {
                                            long j2 = jLongValue;
                                            fo2 fo2Var3 = fo2Var2;
                                            gm3 gm3Var = new gm3(j2, fo2Var3, im3Var4, kh6Var, kh6Var2, concurrentHashMap);
                                            p93 p93Var = p93.a;
                                            long j3 = fo2Var3.c;
                                            q63 q63Var2 = fo2Var3.d;
                                            String strC = p93.c(Long.valueOf(j3));
                                            vr6 vr6Var3 = vr6.INSTANCE;
                                            vr6.i$default(vr6Var3, "FolderDownloadTask", eq3.l("Downloading ", q63Var2.p(), " (", strC, ")"), null, 4, null);
                                            tb1 tb1Var2 = tb1.a;
                                            no2 no2VarC = qb1.c().c(fo2Var3);
                                            try {
                                                im3Var4.d.add(no2VarC);
                                                no2VarC.f = new px(gm3Var, 7);
                                                ke keVarB = no2VarC.b();
                                                if (keVarB.e()) {
                                                    gm3Var.invoke(Long.valueOf(fo2Var3.c));
                                                } else {
                                                    hm3Var.a = im3Var4.b.getFolderItem().getDisplayName() + ": " + keVarB.b();
                                                }
                                                boolean zE = keVarB.e();
                                                no2VarC.close();
                                                if (zE) {
                                                    vr6.i$default(vr6Var3, "FolderDownloadTask", "Downloaded ".concat(q63Var2.p()), null, 4, null);
                                                } else {
                                                    vr6.e$default(vr6Var3, "FolderDownloadTask", "Failed to download ".concat(q63Var2.p()), null, 4, null);
                                                }
                                            } catch (Throwable th2) {
                                                try {
                                                    throw th2;
                                                } catch (Throwable th3) {
                                                    rs9.c(no2VarC, th2);
                                                    throw th3;
                                                }
                                            }
                                        }
                                        return be8.a;
                                    }
                                }));
                            }
                            SwiftApp.Companion companion = SwiftApp.d;
                            ex6Var.k(SwiftApp.Companion.c().getString(R.string.downloading_backup_files));
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            zn4 zn4Var2 = zn4.a;
                            try {
                                d45.b.getClass();
                                MFirebaseUser mFirebaseUserA = d45.a();
                                boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
                            } catch (Exception unused) {
                            }
                            if (pe4.d(boolValueOf, Boolean.TRUE)) {
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
                            zn4.a(4, arrayList3, z);
                            vr6.i$default(vr6.INSTANCE, "FolderDownloadTask", Const.u(jCurrentTimeMillis, System.currentTimeMillis()), null, 4, null);
                            str2 = null;
                            o(null);
                        }
                        hm3 hm3Var = im3Var3.f;
                        if (hm3Var.a != null) {
                            rn3Var.b.add(hm3Var);
                        }
                        o(str2);
                    }
                    if (!sn3Var.a()) {
                        int i9 = z6 ? 100 : 0;
                        if (folderMetadata != null) {
                            i = 1;
                            nn3VarA = pn3.a(do3Var, true, nn3VarA.d);
                        } else {
                            i = 1;
                        }
                        if (nn3VarA.a) {
                            vn3 vn3Var = new vn3(do3Var, this, nn3VarA);
                            qv qvVar = new qv(i9, i8, i, qn3Var);
                            SwiftApp.Companion companion2 = SwiftApp.d;
                            ex6Var.k(SwiftApp.Companion.c().getString(R.string.restoring));
                            vr6 vr6Var3 = vr6.INSTANCE;
                            vr6.i$default(vr6Var3, "FolderRestoreTask", "Started restore: " + vn3Var.a, null, 4, null);
                            vr6.i$default(vr6Var3, "FolderRestoreTask", "Props=" + do3Var, null, 4, null);
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            String sourceFolder = do3Var.e;
                            if (sourceFolder == null) {
                                sourceFolder = folderItem.getSourceFolder();
                            } else {
                                if (nq7.j0(sourceFolder)) {
                                    sourceFolder = null;
                                }
                                if (sourceFolder == null) {
                                    sourceFolder = folderItem.getSourceFolder();
                                }
                            }
                            q63 q63Var2 = new q63(sourceFolder, 2);
                            FolderRestoreStrategy folderRestoreStrategy = do3Var.d;
                            kj3 kj3Var = vn3Var.b;
                            kj3Var.getClass();
                            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                                d6.o();
                                return;
                            }
                            if (!kj3Var.f()) {
                                y5.l(kj3Var, "FolderBackup has no backups: ");
                                return;
                            }
                            wj3 wj3Var = new wj3(this, kj3Var, qvVar);
                            vr6.i$default(vr6Var3, "FolderRestoreHelper", "Restore strategy: " + folderRestoreStrategy, null, 4, null);
                            q63 q63Var3 = wj3Var.d;
                            folderRestoreStrategy.getClass();
                            try {
                                try {
                                    if (q63Var3.j()) {
                                        cy0.e(q63Var3);
                                    } else {
                                        q63.E(q63Var3);
                                    }
                                    qm6Var = wj3Var.h(q63Var2, folderRestoreStrategy, nn3VarA);
                                } catch (Exception e) {
                                    vr6.e$default(vr6.INSTANCE, "restoreFolder", "Error restoring backup", e, null, 8, null);
                                    String message = e.getMessage();
                                    if (message == null) {
                                        message = "Unknown error during restore";
                                    }
                                    qm6Var = new qm6(message);
                                }
                                q63Var3.h();
                                vr6 vr6Var4 = vr6.INSTANCE;
                                vr6.i$default(vr6Var4, "FolderRestoreHelper", "Restore result: " + qm6Var, null, 4, null);
                                boolean z7 = qm6Var instanceof qm6;
                                un3 un3Var = vn3Var.c;
                                if (z7) {
                                    String str10 = ((qm6) qm6Var).a;
                                    str10.getClass();
                                    String str11 = un3Var.a;
                                    if (str11 == null || str11.length() == 0) {
                                        un3Var.a = dj7.k(un3Var.b.a.getDisplayName(), ": ", str10);
                                    } else {
                                        un3Var.a = dj7.k(un3Var.a, ", ", str10);
                                    }
                                }
                                qvVar.invoke(100);
                                vr6.i$default(vr6Var4, "FolderRestoreTask", Const.u(jCurrentTimeMillis2, System.currentTimeMillis()), null, 4, null);
                                String str12 = un3Var.a;
                                if (str12 != null && str12.length() != 0) {
                                    rn3Var.a.add(un3Var);
                                }
                            } catch (Throwable th2) {
                                q63Var3.h();
                                throw th2;
                            }
                        }
                    }
                    n(i7 + 100);
                    if (folderMetadata != null) {
                        boolean z8 = q63.d;
                        String str13 = ry5.u;
                        cy0.g(qy5.f(false, null).t);
                    }
                    str4 = str9;
                    str3 = str;
                    gj5Var = gj5Var;
                    sn3Var = sn3Var;
                    it = it;
                    i5 = i6;
                } else {
                    str = str3;
                    gj5Var = gj5Var;
                    sn3Var = sn3Var;
                    it = it;
                    i6 = i6;
                    folderMetadata = folderMetadata2;
                }
                n(i7 + 100);
                if (folderMetadata != null) {
                    boolean z9 = q63.d;
                    String str14 = ry5.u;
                    cy0.g(qy5.f(false, null).t);
                }
                str4 = str9;
                str3 = str;
                gj5Var = gj5Var;
                sn3Var = sn3Var;
                it = it;
                i5 = i6;
            }
            if (rn3Var.a()) {
                ((pp3) dz7Var).b = rn3Var;
            }
        }
        boolean z10 = cz7Var instanceof vy7;
        String str15 = this.n;
        if (z10) {
            Log.d(str15, "Starting delete backup operation for " + list.size() + " folders");
            bl3 bl3Var = new bl3(this, (vy7) cz7Var);
            this.r = bl3Var;
            try {
                if (!bl3Var.a()) {
                    ((pp3) dz7Var).c.add("Error deleting some backup files");
                }
            } catch (Exception e2) {
                ((pp3) dz7Var).c.add(io4.b(e2));
            }
        }
        if (!g()) {
            FolderItem folderItemA = ((eo3) el1.S0(list)).a();
            Log.d(str15, "executeTask: Posting folder event for single folder: " + folderItemA);
            String id = folderItemA.getId();
            id.getClass();
            Log.d("FolderEventSingle", "FolderEventSingle requested by ".concat(qp3.class.getSimpleName()));
            ny2.b().e(new mm3(id));
        }
        ny2.b().e(new b05());
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
        String string = SwiftApp.Companion.c().getString(g() ? R.string.folders : R.string.folder);
        string.getClass();
        return string;
    }

    @Override // defpackage.pw6
    public final String j() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(R.string.x_folders, String.valueOf(this.m.size()));
        string.getClass();
        return string;
    }

    @Override // defpackage.pw6
    public final void l() {
        zn4 zn4Var = zn4.a;
        zn4.c(new fj(this, 26));
    }

    public final void p(FolderItem folderItem) {
        folderItem.getClass();
        zn4 zn4Var = zn4.a;
        zn4.e(new g52(5, this, folderItem));
    }
}
