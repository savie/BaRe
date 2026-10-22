package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lk2 implements aj8 {
    public final /* synthetic */ mk2 a;

    public lk2(mk2 mk2Var) {
        this.a = mk2Var;
    }

    @Override // defpackage.aj8
    public final void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
        mk2 mk2Var = this.a;
        Log.e(mk2Var.b, "onCancelled: ", wc2Var.c());
        mk2Var.l.k(new yj2(xj2.NetworkError));
    }

    @Override // defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        String strN;
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        AppCloudBackups appCloudBackupsFromSnapshot = AppCloudBackups.Companion.fromSnapshot(eb2Var);
        mk2 mk2Var = this.a;
        ex6 ex6Var = mk2Var.l;
        ji jiVar = mk2Var.e;
        String str = null;
        if (jiVar == null) {
            pe4.F("app");
            throw null;
        }
        jiVar.setCloudBackups(appCloudBackupsFromSnapshot);
        if (appCloudBackupsFromSnapshot == null || !appCloudBackupsFromSnapshot.hasBackups()) {
            ex6Var.k(new yj2(xj2.NoBackup));
            return;
        }
        List<AppCloudBackup> backups = appCloudBackupsFromSnapshot.getBackups();
        ArrayList arrayList = new ArrayList(hl1.G0(backups, 10));
        for (Iterator it = backups.iterator(); it.hasNext(); it = it) {
            AppCloudBackup appCloudBackup = (AppCloudBackup) it.next();
            zc2 zc2Var = re3.a;
            zc2 zc2VarA = re3.a(appCloudBackup.getMetadata().getAppId(), appCloudBackup.getBackupId());
            if (!appCloudBackup.getMetadata().hasBackups()) {
                zc2VarA.i(str);
            }
            CloudMetadata metadata = appCloudBackup.getMetadata();
            dq dqVar = new dq(3);
            String str2 = (String) dqVar.invoke(Long.valueOf(metadata.getTotalApkSize()));
            String str3 = (String) dqVar.invoke(metadata.getDataSize());
            String str4 = (String) dqVar.invoke(metadata.getExtDataSize());
            String str5 = (String) dqVar.invoke(metadata.getMediaSize());
            String str6 = (String) dqVar.invoke(metadata.getExpSize());
            String str7 = (String) dqVar.invoke(Long.valueOf(metadata.getTotalSize()));
            if (appCloudBackup.getMetadata().getDateBackupUpdated() != null) {
                String strS = Const.s(io4.h(appCloudBackup.getMetadata().getDateBackupUpdated()));
                SwiftApp.Companion companion = SwiftApp.d;
                strN = SwiftApp.Companion.c().getString(R.string.updated) + ": " + strS + " (" + str7 + ")";
            } else {
                strN = u48.n(Const.s(appCloudBackup.getDateBackup()), " (", str7, ")");
            }
            String str8 = strN;
            String apkLink = metadata.getApkLink();
            if (apkLink == null || apkLink.length() == 0) {
                SwiftApp.Companion companion2 = SwiftApp.d;
                string = SwiftApp.Companion.c().getString(R.string.no_apk_backup);
            } else {
                SwiftApp.Companion companion3 = SwiftApp.d;
                string = SwiftApp.Companion.c().getString(R.string.version) + ": " + metadata.getVersionName() + " (" + metadata.getVersionCode() + ")";
            }
            String str9 = string;
            str9.getClass();
            String apkLink2 = metadata.getApkLink();
            if (apkLink2 == null || apkLink2.length() == 0) {
                SwiftApp.Companion companion4 = SwiftApp.d;
                string2 = SwiftApp.Companion.c().getString(R.string.no_apk_backup);
            } else {
                SwiftApp.Companion companion5 = SwiftApp.d;
                string2 = dj7.k(SwiftApp.Companion.c().getString(R.string.version), ": ", metadata.getVersionName());
            }
            String str10 = string2;
            str10.getClass();
            String str11 = str3;
            boolean zHasSplitApks = metadata.hasSplitApks();
            String str12 = str4;
            boolean zHasSharedLibs = metadata.hasSharedLibs();
            if (str11 == null || str11.length() == 0) {
                str11 = str;
            }
            if (str11 != null) {
                StringBuilder sbS = dj7.s(str11);
                if (pe4.d(metadata.isDataEncrypted(), Boolean.TRUE)) {
                    sbS.append(" 🔒");
                }
                string3 = sbS.toString();
            } else {
                string3 = str;
            }
            Boolean boolIsDataEncrypted = metadata.isDataEncrypted();
            Boolean bool = Boolean.TRUE;
            boolean zD = pe4.d(boolIsDataEncrypted, bool);
            String dataEncryptionMethod = metadata.getDataEncryptionMethod();
            if (str12 == null || str12.length() == 0) {
                str12 = str;
            }
            if (str12 != null) {
                StringBuilder sbS2 = dj7.s(str12);
                if (pe4.d(metadata.isExtDataEncrypted(), bool)) {
                    sbS2.append(" 🔒");
                }
                string4 = sbS2.toString();
            } else {
                string4 = str;
            }
            boolean zD2 = pe4.d(metadata.isExtDataEncrypted(), bool);
            String extDataEncryptionMethod = metadata.getExtDataEncryptionMethod();
            if (str5 == null || str5.length() == 0) {
                str5 = str;
            }
            if (str5 != null) {
                StringBuilder sbS3 = dj7.s(str5);
                if (pe4.d(metadata.isMediaEncrypted(), bool)) {
                    sbS3.append(" 🔒");
                }
                string5 = sbS3.toString();
            } else {
                string5 = str;
            }
            arrayList.add(new wj2(appCloudBackup, str2, zHasSplitApks, zHasSharedLibs, string3, zD, dataEncryptionMethod, string4, zD2, extDataEncryptionMethod, string5, pe4.d(metadata.isMediaEncrypted(), bool), metadata.getMediaEncryptionMethod(), str6, str7, str8, str10, str9, metadata.isProtectedBackup()));
            str = str;
        }
        ex6Var.k(new yj2(xj2.BackedUp, arrayList));
    }
}
