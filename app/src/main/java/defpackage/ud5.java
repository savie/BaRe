package defpackage;

import android.app.role.RoleManager;
import android.content.SharedPreferences;
import android.os.Looper;
import android.provider.Telephony;
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

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ud5 {
    public static final gv7 a = new gv7(new b7(21));

    public static RoleManager a() {
        SwiftApp.Companion companion = SwiftApp.d;
        Object systemService = SwiftApp.Companion.c().getSystemService((Class<Object>) RoleManager.class);
        systemService.getClass();
        return (RoleManager) systemService;
    }

    public static boolean b(List list, boolean z) {
        boolean zQ;
        if (z) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String driveId = ((vd5) it.next()).getDriveId();
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
            ((vd5) it2.next()).getLocalFile().h();
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
            i = sharedPreferences.getInt("max_sms_backups", -1);
            Integer numValueOf = i > 0 ? Integer.valueOf(i) : null;
            if (numValueOf != null && numValueOf.intValue() > 0) {
                num = numValueOf;
            }
            if (num != null) {
                int iIntValue = num.intValue();
                ArrayList arrayListE = z ? e() : f();
                if (arrayListE.size() > iIntValue) {
                    List listN0 = el1.N0(iIntValue, el1.n1(arrayListE, new a01(1)));
                    if (!b(listN0, z)) {
                        vr6.e$default(vr6.INSTANCE, "SmsBackupHelper", xs1.h(listN0.size(), "Error when trying to delete ", " older backups"), null, 4, null);
                        return;
                    }
                    vr6.i$default(vr6.INSTANCE, "SmsBackupHelper", dj7.n(xs1.n("Max SMS backups limit=", iIntValue, ". Deleted ", " older ", listN0.size()), z ? "cloud" : "local", " backups."), null, 4, null);
                }
            }
        } catch (ClassCastException unused) {
        }
    }

    public static boolean d(vd5 vd5Var) throws IOException {
        vd5Var.getClass();
        if (!vd5Var.isCloudItem()) {
            c6.f("Item isn't a cloud item");
            return false;
        }
        String driveId = vd5Var.getDriveId();
        driveId.getClass();
        Long remoteFileSize = vd5Var.getRemoteFileSize();
        q63 localFile = vd5Var.getLocalFile();
        localFile.getClass();
        if (remoteFileSize == null || remoteFileSize.longValue() <= 0) {
            remoteFileSize = null;
        }
        fo2 fo2Var = new fo2(driveId, 20, remoteFileSize != null ? remoteFileSize.longValue() : -1L, localFile);
        tb1 tb1Var = tb1.a;
        no2 no2VarC = qb1.c().c(fo2Var);
        try {
            ke keVarB = no2VarC.b();
            if (keVarB.c()) {
                vr6.e$default(vr6.INSTANCE, "SmsBackupHelper", "downloadFromCloud: ".concat(keVarB.b()), null, 4, null);
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
        ui1 ui1VarJ = qb1.c().j();
        Exception exc = ui1VarJ.b;
        if (exc != null) {
            Log.e("SmsBackupHelper", "getBackupsFromCloud: ", exc);
            return arrayList;
        }
        List<pg1> list = ui1VarJ.a;
        if (list.isEmpty()) {
            Log.w("SmsBackupHelper", "getBackupsFromCloud: FileList is EMPTY");
            return arrayList;
        }
        for (pg1 pg1Var : list) {
            vd5 vd5VarFromFileName = vd5.Companion.fromFileName(pg1Var.a, pg1Var.b, Long.valueOf(pg1Var.c));
            if (vd5VarFromFileName != null) {
                arrayList.add(vd5VarFromFileName);
            }
        }
        return new ArrayList(el1.n1(arrayList, new b01(1)));
    }

    public static ArrayList f() {
        ArrayList arrayListD;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String str = ry5.u;
        q63 q63Var = new q63(qy5.f(false, null).j, 2);
        if (q63Var.j() && (arrayListD = q63Var.D(new zz0(2))) != null) {
            Iterator it = arrayListD.iterator();
            while (it.hasNext()) {
                vd5 vd5VarFromFileName = vd5.Companion.fromFileName(((q63) it.next()).p(), null, null);
                if (vd5VarFromFileName != null) {
                    arrayList.add(vd5VarFromFileName);
                }
            }
        }
        return new ArrayList(el1.n1(arrayList, new nx(7)));
    }

    public static q63 g() {
        return i().J("mms_data");
    }

    public static RoleManager h() {
        return (RoleManager) a.getValue();
    }

    public static q63 i() {
        SwiftApp.Companion companion = SwiftApp.d;
        return new q63(SwiftApp.Companion.c().getCacheDir(), "messages_backup", 2);
    }

    public static boolean j() {
        if (b67.b()) {
            return h().isRoleHeld("android.app.role.SMS");
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(SwiftApp.Companion.c());
        SwiftApp.Companion companion2 = SwiftApp.d;
        return pe4.d(defaultSmsPackage, SwiftApp.Companion.c().getPackageName());
    }

    public static ArrayList k(q63 q63Var) {
        ArrayList arrayList;
        boolean z;
        boolean z2;
        boolean z3;
        q63Var.getClass();
        int i = 2;
        if (uq7.V(q63Var.p(), "v3", false)) {
            arrayList = new ArrayList();
            try {
                q63 q63VarI = i();
                if (q63VarI.j()) {
                    cy0.e(q63VarI);
                } else {
                    q63.E(q63VarI);
                }
                HashSet hashSet = mz6.a;
                if (mz6.m(q63Var)) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    File cacheDir = SwiftApp.Companion.c().getCacheDir();
                    cacheDir.getClass();
                    q63 q63Var2 = new q63(cacheDir, 2);
                    ArrayList arrayListC = yx5.c();
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z3 = sharedPreferences.getBoolean("messages_backup_mms", true);
                        mz6.j(q63Var, q63Var2, arrayListC, z3 ? null : nc8.I("messages_backup/conversations"));
                        z2 = true;
                    } catch (ClassCastException unused) {
                        z3 = true;
                    }
                } else {
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    File cacheDir2 = SwiftApp.Companion.c().getCacheDir();
                    cacheDir2.getClass();
                    q63 q63Var3 = new q63(cacheDir2, 2);
                    ArrayList arrayListC2 = yx5.c();
                    try {
                        SharedPreferences sharedPreferences2 = cz4.f;
                        if (sharedPreferences2 == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z = sharedPreferences2.getBoolean("messages_backup_mms", true);
                        z2 = Packer.a(q63Var, q63Var3, arrayListC2, null, z ? null : nc8.I("messages_backup/mms_data"), null, 40).a;
                    } catch (ClassCastException unused2) {
                        z = true;
                    }
                }
                if (z2) {
                    q63 q63VarJ = i().J("conversations");
                    gv7 gv7Var = w14.a;
                    ArrayList arrayListE = w14.e(q63VarJ, qv1.class);
                    if (!arrayListE.isEmpty()) {
                        if (arrayList.size() > 1) {
                            jl1.H0(arrayList, new lw1(3));
                        }
                        arrayList.addAll(arrayListE);
                    }
                }
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "SmsBackupHelper", String.valueOf(e), null, 4, null);
            }
        } else {
            arrayList = new ArrayList();
            try {
                gv7 gv7Var2 = w14.a;
                ArrayList arrayListE2 = w14.e(q63Var, qv1.class);
                if (!arrayListE2.isEmpty()) {
                    arrayList.addAll(arrayListE2);
                    if (arrayList.size() > 1) {
                        jl1.H0(arrayList, new c01(i));
                    }
                }
            } catch (Exception e2) {
                vr6.e$default(vr6.INSTANCE, "SmsBackupHelper", String.valueOf(e2), null, 4, null);
            }
        }
        return arrayList;
    }
}
