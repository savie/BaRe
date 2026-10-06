package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qq {
    /* JADX WARN: Code duplicated, block: B:10:0x004e A[Catch: ClassCastException -> 0x0057, TryCatch #0 {ClassCastException -> 0x0057, blocks: (B:8:0x004a, B:10:0x004e, B:11:0x0053, B:12:0x0056), top: B:306:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:11:0x0053 A[Catch: ClassCastException -> 0x0057, TryCatch #0 {ClassCastException -> 0x0057, blocks: (B:8:0x004a, B:10:0x004e, B:11:0x0053, B:12:0x0056), top: B:306:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0201  */
    /* JADX WARN: Code duplicated, block: B:138:0x0207  */
    /* JADX WARN: Code duplicated, block: B:140:0x020d  */
    /* JADX WARN: Code duplicated, block: B:144:0x0216  */
    /* JADX WARN: Code duplicated, block: B:147:0x021b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:149:0x021f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0059  */
    /* JADX WARN: Code duplicated, block: B:153:0x0227  */
    /* JADX WARN: Code duplicated, block: B:155:0x022d  */
    /* JADX WARN: Code duplicated, block: B:157:0x0235 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:159:0x0239  */
    /* JADX WARN: Code duplicated, block: B:163:0x0241  */
    /* JADX WARN: Code duplicated, block: B:165:0x0247  */
    /* JADX WARN: Code duplicated, block: B:167:0x024f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:169:0x0253  */
    /* JADX WARN: Code duplicated, block: B:173:0x025b  */
    /* JADX WARN: Code duplicated, block: B:175:0x0261  */
    /* JADX WARN: Code duplicated, block: B:177:0x0269 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:179:0x026d  */
    /* JADX WARN: Code duplicated, block: B:17:0x006c  */
    /* JADX WARN: Code duplicated, block: B:183:0x0275  */
    /* JADX WARN: Code duplicated, block: B:185:0x027b  */
    /* JADX WARN: Code duplicated, block: B:187:0x027f  */
    /* JADX WARN: Code duplicated, block: B:190:0x0287  */
    /* JADX WARN: Code duplicated, block: B:192:0x028b  */
    /* JADX WARN: Code duplicated, block: B:194:0x0295 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:212:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:214:0x02da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:215:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:217:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:223:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:226:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:228:0x0301  */
    /* JADX WARN: Code duplicated, block: B:230:0x0305 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:231:0x0307  */
    /* JADX WARN: Code duplicated, block: B:233:0x030d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0083  */
    /* JADX WARN: Code duplicated, block: B:245:0x0338  */
    /* JADX WARN: Code duplicated, block: B:248:0x0340  */
    /* JADX WARN: Code duplicated, block: B:254:0x0352  */
    /* JADX WARN: Code duplicated, block: B:256:0x0360  */
    /* JADX WARN: Code duplicated, block: B:258:0x0364 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:259:0x0366  */
    /* JADX WARN: Code duplicated, block: B:261:0x036c  */
    /* JADX WARN: Code duplicated, block: B:26:0x008b  */
    /* JADX WARN: Code duplicated, block: B:275:0x039d  */
    /* JADX WARN: Code duplicated, block: B:278:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:284:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:289:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:291:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:296:0x03db  */
    /* JADX WARN: Code duplicated, block: B:303:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:323:0x03eb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:331:0x03eb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:334:0x03eb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:336:0x03eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:337:0x03eb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:339:0x03eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:363:0x03eb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x03eb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:370:0x03eb A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:377:0x0360 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:378:? A[LOOP:5: B:252:0x034c->B:378:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:384:0x03c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:387:0x03af A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:389:0x007e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0042  */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:289:0x03ca
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static java.util.ArrayList a(java.util.List r20, boolean r21, defpackage.cd3 r22, defpackage.fe3 r23, defpackage.td3 r24, defpackage.fd3 r25, defpackage.ld3 r26, defpackage.qd3 r27, defpackage.id3 r28, defpackage.zd3 r29) {
        /*
            Method dump skipped, instruction units count: 1012
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qq.a(java.util.List, boolean, cd3, fe3, td3, fd3, ld3, qd3, id3, zd3):java.util.ArrayList");
    }

    public static List b(List list, ce3 ce3Var) {
        list.getClass();
        ce3Var.getClass();
        ArrayList arrayList = null;
        if (!ce3Var.isApplied()) {
            d6.e(ce3Var, "!!!", "Sync mode must not be ");
            return null;
        }
        l73 l73VarA = cf3.a(re3.c(), true);
        if (l73VarA instanceof xe3) {
            db2 db2VarB = ((xe3) l73VarA).n.b();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = (Iterator) db2VarB.b;
            while (it.hasNext()) {
                hk5 hk5Var = (hk5) it.next();
                AppCloudBackups appCloudBackupsFromSnapshot = AppCloudBackups.Companion.fromSnapshot(new eb2(((eb2) db2VarB.c).b.d(hk5Var.a.a), sb4.d(hk5Var.b)));
                if (appCloudBackupsFromSnapshot == null || !appCloudBackupsFromSnapshot.getLatestBackup().getMetadata().isValidCloudDetails()) {
                    appCloudBackupsFromSnapshot = null;
                }
                if (appCloudBackupsFromSnapshot != null) {
                    arrayList2.add(appCloudBackupsFromSnapshot);
                }
            }
            arrayList = arrayList2;
        } else {
            if (!(l73VarA instanceof we3)) {
                q.j();
                return null;
            }
            vr6.e$default(vr6.INSTANCE, "AppFilterHelper", xs1.j("getSyncedApps.Error: ", ((we3) l73VarA).n.b), null, 4, null);
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            String string = contextC.getString(R.string.unknown_error_occured);
            string.getClass();
            zn4 zn4Var = zn4.a;
            dj7.y(contextC, string);
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return list;
        }
        boolean z = ce3Var == ce3.Synced;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : list) {
            boolean zE = e((ji) obj, arrayList);
            if (!z) {
                zE = !zE;
            }
            if (zE) {
                arrayList3.add(obj);
            }
        }
        return arrayList3;
    }

    public static ArrayList c(ArrayList arrayList, boolean z) {
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            od3 od3Var = (od3) obj;
            if ((z && (od3Var instanceof de3)) ? false : od3Var.a().isApplied()) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((od3) it.next()).a());
        }
        return new ArrayList(arrayList3);
    }

    public static Long d(ji jiVar) {
        gm gmVar;
        List<gm> localBackups = jiVar.getLocalBackups();
        if (localBackups == null || (gmVar = (gm) el1.U0(localBackups)) == null) {
            return null;
        }
        hk hkVar = gmVar.a;
        if (!hkVar.c().j()) {
            return null;
        }
        Long versionCode = gmVar.b.getVersionCode();
        return versionCode == null ? Long.valueOf(ng.a(hkVar.c(), false).c()) : versionCode;
    }

    public static boolean e(ji jiVar, ArrayList arrayList) {
        if (arrayList != null && arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (pe4.d(((AppCloudBackups) it.next()).getLatestBackup().getMetadata().getPackageName(), jiVar.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    public static boolean f(ji jiVar, boolean z) {
        AppCloudBackup latestBackup;
        CloudMetadata metadata;
        jiVar.getClass();
        Long versionCode = jiVar.getVersionCode();
        if (!jiVar.isInstalled() || versionCode == null) {
            return false;
        }
        if (z) {
            AppCloudBackups cloudBackups = jiVar.getCloudBackups();
            return (cloudBackups == null || (latestBackup = cloudBackups.getLatestBackup()) == null || (metadata = latestBackup.getMetadata()) == null || !metadata.hasApk() || versionCode.longValue() <= io4.h(metadata.getVersionCode())) ? false : true;
        }
        Long lD = d(jiVar);
        return lD != null && lD.longValue() < versionCode.longValue();
    }
}
