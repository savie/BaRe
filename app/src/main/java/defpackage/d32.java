package defpackage;

import android.os.Parcelable;
import androidx.credentials.playservices.controllers.blockstore.createrestorecredential.CredentialProviderCreateRestoreCredentialController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$BaseBackup;
import org.swiftapps.swiftbackup.folders.data.FolderBackup$IncrementalBackup;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.Manifest;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d32 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d32(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:53:0x010b  */
    @Override // defpackage.bt3
    public final Object invoke() {
        String strV;
        Long lValueOf;
        FolderItem folderItem;
        int i = this.a;
        int i2 = 6;
        be8 be8Var = be8.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                return CredentialProviderCreateRestoreCredentialController.invokePlayServices$lambda$0$0((Executor) obj3, (t22) obj2, (k12) obj);
            case 1:
                o23 o23Var = (o23) obj3;
                String str = (String) obj2;
                String str2 = (String) obj;
                o23.F(str);
                o23.F(str2);
                String strG = o23Var.G(str);
                String strG2 = o23Var.G(str2);
                if (o23Var.r(strG2)) {
                    vr6.i$default(vr6.INSTANCE, "FTPService", "Deleting existing file at ".concat(strG2), null, 4, null);
                    o23Var.j(strG2);
                }
                o23Var.w(strG2);
                boolean zX = false;
                d23 d23VarZ = o23Var.z(false);
                int iM = d23VarZ.m("RNFR", strG);
                if (iM >= 300 && iM < 400) {
                    zX = k55.x(d23VarZ.m("RNTO", strG2));
                }
                if (zX) {
                    return be8Var;
                }
                String strI = d23VarZ.i();
                StringBuilder sbP = u48.p("FTPService.move failed from ", str, " to ", str2, ". Reply=");
                sbP.append(strI);
                throw new IllegalStateException(sbP.toString().toString());
            case 2:
                kj3 kj3Var = (kj3) obj3;
                FolderMetadata folderMetadata = (FolderMetadata) obj2;
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj;
                int i3 = FolderDetailActivity.Z;
                Collection<FolderMetadata.IncrementalBackup> collection = ov2.a;
                long jH = 0;
                mj3 mj3Var = null;
                l = null;
                l = null;
                Long l = null;
                if (kj3Var != null) {
                    FolderMetadata folderMetadataH = kj3Var.h();
                    FolderBackup$BaseBackup folderBackup$BaseBackupC = kj3Var.c();
                    if (!folderBackup$BaseBackupC.exists()) {
                        folderBackup$BaseBackupC = null;
                    }
                    ArrayList arrayListA = kj3Var.a();
                    if (arrayListA != null) {
                        collection = arrayListA;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (Object obj4 : collection) {
                        if (((FolderBackup$IncrementalBackup) obj4).exists()) {
                            arrayList.add(obj4);
                        }
                    }
                    List listB0 = fl1.B0(folderBackup$BaseBackupC != null ? Long.valueOf(folderBackup$BaseBackupC.getDate()) : null);
                    ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(Long.valueOf(((FolderBackup$IncrementalBackup) it.next()).getDate()));
                    }
                    ArrayList arrayListG1 = el1.g1(listB0, arrayList2);
                    if (folderMetadataH == null || (folderItem = folderMetadataH.getFolderItem()) == null || (strV = folderItem.getSourceFolder()) == null) {
                        strV = kj3Var.e().v();
                    }
                    if (folderBackup$BaseBackupC != null) {
                        long date = folderBackup$BaseBackupC.getDate();
                        lValueOf = Long.valueOf(date);
                        if (date <= 0) {
                            lValueOf = null;
                        }
                    } else {
                        lValueOf = null;
                    }
                    Long l2 = (Long) el1.c1(arrayListG1);
                    if (l2 != null) {
                        long jLongValue = l2.longValue();
                        if (jLongValue <= 0 || (folderBackup$BaseBackupC != null && jLongValue == folderBackup$BaseBackupC.getDate())) {
                            l2 = null;
                        }
                    } else {
                        l2 = null;
                    }
                    ww4 ww4VarP = nc8.p();
                    if (folderBackup$BaseBackupC != null) {
                        Manifest manifestB = tm3.b(folderBackup$BaseBackupC.getManifestFile());
                        nj3.a(ww4VarP, pj3.BaseBackup, manifestB != null ? Long.valueOf(manifestB.baseOriginalSize()) : null, Long.valueOf(folderBackup$BaseBackupC.getBackupFile().A()), Long.valueOf(folderBackup$BaseBackupC.getManifestFile().A()), null);
                    }
                    if (!arrayList.isEmpty()) {
                        ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList, 10));
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Manifest manifestB2 = tm3.b(((FolderBackup$IncrementalBackup) it2.next()).getManifestFile());
                            arrayList3.add(manifestB2 != null ? Long.valueOf(manifestB2.incrementalOriginalSize()) : null);
                        }
                        Long lC = nj3.c(arrayList3);
                        pj3 pj3Var = pj3.IncrementalBackups;
                        Iterator it3 = arrayList.iterator();
                        long jA = 0;
                        while (it3.hasNext()) {
                            jA += ((FolderBackup$IncrementalBackup) it3.next()).getBackupFile().A();
                        }
                        Long lValueOf2 = Long.valueOf(jA);
                        Iterator it4 = arrayList.iterator();
                        while (it4.hasNext()) {
                            jH += ((FolderBackup$IncrementalBackup) it4.next()).getManifestFile().A();
                        }
                        nj3.a(ww4VarP, pj3Var, lC, lValueOf2, Long.valueOf(jH), Integer.valueOf(arrayList.size()));
                    }
                    mj3Var = new mj3(strV, lValueOf, l2, nc8.h(ww4VarP));
                } else if (folderMetadata != null) {
                    FolderMetadata.BaseBackup baseBackup = folderMetadata.getBaseBackup();
                    if (baseBackup == null || !baseBackup.isValid()) {
                        baseBackup = null;
                    }
                    Map<String, FolderMetadata.IncrementalBackup> incrementalBackups = folderMetadata.getIncrementalBackups();
                    Collection<FolderMetadata.IncrementalBackup> collectionValues = incrementalBackups != null ? incrementalBackups.values() : null;
                    if (collectionValues != null) {
                        collection = collectionValues;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj5 : collection) {
                        if (((FolderMetadata.IncrementalBackup) obj5).isValid()) {
                            arrayList4.add(obj5);
                        }
                    }
                    List listN1 = el1.n1(arrayList4, new lw1(1));
                    Long lB = baseBackup != null ? nj3.b(baseBackup) : null;
                    List listB1 = fl1.B0(lB);
                    ArrayList arrayList5 = new ArrayList();
                    Iterator it5 = listN1.iterator();
                    while (it5.hasNext()) {
                        Long lB2 = nj3.b((FolderMetadata.IncrementalBackup) it5.next());
                        if (lB2 != null) {
                            arrayList5.add(lB2);
                        }
                    }
                    ArrayList arrayListG2 = el1.g1(listB1, arrayList5);
                    String sourceFolder = folderMetadata.getFolderItem().getSourceFolder();
                    Long l3 = (Long) el1.c1(arrayListG2);
                    if (l3 != null) {
                        long jLongValue2 = l3.longValue();
                        if (jLongValue2 > 0 && (lB == null || jLongValue2 != lB.longValue())) {
                            l = l3;
                        }
                    }
                    ww4 ww4VarP2 = nc8.p();
                    if (baseBackup != null) {
                        nj3.a(ww4VarP2, pj3.BaseBackup, baseBackup.getOriginalSize(), baseBackup.getBackupSize(), baseBackup.getManifestSize(), null);
                    }
                    if (!listN1.isEmpty()) {
                        pj3 pj3Var2 = pj3.IncrementalBackups;
                        ArrayList arrayList6 = new ArrayList(hl1.G0(listN1, 10));
                        Iterator it6 = listN1.iterator();
                        while (it6.hasNext()) {
                            arrayList6.add(((FolderMetadata.IncrementalBackup) it6.next()).getOriginalSize());
                        }
                        Long lC2 = nj3.c(arrayList6);
                        Iterator it7 = listN1.iterator();
                        long jH2 = 0;
                        while (it7.hasNext()) {
                            jH2 = io4.h(((FolderMetadata.IncrementalBackup) it7.next()).getBackupSize()) + jH2;
                        }
                        Long lValueOf3 = Long.valueOf(jH2);
                        Iterator it8 = listN1.iterator();
                        while (it8.hasNext()) {
                            jH += io4.h(((FolderMetadata.IncrementalBackup) it8.next()).getManifestSize());
                        }
                        nj3.a(ww4VarP2, pj3Var2, lC2, lValueOf3, Long.valueOf(jH), Integer.valueOf(listN1.size()));
                    }
                    mj3Var = new mj3(sourceFolder, lB, l, nc8.h(ww4VarP2));
                }
                if (mj3Var != null) {
                    zn4 zn4Var = zn4.a;
                    zn4.e(new xq(i2, folderDetailActivity, mj3Var));
                }
                return be8Var;
            case 3:
                Parcelable parcelable = (Parcelable) obj3;
                in3 in3Var = (in3) obj2;
                LinkedHashMap linkedHashMap = in3Var.m;
                bn3 bn3Var = (bn3) obj;
                if (parcelable != null) {
                    linkedHashMap.put(in3Var.k().c.v(), parcelable);
                }
                q63 q63Var = bn3Var.a;
                linkedHashMap.remove(q63Var.v());
                in3Var.m(q63Var, new rm(i2, in3Var, q63Var));
                return be8Var;
            default:
                int i4 = FoldersBatchActivity.Y;
                ((FoldersBatchActivity) obj3).a0().j((ArrayList) obj2, (vy7) obj);
                return be8Var;
        }
    }
}
