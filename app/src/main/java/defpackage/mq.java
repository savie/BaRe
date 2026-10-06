package defpackage;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mq {
    public final jz a;
    public final c40 b;
    public final String c;
    public final zn7 d;
    public final ji e;
    public final hq f;
    public final CloudMetadata g;
    public final CopyOnWriteArrayList h;
    public boolean i;
    public final kq j;
    public final nm6 k;
    public pv l;

    /* JADX WARN: Code duplicated, block: B:59:0x01ac  */
    public mq(jz jzVar, c40 c40Var, String str, AppCloudBackup appCloudBackup, zn7 zn7Var) {
        fo2 fo2Var;
        fo2 fo2Var2;
        fo2 fo2Var3;
        fo2 fo2Var4;
        fo2 fo2Var5;
        fo2 fo2Var6;
        fo2 fo2Var7;
        fo2 fo2Var8;
        fo2 fo2Var9;
        str.getClass();
        appCloudBackup.getClass();
        zn7Var.getClass();
        this.a = jzVar;
        this.b = c40Var;
        this.c = str;
        this.d = zn7Var;
        ji jiVar = jzVar.b;
        this.e = jiVar;
        String backupId = appCloudBackup.getBackupId();
        CloudMetadata metadata = appCloudBackup.getMetadata();
        hk hkVar = new hk(backupId, jiVar.getPackageName(), true);
        List list = jzVar.c;
        if (wx3.o(list) && metadata.hasApk()) {
            q63 q63VarC = hkVar.c();
            q63VarC.getClass();
            String apkLink = metadata.getApkLink();
            apkLink.getClass();
            fo2Var = new fo2(apkLink, 1, io4.h(metadata.getApkSize()), q63VarC);
        } else {
            fo2Var = null;
        }
        iu iuVar = iu.APP;
        if (list.contains(iuVar) && metadata.hasSplitApks()) {
            q63 q63VarC2 = hkVar.C();
            q63VarC2.getClass();
            String splitsLink = metadata.getSplitsLink();
            splitsLink.getClass();
            fo2Var2 = new fo2(splitsLink, 2, io4.h(metadata.getSplitsSize()), q63VarC2);
        } else {
            fo2Var2 = null;
        }
        if (list.contains(iuVar) && metadata.hasSharedLibs()) {
            q63 q63VarZ = hkVar.z();
            q63VarZ.getClass();
            String sharedLibsLink = metadata.getSharedLibsLink();
            sharedLibsLink.getClass();
            fo2Var3 = new fo2(sharedLibsLink, 3, io4.h(metadata.getSharedLibsSize()), q63VarZ);
        } else {
            fo2Var3 = null;
        }
        if (list.contains(iu.DATA) && metadata.hasData()) {
            q63 q63VarG = hkVar.g();
            q63VarG.getClass();
            String dataLink = metadata.getDataLink();
            dataLink.getClass();
            fo2Var4 = new fo2(dataLink, 4, io4.h(metadata.getDataSize()), q63VarG);
        } else {
            fo2Var4 = null;
        }
        if (list.contains(iu.EXTDATA) && metadata.hasExtData()) {
            q63 q63VarN = hkVar.n();
            q63VarN.getClass();
            String extDataLink = metadata.getExtDataLink();
            extDataLink.getClass();
            fo2Var5 = new fo2(extDataLink, 6, io4.h(metadata.getExtDataSize()), q63VarN);
        } else {
            fo2Var5 = null;
        }
        if (list.contains(iu.MEDIA) && metadata.hasMedia()) {
            q63 q63VarQ = hkVar.q();
            q63VarQ.getClass();
            String mediaLink = metadata.getMediaLink();
            mediaLink.getClass();
            fo2Var6 = new fo2(mediaLink, 7, io4.h(metadata.getMediaSize()), q63VarQ);
        } else {
            fo2Var6 = null;
        }
        if (list.contains(iu.EXPANSION) && metadata.hasExpansion()) {
            q63 q63VarM = hkVar.m();
            q63VarM.getClass();
            String expLink = metadata.getExpLink();
            expLink.getClass();
            fo2Var7 = new fo2(expLink, 5, io4.h(metadata.getExpSize()), q63VarM);
        } else {
            fo2Var7 = null;
        }
        if ((jzVar.e || jzVar.f) && metadata.hasSpecialData()) {
            q63 q63VarB = hkVar.B();
            q63VarB.getClass();
            String specialDataLink = metadata.getSpecialDataLink();
            if (specialDataLink == null) {
                fo2Var8 = null;
            } else {
                String str2 = specialDataLink.length() > 0 ? specialDataLink : null;
                if (str2 == null) {
                    fo2Var8 = null;
                } else {
                    fo2Var8 = new fo2(str2, 8, io4.h(metadata.getSpecialDataSize()), q63VarB);
                }
            }
            fo2Var9 = fo2Var8;
        } else {
            fo2Var9 = null;
        }
        ji jiVar2 = jzVar.b;
        fo2 fo2Var10 = fo2Var2;
        Iterator it = ((ArrayList) x50.p0(new fo2[]{fo2Var, fo2Var10, fo2Var3, fo2Var4, fo2Var5, fo2Var6, fo2Var7, fo2Var9})).iterator();
        fo2 fo2Var11 = fo2Var9;
        long j = 0;
        while (it.hasNext()) {
            j += ((fo2) it.next()).c;
        }
        Iterator it2 = ((ArrayList) x50.p0(new fo2[]{fo2Var4, fo2Var5, fo2Var6, fo2Var7})).iterator();
        long j2 = 0;
        while (it2.hasNext()) {
            j2 += ((fo2) it2.next()).c;
        }
        this.f = new hq(jiVar2, metadata, fo2Var, fo2Var10, fo2Var3, fo2Var4, fo2Var5, fo2Var6, fo2Var7, fo2Var11, j, j2);
        CloudMetadata metadata2 = appCloudBackup.getMetadata();
        if (metadata2 == null) {
            f6.g(xs1.j("CloudMetadata null for ", this.e.asString()));
            throw null;
        }
        this.g = metadata2;
        this.h = new CopyOnWriteArrayList();
        this.j = new kq(this);
        this.k = new nm6(this.a);
    }

    public final boolean a(fo2 fo2Var) {
        boolean z;
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "AppDownloadTask", "Checking download for ".concat(fo2Var.a()), null, 4, null);
        q63 q63Var = fo2Var.d;
        if (q63Var.j() && q63Var.A() == fo2Var.c) {
            vr6.i$default(vr6Var, "AppDownloadTask", "Skipped downloading, cloud copy available on device", null, 4, null);
            return false;
        }
        ji jiVar = this.e;
        if (!jiVar.isInstalled() || !jiVar.isInstalled()) {
            return true;
        }
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("KEY_BACKUP_APP_CACHE", false);
            try {
                SharedPreferences sharedPreferences2 = cz4.f;
                if (sharedPreferences2 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z = sharedPreferences2.getBoolean("backup_app_cache", z);
                int i = fo2Var.b;
                CloudMetadata cloudMetadata = this.g;
                switch (i) {
                    case 1:
                    case 2:
                    case 3:
                        String sourceDir = jiVar.getSourceDir();
                        if (sourceDir == null) {
                            return true;
                        }
                        long jA = new q63(sourceDir, 1).A();
                        Long apkSizeMirrored = cloudMetadata.getApkSizeMirrored();
                        String versionName = jiVar.getVersionName();
                        String str = versionName == null ? "Empty" : versionName;
                        Long versionCode = jiVar.getVersionCode();
                        long jLongValue = versionCode != null ? versionCode.longValue() : -1L;
                        List<String> splitSourceDirs = jiVar.getSplitSourceDirs();
                        boolean z2 = !(splitSourceDirs == null || splitSourceDirs.isEmpty());
                        List<yc7> sharedLibsInfos = jiVar.getSharedLibsInfos();
                        pg pgVar = new pg(str, jLongValue, z2, !(sharedLibsInfos == null || sharedLibsInfos.isEmpty()));
                        String versionName2 = cloudMetadata.getVersionName();
                        String str2 = versionName2 == null ? "Empty" : versionName2;
                        Long versionCode2 = cloudMetadata.getVersionCode();
                        return eq.a(jA, apkSizeMirrored, pgVar, new pg(str2, versionCode2 != null ? versionCode2.longValue() : -1L, cloudMetadata.hasSplitApks(), cloudMetadata.hasSharedLibs()), cloudMetadata.hasSplitApks(), cloudMetadata.hasSharedLibs());
                    case 4:
                        iu iuVar = iu.DATA;
                        String dataDir = jiVar.getDataDir();
                        long jH = io4.h(cloudMetadata.getDataBackupDate());
                        qx sizeInfo = jiVar.getSizeInfo();
                        return this.k.b(iuVar, dataDir, jH, io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getTotalDataSize(z)) : null), io4.h(cloudMetadata.getDataSizeMirrored()));
                    case 5:
                        iu iuVar2 = iu.EXPANSION;
                        String expansionDir = jiVar.getExpansionDir();
                        long jH2 = io4.h(cloudMetadata.getExpansionBackupDate());
                        qx sizeInfo2 = jiVar.getSizeInfo();
                        return this.k.b(iuVar2, expansionDir, jH2, io4.h(sizeInfo2 != null ? Long.valueOf(sizeInfo2.getExternalObbSize()) : null), io4.h(cloudMetadata.getExpSizeMirrored()));
                    case 6:
                        iu iuVar3 = iu.EXTDATA;
                        String externalDataDir = jiVar.getExternalDataDir();
                        long jH3 = io4.h(cloudMetadata.getExtDataBackupDate());
                        qx sizeInfo3 = jiVar.getSizeInfo();
                        return this.k.b(iuVar3, externalDataDir, jH3, io4.h(sizeInfo3 != null ? Long.valueOf(sizeInfo3.getExtDataSize(z)) : null), io4.h(cloudMetadata.getExtDataSizeMirrored()));
                    case 7:
                        iu iuVar4 = iu.MEDIA;
                        String mediaDir = jiVar.getMediaDir();
                        long jH4 = io4.h(cloudMetadata.getMediaBackupDate());
                        qx sizeInfo4 = jiVar.getSizeInfo();
                        return this.k.b(iuVar4, mediaDir, jH4, io4.h(sizeInfo4 != null ? Long.valueOf(sizeInfo4.getMediaSize()) : null), io4.h(cloudMetadata.getMediaSizeMirrored()));
                    default:
                        return true;
                }
            } catch (ClassCastException unused) {
            }
        } catch (ClassCastException unused2) {
            z = false;
        }
    }
}
