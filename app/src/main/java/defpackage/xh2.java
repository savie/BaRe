package defpackage;

import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.cloud.model.CloudResult;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class xh2 {
    public final zv1 a;
    public final jq6 b;

    public xh2(zv1 zv1Var) {
        this.a = zv1Var;
        gz7 gz7Var = gz7.WAITING;
        this.b = new jq6(10);
    }

    public static final boolean a(xh2 xh2Var, ArrayList arrayList, jh6 jh6Var) {
        try {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((String) obj).length() > 0) {
                    arrayList2.add(obj);
                }
            }
            xh2Var.b(arrayList2);
            return true;
        } catch (Exception e) {
            xh2Var.b.b = e;
            Log.e(xh2Var.d(), "deleteAppFromCloudSync: ", e);
            vr6 vr6Var = vr6.INSTANCE;
            vr6.e$default(vr6Var, xh2Var.d(), xs1.j("deleteAppFromCloudSync: ", e.getMessage()), null, 4, null);
            if (jh6Var.a >= 5) {
                return false;
            }
            vr6.i$default(vr6Var, xh2Var.d(), "Retrying delete file ids function", null, 4, null);
            Const.R();
            jh6Var.a++;
            return a(xh2Var, arrayList, jh6Var);
        }
    }

    public abstract boolean b(List list);

    public final jq6 c() {
        String specialDataLink;
        String expLink;
        String mediaLink;
        String extDataLink;
        String dataLink;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        gz7 gz7Var = gz7.WAITING;
        zv1 zv1Var = this.a;
        boolean z = zv1Var instanceof id1;
        jq6 jq6Var = this.b;
        if (z) {
            id1 id1Var = (id1) zv1Var;
            List<AppCloudBackup> list = id1Var.m;
            if (!list.isEmpty()) {
                for (AppCloudBackup appCloudBackup : list) {
                    CloudMetadata metadata = appCloudBackup.getMetadata();
                    zc2 zc2Var = re3.a;
                    zc2 zc2VarA = re3.a(appCloudBackup.getMetadata().getAppId(), appCloudBackup.getBackupId());
                    oy7 oy7Var = id1Var.n;
                    if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                        d6.o();
                        return null;
                    }
                    int i = 0;
                    Exception e = null;
                    while (true) {
                        if (i >= 10) {
                            if (e != null) {
                                throw e;
                            }
                            throw new RuntimeException("Failed action with tag=deleteAppFromCloudSync after retries=10");
                        }
                        if (i > 0) {
                            Thread.sleep(30000L);
                        }
                        try {
                            tb1 tb1Var = tb1.a;
                            CloudResult cloudResultA = qb1.c().a(false);
                            if (cloudResultA instanceof si1) {
                                break;
                            }
                            try {
                                throw new RuntimeException("Unable to connect with the server: " + cloudResultA.getErrorMessage());
                            } catch (Exception e2) {
                                e = e2;
                            }
                        } catch (Exception e3) {
                            e = e3;
                        }
                        i++;
                        oy7Var = oy7Var;
                        zc2VarA = zc2VarA;
                        id1Var = id1Var;
                    }
                    zc2 zc2Var2 = zc2VarA;
                    oy7 oy7Var2 = oy7Var;
                    id1 id1Var2 = id1Var;
                    CloudMetadata cloudMetadataCopy$default = CloudMetadata.copy$default(metadata, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, -1, 3, null);
                    List list2 = oy7Var2.f;
                    List list3 = oy7Var2.f;
                    iu iuVar = iu.APP;
                    if (list2.contains(iuVar)) {
                        cloudMetadataCopy$default.removeApkDetails();
                        cloudMetadataCopy$default.removeSplitsDetails();
                        cloudMetadataCopy$default.removeSharedLibsDetails();
                    }
                    iu iuVar2 = iu.DATA;
                    if (list3.contains(iuVar2)) {
                        cloudMetadataCopy$default.removeDataDetails();
                    }
                    iu iuVar3 = iu.EXTDATA;
                    if (list3.contains(iuVar3)) {
                        cloudMetadataCopy$default.removeExtDataDetails();
                    }
                    iu iuVar4 = iu.MEDIA;
                    if (list3.contains(iuVar4)) {
                        cloudMetadataCopy$default.removeMediaDetails();
                    }
                    iu iuVar5 = iu.EXPANSION;
                    if (list3.contains(iuVar5)) {
                        cloudMetadataCopy$default.removeExpansionDetails();
                    }
                    boolean zHasBackups = cloudMetadataCopy$default.hasBackups();
                    if (!zHasBackups) {
                        cloudMetadataCopy$default.removeSpecialDataDetails();
                    }
                    if (zHasBackups) {
                        Log.d(d(), "deleteAppFromCloudSync: Some files removed, updating cloud details");
                        cf3.c(zc2Var2, cloudMetadataCopy$default);
                    } else {
                        Log.d(d(), "deleteAppFromCloudSync: Removing ref since all files removed");
                        cf3.c(zc2Var2, null);
                    }
                    ArrayList arrayList = new ArrayList();
                    if (list3.contains(iuVar)) {
                        String apkLink = metadata.getApkLink();
                        if (apkLink != null) {
                            arrayList.add(apkLink);
                        }
                        String splitsLink = metadata.getSplitsLink();
                        if (splitsLink != null) {
                            arrayList.add(splitsLink);
                        }
                        String sharedLibsLink = metadata.getSharedLibsLink();
                        if (sharedLibsLink != null) {
                            arrayList.add(sharedLibsLink);
                        }
                    }
                    if (list3.contains(iuVar2) && (dataLink = metadata.getDataLink()) != null) {
                        arrayList.add(dataLink);
                    }
                    if (list3.contains(iuVar3) && (extDataLink = metadata.getExtDataLink()) != null) {
                        arrayList.add(extDataLink);
                    }
                    if (list3.contains(iuVar4) && (mediaLink = metadata.getMediaLink()) != null) {
                        arrayList.add(mediaLink);
                    }
                    if (list3.contains(iuVar5) && (expLink = metadata.getExpLink()) != null) {
                        arrayList.add(expLink);
                    }
                    if (!zHasBackups && (specialDataLink = metadata.getSpecialDataLink()) != null) {
                        arrayList.add(specialDataLink);
                    }
                    a(this, arrayList, new jh6());
                    id1Var = id1Var2;
                }
            }
        } else {
            if (!(zv1Var instanceof jd1)) {
                q.j();
                return null;
            }
            if (!((jd1) zv1Var).m.isEmpty()) {
                try {
                    if (!b(((jd1) zv1Var).m)) {
                        throw new IOException("Unable to delete " + ((jd1) zv1Var).m.size() + " cloud files");
                    }
                } catch (Exception e4) {
                    jq6Var.b = e4;
                    Log.e(d(), "executeTask: ", e4);
                    vr6.e$default(vr6.INSTANCE, d(), xs1.j("executeTask: ", e4.getMessage()), null, 4, null);
                }
            }
        }
        gz7 gz7Var2 = gz7.WAITING;
        return jq6Var;
    }

    public abstract String d();
}
