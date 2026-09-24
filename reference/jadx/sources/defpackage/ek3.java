package defpackage;

import android.content.SharedPreferences;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.BackupResult;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.a;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ek3 {
    public final qp3 a;
    public hk3 b;
    public io3 c;
    public final cd d = new cd(7);
    public boolean e;

    public ek3(qp3 qp3Var) {
        this.a = qp3Var;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0283  */
    /* JADX WARN: Code duplicated, block: B:108:0x028b  */
    /* JADX WARN: Code duplicated, block: B:110:0x0290  */
    /* JADX WARN: Code duplicated, block: B:113:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:114:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:117:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:120:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:124:0x02ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:125:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:126:0x02f1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:130:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:135:0x0323  */
    /* JADX WARN: Code duplicated, block: B:155:0x039e A[DONT_INVERT, PHI: r0
      0x039e: PHI (r0v89 org.swiftapps.swiftbackup.folders.data.FolderMetadata) = 
      (r0v88 org.swiftapps.swiftbackup.folders.data.FolderMetadata)
      (r0v88 org.swiftapps.swiftbackup.folders.data.FolderMetadata)
      (r0v88 org.swiftapps.swiftbackup.folders.data.FolderMetadata)
      (r0v100 org.swiftapps.swiftbackup.folders.data.FolderMetadata)
     binds: [B:137:0x0332, B:138:0x0334, B:140:0x033a, B:150:0x0364] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:156:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:160:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:162:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:163:0x03af  */
    /* JADX WARN: Code duplicated, block: B:166:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:167:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:169:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:170:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:173:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:176:0x03ec  */
    /* JADX WARN: Code duplicated, block: B:193:0x0466  */
    /* JADX WARN: Code duplicated, block: B:237:0x055b  */
    /* JADX WARN: Code duplicated, block: B:239:0x0582  */
    /* JADX WARN: Code duplicated, block: B:240:0x058d  */
    /* JADX WARN: Code duplicated, block: B:242:0x0592  */
    /* JADX WARN: Code duplicated, block: B:245:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:246:0x05c1  */
    /* JADX WARN: Code duplicated, block: B:277:0x0684  */
    /* JADX WARN: Code duplicated, block: B:279:0x0688  */
    /* JADX WARN: Code duplicated, block: B:281:0x068d  */
    /* JADX WARN: Code duplicated, block: B:283:0x069f  */
    /* JADX WARN: Code duplicated, block: B:286:0x06b5  */
    /* JADX WARN: Code duplicated, block: B:289:0x06bc  */
    /* JADX WARN: Code duplicated, block: B:293:0x06cd  */
    /* JADX WARN: Code duplicated, block: B:295:0x06f2  */
    /* JADX WARN: Code duplicated, block: B:296:0x06fb  */
    /* JADX WARN: Code duplicated, block: B:299:0x0708  */
    /* JADX WARN: Code duplicated, block: B:301:0x0712  */
    /* JADX WARN: Code duplicated, block: B:302:0x0719  */
    /* JADX WARN: Code duplicated, block: B:305:0x071e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:306:0x0720  */
    /* JADX WARN: Code duplicated, block: B:307:0x0725  */
    /* JADX WARN: Code duplicated, block: B:308:0x0727 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:309:0x0729  */
    /* JADX WARN: Code duplicated, block: B:311:0x072f  */
    /* JADX WARN: Code duplicated, block: B:312:0x0731  */
    /* JADX WARN: Code duplicated, block: B:313:0x0733  */
    /* JADX WARN: Code duplicated, block: B:315:0x073b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:316:0x073d  */
    /* JADX WARN: Code duplicated, block: B:317:0x0742  */
    /* JADX WARN: Code duplicated, block: B:318:0x0744 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:319:0x0746  */
    /* JADX WARN: Code duplicated, block: B:322:0x0750  */
    /* JADX WARN: Code duplicated, block: B:323:0x0752 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:324:0x0754  */
    /* JADX WARN: Code duplicated, block: B:326:0x075a  */
    /* JADX WARN: Code duplicated, block: B:329:0x0767  */
    /* JADX WARN: Code duplicated, block: B:333:0x076d  */
    /* JADX WARN: Code duplicated, block: B:342:0x07a8  */
    /* JADX WARN: Code duplicated, block: B:345:0x07e3 A[LOOP:2: B:343:0x07dd->B:345:0x07e3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:349:0x07f8  */
    /* JADX WARN: Code duplicated, block: B:351:0x07fb  */
    /* JADX WARN: Code duplicated, block: B:353:0x0802  */
    /* JADX WARN: Code duplicated, block: B:357:0x0830 A[LOOP:3: B:355:0x082a->B:357:0x0830, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:361:0x0881 A[Catch: Exception -> 0x088a, TRY_LEAVE, TryCatch #2 {Exception -> 0x088a, blocks: (B:359:0x0876, B:361:0x0881), top: B:546:0x0876 }] */
    /* JADX WARN: Code duplicated, block: B:363:0x088a  */
    /* JADX WARN: Code duplicated, block: B:366:0x0893  */
    /* JADX WARN: Code duplicated, block: B:370:0x089a A[Catch: ClassCastException -> 0x08a8, TRY_ENTER, TryCatch #1 {ClassCastException -> 0x08a8, blocks: (B:370:0x089a, B:371:0x089f, B:372:0x08a6), top: B:545:0x0898 }] */
    /* JADX WARN: Code duplicated, block: B:371:0x089f A[Catch: ClassCastException -> 0x08a8, TryCatch #1 {ClassCastException -> 0x08a8, blocks: (B:370:0x089a, B:371:0x089f, B:372:0x08a6), top: B:545:0x0898 }] */
    /* JADX WARN: Code duplicated, block: B:376:0x08ab  */
    /* JADX WARN: Code duplicated, block: B:378:0x08ae  */
    /* JADX WARN: Code duplicated, block: B:382:0x08b8  */
    /* JADX WARN: Code duplicated, block: B:384:0x08be  */
    /* JADX WARN: Code duplicated, block: B:385:0x08d1  */
    /* JADX WARN: Code duplicated, block: B:387:0x08db  */
    /* JADX WARN: Code duplicated, block: B:389:0x08e1  */
    /* JADX WARN: Code duplicated, block: B:390:0x08f4  */
    /* JADX WARN: Code duplicated, block: B:392:0x0907  */
    /* JADX WARN: Code duplicated, block: B:395:0x0913  */
    /* JADX WARN: Code duplicated, block: B:399:0x0926  */
    /* JADX WARN: Code duplicated, block: B:401:0x0940  */
    /* JADX WARN: Code duplicated, block: B:403:0x0948  */
    /* JADX WARN: Code duplicated, block: B:407:0x0957  */
    /* JADX WARN: Code duplicated, block: B:408:0x095f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:409:0x0961  */
    /* JADX WARN: Code duplicated, block: B:412:0x096e  */
    /* JADX WARN: Code duplicated, block: B:423:0x09b7  */
    /* JADX WARN: Code duplicated, block: B:425:0x09c1  */
    /* JADX WARN: Code duplicated, block: B:427:0x09d9  */
    /* JADX WARN: Code duplicated, block: B:429:0x09f5  */
    /* JADX WARN: Code duplicated, block: B:432:0x09fc  */
    /* JADX WARN: Code duplicated, block: B:435:0x0a06  */
    /* JADX WARN: Code duplicated, block: B:441:0x0a3d  */
    /* JADX WARN: Code duplicated, block: B:443:0x0a47  */
    /* JADX WARN: Code duplicated, block: B:446:0x0a4f  */
    /* JADX WARN: Code duplicated, block: B:447:0x0a66 A[PHI: r20 r41 r42
      0x0a66: PHI (r20v10 org.swiftapps.swiftbackup.folders.data.FolderMetadata) = 
      (r20v9 org.swiftapps.swiftbackup.folders.data.FolderMetadata)
      (r20v12 org.swiftapps.swiftbackup.folders.data.FolderMetadata)
     binds: [B:453:0x0a7a, B:445:0x0a4d] A[DONT_GENERATE, DONT_INLINE]
      0x0a66: PHI (r41v3 java.util.concurrent.ConcurrentHashMap) = (r41v2 java.util.concurrent.ConcurrentHashMap), (r41v5 java.util.concurrent.ConcurrentHashMap) binds: [B:453:0x0a7a, B:445:0x0a4d] A[DONT_GENERATE, DONT_INLINE]
      0x0a66: PHI (r42v2 java.util.Iterator) = (r42v1 java.util.Iterator), (r42v4 java.util.Iterator) binds: [B:453:0x0a7a, B:445:0x0a4d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:449:0x0a6a  */
    /* JADX WARN: Code duplicated, block: B:451:0x0a74  */
    /* JADX WARN: Code duplicated, block: B:454:0x0a7c  */
    /* JADX WARN: Code duplicated, block: B:459:0x0aa6  */
    /* JADX WARN: Code duplicated, block: B:461:0x0aaa  */
    /* JADX WARN: Code duplicated, block: B:462:0x0ab9  */
    /* JADX WARN: Code duplicated, block: B:465:0x0abe  */
    /* JADX WARN: Code duplicated, block: B:470:0x0ac9  */
    /* JADX WARN: Code duplicated, block: B:471:0x0ad8  */
    /* JADX WARN: Code duplicated, block: B:475:0x0adf  */
    /* JADX WARN: Code duplicated, block: B:477:0x0ae6  */
    /* JADX WARN: Code duplicated, block: B:479:0x0aea  */
    /* JADX WARN: Code duplicated, block: B:482:0x0af0  */
    /* JADX WARN: Code duplicated, block: B:485:0x0af8  */
    /* JADX WARN: Code duplicated, block: B:487:0x0afb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:49:0x00db  */
    /* JADX WARN: Code duplicated, block: B:523:0x0c00 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:524:0x0c02  */
    /* JADX WARN: Code duplicated, block: B:526:0x0c12  */
    /* JADX WARN: Code duplicated, block: B:529:0x0c26  */
    /* JADX WARN: Code duplicated, block: B:532:0x0c3d  */
    /* JADX WARN: Code duplicated, block: B:553:0x0799 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:554:0x0792 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:555:0x0783 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:556:0x07a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:557:0x06fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:559:0x06c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:563:0x0aa4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:564:0x0a9f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:565:0x0a9a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:566:0x094d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:567:0x0a36 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:568:0x0a2f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:575:0x0a16 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:576:? A[LOOP:6: B:433:0x0a00->B:576:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:83:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:92:0x01f1  */
    /* JADX WARN: Instruction removed from duplicated block: B:120:0x02c4, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:176:0x03ec, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:245:0x05a6, please report this as an issue */
    public final void a(bo3 bo3Var, bk3 bk3Var) {
        int i;
        kj3 kj3Var;
        boolean z;
        int i2;
        cd cdVar;
        l73 l73VarA;
        ho3 ho3Var;
        hg7 hg7Var;
        FolderMetadata folderMetadata;
        kj3 kj3Var2;
        FolderMetadata folderMetadata2;
        FolderMetadata folderMetadataCopyWithNoBackups;
        ConcurrentHashMap concurrentHashMap;
        ArrayList arrayList;
        List list;
        List list2;
        Iterator it;
        String str;
        Iterator it2;
        long jA;
        Long lValueOf;
        long jLongValue;
        long j;
        ConcurrentHashMap concurrentHashMap2;
        kh6 kh6Var;
        kh6 kh6Var2;
        ConcurrentHashMap concurrentHashMap3;
        ArrayList arrayList2;
        Boolean boolValueOf;
        boolean z2;
        boolean z3;
        FolderMetadata folderMetadata3;
        LinkedHashMap linkedHashMap;
        Iterator it3;
        LinkedHashMap linkedHashMap2;
        FolderMetadata.BaseBackup baseBackup;
        FolderMetadata folderMetadata4;
        boolean z4;
        boolean z5;
        FolderMetadata folderMetadata5;
        boolean z6;
        vr6 vr6Var;
        FolderMetadata folderMetadata6;
        FolderMetadata folderMetadataCopy$default;
        FolderMetadata folderMetadata7;
        FolderMetadata folderMetadataCopy$default2;
        zf8 zf8Var;
        Object obj;
        rf8 rf8Var;
        String str2;
        int i3;
        FolderMetadata folderMetadata8;
        ConcurrentHashMap concurrentHashMap4;
        Iterator it4;
        FolderMetadata.BaseBackup baseBackup2;
        FolderMetadata.BaseBackup baseBackupCopy$default;
        FolderMetadata.BaseBackup baseBackup3;
        LinkedHashMap linkedHashMap3;
        Map<String, FolderMetadata.IncrementalBackup> incrementalBackups;
        FolderMetadata.IncrementalBackup incrementalBackup;
        String str3;
        FolderMetadata.IncrementalBackup incrementalBackupCopy$default;
        Set setKeySet;
        Iterator it5;
        Collection<FolderMetadata.IncrementalBackup> collectionValues;
        Object next;
        Map<String, FolderMetadata.IncrementalBackup> incrementalBackups2;
        boolean z7;
        SharedPreferences sharedPreferences;
        MFirebaseUser mFirebaseUserA;
        rf8 rf8Var2;
        vr6 vr6Var2;
        q63 q63Var;
        int i4;
        FolderMetadata folderMetadata9;
        FolderMetadata.BaseBackup baseBackup4;
        String backupLink;
        FolderMetadata.BaseBackup baseBackup5;
        boolean z8;
        String backupLink2;
        ea3 ea3Var;
        String strA;
        Map<String, FolderMetadata.IncrementalBackup> incrementalBackups3;
        FolderMetadata.IncrementalBackup incrementalBackup2;
        Long lValueOf2;
        cd cdVar2;
        boolean z9;
        List listA0;
        Iterator it6;
        int i5;
        mt3 mt3Var;
        boolean z10;
        long j2;
        FolderMetadata folderMetadata10;
        vr6 vr6Var3;
        kj3 kj3VarA;
        wj3 wj3Var;
        boolean z11;
        String str4;
        q63 q63VarA;
        BackupResult failure;
        zj3 zj3Var;
        BackupResult.Failure failureA;
        BackupResult failure2;
        vr6 vr6Var4;
        kj3 kj3VarA2;
        wj3 wj3Var2;
        boolean zF;
        String str5;
        BackupResult backupResultD;
        zj3 zj3Var2;
        BackupResult.Failure failureA2;
        BackupResult backupResult;
        String str6;
        xp1 xp1Var = bo3Var.f;
        kj3 kj3Var3 = bo3Var.c;
        boolean z12 = kj3Var3 != null;
        boolean z13 = !z12;
        List list3 = bo3Var.h;
        boolean z14 = ji8.r(list3) || kj3Var3 != null;
        List listA1 = fl1.A0(Boolean.valueOf(z13), Boolean.valueOf(z14));
        if (listA1.isEmpty()) {
            i = 0;
        } else {
            Iterator it7 = listA1.iterator();
            i = 0;
            while (it7.hasNext()) {
                if (((Boolean) it7.next()).booleanValue() && (i = i + 1) < 0) {
                    fl1.E0();
                    throw null;
                }
            }
        }
        int i6 = i * 100;
        cd cdVar3 = this.d;
        qp3 qp3Var = this.a;
        if (z12) {
            kj3Var = kj3Var3;
            z = z12;
            z14 = z14;
            i2 = i6;
            cdVar = cdVar3;
        } else {
            hk3 hk3Var = new hk3(bo3Var, qp3Var);
            this.b = hk3Var;
            final ck3 ck3Var = new ck3(i6, bk3Var);
            vr6 vr6Var5 = vr6.INSTANCE;
            vr6.i$default(vr6Var5, "FolderBackupTask", "Started backup: " + hk3Var.a, null, 4, null);
            vr6.i$default(vr6Var5, "FolderBackupTask", "Props=" + bo3Var, null, 4, null);
            long jCurrentTimeMillis = System.currentTimeMillis();
            kj3Var = kj3Var3;
            gk3 gk3Var = hk3Var.b;
            z = z12;
            String str7 = gk3Var.b;
            if (str7 == null || str7.length() == 0) {
                String str8 = gk3Var.b;
                if (((str8 == null || str8.length() == 0) || (str6 = gk3Var.b) == null || str6.length() == 0) && !hk3Var.c) {
                    ex6 ex6Var = qp3Var.i;
                    SwiftApp.Companion companion = SwiftApp.d;
                    ex6Var.k(SwiftApp.Companion.c().getString(R.string.backing_up));
                    FolderBackupStrategy folderBackupStrategy = bo3Var.g;
                    if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                        d6.o();
                        return;
                    }
                    FolderItem folderItem = bo3Var.a;
                    if (!folderItem.isValid()) {
                        q.d(folderItem, "Invalid folder item: ");
                        return;
                    }
                    if (list3.isEmpty()) {
                        g84.f(xs1.l("Invalid locations: ", list3));
                        return;
                    }
                    q63 q63Var2 = new q63(folderItem.getSourceFolder(), 1);
                    if (q63Var2.j()) {
                        gv7 gv7Var = new gv7(new d76(folderItem, 22));
                        gv7 gv7Var2 = new gv7(new kf(gv7Var, 27));
                        boolean zContains = list3.contains(q05.DEVICE);
                        boolean z15 = zContains && list3.contains(q05.CLOUD) && !((Boolean) gv7Var2.getValue()).booleanValue();
                        if (ji8.t(list3)) {
                            z9 = z15;
                        } else {
                            z9 = z15;
                            boolean z16 = list3.contains(q05.CLOUD) && ((Boolean) gv7Var2.getValue()).booleanValue();
                            listA0 = fl1.A0(Boolean.valueOf(zContains), Boolean.valueOf(z16));
                            if (listA0.isEmpty()) {
                                i5 = 0;
                            } else {
                                it6 = listA0.iterator();
                                i5 = 0;
                                while (it6.hasNext()) {
                                    if (!((Boolean) it6.next()).booleanValue() && (i5 = i5 + 1) < 0) {
                                        fl1.E0();
                                        throw null;
                                    }
                                }
                            }
                            final int i7 = i5 * 100;
                            mt3Var = new mt3() { // from class: yj3
                                @Override // defpackage.mt3
                                public final Object invoke(Object obj2) {
                                    ck3Var.invoke(Integer.valueOf(Const.q(((Integer) obj2).intValue(), i7)));
                                    return be8.a;
                                }
                            };
                            z10 = z16;
                            if (zContains) {
                                vr6Var4 = vr6.INSTANCE;
                                i2 = i6;
                                vr6.i$default(vr6Var4, "prepareLocalBackup", eq3.k("Preparing local backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                                cdVar2 = cdVar3;
                                kj3VarA2 = a.a(folderItem, false, true);
                                wj3Var2 = new wj3(qp3Var, kj3VarA2, mt3Var);
                                if (folderBackupStrategy.isSingleBackup() || !kj3VarA2.f()) {
                                    zF = kj3VarA2.f();
                                    if (zF) {
                                        str5 = "Updating";
                                    } else {
                                        str5 = "Creating";
                                    }
                                    j2 = jCurrentTimeMillis;
                                    vr6.i$default(vr6Var4, "prepareLocalBackup", u48.n(str5, " backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                                    if (zF) {
                                        backupResultD = wj3.d(wj3Var2, null, xp1Var, 5);
                                    } else {
                                        backupResultD = wj3.b(wj3Var2, xp1Var);
                                    }
                                    if (backupResultD.isSuccess() || (failureA2 = ak3.a(kj3VarA2, folderItem)) == null) {
                                        vr6.i$default(vr6Var4, "prepareLocalBackup", "Backup result: " + backupResultD, null, 4, null);
                                        zj3Var2 = new zj3(kj3VarA2, backupResultD);
                                    } else {
                                        zj3Var2 = new zj3(kj3VarA2, failureA2);
                                    }
                                } else {
                                    ArrayList arrayListA = kj3VarA2.a();
                                    if (arrayListA != null && !arrayListA.isEmpty()) {
                                        vr6.i$default(vr6Var4, "prepareLocalBackup", "Backup strategy is set to 'Single' but existing backup has incremental backups", null, 4, null);
                                        vr6.i$default(vr6Var4, "prepareLocalBackup", "Deleting entire backup to create a fresh Single backup", null, 4, null);
                                        al3.b(folderItem, false);
                                    } else if (wj3Var2.a(kj3VarA2.c().getManifestFile()).a.isEmpty()) {
                                        vr6.i$default(vr6Var4, "prepareLocalBackup", "No changes detected since last base backup", null, 4, null);
                                        zj3Var2 = new zj3(kj3VarA2, BackupResult.NoChange.INSTANCE);
                                        j2 = jCurrentTimeMillis;
                                    } else {
                                        vr6.i$default(vr6Var4, "prepareLocalBackup", "Changes detected since last base backup", null, 4, null);
                                        vr6.i$default(vr6Var4, "prepareLocalBackup", "Deleting base backup to create a fresh Single backup", null, 4, null);
                                        al3.b(folderItem, false);
                                    }
                                    zF = kj3VarA2.f();
                                    if (zF) {
                                        str5 = "Creating";
                                    } else {
                                        str5 = "Updating";
                                    }
                                    j2 = jCurrentTimeMillis;
                                    vr6.i$default(vr6Var4, "prepareLocalBackup", u48.n(str5, " backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                                    if (zF) {
                                        backupResultD = wj3.b(wj3Var2, xp1Var);
                                    } else {
                                        backupResultD = wj3.d(wj3Var2, null, xp1Var, 5);
                                    }
                                    if (backupResultD.isSuccess()) {
                                        vr6.i$default(vr6Var4, "prepareLocalBackup", "Backup result: " + backupResultD, null, 4, null);
                                        zj3Var2 = new zj3(kj3VarA2, backupResultD);
                                    } else {
                                        vr6.i$default(vr6Var4, "prepareLocalBackup", "Backup result: " + backupResultD, null, 4, null);
                                        zj3Var2 = new zj3(kj3VarA2, backupResultD);
                                    }
                                }
                                backupResult = zj3Var2.b;
                                if (backupResult.isSuccess()) {
                                    if (z9) {
                                        bo3Var.d = zj3Var2.a;
                                    } else if (!z10) {
                                    }
                                }
                                failure2 = backupResult;
                            } else {
                                j2 = jCurrentTimeMillis;
                                i2 = i6;
                                cdVar2 = cdVar3;
                            }
                            if (z10) {
                                l0.e("Invalid state reached. At this point cloud prep should be enabled");
                                return;
                            }
                            folderMetadata10 = (FolderMetadata) gv7Var.getValue();
                            vr6Var3 = vr6.INSTANCE;
                            vr6.i$default(vr6Var3, "prepareCloudBackup", eq3.k("Preparing cloud backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                            if (folderMetadata10 != null || !folderMetadata10.hasBackups()) {
                                folderMetadata10 = null;
                            }
                            kj3VarA = a.a(folderItem, true, true);
                            wj3Var = new wj3(qp3Var, kj3VarA, mt3Var);
                            if (folderBackupStrategy.isSingleBackup() || folderMetadata10 == null || !folderMetadata10.hasBackups()) {
                                if (folderMetadata10 == null && folderMetadata10.hasBackups()) {
                                    z11 = false;
                                } else {
                                    z11 = true;
                                }
                                if (z11) {
                                    str4 = "Creating";
                                } else {
                                    str4 = "Updating";
                                }
                                vr6.i$default(vr6Var3, "prepareCloudBackup", u48.n(str4, " backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                                if (z11) {
                                    failure = wj3.b(wj3Var, xp1Var);
                                } else {
                                    q63VarA = sk3.a(folderMetadata10);
                                    if (q63VarA != null) {
                                        failure = wj3.d(wj3Var, q63VarA, xp1Var, 4);
                                    } else {
                                        failure = new BackupResult.Failure("Unable to download latest manifest file from cloud");
                                    }
                                }
                                if ((failure instanceof BackupResult.Success) || (failureA = ak3.a(kj3VarA, folderItem)) == null) {
                                    vr6.i$default(vr6Var3, "prepareCloudBackup", "Backup result: " + failure, null, 4, null);
                                    zj3Var = new zj3(kj3VarA, failure);
                                } else {
                                    zj3Var = new zj3(kj3VarA, failureA);
                                }
                            } else {
                                Map<String, FolderMetadata.IncrementalBackup> incrementalBackups4 = folderMetadata10.getIncrementalBackups();
                                Collection<FolderMetadata.IncrementalBackup> collectionValues2 = incrementalBackups4 != null ? incrementalBackups4.values() : null;
                                if (collectionValues2 != null && !collectionValues2.isEmpty()) {
                                    vr6.i$default(vr6Var3, "prepareCloudBackup", "Backup strategy is set to 'Single' but existing backup has incremental backups", null, 4, null);
                                    vr6.i$default(vr6Var3, "prepareCloudBackup", "Deleting entire backup to create a fresh Single backup", null, 4, null);
                                    al3.a(folderMetadata10);
                                } else if (wj3Var.a(sk3.a(folderMetadata10)).a.isEmpty()) {
                                    vr6.i$default(vr6Var3, "prepareCloudBackup", "No changes detected since last base backup", null, 4, null);
                                    zj3Var = new zj3(kj3VarA, BackupResult.NoChange.INSTANCE);
                                } else {
                                    vr6.i$default(vr6Var3, "prepareCloudBackup", "Changes detected since last base backup", null, 4, null);
                                    vr6.i$default(vr6Var3, "prepareCloudBackup", "Deleting base backup to create a fresh Single backup", null, 4, null);
                                    al3.a(folderMetadata10);
                                }
                                folderMetadata10 = null;
                                if (folderMetadata10 == null) {
                                    z11 = true;
                                } else {
                                    z11 = true;
                                }
                                if (z11) {
                                    str4 = "Creating";
                                } else {
                                    str4 = "Updating";
                                }
                                vr6.i$default(vr6Var3, "prepareCloudBackup", u48.n(str4, " backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                                if (z11) {
                                    failure = wj3.b(wj3Var, xp1Var);
                                } else {
                                    q63VarA = sk3.a(folderMetadata10);
                                    if (q63VarA != null) {
                                        failure = wj3.d(wj3Var, q63VarA, xp1Var, 4);
                                    } else {
                                        failure = new BackupResult.Failure("Unable to download latest manifest file from cloud");
                                    }
                                }
                                if (failure instanceof BackupResult.Success) {
                                    vr6.i$default(vr6Var3, "prepareCloudBackup", "Backup result: " + failure, null, 4, null);
                                    zj3Var = new zj3(kj3VarA, failure);
                                } else {
                                    vr6.i$default(vr6Var3, "prepareCloudBackup", "Backup result: " + failure, null, 4, null);
                                    zj3Var = new zj3(kj3VarA, failure);
                                }
                            }
                            failure2 = zj3Var.b;
                            if (failure2.isSuccess() && (failure2 instanceof BackupResult.Success)) {
                                bo3Var.d = zj3Var.a;
                            }
                        }
                        listA0 = fl1.A0(Boolean.valueOf(zContains), Boolean.valueOf(z16));
                        if (listA0.isEmpty()) {
                            i5 = 0;
                        } else {
                            it6 = listA0.iterator();
                            i5 = 0;
                            while (it6.hasNext()) {
                                if (!((Boolean) it6.next()).booleanValue()) {
                                }
                            }
                        }
                        final int i8 = i5 * 100;
                        mt3Var = new mt3() { // from class: yj3
                            @Override // defpackage.mt3
                            public final Object invoke(Object obj2) {
                                ck3Var.invoke(Integer.valueOf(Const.q(((Integer) obj2).intValue(), i8)));
                                return be8.a;
                            }
                        };
                        z10 = z16;
                        if (zContains) {
                            vr6Var4 = vr6.INSTANCE;
                            i2 = i6;
                            vr6.i$default(vr6Var4, "prepareLocalBackup", eq3.k("Preparing local backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                            cdVar2 = cdVar3;
                            kj3VarA2 = a.a(folderItem, false, true);
                            wj3Var2 = new wj3(qp3Var, kj3VarA2, mt3Var);
                            if (folderBackupStrategy.isSingleBackup()) {
                                zF = kj3VarA2.f();
                                if (zF) {
                                    str5 = "Creating";
                                } else {
                                    str5 = "Updating";
                                }
                                j2 = jCurrentTimeMillis;
                                vr6.i$default(vr6Var4, "prepareLocalBackup", u48.n(str5, " backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                                if (zF) {
                                    backupResultD = wj3.b(wj3Var2, xp1Var);
                                } else {
                                    backupResultD = wj3.d(wj3Var2, null, xp1Var, 5);
                                }
                                if (backupResultD.isSuccess()) {
                                    vr6.i$default(vr6Var4, "prepareLocalBackup", "Backup result: " + backupResultD, null, 4, null);
                                    zj3Var2 = new zj3(kj3VarA2, backupResultD);
                                } else {
                                    vr6.i$default(vr6Var4, "prepareLocalBackup", "Backup result: " + backupResultD, null, 4, null);
                                    zj3Var2 = new zj3(kj3VarA2, backupResultD);
                                }
                            } else {
                                zF = kj3VarA2.f();
                                if (zF) {
                                    str5 = "Creating";
                                } else {
                                    str5 = "Updating";
                                }
                                j2 = jCurrentTimeMillis;
                                vr6.i$default(vr6Var4, "prepareLocalBackup", u48.n(str5, " backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                                if (zF) {
                                    backupResultD = wj3.b(wj3Var2, xp1Var);
                                } else {
                                    backupResultD = wj3.d(wj3Var2, null, xp1Var, 5);
                                }
                                if (backupResultD.isSuccess()) {
                                    vr6.i$default(vr6Var4, "prepareLocalBackup", "Backup result: " + backupResultD, null, 4, null);
                                    zj3Var2 = new zj3(kj3VarA2, backupResultD);
                                } else {
                                    vr6.i$default(vr6Var4, "prepareLocalBackup", "Backup result: " + backupResultD, null, 4, null);
                                    zj3Var2 = new zj3(kj3VarA2, backupResultD);
                                }
                            }
                            backupResult = zj3Var2.b;
                            if (backupResult.isSuccess()) {
                                if (z9) {
                                    bo3Var.d = zj3Var2.a;
                                } else if (!z10) {
                                }
                            }
                            failure2 = backupResult;
                        } else {
                            j2 = jCurrentTimeMillis;
                            i2 = i6;
                            cdVar2 = cdVar3;
                        }
                        if (z10) {
                            l0.e("Invalid state reached. At this point cloud prep should be enabled");
                            return;
                        }
                        folderMetadata10 = (FolderMetadata) gv7Var.getValue();
                        vr6Var3 = vr6.INSTANCE;
                        vr6.i$default(vr6Var3, "prepareCloudBackup", eq3.k("Preparing cloud backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                        if (folderMetadata10 != null) {
                            folderMetadata10 = null;
                        } else {
                            folderMetadata10 = null;
                        }
                        kj3VarA = a.a(folderItem, true, true);
                        wj3Var = new wj3(qp3Var, kj3VarA, mt3Var);
                        if (folderBackupStrategy.isSingleBackup()) {
                            if (folderMetadata10 == null) {
                                z11 = true;
                            } else {
                                z11 = true;
                            }
                            if (z11) {
                                str4 = "Creating";
                            } else {
                                str4 = "Updating";
                            }
                            vr6.i$default(vr6Var3, "prepareCloudBackup", u48.n(str4, " backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                            if (z11) {
                                failure = wj3.b(wj3Var, xp1Var);
                            } else {
                                q63VarA = sk3.a(folderMetadata10);
                                if (q63VarA != null) {
                                    failure = wj3.d(wj3Var, q63VarA, xp1Var, 4);
                                } else {
                                    failure = new BackupResult.Failure("Unable to download latest manifest file from cloud");
                                }
                            }
                            if (failure instanceof BackupResult.Success) {
                                vr6.i$default(vr6Var3, "prepareCloudBackup", "Backup result: " + failure, null, 4, null);
                                zj3Var = new zj3(kj3VarA, failure);
                            } else {
                                vr6.i$default(vr6Var3, "prepareCloudBackup", "Backup result: " + failure, null, 4, null);
                                zj3Var = new zj3(kj3VarA, failure);
                            }
                        } else {
                            if (folderMetadata10 == null) {
                                z11 = true;
                            } else {
                                z11 = true;
                            }
                            if (z11) {
                                str4 = "Creating";
                            } else {
                                str4 = "Updating";
                            }
                            vr6.i$default(vr6Var3, "prepareCloudBackup", u48.n(str4, " backup for '", folderItem.getDisplayName(), "'"), null, 4, null);
                            if (z11) {
                                failure = wj3.b(wj3Var, xp1Var);
                            } else {
                                q63VarA = sk3.a(folderMetadata10);
                                if (q63VarA != null) {
                                    failure = wj3.d(wj3Var, q63VarA, xp1Var, 4);
                                } else {
                                    failure = new BackupResult.Failure("Unable to download latest manifest file from cloud");
                                }
                            }
                            if (failure instanceof BackupResult.Success) {
                                vr6.i$default(vr6Var3, "prepareCloudBackup", "Backup result: " + failure, null, 4, null);
                                zj3Var = new zj3(kj3VarA, failure);
                            } else {
                                vr6.i$default(vr6Var3, "prepareCloudBackup", "Backup result: " + failure, null, 4, null);
                                zj3Var = new zj3(kj3VarA, failure);
                            }
                        }
                        failure2 = zj3Var.b;
                        if (failure2.isSuccess()) {
                            bo3Var.d = zj3Var.a;
                        }
                    } else {
                        String strI = xs1.i(q63Var2, "Source folder not found at ");
                        vr6.e$default(vr6Var5, "FolderBackupHelper", strI, null, 4, null);
                        failure2 = new BackupResult.Failure(strI);
                        j2 = jCurrentTimeMillis;
                        i2 = i6;
                        cdVar2 = cdVar3;
                    }
                    if (failure2 instanceof BackupResult.Failure) {
                        String message = ((BackupResult.Failure) failure2).getMessage();
                        message.getClass();
                        String str9 = gk3Var.b;
                        if (str9 == null || str9.length() == 0) {
                            gk3Var.b = dj7.k(gk3Var.a.getDisplayName(), ": ", message);
                        } else {
                            gk3Var.b = dj7.k(gk3Var.b, ", ", message);
                        }
                    }
                    ck3Var.invoke(100);
                    vr6.i$default(vr6.INSTANCE, "FolderBackupTask", Const.u(j2, System.currentTimeMillis()), null, 4, null);
                } else {
                    i2 = i6;
                    cdVar2 = cdVar3;
                }
            } else {
                i2 = i6;
                cdVar2 = cdVar3;
            }
            String str10 = gk3Var.b;
            cdVar = cdVar2;
            if (!(str10 == null || str10.length() == 0)) {
                ((ArrayList) cdVar.b).add(gk3Var);
            }
        }
        if (b()) {
            return;
        }
        int i9 = !z ? 100 : 0;
        kj3 kj3Var4 = bo3Var.d;
        kj3 kj3Var5 = kj3Var4 == null ? kj3Var : kj3Var4;
        bo3Var.d = kj3Var5;
        if (!z14 || kj3Var5 == null) {
            return;
        }
        io3 io3Var = new io3(bo3Var, qp3Var);
        this.c = io3Var;
        dk3 dk3Var = new dk3(i9, bk3Var, i2);
        FolderMetadata folderMetadata11 = io3Var.e;
        String displayString = folderMetadata11.toDisplayString();
        tb1 tb1Var = tb1.a;
        String strL = dj7.l("Processing upload for folder: ", displayString, ". Cloud: ", qb1.f().getDisplayNameEn());
        vr6 vr6Var6 = vr6.INSTANCE;
        vr6.i$default(vr6Var6, "FolderUploadTask", strL, null, 4, null);
        boolean zHasAnyBackup = folderMetadata11.hasAnyBackup();
        ho3 ho3Var2 = io3Var.j;
        if (zHasAnyBackup) {
            io3Var.k = dk3Var;
            SyncOption syncOption = SyncOption.WIFI;
            qp3 qp3Var2 = io3Var.b;
            FolderItem folderItem2 = io3Var.c;
            if (syncOption != null || Const.z()) {
                vr6.i$default(vr6Var6, "FolderUploadTask", "Checking cloud for current sync status", null, 4, null);
                um3 um3Var = FolderMetadata.Companion;
                String id = folderItem2.getId();
                um3Var.getClass();
                id.getClass();
                l73VarA = cf3.a(re3.h().d(id), true);
                if (l73VarA instanceof we3) {
                    hg7Var = new hg7(null, ((we3) l73VarA).n, 1);
                } else if (l73VarA instanceof xe3) {
                    hg7Var = new hg7(((xe3) l73VarA).n.c(FolderMetadata.class), null, 2);
                } else {
                    q.j();
                    ho3Var = null;
                }
                if (hg7Var.c) {
                    folderMetadata = (FolderMetadata) hg7Var.a;
                    kj3Var2 = io3Var.a.c;
                    kj3 kj3Var6 = io3Var.d;
                    if (kj3Var2 != null || folderMetadata == null) {
                        folderMetadata2 = folderMetadata;
                    } else {
                        if (kj3Var6.f()) {
                            boolean z17 = kj3Var6.c().getSize() == folderMetadata.getBaseBackupSize();
                            ArrayList arrayListA2 = kj3Var6.a();
                            if (arrayListA2 != null) {
                                Iterator it8 = arrayListA2.iterator();
                                long size = 0;
                                while (it8.hasNext()) {
                                    size += ((FolderBackup$IncrementalBackup) it8.next()).getSize();
                                }
                                lValueOf2 = Long.valueOf(size);
                            } else {
                                lValueOf2 = null;
                            }
                            boolean z18 = io4.h(lValueOf2) == folderMetadata.getIncrementalBackupsSize();
                            if (z17 && z18) {
                                vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Existing cloud backup is same as current device backup, skipping upload", null, 4, null);
                            } else {
                                vr6 vr6Var7 = vr6.INSTANCE;
                                vr6.w$default(vr6Var7, "FolderUploadTask", "User wants to sync existing local backup to cloud, Deleting existing cloud backup...", null, 4, null);
                                try {
                                    al3.a(folderMetadata);
                                    vr6.i$default(vr6Var7, "FolderUploadTask", "Deleted existing cloud backup", null, 4, null);
                                    folderMetadata2 = null;
                                } catch (Exception e) {
                                    vr6 vr6Var8 = vr6.INSTANCE;
                                    vr6.e$default(vr6Var8, "FolderUploadTask", xs1.j("Error deleting existing cloud backup: ", folderMetadata.toDisplayString()), e, null, 8, null);
                                    vr6.e$default(vr6Var8, "FolderUploadTask", "Unable to delete existing cloud backup to sync device backup to cloud", null, 4, null);
                                    ho3Var2.a = "Unable to delete existing cloud backup to sync device backup to cloud";
                                    str = null;
                                }
                            }
                        } else {
                            q.d(kj3Var6, "FolderBackup object has no backups: ");
                        }
                        ho3Var = null;
                    }
                    if (folderMetadata2 != null) {
                        folderMetadata2.isValid();
                    }
                    if (folderMetadata2 != null || (folderMetadataCopyWithNoBackups = FolderMetadata.copy$default(folderMetadata2, io3Var.c, null, null, 6, null)) == null) {
                        folderMetadataCopyWithNoBackups = folderMetadata11.copyWithNoBackups();
                    }
                    io3Var.h = folderMetadataCopyWithNoBackups;
                    concurrentHashMap = new ConcurrentHashMap();
                    arrayList = new ArrayList();
                    fo3 fo3Var = io3Var.f;
                    list = fo3Var.a;
                    if (list != null) {
                        arrayList.addAll(list);
                    }
                    list2 = fo3Var.b;
                    if (list2 != null) {
                        arrayList.addAll(list2);
                    }
                    it = arrayList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            rf8Var2 = (rf8) it.next();
                            vr6Var2 = vr6.INSTANCE;
                            String str11 = rf8Var2.h;
                            q63Var = rf8Var2.a;
                            i4 = rf8Var2.b;
                            vr6.i$default(vr6Var2, "FolderUploadTask", xs1.j("Checking upload for ", str11), null, 4, null);
                            folderMetadata9 = io3Var.h;
                            if (folderMetadata9 == null) {
                                ea3Var = new ea3(null, false);
                            } else {
                                switch (i4) {
                                    case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                    case 31:
                                        baseBackup4 = folderMetadata9.getBaseBackup();
                                        if (i4 == 31) {
                                            if (baseBackup4 != null) {
                                                backupLink = baseBackup4.getManifestLink();
                                            } else {
                                                backupLink = null;
                                            }
                                        } else if (baseBackup4 != null) {
                                            backupLink = baseBackup4.getBackupLink();
                                        } else {
                                            backupLink = null;
                                        }
                                        if (!folderMetadata9.hasBaseBackup()) {
                                            z8 = true;
                                        } else if (baseBackup4 == null) {
                                            l0.e("Synced base backup null!!");
                                            break;
                                        } else {
                                            baseBackup5 = folderMetadata11.getBaseBackup();
                                            if (baseBackup5 == null) {
                                                c6.f("Local base backup null!!");
                                                break;
                                            } else if (baseBackup5.getSize() != baseBackup4.getSize()) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                        }
                                        backupLink2 = backupLink;
                                        boolean z19 = !z8;
                                        if (!z8) {
                                            vr6.i$default(vr6Var2, "FolderUploadTask", "Skipped uploading, already synced", null, 4, null);
                                        }
                                        ea3Var = new ea3(backupLink2, z19);
                                        break;
                                    case 32:
                                    case 33:
                                        strA = jj3.a(q63Var);
                                        incrementalBackups3 = folderMetadata9.getIncrementalBackups();
                                        if (incrementalBackups3 != null) {
                                            incrementalBackup2 = incrementalBackups3.get(strA);
                                        } else {
                                            incrementalBackup2 = null;
                                        }
                                        if (i4 == 33) {
                                            if (incrementalBackup2 != null) {
                                                backupLink2 = incrementalBackup2.getManifestLink();
                                            } else {
                                                backupLink2 = null;
                                            }
                                        } else if (incrementalBackup2 != null) {
                                            backupLink2 = incrementalBackup2.getBackupLink();
                                        } else {
                                            backupLink2 = null;
                                        }
                                        if (incrementalBackup2 == null) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        boolean z110 = !z8;
                                        if (!z8) {
                                            vr6.i$default(vr6Var2, "FolderUploadTask", "Skipped uploading, already synced", null, 4, null);
                                        }
                                        ea3Var = new ea3(backupLink2, z110);
                                        break;
                                    default:
                                        throw new io5(xs1.h(i4, "Cloud file type ", " not implemented"));
                                }
                            }
                            if (!ea3Var.a) {
                                rf8Var2.f = (String) ea3Var.b;
                                concurrentHashMap.put(q63Var.p(), rf8Var2);
                            }
                        } else {
                            if (concurrentHashMap.isEmpty()) {
                                vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Nothing to upload!", null, 4, null);
                            } else {
                                vr6 vr6Var9 = vr6.INSTANCE;
                                Set setKeySet2 = concurrentHashMap.keySet();
                                setKeySet2.getClass();
                                vr6.i$default(vr6Var9, "FolderUploadTask", "Upload tasks: ".concat(el1.Y0(setKeySet2, null, null, null, null, 63)), null, 4, null);
                                Collection collectionValues3 = concurrentHashMap.values();
                                collectionValues3.getClass();
                                it2 = collectionValues3.iterator();
                                jA = 0;
                                while (it2.hasNext()) {
                                    jA += ((rf8) it2.next()).a();
                                }
                                lValueOf = Long.valueOf(jA);
                                if (jA <= 0) {
                                    lValueOf = null;
                                }
                                if (lValueOf != null) {
                                    jLongValue = lValueOf.longValue();
                                } else {
                                    jLongValue = 1;
                                }
                                j = jLongValue;
                                concurrentHashMap2 = new ConcurrentHashMap();
                                kh6Var = new kh6();
                                kh6Var2 = new kh6();
                                concurrentHashMap3 = new ConcurrentHashMap();
                                arrayList2 = new ArrayList(concurrentHashMap.size());
                                for (Map.Entry entry : concurrentHashMap.entrySet()) {
                                    String str12 = (String) entry.getKey();
                                    rf8 rf8Var3 = (rf8) entry.getValue();
                                    zn4 zn4Var = zn4.a;
                                    arrayList2.add(new vn4(new rz(io3Var, str12, rf8Var3, concurrentHashMap3, concurrentHashMap2, kh6Var, j, kh6Var2)));
                                }
                                ex6 ex6Var2 = qp3Var2.i;
                                SwiftApp.Companion companion2 = SwiftApp.d;
                                ex6Var2.k(SwiftApp.Companion.c().getString(R.string.uploading_backup_files));
                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                zn4 zn4Var2 = zn4.a;
                                try {
                                    d45.b.getClass();
                                    mFirebaseUserA = d45.a();
                                    if (mFirebaseUserA != null) {
                                        boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                                    } else {
                                        boolValueOf = null;
                                    }
                                } catch (Exception unused) {
                                }
                                if (pe4.d(boolValueOf, Boolean.TRUE)) {
                                    z2 = false;
                                } else {
                                    try {
                                        sharedPreferences = cz4.f;
                                        z2 = false;
                                        try {
                                            if (sharedPreferences == null) {
                                                pe4.F("prefs");
                                                throw null;
                                            }
                                            z7 = sharedPreferences.getBoolean("parallel_cloud_transfers", false);
                                            if (z7) {
                                                z3 = true;
                                            }
                                            zn4.a(4, arrayList2, z3);
                                            if (io3Var.i) {
                                                if (!concurrentHashMap3.isEmpty()) {
                                                    vr6.w$default(vr6.INSTANCE, "FolderUploadTask", "Upload cancelled, deleting uploaded files from this attempt...", null, 4, null);
                                                    io3Var.a(concurrentHashMap3);
                                                }
                                            } else if (arrayList2.size() != concurrentHashMap3.size()) {
                                                vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Upload complete. Assembling metadata details", null, 4, null);
                                                folderMetadata3 = io3Var.h;
                                                if (folderMetadata3 != null || (incrementalBackups2 = folderMetadata3.getIncrementalBackups()) == null) {
                                                    linkedHashMap = null;
                                                } else {
                                                    linkedHashMap = new LinkedHashMap(incrementalBackups2);
                                                }
                                                it3 = concurrentHashMap3.entrySet().iterator();
                                                linkedHashMap2 = linkedHashMap;
                                                baseBackup = null;
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        Map.Entry entry2 = (Map.Entry) it3.next();
                                                        String str13 = (String) entry2.getKey();
                                                        zf8Var = (zf8) entry2.getValue();
                                                        obj = concurrentHashMap.get(str13);
                                                        if (obj != null) {
                                                            rf8Var = (rf8) obj;
                                                            str2 = zf8Var.a;
                                                            if (str2 != null) {
                                                                i3 = rf8Var.b;
                                                                switch (i3) {
                                                                    case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        if (baseBackup == null) {
                                                                            baseBackup = folderMetadata8.getBaseBackup();
                                                                        }
                                                                        baseBackup2 = baseBackup;
                                                                        if (baseBackup2 != null) {
                                                                            baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup2, str2, null, null, null, null, null, false, 126, null);
                                                                        } else {
                                                                            baseBackupCopy$default = null;
                                                                        }
                                                                        baseBackup = baseBackupCopy$default;
                                                                        concurrentHashMap = concurrentHashMap4;
                                                                        it3 = it4;
                                                                        folderMetadata11 = folderMetadata8;
                                                                        break;
                                                                    case 31:
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        if (baseBackup == null) {
                                                                            baseBackup = folderMetadata8.getBaseBackup();
                                                                        }
                                                                        baseBackup3 = baseBackup;
                                                                        if (baseBackup3 != null) {
                                                                            baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup3, null, null, null, str2, null, null, false, 119, null);
                                                                        } else {
                                                                            baseBackupCopy$default = null;
                                                                        }
                                                                        baseBackup = baseBackupCopy$default;
                                                                        concurrentHashMap = concurrentHashMap4;
                                                                        it3 = it4;
                                                                        folderMetadata11 = folderMetadata8;
                                                                        break;
                                                                    case 32:
                                                                        if (linkedHashMap2 == null) {
                                                                            linkedHashMap2 = new LinkedHashMap();
                                                                        }
                                                                        linkedHashMap3 = linkedHashMap2;
                                                                        incrementalBackups = folderMetadata11.getIncrementalBackups();
                                                                        if (incrementalBackups != null || (collectionValues = incrementalBackups.values()) == null) {
                                                                            folderMetadata8 = folderMetadata11;
                                                                            concurrentHashMap4 = concurrentHashMap;
                                                                            it4 = it3;
                                                                            incrementalBackup = null;
                                                                        } else {
                                                                            Iterator<T> it9 = collectionValues.iterator();
                                                                            while (true) {
                                                                                if (it9.hasNext()) {
                                                                                    next = it9.next();
                                                                                    folderMetadata8 = folderMetadata11;
                                                                                    concurrentHashMap4 = concurrentHashMap;
                                                                                    it4 = it3;
                                                                                    if (!new q63(((FolderMetadata.IncrementalBackup) next).getBackupLink(), 1).p().equals(str13)) {
                                                                                        concurrentHashMap = concurrentHashMap4;
                                                                                        it3 = it4;
                                                                                        folderMetadata11 = folderMetadata8;
                                                                                    }
                                                                                } else {
                                                                                    folderMetadata8 = folderMetadata11;
                                                                                    concurrentHashMap4 = concurrentHashMap;
                                                                                    it4 = it3;
                                                                                    next = null;
                                                                                }
                                                                            }
                                                                            incrementalBackup = (FolderMetadata.IncrementalBackup) next;
                                                                        }
                                                                        if (incrementalBackup != null) {
                                                                            str3 = ((zf8) x65.p0(concurrentHashMap3, new q63(incrementalBackup.getManifestLink(), 1).p())).a;
                                                                            if (str3 != null) {
                                                                                incrementalBackupCopy$default = FolderMetadata.IncrementalBackup.copy$default(incrementalBackup, str2, null, null, str3, null, null, false, 118, null);
                                                                                setKeySet = linkedHashMap3.keySet();
                                                                                if (setKeySet != null || !setKeySet.isEmpty()) {
                                                                                    it5 = setKeySet.iterator();
                                                                                    while (it5.hasNext()) {
                                                                                        if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                linkedHashMap3.put(incrementalBackupCopy$default.getTimestamp(), incrementalBackupCopy$default);
                                                                                linkedHashMap2 = linkedHashMap3;
                                                                                concurrentHashMap = concurrentHashMap4;
                                                                                it3 = it4;
                                                                                folderMetadata11 = folderMetadata8;
                                                                            } else {
                                                                                c6.f("Manifest link seems to be null");
                                                                            }
                                                                        } else {
                                                                            c6.f("Unable to find uploaded file's Incremental backup in the local metadata");
                                                                        }
                                                                        break;
                                                                    case 33:
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        concurrentHashMap = concurrentHashMap4;
                                                                        it3 = it4;
                                                                        folderMetadata11 = folderMetadata8;
                                                                        break;
                                                                    default:
                                                                        throw new io5(xs1.h(i3, "Cloud file type ", " not implemented"));
                                                                }
                                                            } else {
                                                                c6.f("Required value was null.");
                                                            }
                                                        } else {
                                                            c6.f("Required value was null.");
                                                        }
                                                    } else {
                                                        if (baseBackup != null) {
                                                            folderMetadata7 = io3Var.h;
                                                            if (folderMetadata7 != null) {
                                                                folderMetadataCopy$default2 = FolderMetadata.copy$default(folderMetadata7, null, baseBackup, null, 5, null);
                                                            } else {
                                                                folderMetadataCopy$default2 = null;
                                                            }
                                                            io3Var.h = folderMetadataCopy$default2;
                                                        }
                                                        if (linkedHashMap2 != null && !linkedHashMap2.isEmpty()) {
                                                            folderMetadata6 = io3Var.h;
                                                            if (folderMetadata6 != null) {
                                                                folderMetadataCopy$default = FolderMetadata.copy$default(folderMetadata6, null, null, linkedHashMap2, 3, null);
                                                            } else {
                                                                folderMetadataCopy$default = null;
                                                            }
                                                            io3Var.h = folderMetadataCopy$default;
                                                        }
                                                        folderMetadata4 = io3Var.h;
                                                        if (folderMetadata4 != null) {
                                                            z4 = true;
                                                            z5 = folderMetadata4.hasBackups();
                                                            folderMetadata5 = io3Var.h;
                                                            if (folderMetadata5 == null && folderMetadata5.hasValidCloudLinks() == z4) {
                                                                z6 = z4;
                                                            } else {
                                                                z6 = false;
                                                            }
                                                            if (z5 || !z6) {
                                                                if (!z5) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                if (!z6) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                io3Var.a(concurrentHashMap3);
                                                            } else {
                                                                vr6 vr6Var10 = vr6.INSTANCE;
                                                                vr6.i$default(vr6Var10, "FolderUploadTask", "Uploading metadata", null, 4, null);
                                                                FolderMetadata folderMetadata12 = io3Var.h;
                                                                if (folderMetadata12 != null) {
                                                                    if (folderMetadata12.hasBackups()) {
                                                                        try {
                                                                            af3 af3VarWriteToFirebaseNode = folderMetadata12.writeToFirebaseNode();
                                                                            if (af3VarWriteToFirebaseNode instanceof ye3) {
                                                                                ho3Var2.c = dj7.k(folderMetadata12.toDisplayString(), ". Error: ", ((ye3) af3VarWriteToFirebaseNode).b.b);
                                                                            } else if (pe4.d(af3VarWriteToFirebaseNode, ze3.b)) {
                                                                                q63 q63VarG = kj3Var6.g();
                                                                                if (q63VarG == null || !q63VarG.k()) {
                                                                                    vr6Var = vr6Var10;
                                                                                } else {
                                                                                    gv7 gv7Var3 = sk3.a;
                                                                                    vr6.i$default(vr6Var, "FolderCloudManifestCache", "Caching latest manifest file from cloud: ".concat(q63VarG.p()), null, 4, null);
                                                                                    if (!folderMetadata12.hasValidCloudLinks()) {
                                                                                        vr6Var = vr6Var10;
                                                                                        g84.f(xs1.j("FolderMetadata doesn't have valid cloud links: ", folderMetadata12.toDisplayString()));
                                                                                    } else if (q63VarG.j()) {
                                                                                        q63 q63VarB = sk3.b(folderMetadata12.getFolderItem().getId());
                                                                                        if (q63VarB.j()) {
                                                                                            vr6Var = vr6Var10;
                                                                                            q63VarB.h();
                                                                                        } else {
                                                                                            vr6Var = vr6Var10;
                                                                                            io4.g(q63VarB);
                                                                                        }
                                                                                        q63VarG.d(q63VarB, null);
                                                                                    } else {
                                                                                        vr6Var = vr6Var10;
                                                                                        vr6.w$default(vr6Var, "FolderCloudManifestCache", "Manifest file not found at ".concat(q63VarG.v()), null, 4, null);
                                                                                    }
                                                                                }
                                                                                vr6.i$default(vr6Var, "FolderUploadTask", Const.u(jCurrentTimeMillis2, System.currentTimeMillis()), null, 4, null);
                                                                            } else {
                                                                                q.j();
                                                                            }
                                                                        } catch (Exception e2) {
                                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Error uploading metadata", e2, null, 8, null);
                                                                            ho3Var2.c = dj7.k(folderMetadata12.toDisplayString(), ". Error: ", e2.getMessage());
                                                                        }
                                                                    } else {
                                                                        vr6Var10.i("FolderUploadTask", "FolderMetadata has no backups! Not uploading to database.", vr6.a.YELLOW);
                                                                    }
                                                                    io3Var.a(concurrentHashMap3);
                                                                } else {
                                                                    c6.f("Cloud metadata null!!");
                                                                }
                                                            }
                                                        } else {
                                                            z4 = true;
                                                        }
                                                        folderMetadata5 = io3Var.h;
                                                        if (folderMetadata5 == null) {
                                                            z6 = false;
                                                        } else {
                                                            z6 = false;
                                                        }
                                                        if (z5) {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        } else {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        }
                                                    }
                                                }
                                            } else if (!concurrentHashMap3.isEmpty()) {
                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "asyncTasks.size != uploadResults.size, Deleting uploaded files...", null, 4, null);
                                                io3Var.a(concurrentHashMap3);
                                            }
                                        } catch (ClassCastException unused2) {
                                            z7 = z2;
                                        }
                                    } catch (ClassCastException unused3) {
                                        z2 = false;
                                    }
                                }
                                z3 = z2;
                                zn4.a(4, arrayList2, z3);
                                if (io3Var.i) {
                                    if (!concurrentHashMap3.isEmpty()) {
                                        vr6.w$default(vr6.INSTANCE, "FolderUploadTask", "Upload cancelled, deleting uploaded files from this attempt...", null, 4, null);
                                        io3Var.a(concurrentHashMap3);
                                    }
                                } else if (arrayList2.size() != concurrentHashMap3.size()) {
                                    vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Upload complete. Assembling metadata details", null, 4, null);
                                    folderMetadata3 = io3Var.h;
                                    if (folderMetadata3 != null) {
                                        linkedHashMap = null;
                                    } else {
                                        linkedHashMap = null;
                                    }
                                    it3 = concurrentHashMap3.entrySet().iterator();
                                    linkedHashMap2 = linkedHashMap;
                                    baseBackup = null;
                                    while (true) {
                                        if (it3.hasNext()) {
                                            Map.Entry entry3 = (Map.Entry) it3.next();
                                            String str14 = (String) entry3.getKey();
                                            zf8Var = (zf8) entry3.getValue();
                                            obj = concurrentHashMap.get(str14);
                                            if (obj != null) {
                                                rf8Var = (rf8) obj;
                                                str2 = zf8Var.a;
                                                if (str2 != null) {
                                                    i3 = rf8Var.b;
                                                    switch (i3) {
                                                        case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                                            folderMetadata8 = folderMetadata11;
                                                            concurrentHashMap4 = concurrentHashMap;
                                                            it4 = it3;
                                                            if (baseBackup == null) {
                                                                baseBackup = folderMetadata8.getBaseBackup();
                                                            }
                                                            baseBackup2 = baseBackup;
                                                            if (baseBackup2 != null) {
                                                                baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup2, str2, null, null, null, null, null, false, 126, null);
                                                            } else {
                                                                baseBackupCopy$default = null;
                                                            }
                                                            baseBackup = baseBackupCopy$default;
                                                            concurrentHashMap = concurrentHashMap4;
                                                            it3 = it4;
                                                            folderMetadata11 = folderMetadata8;
                                                            break;
                                                        case 31:
                                                            folderMetadata8 = folderMetadata11;
                                                            concurrentHashMap4 = concurrentHashMap;
                                                            it4 = it3;
                                                            if (baseBackup == null) {
                                                                baseBackup = folderMetadata8.getBaseBackup();
                                                            }
                                                            baseBackup3 = baseBackup;
                                                            if (baseBackup3 != null) {
                                                                baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup3, null, null, null, str2, null, null, false, 119, null);
                                                            } else {
                                                                baseBackupCopy$default = null;
                                                            }
                                                            baseBackup = baseBackupCopy$default;
                                                            concurrentHashMap = concurrentHashMap4;
                                                            it3 = it4;
                                                            folderMetadata11 = folderMetadata8;
                                                            break;
                                                        case 32:
                                                            if (linkedHashMap2 == null) {
                                                                linkedHashMap2 = new LinkedHashMap();
                                                            }
                                                            linkedHashMap3 = linkedHashMap2;
                                                            incrementalBackups = folderMetadata11.getIncrementalBackups();
                                                            if (incrementalBackups != null) {
                                                                folderMetadata8 = folderMetadata11;
                                                                concurrentHashMap4 = concurrentHashMap;
                                                                it4 = it3;
                                                                incrementalBackup = null;
                                                            } else {
                                                                folderMetadata8 = folderMetadata11;
                                                                concurrentHashMap4 = concurrentHashMap;
                                                                it4 = it3;
                                                                incrementalBackup = null;
                                                            }
                                                            if (incrementalBackup != null) {
                                                                str3 = ((zf8) x65.p0(concurrentHashMap3, new q63(incrementalBackup.getManifestLink(), 1).p())).a;
                                                                if (str3 != null) {
                                                                    incrementalBackupCopy$default = FolderMetadata.IncrementalBackup.copy$default(incrementalBackup, str2, null, null, str3, null, null, false, 118, null);
                                                                    setKeySet = linkedHashMap3.keySet();
                                                                    if (setKeySet != null) {
                                                                        it5 = setKeySet.iterator();
                                                                        while (it5.hasNext()) {
                                                                            if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                            }
                                                                        }
                                                                    } else {
                                                                        it5 = setKeySet.iterator();
                                                                        while (it5.hasNext()) {
                                                                            if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                            }
                                                                        }
                                                                    }
                                                                    linkedHashMap3.put(incrementalBackupCopy$default.getTimestamp(), incrementalBackupCopy$default);
                                                                    linkedHashMap2 = linkedHashMap3;
                                                                    concurrentHashMap = concurrentHashMap4;
                                                                    it3 = it4;
                                                                    folderMetadata11 = folderMetadata8;
                                                                } else {
                                                                    c6.f("Manifest link seems to be null");
                                                                }
                                                            } else {
                                                                c6.f("Unable to find uploaded file's Incremental backup in the local metadata");
                                                            }
                                                            break;
                                                        case 33:
                                                            folderMetadata8 = folderMetadata11;
                                                            concurrentHashMap4 = concurrentHashMap;
                                                            it4 = it3;
                                                            concurrentHashMap = concurrentHashMap4;
                                                            it3 = it4;
                                                            folderMetadata11 = folderMetadata8;
                                                            break;
                                                        default:
                                                            throw new io5(xs1.h(i3, "Cloud file type ", " not implemented"));
                                                    }
                                                } else {
                                                    c6.f("Required value was null.");
                                                }
                                            } else {
                                                c6.f("Required value was null.");
                                            }
                                        } else {
                                            if (baseBackup != null) {
                                                folderMetadata7 = io3Var.h;
                                                if (folderMetadata7 != null) {
                                                    folderMetadataCopy$default2 = FolderMetadata.copy$default(folderMetadata7, null, baseBackup, null, 5, null);
                                                } else {
                                                    folderMetadataCopy$default2 = null;
                                                }
                                                io3Var.h = folderMetadataCopy$default2;
                                            }
                                            if (linkedHashMap2 != null) {
                                                folderMetadata6 = io3Var.h;
                                                if (folderMetadata6 != null) {
                                                    folderMetadataCopy$default = FolderMetadata.copy$default(folderMetadata6, null, null, linkedHashMap2, 3, null);
                                                } else {
                                                    folderMetadataCopy$default = null;
                                                }
                                                io3Var.h = folderMetadataCopy$default;
                                            }
                                            folderMetadata4 = io3Var.h;
                                            if (folderMetadata4 != null) {
                                                z4 = true;
                                                if (folderMetadata4.hasBackups()) {
                                                }
                                                folderMetadata5 = io3Var.h;
                                                if (folderMetadata5 == null) {
                                                    z6 = false;
                                                } else {
                                                    z6 = false;
                                                }
                                                if (z5) {
                                                    if (!z5) {
                                                        vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                    }
                                                    if (!z6) {
                                                        vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                    }
                                                    io3Var.a(concurrentHashMap3);
                                                } else {
                                                    if (!z5) {
                                                        vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                    }
                                                    if (!z6) {
                                                        vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                    }
                                                    io3Var.a(concurrentHashMap3);
                                                }
                                            } else {
                                                z4 = true;
                                            }
                                            folderMetadata5 = io3Var.h;
                                            if (folderMetadata5 == null) {
                                                z6 = false;
                                            } else {
                                                z6 = false;
                                            }
                                            if (z5) {
                                                if (!z5) {
                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                }
                                                if (!z6) {
                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                }
                                                io3Var.a(concurrentHashMap3);
                                            } else {
                                                if (!z5) {
                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                }
                                                if (!z6) {
                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                }
                                                io3Var.a(concurrentHashMap3);
                                            }
                                        }
                                    }
                                } else if (!concurrentHashMap3.isEmpty()) {
                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "asyncTasks.size != uploadResults.size, Deleting uploaded files...", null, 4, null);
                                    io3Var.a(concurrentHashMap3);
                                }
                            }
                            str = null;
                            qp3Var2.o(null);
                            qp3Var2.o(str);
                        }
                        ho3Var = null;
                    }
                } else {
                    String str15 = "Unable to read current cloud status from firebase for this upload: " + hg7Var.b;
                    vr6.e$default(vr6Var6, "FolderUploadTask", str15, null, 4, null);
                    ho3Var2.a = str15;
                }
                str = null;
                qp3Var2.o(str);
            } else {
                vr6.e$default(vr6Var6, "FolderUploadTask", "Upload requires WiFi, but WiFi isn't available. Wait for it in case of network switch.", null, 4, null);
                if (Const.a()) {
                    vr6.i$default(vr6Var6, "FolderUploadTask", "Checking cloud for current sync status", null, 4, null);
                    um3 um3Var2 = FolderMetadata.Companion;
                    String id2 = folderItem2.getId();
                    um3Var2.getClass();
                    id2.getClass();
                    l73VarA = cf3.a(re3.h().d(id2), true);
                    if (l73VarA instanceof we3) {
                        hg7Var = new hg7(null, ((we3) l73VarA).n, 1);
                    } else if (l73VarA instanceof xe3) {
                        hg7Var = new hg7(((xe3) l73VarA).n.c(FolderMetadata.class), null, 2);
                    } else {
                        q.j();
                        ho3Var = null;
                    }
                    if (hg7Var.c) {
                        String str16 = "Unable to read current cloud status from firebase for this upload: " + hg7Var.b;
                        vr6.e$default(vr6Var6, "FolderUploadTask", str16, null, 4, null);
                        ho3Var2.a = str16;
                    } else {
                        folderMetadata = (FolderMetadata) hg7Var.a;
                        kj3Var2 = io3Var.a.c;
                        kj3 kj3Var7 = io3Var.d;
                        if (kj3Var2 != null) {
                            folderMetadata2 = folderMetadata;
                            if (folderMetadata2 != null) {
                                folderMetadata2.isValid();
                            }
                            if (folderMetadata2 != null) {
                                folderMetadataCopyWithNoBackups = folderMetadata11.copyWithNoBackups();
                            } else {
                                folderMetadataCopyWithNoBackups = folderMetadata11.copyWithNoBackups();
                            }
                            io3Var.h = folderMetadataCopyWithNoBackups;
                            concurrentHashMap = new ConcurrentHashMap();
                            arrayList = new ArrayList();
                            fo3 fo3Var2 = io3Var.f;
                            list = fo3Var2.a;
                            if (list != null) {
                                arrayList.addAll(list);
                            }
                            list2 = fo3Var2.b;
                            if (list2 != null) {
                                arrayList.addAll(list2);
                            }
                            it = arrayList.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    rf8Var2 = (rf8) it.next();
                                    vr6Var2 = vr6.INSTANCE;
                                    String str17 = rf8Var2.h;
                                    q63Var = rf8Var2.a;
                                    i4 = rf8Var2.b;
                                    vr6.i$default(vr6Var2, "FolderUploadTask", xs1.j("Checking upload for ", str17), null, 4, null);
                                    folderMetadata9 = io3Var.h;
                                    if (folderMetadata9 == null) {
                                        ea3Var = new ea3(null, false);
                                    } else {
                                        switch (i4) {
                                            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                            case 31:
                                                baseBackup4 = folderMetadata9.getBaseBackup();
                                                if (i4 == 31) {
                                                    if (baseBackup4 != null) {
                                                        backupLink = baseBackup4.getManifestLink();
                                                    } else {
                                                        backupLink = null;
                                                    }
                                                } else if (baseBackup4 != null) {
                                                    backupLink = baseBackup4.getBackupLink();
                                                } else {
                                                    backupLink = null;
                                                }
                                                if (!folderMetadata9.hasBaseBackup()) {
                                                    z8 = true;
                                                } else if (baseBackup4 == null) {
                                                    l0.e("Synced base backup null!!");
                                                    break;
                                                } else {
                                                    baseBackup5 = folderMetadata11.getBaseBackup();
                                                    if (baseBackup5 == null) {
                                                        c6.f("Local base backup null!!");
                                                        break;
                                                    } else if (baseBackup5.getSize() != baseBackup4.getSize()) {
                                                        z8 = true;
                                                    } else {
                                                        z8 = false;
                                                    }
                                                }
                                                backupLink2 = backupLink;
                                                boolean z111 = !z8;
                                                if (!z8) {
                                                    vr6.i$default(vr6Var2, "FolderUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                }
                                                ea3Var = new ea3(backupLink2, z111);
                                                break;
                                            case 32:
                                            case 33:
                                                strA = jj3.a(q63Var);
                                                incrementalBackups3 = folderMetadata9.getIncrementalBackups();
                                                if (incrementalBackups3 != null) {
                                                    incrementalBackup2 = incrementalBackups3.get(strA);
                                                } else {
                                                    incrementalBackup2 = null;
                                                }
                                                if (i4 == 33) {
                                                    if (incrementalBackup2 != null) {
                                                        backupLink2 = incrementalBackup2.getManifestLink();
                                                    } else {
                                                        backupLink2 = null;
                                                    }
                                                } else if (incrementalBackup2 != null) {
                                                    backupLink2 = incrementalBackup2.getBackupLink();
                                                } else {
                                                    backupLink2 = null;
                                                }
                                                if (incrementalBackup2 == null) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                boolean z112 = !z8;
                                                if (!z8) {
                                                    vr6.i$default(vr6Var2, "FolderUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                }
                                                ea3Var = new ea3(backupLink2, z112);
                                                break;
                                            default:
                                                throw new io5(xs1.h(i4, "Cloud file type ", " not implemented"));
                                        }
                                    }
                                    if (!ea3Var.a) {
                                        rf8Var2.f = (String) ea3Var.b;
                                        concurrentHashMap.put(q63Var.p(), rf8Var2);
                                    }
                                } else {
                                    if (concurrentHashMap.isEmpty()) {
                                        vr6 vr6Var11 = vr6.INSTANCE;
                                        Set setKeySet3 = concurrentHashMap.keySet();
                                        setKeySet3.getClass();
                                        vr6.i$default(vr6Var11, "FolderUploadTask", "Upload tasks: ".concat(el1.Y0(setKeySet3, null, null, null, null, 63)), null, 4, null);
                                        Collection collectionValues4 = concurrentHashMap.values();
                                        collectionValues4.getClass();
                                        it2 = collectionValues4.iterator();
                                        jA = 0;
                                        while (it2.hasNext()) {
                                            jA += ((rf8) it2.next()).a();
                                        }
                                        lValueOf = Long.valueOf(jA);
                                        if (jA <= 0) {
                                            lValueOf = null;
                                        }
                                        if (lValueOf != null) {
                                            jLongValue = lValueOf.longValue();
                                        } else {
                                            jLongValue = 1;
                                        }
                                        j = jLongValue;
                                        concurrentHashMap2 = new ConcurrentHashMap();
                                        kh6Var = new kh6();
                                        kh6Var2 = new kh6();
                                        concurrentHashMap3 = new ConcurrentHashMap();
                                        arrayList2 = new ArrayList(concurrentHashMap.size());
                                        while (r5.hasNext()) {
                                            String str18 = (String) entry.getKey();
                                            rf8 rf8Var4 = (rf8) entry.getValue();
                                            zn4 zn4Var3 = zn4.a;
                                            arrayList2.add(new vn4(new rz(io3Var, str18, rf8Var4, concurrentHashMap3, concurrentHashMap2, kh6Var, j, kh6Var2)));
                                        }
                                        ex6 ex6Var3 = qp3Var2.i;
                                        SwiftApp.Companion companion3 = SwiftApp.d;
                                        ex6Var3.k(SwiftApp.Companion.c().getString(R.string.uploading_backup_files));
                                        long jCurrentTimeMillis3 = System.currentTimeMillis();
                                        zn4 zn4Var4 = zn4.a;
                                        d45.b.getClass();
                                        mFirebaseUserA = d45.a();
                                        if (mFirebaseUserA != null) {
                                            boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                                        } else {
                                            boolValueOf = null;
                                        }
                                        if (pe4.d(boolValueOf, Boolean.TRUE)) {
                                            sharedPreferences = cz4.f;
                                            z2 = false;
                                            if (sharedPreferences == null) {
                                                pe4.F("prefs");
                                                throw null;
                                            }
                                            z7 = sharedPreferences.getBoolean("parallel_cloud_transfers", false);
                                            if (z7) {
                                                z3 = true;
                                            }
                                            zn4.a(4, arrayList2, z3);
                                            if (io3Var.i) {
                                                if (!concurrentHashMap3.isEmpty()) {
                                                    vr6.w$default(vr6.INSTANCE, "FolderUploadTask", "Upload cancelled, deleting uploaded files from this attempt...", null, 4, null);
                                                    io3Var.a(concurrentHashMap3);
                                                }
                                            } else if (arrayList2.size() != concurrentHashMap3.size()) {
                                                vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Upload complete. Assembling metadata details", null, 4, null);
                                                folderMetadata3 = io3Var.h;
                                                if (folderMetadata3 != null) {
                                                    linkedHashMap = null;
                                                } else {
                                                    linkedHashMap = null;
                                                }
                                                it3 = concurrentHashMap3.entrySet().iterator();
                                                linkedHashMap2 = linkedHashMap;
                                                baseBackup = null;
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        Map.Entry entry4 = (Map.Entry) it3.next();
                                                        String str19 = (String) entry4.getKey();
                                                        zf8Var = (zf8) entry4.getValue();
                                                        obj = concurrentHashMap.get(str19);
                                                        if (obj != null) {
                                                            rf8Var = (rf8) obj;
                                                            str2 = zf8Var.a;
                                                            if (str2 != null) {
                                                                i3 = rf8Var.b;
                                                                switch (i3) {
                                                                    case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        if (baseBackup == null) {
                                                                            baseBackup = folderMetadata8.getBaseBackup();
                                                                        }
                                                                        baseBackup2 = baseBackup;
                                                                        if (baseBackup2 != null) {
                                                                            baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup2, str2, null, null, null, null, null, false, 126, null);
                                                                        } else {
                                                                            baseBackupCopy$default = null;
                                                                        }
                                                                        baseBackup = baseBackupCopy$default;
                                                                        concurrentHashMap = concurrentHashMap4;
                                                                        it3 = it4;
                                                                        folderMetadata11 = folderMetadata8;
                                                                        break;
                                                                    case 31:
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        if (baseBackup == null) {
                                                                            baseBackup = folderMetadata8.getBaseBackup();
                                                                        }
                                                                        baseBackup3 = baseBackup;
                                                                        if (baseBackup3 != null) {
                                                                            baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup3, null, null, null, str2, null, null, false, 119, null);
                                                                        } else {
                                                                            baseBackupCopy$default = null;
                                                                        }
                                                                        baseBackup = baseBackupCopy$default;
                                                                        concurrentHashMap = concurrentHashMap4;
                                                                        it3 = it4;
                                                                        folderMetadata11 = folderMetadata8;
                                                                        break;
                                                                    case 32:
                                                                        if (linkedHashMap2 == null) {
                                                                            linkedHashMap2 = new LinkedHashMap();
                                                                        }
                                                                        linkedHashMap3 = linkedHashMap2;
                                                                        incrementalBackups = folderMetadata11.getIncrementalBackups();
                                                                        if (incrementalBackups != null) {
                                                                            folderMetadata8 = folderMetadata11;
                                                                            concurrentHashMap4 = concurrentHashMap;
                                                                            it4 = it3;
                                                                            incrementalBackup = null;
                                                                        } else {
                                                                            folderMetadata8 = folderMetadata11;
                                                                            concurrentHashMap4 = concurrentHashMap;
                                                                            it4 = it3;
                                                                            incrementalBackup = null;
                                                                        }
                                                                        if (incrementalBackup != null) {
                                                                            str3 = ((zf8) x65.p0(concurrentHashMap3, new q63(incrementalBackup.getManifestLink(), 1).p())).a;
                                                                            if (str3 != null) {
                                                                                incrementalBackupCopy$default = FolderMetadata.IncrementalBackup.copy$default(incrementalBackup, str2, null, null, str3, null, null, false, 118, null);
                                                                                setKeySet = linkedHashMap3.keySet();
                                                                                if (setKeySet != null) {
                                                                                    it5 = setKeySet.iterator();
                                                                                    while (it5.hasNext()) {
                                                                                        if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    it5 = setKeySet.iterator();
                                                                                    while (it5.hasNext()) {
                                                                                        if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                linkedHashMap3.put(incrementalBackupCopy$default.getTimestamp(), incrementalBackupCopy$default);
                                                                                linkedHashMap2 = linkedHashMap3;
                                                                                concurrentHashMap = concurrentHashMap4;
                                                                                it3 = it4;
                                                                                folderMetadata11 = folderMetadata8;
                                                                            } else {
                                                                                c6.f("Manifest link seems to be null");
                                                                            }
                                                                        } else {
                                                                            c6.f("Unable to find uploaded file's Incremental backup in the local metadata");
                                                                        }
                                                                        break;
                                                                    case 33:
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        concurrentHashMap = concurrentHashMap4;
                                                                        it3 = it4;
                                                                        folderMetadata11 = folderMetadata8;
                                                                        break;
                                                                    default:
                                                                        throw new io5(xs1.h(i3, "Cloud file type ", " not implemented"));
                                                                }
                                                            } else {
                                                                c6.f("Required value was null.");
                                                            }
                                                        } else {
                                                            c6.f("Required value was null.");
                                                        }
                                                    } else {
                                                        if (baseBackup != null) {
                                                            folderMetadata7 = io3Var.h;
                                                            if (folderMetadata7 != null) {
                                                                folderMetadataCopy$default2 = FolderMetadata.copy$default(folderMetadata7, null, baseBackup, null, 5, null);
                                                            } else {
                                                                folderMetadataCopy$default2 = null;
                                                            }
                                                            io3Var.h = folderMetadataCopy$default2;
                                                        }
                                                        if (linkedHashMap2 != null) {
                                                            folderMetadata6 = io3Var.h;
                                                            if (folderMetadata6 != null) {
                                                                folderMetadataCopy$default = FolderMetadata.copy$default(folderMetadata6, null, null, linkedHashMap2, 3, null);
                                                            } else {
                                                                folderMetadataCopy$default = null;
                                                            }
                                                            io3Var.h = folderMetadataCopy$default;
                                                        }
                                                        folderMetadata4 = io3Var.h;
                                                        if (folderMetadata4 != null) {
                                                            z4 = true;
                                                            if (folderMetadata4.hasBackups()) {
                                                            }
                                                            folderMetadata5 = io3Var.h;
                                                            if (folderMetadata5 == null) {
                                                                z6 = false;
                                                            } else {
                                                                z6 = false;
                                                            }
                                                            if (z5) {
                                                                if (!z5) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                if (!z6) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                io3Var.a(concurrentHashMap3);
                                                            } else {
                                                                if (!z5) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                if (!z6) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                io3Var.a(concurrentHashMap3);
                                                            }
                                                        } else {
                                                            z4 = true;
                                                        }
                                                        folderMetadata5 = io3Var.h;
                                                        if (folderMetadata5 == null) {
                                                            z6 = false;
                                                        } else {
                                                            z6 = false;
                                                        }
                                                        if (z5) {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        } else {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        }
                                                    }
                                                }
                                            } else if (!concurrentHashMap3.isEmpty()) {
                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "asyncTasks.size != uploadResults.size, Deleting uploaded files...", null, 4, null);
                                                io3Var.a(concurrentHashMap3);
                                            }
                                        } else {
                                            z2 = false;
                                        }
                                        z3 = z2;
                                        zn4.a(4, arrayList2, z3);
                                        if (io3Var.i) {
                                            if (!concurrentHashMap3.isEmpty()) {
                                                vr6.w$default(vr6.INSTANCE, "FolderUploadTask", "Upload cancelled, deleting uploaded files from this attempt...", null, 4, null);
                                                io3Var.a(concurrentHashMap3);
                                            }
                                        } else if (arrayList2.size() != concurrentHashMap3.size()) {
                                            vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Upload complete. Assembling metadata details", null, 4, null);
                                            folderMetadata3 = io3Var.h;
                                            if (folderMetadata3 != null) {
                                                linkedHashMap = null;
                                            } else {
                                                linkedHashMap = null;
                                            }
                                            it3 = concurrentHashMap3.entrySet().iterator();
                                            linkedHashMap2 = linkedHashMap;
                                            baseBackup = null;
                                            while (true) {
                                                if (it3.hasNext()) {
                                                    Map.Entry entry5 = (Map.Entry) it3.next();
                                                    String str110 = (String) entry5.getKey();
                                                    zf8Var = (zf8) entry5.getValue();
                                                    obj = concurrentHashMap.get(str110);
                                                    if (obj != null) {
                                                        rf8Var = (rf8) obj;
                                                        str2 = zf8Var.a;
                                                        if (str2 != null) {
                                                            i3 = rf8Var.b;
                                                            switch (i3) {
                                                                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                                                    folderMetadata8 = folderMetadata11;
                                                                    concurrentHashMap4 = concurrentHashMap;
                                                                    it4 = it3;
                                                                    if (baseBackup == null) {
                                                                        baseBackup = folderMetadata8.getBaseBackup();
                                                                    }
                                                                    baseBackup2 = baseBackup;
                                                                    if (baseBackup2 != null) {
                                                                        baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup2, str2, null, null, null, null, null, false, 126, null);
                                                                    } else {
                                                                        baseBackupCopy$default = null;
                                                                    }
                                                                    baseBackup = baseBackupCopy$default;
                                                                    concurrentHashMap = concurrentHashMap4;
                                                                    it3 = it4;
                                                                    folderMetadata11 = folderMetadata8;
                                                                    break;
                                                                case 31:
                                                                    folderMetadata8 = folderMetadata11;
                                                                    concurrentHashMap4 = concurrentHashMap;
                                                                    it4 = it3;
                                                                    if (baseBackup == null) {
                                                                        baseBackup = folderMetadata8.getBaseBackup();
                                                                    }
                                                                    baseBackup3 = baseBackup;
                                                                    if (baseBackup3 != null) {
                                                                        baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup3, null, null, null, str2, null, null, false, 119, null);
                                                                    } else {
                                                                        baseBackupCopy$default = null;
                                                                    }
                                                                    baseBackup = baseBackupCopy$default;
                                                                    concurrentHashMap = concurrentHashMap4;
                                                                    it3 = it4;
                                                                    folderMetadata11 = folderMetadata8;
                                                                    break;
                                                                case 32:
                                                                    if (linkedHashMap2 == null) {
                                                                        linkedHashMap2 = new LinkedHashMap();
                                                                    }
                                                                    linkedHashMap3 = linkedHashMap2;
                                                                    incrementalBackups = folderMetadata11.getIncrementalBackups();
                                                                    if (incrementalBackups != null) {
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        incrementalBackup = null;
                                                                    } else {
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        incrementalBackup = null;
                                                                    }
                                                                    if (incrementalBackup != null) {
                                                                        str3 = ((zf8) x65.p0(concurrentHashMap3, new q63(incrementalBackup.getManifestLink(), 1).p())).a;
                                                                        if (str3 != null) {
                                                                            incrementalBackupCopy$default = FolderMetadata.IncrementalBackup.copy$default(incrementalBackup, str2, null, null, str3, null, null, false, 118, null);
                                                                            setKeySet = linkedHashMap3.keySet();
                                                                            if (setKeySet != null) {
                                                                                it5 = setKeySet.iterator();
                                                                                while (it5.hasNext()) {
                                                                                    if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                        vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it5 = setKeySet.iterator();
                                                                                while (it5.hasNext()) {
                                                                                    if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                        vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                                    }
                                                                                }
                                                                            }
                                                                            linkedHashMap3.put(incrementalBackupCopy$default.getTimestamp(), incrementalBackupCopy$default);
                                                                            linkedHashMap2 = linkedHashMap3;
                                                                            concurrentHashMap = concurrentHashMap4;
                                                                            it3 = it4;
                                                                            folderMetadata11 = folderMetadata8;
                                                                        } else {
                                                                            c6.f("Manifest link seems to be null");
                                                                        }
                                                                    } else {
                                                                        c6.f("Unable to find uploaded file's Incremental backup in the local metadata");
                                                                    }
                                                                    break;
                                                                case 33:
                                                                    folderMetadata8 = folderMetadata11;
                                                                    concurrentHashMap4 = concurrentHashMap;
                                                                    it4 = it3;
                                                                    concurrentHashMap = concurrentHashMap4;
                                                                    it3 = it4;
                                                                    folderMetadata11 = folderMetadata8;
                                                                    break;
                                                                default:
                                                                    throw new io5(xs1.h(i3, "Cloud file type ", " not implemented"));
                                                            }
                                                        } else {
                                                            c6.f("Required value was null.");
                                                        }
                                                    } else {
                                                        c6.f("Required value was null.");
                                                    }
                                                } else {
                                                    if (baseBackup != null) {
                                                        folderMetadata7 = io3Var.h;
                                                        if (folderMetadata7 != null) {
                                                            folderMetadataCopy$default2 = FolderMetadata.copy$default(folderMetadata7, null, baseBackup, null, 5, null);
                                                        } else {
                                                            folderMetadataCopy$default2 = null;
                                                        }
                                                        io3Var.h = folderMetadataCopy$default2;
                                                    }
                                                    if (linkedHashMap2 != null) {
                                                        folderMetadata6 = io3Var.h;
                                                        if (folderMetadata6 != null) {
                                                            folderMetadataCopy$default = FolderMetadata.copy$default(folderMetadata6, null, null, linkedHashMap2, 3, null);
                                                        } else {
                                                            folderMetadataCopy$default = null;
                                                        }
                                                        io3Var.h = folderMetadataCopy$default;
                                                    }
                                                    folderMetadata4 = io3Var.h;
                                                    if (folderMetadata4 != null) {
                                                        z4 = true;
                                                        if (folderMetadata4.hasBackups()) {
                                                        }
                                                        folderMetadata5 = io3Var.h;
                                                        if (folderMetadata5 == null) {
                                                            z6 = false;
                                                        } else {
                                                            z6 = false;
                                                        }
                                                        if (z5) {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        } else {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        }
                                                    } else {
                                                        z4 = true;
                                                    }
                                                    folderMetadata5 = io3Var.h;
                                                    if (folderMetadata5 == null) {
                                                        z6 = false;
                                                    } else {
                                                        z6 = false;
                                                    }
                                                    if (z5) {
                                                        if (!z5) {
                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                        }
                                                        if (!z6) {
                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                        }
                                                        io3Var.a(concurrentHashMap3);
                                                    } else {
                                                        if (!z5) {
                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                        }
                                                        if (!z6) {
                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                        }
                                                        io3Var.a(concurrentHashMap3);
                                                    }
                                                }
                                            }
                                        } else if (!concurrentHashMap3.isEmpty()) {
                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "asyncTasks.size != uploadResults.size, Deleting uploaded files...", null, 4, null);
                                            io3Var.a(concurrentHashMap3);
                                        }
                                    } else {
                                        vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Nothing to upload!", null, 4, null);
                                    }
                                    str = null;
                                    qp3Var2.o(null);
                                    qp3Var2.o(str);
                                }
                            }
                        } else {
                            folderMetadata2 = folderMetadata;
                            if (folderMetadata2 != null) {
                                folderMetadata2.isValid();
                            }
                            if (folderMetadata2 != null) {
                                folderMetadataCopyWithNoBackups = folderMetadata11.copyWithNoBackups();
                            } else {
                                folderMetadataCopyWithNoBackups = folderMetadata11.copyWithNoBackups();
                            }
                            io3Var.h = folderMetadataCopyWithNoBackups;
                            concurrentHashMap = new ConcurrentHashMap();
                            arrayList = new ArrayList();
                            fo3 fo3Var3 = io3Var.f;
                            list = fo3Var3.a;
                            if (list != null) {
                                arrayList.addAll(list);
                            }
                            list2 = fo3Var3.b;
                            if (list2 != null) {
                                arrayList.addAll(list2);
                            }
                            it = arrayList.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    rf8Var2 = (rf8) it.next();
                                    vr6Var2 = vr6.INSTANCE;
                                    String str111 = rf8Var2.h;
                                    q63Var = rf8Var2.a;
                                    i4 = rf8Var2.b;
                                    vr6.i$default(vr6Var2, "FolderUploadTask", xs1.j("Checking upload for ", str111), null, 4, null);
                                    folderMetadata9 = io3Var.h;
                                    if (folderMetadata9 == null) {
                                        ea3Var = new ea3(null, false);
                                    } else {
                                        switch (i4) {
                                            case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                            case 31:
                                                baseBackup4 = folderMetadata9.getBaseBackup();
                                                if (i4 == 31) {
                                                    if (baseBackup4 != null) {
                                                        backupLink = baseBackup4.getManifestLink();
                                                    } else {
                                                        backupLink = null;
                                                    }
                                                } else if (baseBackup4 != null) {
                                                    backupLink = baseBackup4.getBackupLink();
                                                } else {
                                                    backupLink = null;
                                                }
                                                if (!folderMetadata9.hasBaseBackup()) {
                                                    z8 = true;
                                                } else if (baseBackup4 == null) {
                                                    l0.e("Synced base backup null!!");
                                                    break;
                                                } else {
                                                    baseBackup5 = folderMetadata11.getBaseBackup();
                                                    if (baseBackup5 == null) {
                                                        c6.f("Local base backup null!!");
                                                        break;
                                                    } else if (baseBackup5.getSize() != baseBackup4.getSize()) {
                                                        z8 = true;
                                                    } else {
                                                        z8 = false;
                                                    }
                                                }
                                                backupLink2 = backupLink;
                                                boolean z113 = !z8;
                                                if (!z8) {
                                                    vr6.i$default(vr6Var2, "FolderUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                }
                                                ea3Var = new ea3(backupLink2, z113);
                                                break;
                                            case 32:
                                            case 33:
                                                strA = jj3.a(q63Var);
                                                incrementalBackups3 = folderMetadata9.getIncrementalBackups();
                                                if (incrementalBackups3 != null) {
                                                    incrementalBackup2 = incrementalBackups3.get(strA);
                                                } else {
                                                    incrementalBackup2 = null;
                                                }
                                                if (i4 == 33) {
                                                    if (incrementalBackup2 != null) {
                                                        backupLink2 = incrementalBackup2.getManifestLink();
                                                    } else {
                                                        backupLink2 = null;
                                                    }
                                                } else if (incrementalBackup2 != null) {
                                                    backupLink2 = incrementalBackup2.getBackupLink();
                                                } else {
                                                    backupLink2 = null;
                                                }
                                                if (incrementalBackup2 == null) {
                                                    z8 = true;
                                                } else {
                                                    z8 = false;
                                                }
                                                boolean z114 = !z8;
                                                if (!z8) {
                                                    vr6.i$default(vr6Var2, "FolderUploadTask", "Skipped uploading, already synced", null, 4, null);
                                                }
                                                ea3Var = new ea3(backupLink2, z114);
                                                break;
                                            default:
                                                throw new io5(xs1.h(i4, "Cloud file type ", " not implemented"));
                                        }
                                    }
                                    if (!ea3Var.a) {
                                        rf8Var2.f = (String) ea3Var.b;
                                        concurrentHashMap.put(q63Var.p(), rf8Var2);
                                    }
                                } else {
                                    if (concurrentHashMap.isEmpty()) {
                                        vr6 vr6Var12 = vr6.INSTANCE;
                                        Set setKeySet4 = concurrentHashMap.keySet();
                                        setKeySet4.getClass();
                                        vr6.i$default(vr6Var12, "FolderUploadTask", "Upload tasks: ".concat(el1.Y0(setKeySet4, null, null, null, null, 63)), null, 4, null);
                                        Collection collectionValues5 = concurrentHashMap.values();
                                        collectionValues5.getClass();
                                        it2 = collectionValues5.iterator();
                                        jA = 0;
                                        while (it2.hasNext()) {
                                            jA += ((rf8) it2.next()).a();
                                        }
                                        lValueOf = Long.valueOf(jA);
                                        if (jA <= 0) {
                                            lValueOf = null;
                                        }
                                        if (lValueOf != null) {
                                            jLongValue = lValueOf.longValue();
                                        } else {
                                            jLongValue = 1;
                                        }
                                        j = jLongValue;
                                        concurrentHashMap2 = new ConcurrentHashMap();
                                        kh6Var = new kh6();
                                        kh6Var2 = new kh6();
                                        concurrentHashMap3 = new ConcurrentHashMap();
                                        arrayList2 = new ArrayList(concurrentHashMap.size());
                                        while (r5.hasNext()) {
                                            String str112 = (String) entry.getKey();
                                            rf8 rf8Var5 = (rf8) entry.getValue();
                                            zn4 zn4Var5 = zn4.a;
                                            arrayList2.add(new vn4(new rz(io3Var, str112, rf8Var5, concurrentHashMap3, concurrentHashMap2, kh6Var, j, kh6Var2)));
                                        }
                                        ex6 ex6Var4 = qp3Var2.i;
                                        SwiftApp.Companion companion4 = SwiftApp.d;
                                        ex6Var4.k(SwiftApp.Companion.c().getString(R.string.uploading_backup_files));
                                        long jCurrentTimeMillis4 = System.currentTimeMillis();
                                        zn4 zn4Var6 = zn4.a;
                                        d45.b.getClass();
                                        mFirebaseUserA = d45.a();
                                        if (mFirebaseUserA != null) {
                                            boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                                        } else {
                                            boolValueOf = null;
                                        }
                                        if (pe4.d(boolValueOf, Boolean.TRUE)) {
                                            sharedPreferences = cz4.f;
                                            z2 = false;
                                            if (sharedPreferences == null) {
                                                pe4.F("prefs");
                                                throw null;
                                            }
                                            z7 = sharedPreferences.getBoolean("parallel_cloud_transfers", false);
                                            if (z7) {
                                                z3 = true;
                                            }
                                            zn4.a(4, arrayList2, z3);
                                            if (io3Var.i) {
                                                if (!concurrentHashMap3.isEmpty()) {
                                                    vr6.w$default(vr6.INSTANCE, "FolderUploadTask", "Upload cancelled, deleting uploaded files from this attempt...", null, 4, null);
                                                    io3Var.a(concurrentHashMap3);
                                                }
                                            } else if (arrayList2.size() != concurrentHashMap3.size()) {
                                                vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Upload complete. Assembling metadata details", null, 4, null);
                                                folderMetadata3 = io3Var.h;
                                                if (folderMetadata3 != null) {
                                                    linkedHashMap = null;
                                                } else {
                                                    linkedHashMap = null;
                                                }
                                                it3 = concurrentHashMap3.entrySet().iterator();
                                                linkedHashMap2 = linkedHashMap;
                                                baseBackup = null;
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        Map.Entry entry6 = (Map.Entry) it3.next();
                                                        String str113 = (String) entry6.getKey();
                                                        zf8Var = (zf8) entry6.getValue();
                                                        obj = concurrentHashMap.get(str113);
                                                        if (obj != null) {
                                                            rf8Var = (rf8) obj;
                                                            str2 = zf8Var.a;
                                                            if (str2 != null) {
                                                                i3 = rf8Var.b;
                                                                switch (i3) {
                                                                    case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        if (baseBackup == null) {
                                                                            baseBackup = folderMetadata8.getBaseBackup();
                                                                        }
                                                                        baseBackup2 = baseBackup;
                                                                        if (baseBackup2 != null) {
                                                                            baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup2, str2, null, null, null, null, null, false, 126, null);
                                                                        } else {
                                                                            baseBackupCopy$default = null;
                                                                        }
                                                                        baseBackup = baseBackupCopy$default;
                                                                        concurrentHashMap = concurrentHashMap4;
                                                                        it3 = it4;
                                                                        folderMetadata11 = folderMetadata8;
                                                                        break;
                                                                    case 31:
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        if (baseBackup == null) {
                                                                            baseBackup = folderMetadata8.getBaseBackup();
                                                                        }
                                                                        baseBackup3 = baseBackup;
                                                                        if (baseBackup3 != null) {
                                                                            baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup3, null, null, null, str2, null, null, false, 119, null);
                                                                        } else {
                                                                            baseBackupCopy$default = null;
                                                                        }
                                                                        baseBackup = baseBackupCopy$default;
                                                                        concurrentHashMap = concurrentHashMap4;
                                                                        it3 = it4;
                                                                        folderMetadata11 = folderMetadata8;
                                                                        break;
                                                                    case 32:
                                                                        if (linkedHashMap2 == null) {
                                                                            linkedHashMap2 = new LinkedHashMap();
                                                                        }
                                                                        linkedHashMap3 = linkedHashMap2;
                                                                        incrementalBackups = folderMetadata11.getIncrementalBackups();
                                                                        if (incrementalBackups != null) {
                                                                            folderMetadata8 = folderMetadata11;
                                                                            concurrentHashMap4 = concurrentHashMap;
                                                                            it4 = it3;
                                                                            incrementalBackup = null;
                                                                        } else {
                                                                            folderMetadata8 = folderMetadata11;
                                                                            concurrentHashMap4 = concurrentHashMap;
                                                                            it4 = it3;
                                                                            incrementalBackup = null;
                                                                        }
                                                                        if (incrementalBackup != null) {
                                                                            str3 = ((zf8) x65.p0(concurrentHashMap3, new q63(incrementalBackup.getManifestLink(), 1).p())).a;
                                                                            if (str3 != null) {
                                                                                incrementalBackupCopy$default = FolderMetadata.IncrementalBackup.copy$default(incrementalBackup, str2, null, null, str3, null, null, false, 118, null);
                                                                                setKeySet = linkedHashMap3.keySet();
                                                                                if (setKeySet != null) {
                                                                                    it5 = setKeySet.iterator();
                                                                                    while (it5.hasNext()) {
                                                                                        if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    it5 = setKeySet.iterator();
                                                                                    while (it5.hasNext()) {
                                                                                        if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                                        }
                                                                                    }
                                                                                }
                                                                                linkedHashMap3.put(incrementalBackupCopy$default.getTimestamp(), incrementalBackupCopy$default);
                                                                                linkedHashMap2 = linkedHashMap3;
                                                                                concurrentHashMap = concurrentHashMap4;
                                                                                it3 = it4;
                                                                                folderMetadata11 = folderMetadata8;
                                                                            } else {
                                                                                c6.f("Manifest link seems to be null");
                                                                            }
                                                                        } else {
                                                                            c6.f("Unable to find uploaded file's Incremental backup in the local metadata");
                                                                        }
                                                                        break;
                                                                    case 33:
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        concurrentHashMap = concurrentHashMap4;
                                                                        it3 = it4;
                                                                        folderMetadata11 = folderMetadata8;
                                                                        break;
                                                                    default:
                                                                        throw new io5(xs1.h(i3, "Cloud file type ", " not implemented"));
                                                                }
                                                            } else {
                                                                c6.f("Required value was null.");
                                                            }
                                                        } else {
                                                            c6.f("Required value was null.");
                                                        }
                                                    } else {
                                                        if (baseBackup != null) {
                                                            folderMetadata7 = io3Var.h;
                                                            if (folderMetadata7 != null) {
                                                                folderMetadataCopy$default2 = FolderMetadata.copy$default(folderMetadata7, null, baseBackup, null, 5, null);
                                                            } else {
                                                                folderMetadataCopy$default2 = null;
                                                            }
                                                            io3Var.h = folderMetadataCopy$default2;
                                                        }
                                                        if (linkedHashMap2 != null) {
                                                            folderMetadata6 = io3Var.h;
                                                            if (folderMetadata6 != null) {
                                                                folderMetadataCopy$default = FolderMetadata.copy$default(folderMetadata6, null, null, linkedHashMap2, 3, null);
                                                            } else {
                                                                folderMetadataCopy$default = null;
                                                            }
                                                            io3Var.h = folderMetadataCopy$default;
                                                        }
                                                        folderMetadata4 = io3Var.h;
                                                        if (folderMetadata4 != null) {
                                                            z4 = true;
                                                            if (folderMetadata4.hasBackups()) {
                                                            }
                                                            folderMetadata5 = io3Var.h;
                                                            if (folderMetadata5 == null) {
                                                                z6 = false;
                                                            } else {
                                                                z6 = false;
                                                            }
                                                            if (z5) {
                                                                if (!z5) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                if (!z6) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                io3Var.a(concurrentHashMap3);
                                                            } else {
                                                                if (!z5) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                if (!z6) {
                                                                    vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                                }
                                                                io3Var.a(concurrentHashMap3);
                                                            }
                                                        } else {
                                                            z4 = true;
                                                        }
                                                        folderMetadata5 = io3Var.h;
                                                        if (folderMetadata5 == null) {
                                                            z6 = false;
                                                        } else {
                                                            z6 = false;
                                                        }
                                                        if (z5) {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        } else {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        }
                                                    }
                                                }
                                            } else if (!concurrentHashMap3.isEmpty()) {
                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "asyncTasks.size != uploadResults.size, Deleting uploaded files...", null, 4, null);
                                                io3Var.a(concurrentHashMap3);
                                            }
                                        } else {
                                            z2 = false;
                                        }
                                        z3 = z2;
                                        zn4.a(4, arrayList2, z3);
                                        if (io3Var.i) {
                                            if (!concurrentHashMap3.isEmpty()) {
                                                vr6.w$default(vr6.INSTANCE, "FolderUploadTask", "Upload cancelled, deleting uploaded files from this attempt...", null, 4, null);
                                                io3Var.a(concurrentHashMap3);
                                            }
                                        } else if (arrayList2.size() != concurrentHashMap3.size()) {
                                            vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Upload complete. Assembling metadata details", null, 4, null);
                                            folderMetadata3 = io3Var.h;
                                            if (folderMetadata3 != null) {
                                                linkedHashMap = null;
                                            } else {
                                                linkedHashMap = null;
                                            }
                                            it3 = concurrentHashMap3.entrySet().iterator();
                                            linkedHashMap2 = linkedHashMap;
                                            baseBackup = null;
                                            while (true) {
                                                if (it3.hasNext()) {
                                                    Map.Entry entry7 = (Map.Entry) it3.next();
                                                    String str114 = (String) entry7.getKey();
                                                    zf8Var = (zf8) entry7.getValue();
                                                    obj = concurrentHashMap.get(str114);
                                                    if (obj != null) {
                                                        rf8Var = (rf8) obj;
                                                        str2 = zf8Var.a;
                                                        if (str2 != null) {
                                                            i3 = rf8Var.b;
                                                            switch (i3) {
                                                                case FolderItem.DISPLAY_NAME_MAX_CHARACTERS /* 30 */:
                                                                    folderMetadata8 = folderMetadata11;
                                                                    concurrentHashMap4 = concurrentHashMap;
                                                                    it4 = it3;
                                                                    if (baseBackup == null) {
                                                                        baseBackup = folderMetadata8.getBaseBackup();
                                                                    }
                                                                    baseBackup2 = baseBackup;
                                                                    if (baseBackup2 != null) {
                                                                        baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup2, str2, null, null, null, null, null, false, 126, null);
                                                                    } else {
                                                                        baseBackupCopy$default = null;
                                                                    }
                                                                    baseBackup = baseBackupCopy$default;
                                                                    concurrentHashMap = concurrentHashMap4;
                                                                    it3 = it4;
                                                                    folderMetadata11 = folderMetadata8;
                                                                    break;
                                                                case 31:
                                                                    folderMetadata8 = folderMetadata11;
                                                                    concurrentHashMap4 = concurrentHashMap;
                                                                    it4 = it3;
                                                                    if (baseBackup == null) {
                                                                        baseBackup = folderMetadata8.getBaseBackup();
                                                                    }
                                                                    baseBackup3 = baseBackup;
                                                                    if (baseBackup3 != null) {
                                                                        baseBackupCopy$default = FolderMetadata.BaseBackup.copy$default(baseBackup3, null, null, null, str2, null, null, false, 119, null);
                                                                    } else {
                                                                        baseBackupCopy$default = null;
                                                                    }
                                                                    baseBackup = baseBackupCopy$default;
                                                                    concurrentHashMap = concurrentHashMap4;
                                                                    it3 = it4;
                                                                    folderMetadata11 = folderMetadata8;
                                                                    break;
                                                                case 32:
                                                                    if (linkedHashMap2 == null) {
                                                                        linkedHashMap2 = new LinkedHashMap();
                                                                    }
                                                                    linkedHashMap3 = linkedHashMap2;
                                                                    incrementalBackups = folderMetadata11.getIncrementalBackups();
                                                                    if (incrementalBackups != null) {
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        incrementalBackup = null;
                                                                    } else {
                                                                        folderMetadata8 = folderMetadata11;
                                                                        concurrentHashMap4 = concurrentHashMap;
                                                                        it4 = it3;
                                                                        incrementalBackup = null;
                                                                    }
                                                                    if (incrementalBackup != null) {
                                                                        str3 = ((zf8) x65.p0(concurrentHashMap3, new q63(incrementalBackup.getManifestLink(), 1).p())).a;
                                                                        if (str3 != null) {
                                                                            incrementalBackupCopy$default = FolderMetadata.IncrementalBackup.copy$default(incrementalBackup, str2, null, null, str3, null, null, false, 118, null);
                                                                            setKeySet = linkedHashMap3.keySet();
                                                                            if (setKeySet != null) {
                                                                                it5 = setKeySet.iterator();
                                                                                while (it5.hasNext()) {
                                                                                    if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                        vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                                    }
                                                                                }
                                                                            } else {
                                                                                it5 = setKeySet.iterator();
                                                                                while (it5.hasNext()) {
                                                                                    if (pe4.d((String) it5.next(), incrementalBackupCopy$default.getTimestamp())) {
                                                                                        vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "Incremental backup possibly already exists in cloud??!!", null, 4, null);
                                                                                    }
                                                                                }
                                                                            }
                                                                            linkedHashMap3.put(incrementalBackupCopy$default.getTimestamp(), incrementalBackupCopy$default);
                                                                            linkedHashMap2 = linkedHashMap3;
                                                                            concurrentHashMap = concurrentHashMap4;
                                                                            it3 = it4;
                                                                            folderMetadata11 = folderMetadata8;
                                                                        } else {
                                                                            c6.f("Manifest link seems to be null");
                                                                        }
                                                                    } else {
                                                                        c6.f("Unable to find uploaded file's Incremental backup in the local metadata");
                                                                    }
                                                                    break;
                                                                case 33:
                                                                    folderMetadata8 = folderMetadata11;
                                                                    concurrentHashMap4 = concurrentHashMap;
                                                                    it4 = it3;
                                                                    concurrentHashMap = concurrentHashMap4;
                                                                    it3 = it4;
                                                                    folderMetadata11 = folderMetadata8;
                                                                    break;
                                                                default:
                                                                    throw new io5(xs1.h(i3, "Cloud file type ", " not implemented"));
                                                            }
                                                        } else {
                                                            c6.f("Required value was null.");
                                                        }
                                                    } else {
                                                        c6.f("Required value was null.");
                                                    }
                                                } else {
                                                    if (baseBackup != null) {
                                                        folderMetadata7 = io3Var.h;
                                                        if (folderMetadata7 != null) {
                                                            folderMetadataCopy$default2 = FolderMetadata.copy$default(folderMetadata7, null, baseBackup, null, 5, null);
                                                        } else {
                                                            folderMetadataCopy$default2 = null;
                                                        }
                                                        io3Var.h = folderMetadataCopy$default2;
                                                    }
                                                    if (linkedHashMap2 != null) {
                                                        folderMetadata6 = io3Var.h;
                                                        if (folderMetadata6 != null) {
                                                            folderMetadataCopy$default = FolderMetadata.copy$default(folderMetadata6, null, null, linkedHashMap2, 3, null);
                                                        } else {
                                                            folderMetadataCopy$default = null;
                                                        }
                                                        io3Var.h = folderMetadataCopy$default;
                                                    }
                                                    folderMetadata4 = io3Var.h;
                                                    if (folderMetadata4 != null) {
                                                        z4 = true;
                                                        if (folderMetadata4.hasBackups()) {
                                                        }
                                                        folderMetadata5 = io3Var.h;
                                                        if (folderMetadata5 == null) {
                                                            z6 = false;
                                                        } else {
                                                            z6 = false;
                                                        }
                                                        if (z5) {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        } else {
                                                            if (!z5) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            if (!z6) {
                                                                vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                            }
                                                            io3Var.a(concurrentHashMap3);
                                                        }
                                                    } else {
                                                        z4 = true;
                                                    }
                                                    folderMetadata5 = io3Var.h;
                                                    if (folderMetadata5 == null) {
                                                        z6 = false;
                                                    } else {
                                                        z6 = false;
                                                    }
                                                    if (z5) {
                                                        if (!z5) {
                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                        }
                                                        if (!z6) {
                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                        }
                                                        io3Var.a(concurrentHashMap3);
                                                    } else {
                                                        if (!z5) {
                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have any backups! Cleaning recently uploaded files...", null, 4, null);
                                                        }
                                                        if (!z6) {
                                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "CloudMetadata doesn't have valid file links! Cleaning recently uploaded files...", null, 4, null);
                                                        }
                                                        io3Var.a(concurrentHashMap3);
                                                    }
                                                }
                                            }
                                        } else if (!concurrentHashMap3.isEmpty()) {
                                            vr6.e$default(vr6.INSTANCE, "FolderUploadTask", "asyncTasks.size != uploadResults.size, Deleting uploaded files...", null, 4, null);
                                            io3Var.a(concurrentHashMap3);
                                        }
                                    } else {
                                        vr6.i$default(vr6.INSTANCE, "FolderUploadTask", "Nothing to upload!", null, 4, null);
                                    }
                                    str = null;
                                    qp3Var2.o(null);
                                    qp3Var2.o(str);
                                }
                            }
                        }
                        ho3Var = null;
                    }
                } else {
                    vr6.e$default(vr6Var6, "FolderUploadTask", "Still no WiFi, skipping upload.", null, 4, null);
                    SwiftApp.Companion companion5 = SwiftApp.d;
                    ho3Var2.a = folderItem2 + ": " + SwiftApp.Companion.c().getString(R.string.cloud_upload_skipped_no_wifi_error);
                }
                str = null;
                qp3Var2.o(str);
            }
            if (ho3Var.a == null || ho3Var.c != null) {
                ((ArrayList) cdVar.c).add(ho3Var);
            }
            return;
        }
        vr6.i$default(vr6Var6, "FolderUploadTask", "Local metadata has no backups, skipping upload", null, 4, null);
        ho3Var = ho3Var2;
        if (ho3Var.a == null) {
        }
        ((ArrayList) cdVar.c).add(ho3Var);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    public final boolean b() {
        ArrayList<ho3> arrayList;
        String str;
        if (!this.e) {
            cd cdVar = this.d;
            ArrayList arrayList2 = (ArrayList) cdVar.b;
            if (arrayList2 != null && arrayList2.isEmpty()) {
                arrayList = (ArrayList) cdVar.c;
                if (arrayList != null) {
                }
                for (ho3 ho3Var : arrayList) {
                    if (!ho3Var.b) {
                    }
                }
                return false;
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                String str2 = ((gk3) it.next()).b;
                if (!(str2 == null || str2.length() == 0)) {
                }
            }
            arrayList = (ArrayList) cdVar.c;
            if (arrayList != null || !arrayList.isEmpty()) {
                while (r4.hasNext()) {
                    if (!ho3Var.b || ((str = ho3Var.c) != null && str.length() != 0)) {
                    }
                }
            }
            return false;
        }
        return true;
    }
}
