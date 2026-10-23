package defpackage;

import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.swiftapps.swiftbackup.settings.f;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qk0 {
    public final hz a;
    public final q63 b;
    public final boolean c;
    public final String d;
    public final tl e;
    public final gj f;
    public final boolean g;
    public final ji h;
    public final MultipleBackupStrategy.Representation i;
    public final mk0 j;
    public final gv7 k;
    public final gv7 l;
    public final gv7 m;
    public final gv7 n;
    public final gv7 o;
    public final gv7 p;
    public final gv7 q;
    public final gv7 r;
    public final gv7 s;
    public final gv7 t;
    public final gv7 u;
    public final gv7 v;
    public final gv7 w;
    public final gv7 x;

    public qk0(hz hzVar, q63 q63Var, boolean z, String str, tl tlVar, gj gjVar, boolean z2) {
        tlVar.getClass();
        this.a = hzVar;
        this.b = q63Var;
        this.c = z;
        this.d = str;
        this.e = tlVar;
        this.f = gjVar;
        this.g = z2;
        this.h = hzVar.b;
        this.i = f.a(hzVar.i);
        this.j = new mk0(hzVar);
        final int i = 0;
        this.k = new gv7(new bt3(this) { // from class: pk0
            public final /* synthetic */ qk0 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                ArrayList arrayList;
                int i2 = i;
                ArrayList arrayList2 = null;
                qk0 qk0Var = this.b;
                switch (i2) {
                    case 0:
                        ArrayList arrayList3 = new ArrayList();
                        List list = (List) qk0Var.w.getValue();
                        if (list != null) {
                            arrayList = new ArrayList();
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                String str2 = (String) ((gm) it.next()).a.H.getValue();
                                if (str2 != null) {
                                    arrayList.add(str2);
                                }
                            }
                        } else {
                            arrayList = null;
                        }
                        RandomAccess randomAccess = ov2.a;
                        RandomAccess randomAccess2 = arrayList;
                        if (arrayList == null) {
                            randomAccess2 = randomAccess;
                        }
                        arrayList3.addAll(randomAccess2);
                        if (ji8.r(qk0Var.a.d)) {
                            List list2 = (List) qk0Var.x.getValue();
                            if (list2 != null) {
                                arrayList2 = new ArrayList();
                                Iterator it2 = list2.iterator();
                                while (it2.hasNext()) {
                                    String backupTag = ((AppCloudBackup) it2.next()).getBackupTag();
                                    if (backupTag != null) {
                                        arrayList2.add(backupTag);
                                    }
                                }
                            }
                            if (arrayList2 != null) {
                                randomAccess = arrayList2;
                            }
                            arrayList3.addAll(randomAccess);
                        }
                        return eq3.p(arrayList3);
                    default:
                        iu iuVar = iu.DATA;
                        qx sizeInfo = qk0Var.h.getSizeInfo();
                        return Boolean.valueOf(qk0Var.n(iuVar, io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getTotalDataSize(qk0Var.a.g)) : null)));
                }
            }
        });
        this.l = new gv7(new lf(this, 8));
        this.m = new gv7(new ej(this, 8));
        this.n = new gv7(new fj(this, 11));
        this.o = new gv7(new gj(this, 11));
        final int i2 = 1;
        this.p = new gv7(new bt3(this) { // from class: pk0
            public final /* synthetic */ qk0 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                ArrayList arrayList;
                int i3 = i2;
                ArrayList arrayList2 = null;
                qk0 qk0Var = this.b;
                switch (i3) {
                    case 0:
                        ArrayList arrayList3 = new ArrayList();
                        List list = (List) qk0Var.w.getValue();
                        if (list != null) {
                            arrayList = new ArrayList();
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                String str2 = (String) ((gm) it.next()).a.H.getValue();
                                if (str2 != null) {
                                    arrayList.add(str2);
                                }
                            }
                        } else {
                            arrayList = null;
                        }
                        RandomAccess randomAccess = ov2.a;
                        RandomAccess randomAccess2 = arrayList;
                        if (arrayList == null) {
                            randomAccess2 = randomAccess;
                        }
                        arrayList3.addAll(randomAccess2);
                        if (ji8.r(qk0Var.a.d)) {
                            List list2 = (List) qk0Var.x.getValue();
                            if (list2 != null) {
                                arrayList2 = new ArrayList();
                                Iterator it2 = list2.iterator();
                                while (it2.hasNext()) {
                                    String backupTag = ((AppCloudBackup) it2.next()).getBackupTag();
                                    if (backupTag != null) {
                                        arrayList2.add(backupTag);
                                    }
                                }
                            }
                            if (arrayList2 != null) {
                                randomAccess = arrayList2;
                            }
                            arrayList3.addAll(randomAccess);
                        }
                        return eq3.p(arrayList3);
                    default:
                        iu iuVar = iu.DATA;
                        qx sizeInfo = qk0Var.h.getSizeInfo();
                        return Boolean.valueOf(qk0Var.n(iuVar, io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getTotalDataSize(qk0Var.a.g)) : null)));
                }
            }
        });
        this.q = new gv7(new bk(this, 7));
        this.r = new gv7(new ck(this, 9));
        this.s = new gv7(new dk(this, 11));
        this.t = new gv7(new ek(this, 10));
        this.u = new gv7(new ah(this, 10));
        this.v = new gv7(new bh(this, 10));
        this.w = new gv7(new d76(this, 8));
        this.x = new gv7(new kf(this, 10));
    }

    public final boolean a() {
        return wx3.p(this.a.c) && !j() && ((Boolean) this.l.getValue()).booleanValue() && ((Boolean) this.p.getValue()).booleanValue();
    }

    public final boolean b() {
        return wx3.q(this.a.c) && !j() && ((Boolean) this.n.getValue()).booleanValue() && ((Boolean) this.r.getValue()).booleanValue();
    }

    public final boolean c() {
        return wx3.r(this.a.c) && !j() && ((Boolean) this.m.getValue()).booleanValue() && ((Boolean) this.q.getValue()).booleanValue();
    }

    public final boolean d() {
        return wx3.s(this.a.c) && !j() && ((Boolean) this.o.getValue()).booleanValue() && ((Boolean) this.s.getValue()).booleanValue();
    }

    public final ok0 e() {
        hz hzVar = this.a;
        boolean zT = ji8.t(hzVar.d);
        String strD = fk.d(Calendar.getInstance().getTimeInMillis(), (List) this.k.getValue());
        ji jiVar = this.h;
        hk hkVar = new hk(strD, jiVar.getPackageName(), zT);
        return new ok0(hkVar, wx3.o(hzVar.c), a(), c(), b(), d(), LocalMetadata.Companion.from(jiVar, hkVar.l()), false);
    }

    public final tu0 f() {
        gm gmVarH;
        LocalMetadata localMetadata;
        boolean z;
        hk hkVar;
        hk hkVar2;
        hk hkVar3;
        String strD;
        AppCloudBackup appCloudBackupG;
        CloudMetadata metadata;
        hz hzVar = this.a;
        List list = hzVar.c;
        List list2 = hzVar.d;
        if (!ji8.t(list2) ? (gmVarH = h()) == null || (localMetadata = gmVarH.b) == null || !localMetadata.isProtectedBackup() : (appCloudBackupG = g()) == null || (metadata = appCloudBackupG.getMetadata()) == null || !metadata.isProtectedBackup()) {
            vr6.i$default(vr6.INSTANCE, "BackupPlan", "Latest backup is protected. New backup will be created only if there is any change.", null, 4, null);
            if (wx3.o(list) && i()) {
                return e();
            }
            if (wx3.n(list)) {
                if (j()) {
                    return new nk0("App is blacklisted with NoData mode.");
                }
                if (a() && k()) {
                    return e();
                }
                if (c() && m()) {
                    return e();
                }
                if (b() && l()) {
                    return e();
                }
                if (d() && o()) {
                    return e();
                }
            }
            return new nk0("No change in APK or any selected Data parts");
        }
        boolean zT = ji8.t(list2);
        gv7 gv7Var = this.k;
        ji jiVar = this.h;
        String backupId = null;
        if (zT) {
            AppCloudBackup appCloudBackupG2 = g();
            backupId = appCloudBackupG2 != null ? appCloudBackupG2.getBackupId() : null;
            boolean z2 = backupId == null || backupId.length() == 0;
            z = !z2;
            if (!z2) {
                vr6.d$default(vr6.INSTANCE, "BackupPlan", "Will compare and update the Cloud backup if needed", null, 4, null);
            }
            AppCloudBackup appCloudBackupG3 = g();
            if (appCloudBackupG3 == null || (strD = appCloudBackupG3.getBackupId()) == null) {
                Parcelable.Creator<hk> creator = hk.CREATOR;
                strD = fk.d(Calendar.getInstance().getTimeInMillis(), (List) gv7Var.getValue());
            }
            hkVar2 = new hk(strD, jiVar.getPackageName(), true);
        } else {
            gm gmVarH2 = h();
            if (gmVarH2 != null && (hkVar3 = gmVarH2.a) != null) {
                backupId = hkVar3.a;
            }
            boolean z3 = backupId == null || backupId.length() == 0;
            z = !z3;
            if (!z3) {
                vr6.d$default(vr6.INSTANCE, "BackupPlan", "Will compare and update the Local backup if needed", null, 4, null);
            }
            gm gmVarH3 = h();
            if (gmVarH3 == null || (hkVar = gmVarH3.a) == null) {
                hkVar = new hk(fk.d(Calendar.getInstance().getTimeInMillis(), (List) gv7Var.getValue()), jiVar.getPackageName(), false);
            }
            hkVar2 = hkVar;
        }
        hk hkVar4 = hkVar2;
        boolean z4 = z;
        boolean z5 = wx3.o(list) && i();
        boolean z6 = a() && k();
        boolean z7 = c() && m();
        boolean z8 = b() && l();
        boolean z9 = d() && o();
        LocalMetadata localMetadataU = hkVar4.u();
        if (localMetadataU == null) {
            localMetadataU = LocalMetadata.Companion.from(jiVar, hkVar4.l());
        }
        return new ok0(hkVar4, z5, z6, z7, z8, z9, localMetadataU, z4);
    }

    public final AppCloudBackup g() {
        return (AppCloudBackup) this.v.getValue();
    }

    public final gm h() {
        return (gm) this.u.getValue();
    }

    public final boolean i() {
        CloudMetadata metadata;
        ji jiVar = this.h;
        String versionName = jiVar.getVersionName();
        if (versionName == null) {
            versionName = "Empty";
        }
        Long versionCode = jiVar.getVersionCode();
        long jLongValue = versionCode != null ? versionCode.longValue() : -1L;
        List<String> splitSourceDirs = jiVar.getSplitSourceDirs();
        boolean z = !(splitSourceDirs == null || splitSourceDirs.isEmpty());
        List<yc7> sharedLibsInfos = jiVar.getSharedLibsInfos();
        pg pgVar = new pg(versionName, jLongValue, z, !(sharedLibsInfos == null || sharedLibsInfos.isEmpty()));
        boolean zT = ji8.t(this.a.d);
        q63 q63Var = this.b;
        if (zT) {
            AppCloudBackup appCloudBackupG = g();
            if (appCloudBackupG != null && (metadata = appCloudBackupG.getMetadata()) != null && metadata.hasApk()) {
                long jA = q63Var.A();
                Long apkSizeMirrored = metadata.getApkSizeMirrored();
                String versionName2 = metadata.getVersionName();
                String str = versionName2 == null ? "Empty" : versionName2;
                Long versionCode2 = metadata.getVersionCode();
                return eq.a(jA, apkSizeMirrored, pgVar, new pg(str, versionCode2 != null ? versionCode2.longValue() : -1L, metadata.hasSplitApks(), metadata.hasSharedLibs()), metadata.hasSplitApks(), metadata.hasSharedLibs());
            }
        } else {
            gm gmVarH = h();
            if (gmVarH != null) {
                hk hkVar = gmVarH.a;
                if (hkVar.c().j()) {
                    return eq.a(q63Var.A(), Long.valueOf(hkVar.c().A()), pgVar, ng.a(hkVar.c(), false), hkVar.C().j(), hkVar.z().j());
                }
            }
        }
        return true;
    }

    public final boolean j() {
        return ((Boolean) this.t.getValue()).booleanValue();
    }

    public final boolean k() {
        long jH;
        long jH2;
        long jH3;
        String dataPasswordHash;
        hk hkVar;
        CloudMetadata metadata;
        hz hzVar = this.a;
        if (ji8.t(hzVar.d)) {
            AppCloudBackup appCloudBackupG = g();
            if (appCloudBackupG == null || (metadata = appCloudBackupG.getMetadata()) == null || !metadata.hasData()) {
                return true;
            }
            jH = io4.h(metadata.getDataBackupDate());
            jH2 = io4.h(metadata.getDataSizeMirrored());
            jH3 = io4.h(metadata.getDataSize());
            dataPasswordHash = metadata.getDataPasswordHash();
        } else {
            gm gmVarH = h();
            if (gmVarH == null || !gmVarH.a.g().j()) {
                return true;
            }
            LocalMetadata localMetadata = gmVarH.b;
            jH = io4.h(localMetadata.getDataBackupDate());
            jH2 = io4.h(localMetadata.getDataSizeMirrored());
            jH3 = io4.h(localMetadata.getDataBackupSize());
            dataPasswordHash = localMetadata.getDataPasswordHash();
        }
        String str = dataPasswordHash;
        long j = jH;
        long j2 = jH2;
        long j3 = jH3;
        iu iuVar = iu.DATA;
        ji jiVar = this.h;
        String dataDir = jiVar.getDataDir();
        gm gmVarH2 = h();
        q63 q63VarG = (gmVarH2 == null || (hkVar = gmVarH2.a) == null) ? null : hkVar.g();
        qx sizeInfo = jiVar.getSizeInfo();
        return this.j.a(iuVar, dataDir, q63VarG, j, io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getTotalDataSize(hzVar.g)) : null), j2, j3, this.d, str);
    }

    public final boolean l() {
        long jH;
        long jH2;
        long jH3;
        hk hkVar;
        CloudMetadata metadata;
        if (ji8.t(this.a.d)) {
            AppCloudBackup appCloudBackupG = g();
            if (appCloudBackupG == null || (metadata = appCloudBackupG.getMetadata()) == null || !metadata.hasExpansion()) {
                return true;
            }
            jH = io4.h(metadata.getExpansionBackupDate());
            jH2 = io4.h(metadata.getExpSizeMirrored());
            jH3 = io4.h(metadata.getExpSize());
        } else {
            gm gmVarH = h();
            if (gmVarH == null || !gmVarH.a.m().j()) {
                return true;
            }
            LocalMetadata localMetadata = gmVarH.b;
            jH = io4.h(localMetadata.getExpansionBackupDate());
            jH2 = io4.h(localMetadata.getExpSizeMirrored());
            jH3 = io4.h(localMetadata.getExpBackupSize());
        }
        long j = jH;
        long j2 = jH2;
        long j3 = jH3;
        iu iuVar = iu.EXPANSION;
        ji jiVar = this.h;
        String expansionDir = jiVar.getExpansionDir();
        gm gmVarH2 = h();
        q63 q63VarM = (gmVarH2 == null || (hkVar = gmVarH2.a) == null) ? null : hkVar.m();
        qx sizeInfo = jiVar.getSizeInfo();
        return this.j.a(iuVar, expansionDir, q63VarM, j, io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getExternalObbSize()) : null), j2, j3, null, null);
    }

    public final boolean m() {
        long jH;
        long jH2;
        long jH3;
        String extDataPasswordHash;
        hk hkVar;
        CloudMetadata metadata;
        hz hzVar = this.a;
        if (ji8.t(hzVar.d)) {
            AppCloudBackup appCloudBackupG = g();
            if (appCloudBackupG == null || (metadata = appCloudBackupG.getMetadata()) == null || !metadata.hasExtData()) {
                return true;
            }
            jH = io4.h(metadata.getExtDataBackupDate());
            jH2 = io4.h(metadata.getExtDataSizeMirrored());
            jH3 = io4.h(metadata.getExtDataSize());
            extDataPasswordHash = metadata.getExtDataPasswordHash();
        } else {
            gm gmVarH = h();
            if (gmVarH == null || !gmVarH.a.n().j()) {
                return true;
            }
            LocalMetadata localMetadata = gmVarH.b;
            jH = io4.h(localMetadata.getExtDataBackupDate());
            jH2 = io4.h(localMetadata.getExtDataSizeMirrored());
            jH3 = io4.h(localMetadata.getExtDataBackupSize());
            extDataPasswordHash = localMetadata.getExtDataPasswordHash();
        }
        String str = extDataPasswordHash;
        long j = jH;
        long j2 = jH2;
        long j3 = jH3;
        iu iuVar = iu.EXTDATA;
        ji jiVar = this.h;
        String externalDataDir = jiVar.getExternalDataDir();
        gm gmVarH2 = h();
        q63 q63VarN = (gmVarH2 == null || (hkVar = gmVarH2.a) == null) ? null : hkVar.n();
        qx sizeInfo = jiVar.getSizeInfo();
        return this.j.a(iuVar, externalDataDir, q63VarN, j, io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getExtDataSize(hzVar.g)) : null), j2, j3, this.d, str);
    }

    public final boolean n(iu iuVar, long j) {
        AppBackupLimitItem appBackupLimitItem;
        long jH;
        Object next;
        hz hzVar = this.a;
        ji jiVar = hzVar.b;
        boolean zBooleanValue = ((Boolean) this.f.invoke()).booleanValue();
        tl tlVar = this.e;
        if (zBooleanValue && j > 4294967296L) {
            p93 p93Var = p93.a;
            String strC = p93.c(Long.valueOf(j));
            String strC2 = p93.c(4294967296L);
            String strC3 = p93.c(Long.valueOf(j - 4294967296L));
            StringBuilder sb = new StringBuilder();
            sb.append(iuVar);
            sb.append(": Skipped as current storage is FAT32 format with ~4GB max file size limit.(size=");
            sb.append(strC);
            sb.append(", limit=");
            sb.append(strC2);
            vr6.INSTANCE.e("BackupPlan", eq3.n(sb, ", diff=", strC3, ")"), vr6.a.YELLOW);
            String str = iu.toDisplayString$default(iuVar, false, 1, null) + " (" + strC + "/" + strC2 + ")";
            String str2 = tlVar.f;
            tlVar.f = (str2 == null || str2.length() == 0) ? dj7.k(jiVar.getName(), ": ", str) : dj7.k(str2, ", ", str);
            return false;
        }
        if (this.g) {
            return true;
        }
        ArrayList arrayListC = hzVar.c();
        if (arrayListC != null) {
            Iterator it = arrayListC.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((AppBackupLimitItem) next).getAppPart() != iuVar);
            appBackupLimitItem = (AppBackupLimitItem) next;
        } else {
            appBackupLimitItem = null;
        }
        boolean zT = ji8.t(hzVar.d);
        if (zT) {
            jH = io4.h(appBackupLimitItem != null ? Long.valueOf(appBackupLimitItem.getCloudLimitBytes()) : null);
        } else {
            jH = io4.h(appBackupLimitItem != null ? Long.valueOf(appBackupLimitItem.getLocalLimitBytes()) : null);
        }
        if (jH <= 0 || j <= jH) {
            return true;
        }
        p93 p93Var2 = p93.a;
        String strC4 = p93.c(Long.valueOf(j));
        String strC5 = p93.c(Long.valueOf(jH));
        String strC6 = p93.c(Long.valueOf(j - jH));
        vr6 vr6Var = vr6.INSTANCE;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(iuVar);
        sb2.append(": Skipped due to limit set by user (size=");
        sb2.append(strC4);
        sb2.append(", limit=");
        sb2.append(strC5);
        vr6Var.e("BackupPlan", eq3.n(sb2, ", diff=", strC6, ")"), vr6.a.YELLOW);
        String str3 = iu.toDisplayString$default(iuVar, false, 1, null) + " (" + strC4 + "/" + strC5 + ")";
        String str4 = zT ? tlVar.e : tlVar.d;
        String strK = (str4 == null || str4.length() == 0) ? dj7.k(jiVar.getName(), ": ", str3) : dj7.k(str4, ", ", str3);
        if (zT) {
            tlVar.e = strK;
            return false;
        }
        tlVar.d = strK;
        return false;
    }

    public final boolean o() {
        long jH;
        long jH2;
        long jH3;
        String mediaPasswordHash;
        hk hkVar;
        CloudMetadata metadata;
        if (ji8.t(this.a.d)) {
            AppCloudBackup appCloudBackupG = g();
            if (appCloudBackupG == null || (metadata = appCloudBackupG.getMetadata()) == null || !metadata.hasMedia()) {
                return true;
            }
            jH = io4.h(metadata.getMediaBackupDate());
            jH2 = io4.h(metadata.getMediaSizeMirrored());
            jH3 = io4.h(metadata.getMediaSize());
            mediaPasswordHash = metadata.getMediaPasswordHash();
        } else {
            gm gmVarH = h();
            if (gmVarH == null || !gmVarH.a.q().j()) {
                return true;
            }
            LocalMetadata localMetadata = gmVarH.b;
            jH = io4.h(localMetadata.getMediaBackupDate());
            jH2 = io4.h(localMetadata.getMediaSizeMirrored());
            jH3 = io4.h(localMetadata.getMediaBackupSize());
            mediaPasswordHash = localMetadata.getMediaPasswordHash();
        }
        String str = mediaPasswordHash;
        long j = jH;
        long j2 = jH2;
        long j3 = jH3;
        iu iuVar = iu.MEDIA;
        ji jiVar = this.h;
        String mediaDir = jiVar.getMediaDir();
        gm gmVarH2 = h();
        q63 q63VarQ = (gmVarH2 == null || (hkVar = gmVarH2.a) == null) ? null : hkVar.q();
        qx sizeInfo = jiVar.getSizeInfo();
        return this.j.a(iuVar, mediaDir, q63VarQ, j, io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getMediaSize()) : null), j2, j3, this.d, str);
    }
}
