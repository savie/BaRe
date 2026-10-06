package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a00 {
    public final hz a;
    public final c40 b;
    public final hk c;
    public final ji d;
    public final mz e;
    public final LocalMetadata f;
    public final CopyOnWriteArrayList g;
    public CloudMetadata h;
    public boolean i;
    public zc2 j;
    public boolean k;
    public final xz l;
    public final mk0 m;
    public yk n;

    public a00(hz hzVar, c40 c40Var, hk hkVar, String str) {
        rf8 rf8Var;
        rf8 rf8Var2;
        rf8 rf8Var3;
        rf8 rf8Var4;
        rf8 rf8Var5;
        rf8 rf8Var6;
        rf8 rf8Var7;
        rf8 rf8Var8;
        str.getClass();
        this.a = hzVar;
        this.b = c40Var;
        this.c = hkVar;
        ji jiVar = hzVar.b;
        this.d = jiVar;
        SyncOption syncOption = hzVar.f;
        List list = hzVar.c;
        if (wx3.o(list) && hkVar.c().j()) {
            q63 q63VarC = hkVar.c();
            String str2 = hkVar.a;
            q63VarC.getClass();
            rf8Var = new rf8(q63VarC, 1, true, str2, syncOption == SyncOption.WIFI);
        } else {
            rf8Var = null;
        }
        iu iuVar = iu.APP;
        if (list.contains(iuVar) && hkVar.C().j()) {
            q63 q63VarC2 = hkVar.C();
            String str3 = hkVar.a;
            q63VarC2.getClass();
            rf8Var2 = new rf8(q63VarC2, 2, true, str3, syncOption == SyncOption.WIFI);
        } else {
            rf8Var2 = null;
        }
        if (list.contains(iuVar) && hkVar.z().j()) {
            q63 q63VarZ = hkVar.z();
            String str4 = hkVar.a;
            q63VarZ.getClass();
            rf8Var3 = new rf8(q63VarZ, 3, true, str4, syncOption == SyncOption.WIFI);
        } else {
            rf8Var3 = null;
        }
        if (list.contains(iu.DATA) && hkVar.g().j()) {
            q63 q63VarG = hkVar.g();
            String str5 = hkVar.a;
            q63VarG.getClass();
            rf8Var4 = new rf8(q63VarG, 4, true, str5, syncOption == SyncOption.WIFI);
        } else {
            rf8Var4 = null;
        }
        if (list.contains(iu.EXTDATA) && hkVar.n().j()) {
            q63 q63VarN = hkVar.n();
            String str6 = hkVar.a;
            q63VarN.getClass();
            rf8Var5 = new rf8(q63VarN, 6, true, str6, syncOption == SyncOption.WIFI);
        } else {
            rf8Var5 = null;
        }
        if (list.contains(iu.MEDIA) && hkVar.q().j()) {
            q63 q63VarQ = hkVar.q();
            String str7 = hkVar.a;
            q63VarQ.getClass();
            rf8Var6 = new rf8(q63VarQ, 7, true, str7, syncOption == SyncOption.WIFI);
        } else {
            rf8Var6 = null;
        }
        if (list.contains(iu.EXPANSION) && hkVar.m().j()) {
            q63 q63VarM = hkVar.m();
            String str8 = hkVar.a;
            q63VarM.getClass();
            rf8Var7 = new rf8(q63VarM, 5, true, str8, syncOption == SyncOption.WIFI);
        } else {
            rf8Var7 = null;
        }
        if (hkVar.B().j()) {
            q63 q63VarB = hkVar.B();
            String str9 = hkVar.a;
            q63VarB.getClass();
            rf8Var8 = new rf8(q63VarB, 8, true, str9, syncOption == SyncOption.WIFI);
        } else {
            rf8Var8 = null;
        }
        LocalMetadata localMetadataU = hkVar.u();
        LocalMetadata localMetadataFrom = localMetadataU == null ? LocalMetadata.Companion.from(jiVar, hkVar.l()) : localMetadataU;
        rf8 rf8Var9 = rf8Var;
        rf8 rf8Var10 = rf8Var2;
        rf8 rf8Var11 = rf8Var3;
        rf8 rf8Var12 = rf8Var4;
        rf8 rf8Var13 = rf8Var5;
        rf8 rf8Var14 = rf8Var6;
        rf8 rf8Var15 = rf8Var7;
        rf8 rf8Var16 = rf8Var8;
        Iterator it = ((ArrayList) x50.p0(new rf8[]{rf8Var9, rf8Var10, rf8Var11, rf8Var12, rf8Var13, rf8Var14, rf8Var15, rf8Var16})).iterator();
        long jA = 0;
        while (it.hasNext()) {
            jA = ((rf8) it.next()).a() + jA;
        }
        Iterator it2 = ((ArrayList) x50.p0(new rf8[]{rf8Var12, rf8Var13, rf8Var14, rf8Var15})).iterator();
        long jA2 = 0;
        while (it2.hasNext()) {
            jA2 = ((rf8) it2.next()).a() + jA2;
        }
        this.e = new mz(rf8Var9, rf8Var10, rf8Var11, rf8Var12, rf8Var13, rf8Var14, rf8Var15, rf8Var16, localMetadataFrom, jA, jA2);
        LocalMetadata localMetadataU2 = this.c.u();
        this.f = localMetadataU2 == null ? LocalMetadata.Companion.from(this.d, this.c.l()) : localMetadataU2;
        this.g = new CopyOnWriteArrayList();
        this.l = new xz();
        this.m = new mk0(this.a);
    }

    public static final zf8 b(a00 a00Var, ConcurrentHashMap concurrentHashMap, kh6 kh6Var, long j, kh6 kh6Var2, gz gzVar, rf8 rf8Var) {
        nz nzVar = new nz(concurrentHashMap, gzVar, kh6Var, a00Var, j, kh6Var2);
        xz xzVar = a00Var.l;
        p93 p93Var = p93.a;
        String strC = p93.c(Long.valueOf(rf8Var.a()));
        vr6 vr6Var = vr6.INSTANCE;
        String str = rf8Var.h;
        vr6.i$default(vr6Var, "AppUploadTask", eq3.l("Uploading ", str, " (", strC, ")"), null, 4, null);
        tb1 tb1Var = tb1.a;
        ag8 ag8VarD = qb1.c().d(rf8Var);
        a00Var.g.add(ag8VarD);
        String str2 = rf8Var.f;
        if (str2 != null && str2.length() != 0) {
            ag8VarD.getClass();
            ag8VarD.b = str2;
        }
        lm lmVar = new lm(nzVar, 2);
        ag8VarD.getClass();
        ag8VarD.g = lmVar;
        zf8 zf8VarC = ag8VarD.c();
        if (zf8VarC.a()) {
            nzVar.invoke(Long.valueOf(rf8Var.a()));
        }
        if (zf8VarC.c()) {
            xzVar.a = dj7.k(a00Var.d.getName(), ": ", zf8VarC.b());
            xzVar.b = zf8VarC.c;
        }
        if (zf8VarC.a()) {
            vr6.i$default(vr6Var, "AppUploadTask", xs1.j("Uploaded ", str), null, 4, null);
        }
        return zf8VarC;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    public final boolean a(iu iuVar, long j) {
        Long lValueOf;
        String str;
        Object next;
        if (!this.b.u) {
            ArrayList arrayListC = this.a.c();
            if (arrayListC != null) {
                Iterator it = arrayListC.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((AppBackupLimitItem) next).getAppPart() != iuVar);
                AppBackupLimitItem appBackupLimitItem = (AppBackupLimitItem) next;
                if (appBackupLimitItem != null) {
                    lValueOf = Long.valueOf(appBackupLimitItem.getCloudLimitBytes());
                } else {
                    lValueOf = null;
                }
            } else {
                lValueOf = null;
            }
            long jH = io4.h(lValueOf);
            if (jH > 0 && j > jH) {
                p93 p93Var = p93.a;
                String strC = p93.c(Long.valueOf(j));
                String strC2 = p93.c(Long.valueOf(jH));
                String strC3 = p93.c(Long.valueOf(j - jH));
                vr6 vr6Var = vr6.INSTANCE;
                StringBuilder sb = new StringBuilder();
                sb.append(iuVar);
                sb.append(": Skipped due to limit set by user (size=");
                sb.append(strC);
                sb.append(", limit=");
                sb.append(strC2);
                vr6Var.e("AppUploadTask", eq3.n(sb, ", diff=", strC3, ")"), vr6.a.YELLOW);
                StringBuilder sb2 = new StringBuilder();
                xz xzVar = this.l;
                String str2 = xzVar.c;
                if (str2 == null || str2.length() == 0) {
                    str = this.d.getName() + ": ";
                } else {
                    str = ", ";
                }
                sb2.append(str);
                sb2.append(iu.toDisplayString$default(iuVar, false, 1, null) + " (" + strC + "/" + strC2 + ")");
                xzVar.c = sb2.toString();
                return false;
            }
        }
        return true;
    }

    public final boolean c() {
        xz xzVar = this.l;
        return !((xzVar.a == null && xzVar.c == null && xzVar.d == null) || xzVar.a()) || this.k;
    }
}
