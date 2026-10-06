package defpackage;

import android.util.Log;
import java.time.Duration;
import java.time.Instant;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.folders.data.BackupResult;
import org.swiftapps.swiftbackup.folders.data.BackupStats;
import org.swiftapps.swiftbackup.folders.data.BackupType;
import org.swiftapps.swiftbackup.folders.data.Changes;
import org.swiftapps.swiftbackup.folders.data.FileEntry;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$BaseBackup;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;
import org.swiftapps.swiftbackup.folders.data.FolderState;
import org.swiftapps.swiftbackup.folders.data.Manifest;
import org.swiftapps.swiftbackup.folders.data.ManifestInfo;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wj3 {
    public final qp3 a;
    public final kj3 b;
    public final mt3 c;
    public final q63 d;
    public final yn3 e;
    public final v55 f;

    public wj3(qp3 qp3Var, kj3 kj3Var, mt3 mt3Var) {
        qp3Var.getClass();
        kj3Var.getClass();
        this.a = qp3Var;
        this.b = kj3Var;
        this.c = mt3Var;
        this.d = (q63) kj3Var.e.getValue();
        this.e = new yn3();
        this.f = new v55(kj3Var);
    }

    public static BackupResult b(wj3 wj3Var, xp1 xp1Var) {
        q63 q63Var = wj3Var.d;
        xp1Var.getClass();
        try {
            if (q63Var.j()) {
                cy0.e(q63Var);
            } else {
                q63.E(q63Var);
            }
            return wj3Var.c(xp1Var, new tj3(wj3Var, 0));
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "createFolderBaseBackup", "Error creating base backup", e, null, 8, null);
            String message = e.getMessage();
            if (message == null) {
                message = "Unknown error during base backup";
            }
            return new BackupResult.Failure(message);
        } finally {
            q63Var.h();
        }
    }

    public static BackupResult d(wj3 wj3Var, q63 q63Var, xp1 xp1Var, int i) {
        if ((i & 1) != 0) {
            q63Var = null;
        }
        q63 q63Var2 = wj3Var.d;
        xp1Var.getClass();
        try {
            if (q63Var2.j()) {
                cy0.e(q63Var2);
            } else {
                q63.E(q63Var2);
            }
            return wj3Var.e(q63Var, xp1Var, new f7(wj3Var, 3));
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "createFolderIncBackup", "Error creating incremental backup", e, null, 8, null);
            String message = e.getMessage();
            if (message == null) {
                message = "Unknown error during incremental backup";
            }
            return new BackupResult.Failure(message);
        } finally {
            q63Var2.h();
        }
    }

    public static long i(long j) {
        if (j <= 0) {
            return 0L;
        }
        long j2 = ((j - 1) / 512) + 1;
        if (j2 > 18014398509481983L) {
            return Long.MAX_VALUE;
        }
        return j2 * 512;
    }

    public static long j(long j, long j2) {
        if (Long.MAX_VALUE - j < j2) {
            return Long.MAX_VALUE;
        }
        return j + j2;
    }

    public final vj3 a(q63 q63Var) throws ym5 {
        kj3 kj3Var = this.b;
        if (q63Var == null && (q63Var = kj3Var.g()) == null) {
            throw new ym5("No base backup found. Create base backup first.");
        }
        this.f.getClass();
        Manifest manifestA = v55.a(q63Var);
        FolderState folderStateD = this.e.d(kj3Var.e());
        return new vj3(yn3.a(folderStateD, manifestA.getCurrentState()), folderStateD, manifestA);
    }

    public final BackupResult.Success c(xp1 xp1Var, tj3 tj3Var) {
        kj3 kj3Var = this.b;
        q63 q63VarE = kj3Var.e();
        if (!q63VarE.j() || !q63VarE.x()) {
            f6.g("Source folder does not exist or is not a directory: ".concat(q63VarE.v()));
            return null;
        }
        FolderBackup$BaseBackup folderBackup$BaseBackupC = kj3Var.c();
        if (folderBackup$BaseBackupC.exists()) {
            c6.l(folderBackup$BaseBackupC, "Base backup already exists at ");
            return null;
        }
        Instant instantNow = Instant.now();
        yn3 yn3Var = this.e;
        FolderState folderStateD = yn3Var.d(q63VarE);
        List<String> directories = folderStateD.getDirectories();
        yn3Var.getClass();
        List listB = yn3.b(folderStateD, directories);
        ArrayList arrayListG1 = el1.g1(el1.v1(folderStateD.getFiles().keySet()), listB);
        Iterator<T> it = folderStateD.getFiles().values().iterator();
        long size = 0;
        while (it.hasNext()) {
            size += ((FileEntry) it.next()).getSize();
        }
        oj7 oj7VarB = pj7.b(kj3Var.b(), size);
        if (oj7VarB != null) {
            g84.h(oj7VarB.a);
            return null;
        }
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "createFolderBaseBackup", "Creating base backup from ".concat(q63VarE.v()), null, 4, null);
        p93 p93Var = p93.a;
        vr6.i$default(vr6Var, "createFolderBaseBackup", eq3.k("Streaming folder files into archive (", p93.c(Long.valueOf(size)), ")"), null, 4, null);
        Iterator it2 = arrayListG1.iterator();
        long j = 1024;
        while (it2.hasNext()) {
            FileEntry fileEntry = folderStateD.getFiles().get((String) it2.next());
            Long lValueOf = fileEntry != null ? Long.valueOf(fileEntry.getSize()) : null;
            List list = listB;
            long j2 = 512;
            if (lValueOf != null) {
                j2 = j(512L, i(lValueOf.longValue()));
            }
            j = j(j, j2);
            q63VarE = q63VarE;
            listB = list;
            arrayListG1 = arrayListG1;
        }
        List list2 = listB;
        q63 q63Var = q63VarE;
        ArrayList arrayList = arrayListG1;
        if (j < 1) {
            j = 1;
        }
        f(folderBackup$BaseBackupC.getBackupFile(), q63Var, arrayList, size, j, xp1Var, tj3Var);
        yn3Var.getClass();
        folderStateD.getClass();
        Log.d("FolderScanner", "Verification disabled, using scanned state");
        vr6.i$default(vr6Var, "createFolderBaseBackup", "Preparing backup manifest", null, 4, null);
        BackupType backupType = BackupType.BASE;
        long epochMilli = Instant.now().toEpochMilli();
        String strV = kj3Var.e().v();
        FolderState folderState = new FolderState(folderStateD.getFiles(), el1.m1(folderStateD.getDirectories()));
        List listV1 = el1.v1(folderStateD.getFiles().keySet());
        ov2 ov2Var = ov2.a;
        Manifest manifest = new Manifest(1, "base", backupType, null, epochMilli, strV, folderState, new Changes(listV1, ov2Var, ov2Var, el1.m1(list2), ov2Var));
        q63 manifestFile = folderBackup$BaseBackupC.getManifestFile();
        this.f.getClass();
        v55.b(manifestFile, manifest);
        q63 manifestFile2 = folderBackup$BaseBackupC.getManifestFile();
        if (!manifestFile2.k()) {
            g84.f(manifestFile2.p().concat(" file doesn't exist or is 0 Bytes"));
            return null;
        }
        q63 backupFile = folderBackup$BaseBackupC.getBackupFile();
        if (!backupFile.k()) {
            g84.f(backupFile.p().concat(" file doesn't exist or is 0 Bytes"));
            return null;
        }
        pw5 pw5Var = new pw5(manifestFile2, backupFile);
        q63 q63Var2 = (q63) pw5Var.a;
        q63 q63Var3 = (q63) pw5Var.b;
        Duration durationBetween = Duration.between(instantNow, Instant.now());
        long jA = q63Var3.A();
        int size2 = folderStateD.getFiles().size();
        int size3 = folderStateD.getFiles().size();
        durationBetween.getClass();
        return new BackupResult.Success(q63Var2, q63Var3, new BackupStats(size2, size3, 0, 0, jA, durationBetween));
    }

    public final BackupResult e(q63 q63Var, xp1 xp1Var, f7 f7Var) throws ym5 {
        FolderState folderState;
        Instant instantNow = Instant.now();
        kj3 kj3Var = this.b;
        q63 q63VarE = kj3Var.e();
        if (!q63VarE.j() || !q63VarE.x()) {
            f6.g("Source folder does not exist or is not a directory: ".concat(q63VarE.v()));
            return null;
        }
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "createFolderIncBackup", "Checking for changes since last backup", null, 4, null);
        vj3 vj3VarA = a(q63Var);
        Changes changes = vj3VarA.a;
        FolderState folderState2 = vj3VarA.b;
        Manifest manifest = vj3VarA.c;
        if (changes.isEmpty()) {
            vr6.i$default(vr6Var, "createFolderIncBackup", "No changes detected since last backup", null, 4, null);
            return BackupResult.NoChange.INSTANCE;
        }
        List<String> directoriesAdded = changes.getDirectoriesAdded();
        this.e.getClass();
        List listB = yn3.b(folderState2, directoriesAdded);
        ArrayList arrayListG1 = el1.g1(el1.g1(changes.getFilesAdded(), changes.getFilesModified()), listB);
        Iterator it = arrayListG1.iterator();
        long size = 0;
        while (it.hasNext()) {
            FileEntry fileEntry = folderState2.getFiles().get((String) it.next());
            size += fileEntry != null ? fileEntry.getSize() : 0L;
        }
        oj7 oj7VarB = pj7.b(kj3Var.b(), size);
        if (oj7VarB != null) {
            g84.h(oj7VarB.a);
            return null;
        }
        DateTimeFormatter dateTimeFormatter = jj3.a;
        Instant instantNow2 = Instant.now();
        instantNow2.getClass();
        String str = jj3.a.format(instantNow2);
        str.getClass();
        FolderBackup$IncrementalBackup folderBackup$IncrementalBackup = new FolderBackup$IncrementalBackup(kj3Var.b(), str);
        if (arrayListG1.isEmpty()) {
            vr6.i$default(vr6.INSTANCE, "createFolderIncBackup", "Creating incremental backup with only deletions (empty archive payload)", null, 4, null);
        } else {
            vr6 vr6Var2 = vr6.INSTANCE;
            vr6.i$default(vr6Var2, "createFolderIncBackup", xs1.h(arrayListG1.size(), "Creating incremental backup with ", " changed items"), null, 4, null);
            p93 p93Var = p93.a;
            vr6.i$default(vr6Var2, "createFolderIncBackup", eq3.k("Streaming folder files into archive (", p93.c(Long.valueOf(size)), ")"), null, 4, null);
        }
        q63 backupFile = folderBackup$IncrementalBackup.getBackupFile();
        Iterator it2 = arrayListG1.iterator();
        long j = 1024;
        while (it2.hasNext()) {
            FileEntry fileEntry2 = folderState2.getFiles().get((String) it2.next());
            Long lValueOf = fileEntry2 != null ? Long.valueOf(fileEntry2.getSize()) : null;
            q63 q63Var2 = backupFile;
            long j2 = 512;
            if (lValueOf != null) {
                j2 = j(512L, i(lValueOf.longValue()));
            }
            j = j(j, j2);
            backupFile = q63Var2;
            q63VarE = q63VarE;
            manifest = manifest;
        }
        q63 q63Var3 = q63VarE;
        Manifest manifest2 = manifest;
        f(backupFile, q63Var3, arrayListG1, size, j < 1 ? 1L : j, xp1Var, f7Var);
        if (arrayListG1.isEmpty()) {
            folderState = new FolderState(pv2.a, ov2.a);
        } else {
            Log.d("FolderScanner", "Verification disabled, using scanned state");
            folderState = folderState2;
        }
        FolderState currentState = manifest2.getCurrentState();
        currentState.getClass();
        Map<String, FileEntry> files = currentState.getFiles();
        files.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(files);
        Iterator<T> it3 = r9.getFilesDeleted().iterator();
        while (it3.hasNext()) {
            linkedHashMap.remove((String) it3.next());
        }
        linkedHashMap.putAll(folderState.getFiles());
        List<String> directoriesDeleted = r9.getDirectoriesDeleted();
        directoriesDeleted.getClass();
        HashSet hashSet = new HashSet(x65.q0(hl1.G0(directoriesDeleted, 12)));
        el1.t1(directoriesDeleted, hashSet);
        LinkedHashSet linkedHashSet = new LinkedHashSet(folderState.getDirectories().size() + currentState.getDirectories().size());
        List<String> directories = currentState.getDirectories();
        directories.getClass();
        le3 le3Var = new le3(new me3(new ll1(directories), false, new ox(hashSet, 14)));
        while (le3Var.hasNext()) {
            linkedHashSet.add((String) le3Var.next());
        }
        List<String> directories2 = folderState.getDirectories();
        directories2.getClass();
        le3 le3Var2 = new le3(new me3(new ll1(directories2), false, new cz(hashSet, 9)));
        while (le3Var2.hasNext()) {
            linkedHashSet.add((String) le3Var2.next());
        }
        FolderState folderState3 = new FolderState(linkedHashMap, el1.v1(linkedHashSet));
        Manifest manifest3 = new Manifest(1, "inc-".concat(str), BackupType.INCREMENTAL, manifest2.getBackupId(), Instant.now().toEpochMilli(), q63Var3.v(), new FolderState(folderState3.getFiles(), el1.m1(folderState3.getDirectories())), new Changes(r9.getFilesAdded(), r9.getFilesModified(), r9.getFilesDeleted(), el1.m1(listB), el1.m1(r9.getDirectoriesDeleted())));
        q63 manifestFile = folderBackup$IncrementalBackup.getManifestFile();
        this.f.getClass();
        v55.b(manifestFile, manifest3);
        q63 manifestFile2 = folderBackup$IncrementalBackup.getManifestFile();
        if (!manifestFile2.k()) {
            g84.f(manifestFile2.p().concat(" file doesn't exist or is 0 Bytes"));
            return null;
        }
        q63 backupFile2 = folderBackup$IncrementalBackup.getBackupFile();
        if (!backupFile2.k()) {
            g84.f(backupFile2.p().concat(" file doesn't exist or is 0 Bytes"));
            return null;
        }
        Duration durationBetween = Duration.between(instantNow, Instant.now());
        long jA = backupFile2.A();
        int size2 = folderState2.getFiles().size();
        int size3 = r9.getFilesAdded().size();
        int size4 = r9.getFilesModified().size();
        int size5 = changes.getFilesDeleted().size();
        durationBetween.getClass();
        return new BackupResult.Success(manifestFile2, backupFile2, new BackupStats(size2, size3, size4, size5, jA, durationBetween));
    }

    public final void f(final q63 q63Var, final q63 q63Var2, final ArrayList arrayList, long j, long j2, final xp1 xp1Var, final qt3 qt3Var) {
        long j3 = j2 < j ? j : j2;
        final long j4 = j3 < 1 ? 1L : j3;
        char[] cArr = (char[]) this.b.h.getValue();
        if (cArr.length == 0) {
            cArr = null;
        }
        final char[] cArrCopyOf = cArr != null ? Arrays.copyOf(cArr, cArr.length) : null;
        final kh6 kh6Var = new kh6();
        try {
            qt3Var.invoke(0L, Long.valueOf(j4));
            new bt3() { // from class: uj3
                @Override // defpackage.bt3
                public final Object invoke() {
                    HashSet hashSet = mz6.a;
                    q63 q63Var3 = q63Var;
                    List listI = nc8.I(new hz6(q63Var3.q(), q63Var2, false, arrayList, null, 16));
                    f27 f27Var = f27.Basic;
                    xp1 xp1Var2 = xp1Var;
                    cy0 py6Var = xp1Var2.getLevel() <= 0 ? oy6.j : new py6(xp1Var2.getLevel());
                    char[] cArr2 = cArrCopyOf;
                    od2 fz6Var = cArr2 != null ? new fz6(cArr2) : gz6.i;
                    iz6 iz6Var = iz6.Auto;
                    wj3 wj3Var = this;
                    ek ekVar = new ek(wj3Var, 26);
                    long j5 = j4;
                    mz6.b(new op3(q63Var3, listI, (iu) null, f27Var, py6Var, fz6Var, "", iz6Var, ekVar, new c07(Long.valueOf(j5), new u10(new mw(j5, wj3Var, kh6Var, qt3Var), 17), new my6(d07.a))));
                    return be8.a;
                }
            }.invoke();
            if (cArrCopyOf != null) {
                Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
            }
            if (q63Var.k()) {
                qt3Var.invoke(Long.valueOf(j4), Long.valueOf(j4));
            } else {
                g84.f(q63Var.p().concat(" file doesn't exist or is 0 Bytes"));
            }
        } catch (Throwable th) {
            try {
                vr6.e$default(vr6.INSTANCE, "createFolderArchive", "Error streaming folder archive", th, null, 8, null);
                q63Var.h();
                throw th;
            } catch (Throwable th2) {
                if (cArrCopyOf == null) {
                    throw th2;
                }
                Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
                throw th2;
            }
        }
    }

    public final void g(q63 q63Var, q63 q63Var2, String str, wn3 wn3Var, iw iwVar, char[] cArr) {
        long j = wn3Var.h;
        long j2 = j < 1 ? 1L : j;
        kh6 kh6Var = new kh6();
        HashSet hashSet = mz6.a;
        mz6.f(new jd0(q63Var, q63Var2, str, null, f27.Basic, cArr, wn3Var.c, iz6.Auto, new ck(this, 19), mz6.g(new kw(this, j2, kh6Var, iwVar))));
    }

    /* JADX WARN: Code duplicated, block: B:154:0x0373  */
    /* JADX WARN: Code duplicated, block: B:164:0x039d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0077  */
    /* JADX WARN: Code duplicated, block: B:35:0x00db  */
    public final rm6 h(q63 q63Var, FolderRestoreStrategy folderRestoreStrategy, nn3 nn3Var) throws Throwable {
        FolderState folderState;
        ArrayList arrayList;
        List list;
        int i;
        wn3 wn3Var;
        ArrayList arrayList2;
        char c;
        kj3 kj3Var;
        List list2;
        CopyOnWriteArrayList<xn3> copyOnWriteArrayList;
        boolean z;
        q63 q63Var2;
        List list3;
        List list4;
        FolderState folderState2;
        boolean z2;
        FolderState folderState3;
        FolderState folderState4;
        String str;
        wn3 wn3Var2;
        Iterator it;
        Set set;
        Object obj;
        FolderState folderState5;
        boolean z3;
        FolderState folderState6;
        Set set2;
        boolean zD;
        List<String> directories;
        Object next;
        q63 backupFile;
        kj3 kj3Var2;
        ArrayList arrayList3;
        im6 im6Var;
        Object next2;
        q63 manifestFile;
        Instant instantNow = Instant.now();
        kj3 kj3Var3 = this.b;
        q63 q63VarG = kj3Var3.g();
        if (q63VarG == null) {
            throw new ym5("No backups found");
        }
        String str2 = "restoreFolder";
        vr6.i$default(vr6.INSTANCE, "restoreFolder", "Building restore chain", null, 4, null);
        v55 v55Var = this.f;
        v55Var.getClass();
        kj3 kj3Var4 = v55Var.a;
        ArrayList arrayList4 = new ArrayList();
        Manifest manifestA = v55.a(q63VarG);
        while (true) {
            arrayList4.add(0, new ManifestInfo(q63VarG, manifestA));
            q63 q63Var3 = null;
            if (manifestA.getBackupType() == BackupType.BASE) {
                FolderState currentState = ((ManifestInfo) el1.a1(arrayList4)).getManifest().getCurrentState();
                Set setZ1 = el1.z1(currentState.getDirectories());
                boolean zJ = q63Var.j();
                nn3 nn3Var2 = nn3Var;
                if (!nn3Var2.b.equals(q63Var.v())) {
                    nn3Var2 = null;
                }
                if (nn3Var2 == null) {
                    folderState = null;
                } else {
                    if (nn3Var2.c != zJ) {
                        nn3Var2 = null;
                    }
                    if (nn3Var2 != null) {
                        folderState = nn3Var2.d;
                    } else {
                        folderState = null;
                    }
                }
                if (!q63Var.j() && !q63.E(q63Var) && !q63Var.j()) {
                    g84.f("Unable to create target folder: ".concat(q63Var.v()));
                    return null;
                }
                vr6.i$default(vr6.INSTANCE, "restoreFolder", "Restoring to ".concat(q63Var.v()), null, 4, null);
                ArrayList arrayList5 = new ArrayList();
                Iterator it2 = arrayList4.iterator();
                int i2 = 0;
                while (true) {
                    String str3 = "/";
                    String str4 = "Skipping backup ";
                    if (!it2.hasNext()) {
                        ArrayList arrayList6 = arrayList5;
                        ArrayList arrayList7 = new ArrayList(hl1.G0(arrayList6, 10));
                        Iterator it3 = arrayList6.iterator();
                        while (it3.hasNext()) {
                            arrayList7.add(((im6) it3.next()).c);
                        }
                        if (arrayList7.isEmpty()) {
                            list = ov2.a;
                            arrayList = arrayList6;
                        } else {
                            HashMap map = new HashMap();
                            int i3 = 0;
                            for (Object obj2 : arrayList7) {
                                int i4 = i3 + 1;
                                if (i3 < 0) {
                                    fl1.F0();
                                    throw null;
                                }
                                Iterator it4 = ((List) obj2).iterator();
                                while (it4.hasNext()) {
                                    map.put((String) it4.next(), Integer.valueOf(i3));
                                    arrayList6 = arrayList6;
                                }
                                i3 = i4;
                            }
                            arrayList = arrayList6;
                            ArrayList arrayList8 = new ArrayList(hl1.G0(arrayList7, 10));
                            Iterator it5 = arrayList7.iterator();
                            int i5 = 0;
                            while (it5.hasNext()) {
                                Object next3 = it5.next();
                                int i6 = i5 + 1;
                                if (i5 < 0) {
                                    fl1.F0();
                                    throw null;
                                }
                                ArrayList arrayList9 = new ArrayList();
                                for (Object obj3 : (List) next3) {
                                    Iterator it6 = it5;
                                    Integer num = (Integer) map.get((String) obj3);
                                    if (num != null && num.intValue() == i5) {
                                        arrayList9.add(obj3);
                                    }
                                    it5 = it6;
                                }
                                arrayList8.add(arrayList9);
                                i5 = i6;
                            }
                            list = arrayList8;
                        }
                        ArrayList<wn3> arrayList10 = new ArrayList();
                        int i7 = 0;
                        for (Object obj4 : arrayList) {
                            int i8 = i7 + 1;
                            if (i7 < 0) {
                                fl1.F0();
                                throw null;
                            }
                            im6 im6Var2 = (im6) obj4;
                            List list5 = (List) list.get(i7);
                            folderRestoreStrategy.getClass();
                            list5.getClass();
                            if (zJ && !(folderState != null && folderState.getFiles().isEmpty() && folderState.getDirectories().isEmpty())) {
                                Set setZ2 = el1.z1(currentState.getDirectories());
                                Map<String, FileEntry> files = folderState != null ? folderState.getFiles() : null;
                                Set setZ3 = (folderState == null || (directories = folderState.getDirectories()) == null) ? null : el1.z1(directories);
                                list3 = list;
                                int i9 = xj3.a[folderRestoreStrategy.ordinal()];
                                if (i9 == 1) {
                                    z2 = zJ;
                                    Set set3 = setZ3;
                                    Set set4 = setZ2;
                                    folderState2 = currentState;
                                    FolderState folderState7 = folderState;
                                    ArrayList arrayList11 = new ArrayList();
                                    Iterator it7 = list5.iterator();
                                    while (it7.hasNext()) {
                                        Object next4 = it7.next();
                                        String str5 = (String) next4;
                                        Map<String, FileEntry> map2 = files;
                                        Set set5 = set4;
                                        Iterator it8 = it7;
                                        FolderState folderState8 = folderState7;
                                        Set set6 = set3;
                                        if (!z85.D(folderState8, set5, set6, map2, q63Var, str5)) {
                                            arrayList11.add(next4);
                                        }
                                        set3 = set6;
                                        files = map2;
                                        it7 = it8;
                                        folderState7 = folderState8;
                                        set4 = set5;
                                    }
                                    folderState3 = folderState7;
                                    list4 = arrayList11;
                                } else {
                                    if (i9 != 2 && i9 != 3) {
                                        q.j();
                                        return null;
                                    }
                                    ArrayList arrayList12 = new ArrayList();
                                    Iterator it9 = list5.iterator();
                                    while (it9.hasNext()) {
                                        Object next5 = it9.next();
                                        FolderState folderState9 = folderState;
                                        String str6 = (String) next5;
                                        if (setZ2.contains(str6)) {
                                            Set set7 = setZ3;
                                            folderState5 = currentState;
                                            it = it9;
                                            obj = next5;
                                            z3 = zJ;
                                            Map<String, FileEntry> map3 = files;
                                            zD = z85.D(folderState9, setZ2, set7, map3, q63Var, str6);
                                            set2 = setZ2;
                                            files = map3;
                                            set = set7;
                                            folderState6 = folderState9;
                                        } else {
                                            it = it9;
                                            set = setZ3;
                                            obj = next5;
                                            folderState5 = currentState;
                                            z3 = zJ;
                                            folderState6 = folderState9;
                                            set2 = setZ2;
                                            FileEntry fileEntry = folderState5.getFiles().get(str6);
                                            if (fileEntry != null) {
                                                FileEntry fileEntry2 = files != null ? files.get(str6) : null;
                                                if (folderState6 == null) {
                                                    q63 q63VarJ = q63Var.J(str6);
                                                    if (q63VarJ.j() && fileEntry.getSize() == q63VarJ.A() && fileEntry.getMtime() == q63VarJ.z()) {
                                                        zD = true;
                                                    } else {
                                                        zD = false;
                                                    }
                                                } else if (fileEntry2 != null && fileEntry.getSize() == fileEntry2.getSize() && fileEntry.getMtime() == fileEntry2.getMtime()) {
                                                    zD = true;
                                                } else {
                                                    zD = false;
                                                }
                                            } else {
                                                zD = false;
                                            }
                                        }
                                        if (!zD) {
                                            arrayList12.add(obj);
                                        }
                                        folderState = folderState6;
                                        setZ2 = set2;
                                        currentState = folderState5;
                                        zJ = z3;
                                        it9 = it;
                                        setZ3 = set;
                                    }
                                    folderState2 = currentState;
                                    z2 = zJ;
                                    folderState3 = folderState;
                                    list4 = arrayList12;
                                }
                            } else {
                                list3 = list;
                                list4 = list5;
                                folderState2 = currentState;
                                z2 = zJ;
                                folderState3 = folderState;
                            }
                            if (list4.isEmpty()) {
                                folderState4 = folderState2;
                                str = str4;
                                vr6.i$default(vr6.INSTANCE, "restoreFolder", eq3.k(str4, im6Var2.a.q(), " since no files to extract"), null, 4, null);
                                wn3Var2 = null;
                            } else {
                                folderState4 = folderState2;
                                str = str4;
                                wn3Var2 = new wn3(im6Var2.a, im6Var2.b, list4);
                            }
                            if (wn3Var2 != null) {
                                arrayList10.add(wn3Var2);
                            }
                            str3 = str3;
                            str4 = str;
                            currentState = folderState4;
                            zJ = z2;
                            list = list3;
                            folderState = folderState3;
                            i7 = i8;
                        }
                        boolean z4 = zJ;
                        FolderState folderState10 = folderState;
                        boolean z5 = true;
                        String str7 = str3;
                        int i10 = 0;
                        FolderState folderState11 = currentState;
                        ArrayList arrayList13 = new ArrayList();
                        Iterator it10 = arrayList10.iterator();
                        long j = 0;
                        while (it10.hasNext()) {
                            j += ((wn3) it10.next()).h;
                        }
                        kh6 kh6Var = new kh6();
                        int i11 = 0;
                        long j2 = 0;
                        for (wn3 wn3Var3 : arrayList10) {
                            int i12 = i11 + 1;
                            kh6 kh6Var2 = kh6Var;
                            int size = arrayList10.size();
                            q63 q63Var4 = wn3Var3.a;
                            FolderState folderState12 = folderState11;
                            List list6 = wn3Var3.d;
                            long j3 = j2;
                            q63 q63Var5 = wn3Var3.a;
                            List list7 = wn3Var3.c;
                            String strQ = q63Var4.q();
                            ArrayList arrayList14 = arrayList10;
                            FolderState folderState13 = folderState10;
                            StringBuilder sbN = xs1.n("Processing backup ", i12, str7, ": ", size);
                            sbN.append(strQ);
                            q63 q63Var6 = q63Var5;
                            boolean z6 = z5;
                            vr6.i$default(vr6.INSTANCE, str2, sbN.toString(), null, 4, null);
                            Manifest manifest = wn3Var3.b.getManifest();
                            Iterator it11 = list7.iterator();
                            long size2 = 0;
                            while (it11.hasNext()) {
                                FileEntry fileEntry3 = manifest.getCurrentState().getFiles().get((String) it11.next());
                                size2 += fileEntry3 != null ? fileEntry3.getSize() : 0L;
                            }
                            ArrayList arrayList15 = arrayList13;
                            long j4 = size2;
                            long j5 = j3;
                            String str8 = str2;
                            long j6 = j;
                            String str9 = str7;
                            List list8 = list6;
                            iw iwVar = new iw(kh6Var2, j6, this, 2);
                            HashSet hashSet = mz6.a;
                            long j7 = wn3Var3.f;
                            if (!mz6.m(q63Var6)) {
                                g84.f("Unsupported folder backup format: ".concat(q63Var6.p()));
                                return null;
                            }
                            p93 p93Var = p93.a;
                            CopyOnWriteArrayList copyOnWriteArrayList2 = wn3Var3.e;
                            vr6.i$default(vr6.INSTANCE, "restoreFolderArchive", eq3.l("Extracting archive: ", q63Var6.q(), " (", p93.c(Long.valueOf(j7)), ")"), null, 4, null);
                            if (j4 >= j7) {
                                j7 = j4;
                            }
                            oj7 oj7VarB = pj7.b(q63Var, j7);
                            if (oj7VarB != null) {
                                g84.h(oj7VarB.a);
                                return null;
                            }
                            xy6 xy6Var = (xy6) el1.l1(mz6.n(q63Var6));
                            if (xy6Var == null) {
                                g84.h("Folder backup expected 1 entry in ".concat(q63Var6.p()));
                                return null;
                            }
                            if (xy6Var.i == wy6.None) {
                                wn3Var = wn3Var3;
                                g(q63Var6, q63Var, xy6Var.a, wn3Var, iwVar, null);
                                c = '\n';
                                kj3Var = kj3Var3;
                                list2 = list8;
                                copyOnWriteArrayList = copyOnWriteArrayList2;
                            } else {
                                wn3Var = wn3Var3;
                                String str10 = kj3Var3.a;
                                str10.getClass();
                                d45.b.getClass();
                                MFirebaseUser mFirebaseUserA = d45.a();
                                if (mFirebaseUserA == null) {
                                    throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
                                }
                                char[] charArray = sz8.E(nq7.u0(mFirebaseUserA.getUid()).toString().concat(nq7.u0(str10).toString())).toCharArray();
                                charArray.getClass();
                                List listI = nc8.I(charArray);
                                char[] charArray2 = sz8.E(nq7.u0(b45.a().getUid()).toString().concat(nq7.u0(str10).toString())).toCharArray();
                                charArray2.getClass();
                                ArrayList arrayListG1 = el1.g1(listI, nc8.I(charArray2));
                                HashSet hashSet2 = new HashSet();
                                ArrayList<char[]> arrayList16 = new ArrayList();
                                for (Object obj5 : arrayListG1) {
                                    if (hashSet2.add(new String((char[]) obj5))) {
                                        arrayList16.add(obj5);
                                    }
                                }
                                char c2 = '\n';
                                ArrayList arrayList17 = new ArrayList(hl1.G0(arrayList16, 10));
                                for (char[] cArr : arrayList16) {
                                    arrayList17.add(Arrays.copyOf(cArr, cArr.length));
                                }
                                ArrayList arrayList18 = new ArrayList();
                                for (Object obj6 : arrayList17) {
                                    if (((char[]) obj6).length != 0) {
                                        arrayList18.add(obj6);
                                    }
                                }
                                if (arrayList18.isEmpty()) {
                                    l0.e("Archive entry is encrypted but no candidate passwords are available");
                                    return null;
                                }
                                try {
                                    Iterator it12 = arrayList18.iterator();
                                    sz6 e = null;
                                    while (true) {
                                        if (!it12.hasNext()) {
                                            c = c2;
                                            arrayList2 = arrayList18;
                                            kj3Var = kj3Var3;
                                            list2 = list8;
                                            copyOnWriteArrayList = copyOnWriteArrayList2;
                                            z = false;
                                            break;
                                        }
                                        char[] cArr2 = (char[]) it12.next();
                                        try {
                                            String str11 = xy6Var.a;
                                            q63 q63Var7 = q63Var6;
                                            arrayList2 = arrayList18;
                                            q63Var2 = q63Var7;
                                            c = c2;
                                            kj3Var = kj3Var3;
                                            list2 = list8;
                                            copyOnWriteArrayList = copyOnWriteArrayList2;
                                            try {
                                                g(q63Var2, q63Var, str11, wn3Var, iwVar, cArr2);
                                                z = z6;
                                                break;
                                            } catch (sz6 e2) {
                                                e = e2;
                                                ArrayList arrayList19 = arrayList2;
                                                q63Var6 = q63Var2;
                                                arrayList18 = arrayList19;
                                                copyOnWriteArrayList2 = copyOnWriteArrayList;
                                                xy6Var = xy6Var;
                                                c2 = c;
                                                list8 = list2;
                                                kj3Var3 = kj3Var;
                                            } catch (Throwable th) {
                                                th = th;
                                                Iterator it13 = arrayList2.iterator();
                                                while (it13.hasNext()) {
                                                    x50.o0((char[]) it13.next());
                                                }
                                                throw th;
                                            }
                                        } catch (sz6 e3) {
                                            e = e3;
                                            q63 q63Var8 = q63Var6;
                                            arrayList2 = arrayList18;
                                            q63Var2 = q63Var8;
                                            c = c2;
                                            kj3Var = kj3Var3;
                                            list2 = list8;
                                            copyOnWriteArrayList = copyOnWriteArrayList2;
                                        }
                                        ArrayList arrayList110 = arrayList2;
                                        q63Var6 = q63Var2;
                                        arrayList18 = arrayList110;
                                        copyOnWriteArrayList2 = copyOnWriteArrayList;
                                        xy6Var = xy6Var;
                                        c2 = c;
                                        list8 = list2;
                                        kj3Var3 = kj3Var;
                                    }
                                    Iterator it14 = arrayList2.iterator();
                                    while (it14.hasNext()) {
                                        x50.o0((char[]) it14.next());
                                    }
                                    if (!z) {
                                        e6.i("Error during archive extraction due to wrong password", e);
                                        return null;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    arrayList2 = arrayList18;
                                }
                            }
                            xn3 xn3Var = xn3.EXTRACT;
                            xn3Var.getClass();
                            if (list2.contains(xn3Var)) {
                                copyOnWriteArrayList.add(xn3Var);
                            }
                            long j8 = 0;
                            for (xn3 xn3Var2 : copyOnWriteArrayList) {
                                xn3Var2.getClass();
                                long j9 = j5;
                                j8 = (list2.contains(xn3Var2) ? wn3Var.g : 0L) + j8;
                                j5 = j9;
                            }
                            iwVar.invoke(Long.valueOf(j8));
                            arrayList15.addAll(list7);
                            r2.a = j(r2.a, wn3Var.h);
                            kh6Var = kh6Var2;
                            j2 = j5 + j4;
                            str2 = str8;
                            folderState11 = folderState12;
                            arrayList13 = arrayList15;
                            i11 = i12;
                            str7 = str9;
                            j = j6;
                            arrayList10 = arrayList14;
                            folderState10 = folderState13;
                            z5 = z6;
                            kj3Var3 = kj3Var;
                            i10 = 0;
                        }
                        FolderState folderState14 = folderState10;
                        FolderState folderState15 = folderState11;
                        String str12 = str2;
                        long j10 = j2;
                        int i13 = i10;
                        ArrayList arrayList20 = arrayList13;
                        if (z4 && folderRestoreStrategy == FolderRestoreStrategy.FULL_RESTORE) {
                            pn3.b(q63Var, folderState15, folderState14);
                        }
                        this.c.invoke(100);
                        p93 p93Var2 = p93.a;
                        String strC = p93.c(Long.valueOf(j10));
                        if (arrayList20.isEmpty()) {
                            i = i13;
                        } else {
                            Iterator it15 = arrayList20.iterator();
                            i = i13;
                            while (it15.hasNext()) {
                                if (folderState15.getFiles().containsKey((String) it15.next()) && (i = i + 1) < 0) {
                                    fl1.E0();
                                    throw null;
                                }
                            }
                        }
                        ArrayList arrayList21 = new ArrayList();
                        if (i > 0) {
                            arrayList21.add(i + " files");
                        }
                        vr6.i$default(vr6.INSTANCE, str12, eq3.l("Restored ", el1.Y0(arrayList21, " and ", null, null, null, 62), " (", strC, ")"), null, 4, null);
                        Duration durationBetween = Duration.between(instantNow, Instant.now());
                        int size3 = arrayList20.size();
                        durationBetween.getClass();
                        return new rm6(size3, j10, durationBetween);
                    }
                    Object next6 = it2.next();
                    int i14 = i2 + 1;
                    if (i2 < 0) {
                        fl1.F0();
                        throw null;
                    }
                    ManifestInfo manifestInfo = (ManifestInfo) next6;
                    q63 file = manifestInfo.getFile();
                    file.getClass();
                    FolderBackup$BaseBackup folderBackup$BaseBackupC = kj3Var4.c();
                    if (!folderBackup$BaseBackupC.exists()) {
                        backupFile = null;
                    } else if (pe4.d(folderBackup$BaseBackupC.getManifestFile(), file)) {
                        backupFile = folderBackup$BaseBackupC.getBackupFile();
                    } else {
                        ArrayList arrayListA = kj3Var4.a();
                        if (arrayListA == null || arrayListA.isEmpty()) {
                            backupFile = null;
                        } else {
                            Iterator it16 = arrayListA.iterator();
                            while (true) {
                                if (!it16.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it16.next();
                                Iterator it17 = it16;
                                if (pe4.d(((FolderBackup$IncrementalBackup) next).getManifestFile(), file)) {
                                    break;
                                }
                                it16 = it17;
                            }
                            FolderBackup$IncrementalBackup folderBackup$IncrementalBackup = (FolderBackup$IncrementalBackup) next;
                            if (folderBackup$IncrementalBackup != null) {
                                backupFile = folderBackup$IncrementalBackup.getBackupFile();
                            } else {
                                backupFile = null;
                            }
                        }
                    }
                    boolean zHasOnlyDeletions = manifestInfo.getManifest().getChanges().hasOnlyDeletions();
                    if (backupFile == null || zHasOnlyDeletions) {
                        kj3Var2 = kj3Var4;
                        arrayList3 = arrayList4;
                        vr6.i$default(vr6.INSTANCE, "restoreFolder", dj7.j("Skipping backup ", i14, "/", ": Empty backup (only deletions)", arrayList3.size()), null, 4, null);
                        im6Var = null;
                    } else {
                        Manifest manifest2 = manifestInfo.getManifest();
                        ArrayList arrayListG2 = el1.g1(el1.g1(manifest2.getChanges().getFilesAdded(), manifest2.getChanges().getFilesModified()), manifest2.getChanges().getDirectoriesAdded());
                        ArrayList arrayList22 = new ArrayList();
                        for (Object obj7 : arrayListG2) {
                            kj3 kj3Var5 = kj3Var4;
                            String str13 = (String) obj7;
                            ArrayList arrayList23 = arrayList4;
                            if (currentState.getFiles().containsKey(str13) || setZ1.contains(str13)) {
                                arrayList22.add(obj7);
                            }
                            kj3Var4 = kj3Var5;
                            arrayList4 = arrayList23;
                        }
                        kj3Var2 = kj3Var4;
                        arrayList3 = arrayList4;
                        im6Var = new im6(backupFile, manifestInfo, arrayList22);
                    }
                    if (im6Var != null) {
                        arrayList5.add(im6Var);
                    }
                    arrayList5 = arrayList5;
                    i2 = i14;
                    kj3Var4 = kj3Var2;
                    arrayList4 = arrayList3;
                }
            } else {
                kj3 kj3Var6 = kj3Var4;
                ArrayList arrayList24 = arrayList4;
                kj3 kj3Var7 = kj3Var3;
                String parentBackupId = manifestA.getParentBackupId();
                if (parentBackupId == null) {
                    throw new zv0(xs1.j("Incremental backup missing parentBackupId: ", manifestA.getBackupId()));
                }
                if (parentBackupId.equals("base")) {
                    FolderBackup$BaseBackup folderBackup$BaseBackupC2 = kj3Var6.c();
                    if (!folderBackup$BaseBackupC2.exists()) {
                        folderBackup$BaseBackupC2 = null;
                    }
                    if (folderBackup$BaseBackupC2 != null) {
                        manifestFile = folderBackup$BaseBackupC2.getManifestFile();
                        q63Var3 = manifestFile;
                    }
                } else {
                    if (!uq7.V(parentBackupId, "inc-", false)) {
                        g84.f("Unknown backupId: ".concat(parentBackupId));
                        return null;
                    }
                    ArrayList arrayListA2 = kj3Var6.a();
                    if (arrayListA2 != null && !arrayListA2.isEmpty()) {
                        String strQ0 = nq7.q0(parentBackupId, "inc-");
                        Iterator it18 = arrayListA2.iterator();
                        do {
                            if (!it18.hasNext()) {
                                next2 = null;
                                break;
                            }
                            next2 = it18.next();
                        } while (!pe4.d(((FolderBackup$IncrementalBackup) next2).getTimestamp(), strQ0));
                        FolderBackup$IncrementalBackup folderBackup$IncrementalBackup2 = (FolderBackup$IncrementalBackup) next2;
                        if (folderBackup$IncrementalBackup2 != null) {
                            manifestFile = folderBackup$IncrementalBackup2.getManifestFile();
                            q63Var3 = manifestFile;
                        }
                    }
                }
                if (q63Var3 == null) {
                    throw new zv0("Missing parent manifest: ".concat(parentBackupId));
                }
                Manifest manifestA2 = v55.a(q63Var3);
                if (manifestA.getCreated() <= manifestA2.getCreated()) {
                    vr6.e$default(vr6.INSTANCE, "ManifestManager", "currentManifest: " + manifestA + ", parentManifest: " + manifestA2, null, 4, null);
                    long created = manifestA.getCreated();
                    long created2 = manifestA2.getCreated();
                    StringBuilder sbT = dj7.t("Timestamp not monotonic: ", " <= ", created);
                    sbT.append(created2);
                    throw new zv0(sbT.toString());
                }
                manifestA = manifestA2;
                q63VarG = q63Var3;
                kj3Var4 = kj3Var6;
                arrayList4 = arrayList24;
                kj3Var3 = kj3Var7;
            }
        }
    }
}
