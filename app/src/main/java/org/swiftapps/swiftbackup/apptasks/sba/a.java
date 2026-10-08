package org.swiftapps.swiftbackup.apptasks.sba;

import defpackage.gv7;
import defpackage.io4;
import defpackage.ji;
import defpackage.nq7;
import defpackage.qx;
import defpackage.w14;
import defpackage.x50;
import defpackage.xp1;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static String a(ji jiVar, boolean z, boolean z2, xp1 xp1Var) {
        String deDataDir;
        jiVar.getClass();
        xp1Var.getClass();
        gv7 gv7Var = w14.a;
        com.google.gson.a aVarC = w14.c();
        String packageName = jiVar.getPackageName();
        String appId = jiVar.getAppId();
        String versionName = jiVar.getVersionName();
        Long versionCode = jiVar.getVersionCode();
        String strName = xp1Var.name();
        qx sizeInfo = jiVar.getSizeInfo();
        String str = null;
        long jH = io4.h(sizeInfo != null ? Long.valueOf(sizeInfo.getDataSize()) : null);
        qx sizeInfo2 = jiVar.getSizeInfo();
        long jH2 = io4.h(sizeInfo2 != null ? Long.valueOf(sizeInfo2.getDeDataSize()) : null);
        String dataDir = jiVar.getDataDir();
        String str2 = (dataDir == null || nq7.j0(dataDir)) ? null : "data";
        if (z && (deDataDir = jiVar.getDeDataDir()) != null && !nq7.j0(deDataDir)) {
            str = "data_de";
        }
        return aVarC.i(new SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata(null, 0, packageName, appId, versionName, versionCode, z2, z, strName, true, jH, jH2, x50.p0(new String[]{str2, str}), 3, null));
    }
}
