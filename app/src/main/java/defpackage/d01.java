package defpackage;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.Looper;
import android.telephony.SubscriptionManager;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.compress.Packer;
import org.swiftapps.swiftbackup.model.provider.CallLogItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d01 {
    public static int a(int i) {
        return SubscriptionManager.getSlotIndex(i);
    }

    public static boolean b(List list, boolean z) {
        boolean zQ;
        if (z) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String driveId = ((rz0) it.next()).getDriveId();
                if (driveId != null) {
                    arrayList.add(driveId);
                }
            }
            jd1 jd1Var = new jd1(el1.v1(new LinkedHashSet(el1.v1(arrayList))));
            tb1 tb1Var = tb1.a;
            zQ = qb1.c().b(jd1Var).c().q();
        } else {
            zQ = true;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((rz0) it2.next()).getLocalFile().h();
        }
        return zQ;
    }

    public static void c(boolean z) {
        Integer num = null;
        int i = -1;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            i = sharedPreferences.getInt("max_call_backups", -1);
            Integer numValueOf = i > 0 ? Integer.valueOf(i) : null;
            if (numValueOf != null && numValueOf.intValue() > 0) {
                num = numValueOf;
            }
            if (num != null) {
                int iIntValue = num.intValue();
                ArrayList arrayListE = z ? e() : f();
                if (arrayListE.size() > iIntValue) {
                    List listN0 = el1.N0(iIntValue, el1.n1(arrayListE, new a01(0)));
                    if (!b(listN0, z)) {
                        vr6.e$default(vr6.INSTANCE, "CallsBackupHelper", xs1.h(listN0.size(), "Error when trying to delete ", " older backups"), null, 4, null);
                        return;
                    }
                    vr6.i$default(vr6.INSTANCE, "CallsBackupHelper", dj7.n(xs1.n("Max Call Logs backups limit=", iIntValue, ". Deleted ", " older ", listN0.size()), z ? "cloud" : "local", " backups."), null, 4, null);
                }
            }
        } catch (ClassCastException unused) {
        }
    }

    public static boolean d(rz0 rz0Var) throws IOException {
        rz0Var.getClass();
        if (!rz0Var.isCloudItem()) {
            c6.f("Item isn't a cloud item");
            return false;
        }
        String driveId = rz0Var.getDriveId();
        driveId.getClass();
        long remoteFileSize = rz0Var.getRemoteFileSize();
        Long lValueOf = Long.valueOf(remoteFileSize);
        q63 localFile = rz0Var.getLocalFile();
        localFile.getClass();
        if (remoteFileSize <= 0) {
            lValueOf = null;
        }
        fo2 fo2Var = new fo2(driveId, 21, lValueOf != null ? lValueOf.longValue() : -1L, localFile);
        tb1 tb1Var = tb1.a;
        no2 no2VarC = qb1.c().c(fo2Var);
        try {
            ke keVarB = no2VarC.b();
            if (keVarB.c()) {
                vr6.e$default(vr6.INSTANCE, "CallsBackupHelper", "downloadFromCloud: ".concat(keVarB.b()), null, 4, null);
            }
            boolean zE = keVarB.e();
            no2VarC.close();
            return zE;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(no2VarC, th);
                throw th2;
            }
        }
    }

    public static ArrayList e() {
        ArrayList arrayList = new ArrayList();
        tb1 tb1Var = tb1.a;
        ui1 ui1VarF = qb1.c().f();
        Exception exc = ui1VarF.b;
        if (exc != null) {
            Log.e("CallsBackupHelper", "getBackupsFromCloud: ", exc);
            return arrayList;
        }
        List<pg1> list = ui1VarF.a;
        if (list.isEmpty()) {
            Log.w("CallsBackupHelper", "getBackupsFromCloud: FileList is EMPTY");
            return arrayList;
        }
        for (pg1 pg1Var : list) {
            try {
                rz0 rz0VarFromFileName = rz0.Companion.fromFileName(pg1Var.a, pg1Var.b, pg1Var.c);
                if (rz0VarFromFileName != null) {
                    arrayList.add(rz0VarFromFileName);
                }
            } catch (Exception e) {
                Log.e("CallsBackupHelper", "getBackupsFromCloud: ", e);
            }
        }
        return new ArrayList(el1.n1(arrayList, new b01(0)));
    }

    public static ArrayList f() {
        ArrayList arrayListD;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String str = ry5.u;
        int i = 2;
        q63 q63Var = new q63(qy5.f(false, null).l, 2);
        if (q63Var.j() && (arrayListD = q63Var.D(new zz0(0))) != null) {
            Iterator it = arrayListD.iterator();
            while (it.hasNext()) {
                rz0 rz0VarFromFileName = rz0.Companion.fromFileName(((q63) it.next()).p(), null, -1L);
                if (rz0VarFromFileName != null) {
                    arrayList.add(rz0VarFromFileName);
                }
            }
        }
        return new ArrayList(el1.n1(arrayList, new nx(i)));
    }

    public static ArrayList g() {
        ArrayList arrayListA = r92.a(CallLogItem.Companion.getCONTENT_URI(), CallLogItem.class);
        if (Build.VERSION.SDK_INT >= 33) {
            ArrayList arrayList = new ArrayList(hl1.G0(arrayListA, 10));
            Iterator it = arrayListA.iterator();
            while (it.hasNext()) {
                arrayList.add(((CallLogItem) it.next()).withSourceSimSlotIndex(Build.VERSION.SDK_INT, new nu(3)));
            }
            arrayListA = arrayList;
        }
        return new ArrayList(el1.n1(arrayListA, new c01(0)));
    }

    public static q63 h() {
        SwiftApp.Companion companion = SwiftApp.d;
        return new q63(SwiftApp.Companion.c().getCacheDir(), "calls_backup", 2);
    }

    public static ArrayList i(q63 q63Var) {
        boolean z;
        if (!uq7.V(q63Var.p(), "v3", false)) {
            ArrayList arrayList = new ArrayList();
            gv7 gv7Var = w14.a;
            sz0 sz0Var = (sz0) w14.a(q63Var, sz0.class);
            if ((sz0Var != null ? sz0Var.getItems() : null) == null || sz0Var.getItems().isEmpty()) {
                Log.e("CallsBackupHelper", "inBackground: Invalid wrapper item");
                return arrayList;
            }
            arrayList.addAll(sz0Var.getItems());
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        try {
            q63 q63VarH = h();
            if (q63VarH.j()) {
                cy0.e(q63VarH);
            } else {
                q63.E(q63VarH);
            }
            HashSet hashSet = mz6.a;
            if (mz6.m(q63Var)) {
                SwiftApp.Companion companion = SwiftApp.d;
                File cacheDir = SwiftApp.Companion.c().getCacheDir();
                cacheDir.getClass();
                mz6.j(q63Var, new q63(cacheDir, 2), yx5.b(), null);
                z = true;
            } else {
                SwiftApp.Companion companion2 = SwiftApp.d;
                File cacheDir2 = SwiftApp.Companion.c().getCacheDir();
                cacheDir2.getClass();
                z = Packer.a(q63Var, new q63(cacheDir2, 2), yx5.b(), null, null, null, 56).a;
            }
            if (z) {
                q63 q63VarJ = h().J("call_logs");
                gv7 gv7Var2 = w14.a;
                ArrayList arrayListE = w14.e(q63VarJ, CallLogItem.class);
                if (!arrayListE.isEmpty()) {
                    arrayList2.addAll(arrayListE);
                }
            }
            return arrayList2;
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "CallsBackupHelper", String.valueOf(e), null, 4, null);
            return arrayList2;
        }
    }
}
