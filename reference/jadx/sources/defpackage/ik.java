package defpackage;

import android.content.pm.PackageManager;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ik {
    /* JADX WARN: Code duplicated, block: B:103:0x0247  */
    /* JADX WARN: Code duplicated, block: B:18:0x0066  */
    /* JADX WARN: Code duplicated, block: B:19:0x0068 A[PHI: r8
      0x0068: PHI (r8v15 java.util.List) = (r8v14 java.util.List), (r8v19 java.util.List) binds: [B:15:0x005a, B:17:0x0064] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x006c  */
    /* JADX WARN: Code duplicated, block: B:24:0x007b  */
    /* JADX WARN: Code duplicated, block: B:95:0x01fc A[LOOP:1: B:93:0x01f6->B:95:0x01fc, LOOP_END] */
    public static void a(String str, oy7 oy7Var) {
        List listB;
        List<hk> listB2;
        boolean z;
        boolean z2;
        Iterator it;
        ArrayList arrayList;
        LocalMetadata localMetadataU;
        str.getClass();
        oy7Var.getClass();
        List list = oy7Var.f;
        ny7 ny7Var = oy7Var.h;
        vr6.i$default(vr6.INSTANCE, "AppBackupDeleteHelper", "Deleting backup file(s) for package=" + str + " with params=" + oy7Var, null, 4, null);
        iy.d.remove(str);
        ArrayList arrayList2 = new ArrayList();
        List list2 = oy7Var.g;
        boolean zQ = false;
        if (ji8.s(list2)) {
            if (ny7Var instanceof ly7) {
                ly7 ly7Var = (ly7) ny7Var;
                Parcelable.Creator<hk> creator = hk.CREATOR;
                listB2 = fk.b(str);
                if (listB2 == null) {
                    listB2 = null;
                } else {
                    if (listB2.isEmpty()) {
                        listB2 = null;
                    }
                    if (listB2 == null) {
                        listB2 = null;
                    } else if (ly7Var.b) {
                        listB2 = el1.N0(1, listB2);
                        if (listB2.isEmpty()) {
                            listB2 = null;
                        } else {
                            if (ly7Var.a) {
                                arrayList = new ArrayList();
                                for (Object obj : listB2) {
                                    localMetadataU = ((hk) obj).u();
                                    if (localMetadataU != null || !localMetadataU.isProtectedBackup()) {
                                        arrayList.add(obj);
                                    }
                                }
                                listB2 = arrayList;
                            }
                            if (listB2.isEmpty()) {
                                listB2 = null;
                            }
                        }
                    } else {
                        if (ly7Var.a) {
                            arrayList = new ArrayList();
                            while (r8.hasNext()) {
                                localMetadataU = ((hk) obj).u();
                                if (localMetadataU != null) {
                                }
                                arrayList.add(obj);
                            }
                            listB2 = arrayList;
                        }
                        if (listB2.isEmpty()) {
                            listB2 = null;
                        }
                    }
                }
            } else {
                if (!(ny7Var instanceof my7)) {
                    q.j();
                    return;
                }
                listB2 = ((my7) ny7Var).a;
            }
            if (listB2 != null && !listB2.isEmpty()) {
                ArrayList arrayList3 = new ArrayList();
                bo4 entries = iu.getEntries();
                if (entries == null || !((l3) entries).isEmpty()) {
                    Iterator it2 = ((z3) entries).iterator();
                    while (true) {
                        w3 w3Var = (w3) it2;
                        if (!w3Var.hasNext()) {
                            it = listB2.iterator();
                            while (it.hasNext()) {
                                arrayList3.add(Boolean.valueOf(((hk) it.next()).e().g()));
                            }
                        } else if (!list.contains((iu) w3Var.next())) {
                            for (hk hkVar : listB2) {
                                if (list.contains(iu.APP)) {
                                    if (hkVar.c().j()) {
                                        Set set = j94.a;
                                        SwiftApp.Companion companion = SwiftApp.d;
                                        try {
                                            SwiftApp.Companion.c().getPackageManager().getPackageInfo(str, 0);
                                            z2 = true;
                                        } catch (PackageManager.NameNotFoundException unused) {
                                            z2 = false;
                                        }
                                        j94.f(str, z2);
                                        arrayList3.add(Boolean.valueOf(hkVar.c().f()));
                                    }
                                    if (hkVar.C().j()) {
                                        arrayList3.add(Boolean.valueOf(hkVar.C().f()));
                                    }
                                    if (hkVar.z().j()) {
                                        arrayList3.add(Boolean.valueOf(hkVar.z().f()));
                                    }
                                }
                                if (list.contains(iu.DATA) && hkVar.g().j()) {
                                    arrayList3.add(Boolean.valueOf(hkVar.g().f()));
                                }
                                if (list.contains(iu.EXTDATA) && hkVar.n().j()) {
                                    arrayList3.add(Boolean.valueOf(hkVar.n().f()));
                                }
                                if (list.contains(iu.MEDIA) && hkVar.q().j()) {
                                    arrayList3.add(Boolean.valueOf(hkVar.q().f()));
                                }
                                if (list.contains(iu.EXPANSION) && hkVar.m().j()) {
                                    arrayList3.add(Boolean.valueOf(hkVar.m().f()));
                                }
                                if (!hkVar.E()) {
                                    arrayList3.add(Boolean.valueOf(hkVar.e().g()));
                                }
                            }
                        }
                    }
                } else {
                    it = listB2.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(Boolean.valueOf(((hk) it.next()).e().g()));
                    }
                }
                Parcelable.Creator<hk> creator2 = hk.CREATOR;
                List listB3 = fk.b(str);
                if (listB3 == null || listB3.isEmpty()) {
                    vr6.i$default(vr6.INSTANCE, "AppBackupDeleteHelper", eq3.k("All backups deleted for package ", str, ". Deleting the package directory..."), null, 4, null);
                    arrayList3.add(Boolean.valueOf(fk.c(str, false).g()));
                }
                if (arrayList3.isEmpty()) {
                    z = true;
                    break;
                }
                Iterator it3 = arrayList3.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        if (!((Boolean) it3.next()).booleanValue()) {
                            z = false;
                            break;
                        }
                    } else {
                        z = true;
                        break;
                    }
                }
            } else {
                z = true;
                break;
            }
            arrayList2.add(Boolean.valueOf(z));
        }
        if (list2.contains(q05.CLOUD)) {
            if (ny7Var instanceof ly7) {
                AppCloudBackups.a.C0014a c0014aFetchForPackage = AppCloudBackups.Companion.fetchForPackage(str);
                if (c0014aFetchForPackage.getDatabaseError() != null) {
                    vr6.e$default(vr6.INSTANCE, "AppBackupDeleteHelper", dj7.l("Error while fetching cloud backups for package: ", str, ": ", c0014aFetchForPackage.getDatabaseError().b), null, 4, null);
                } else {
                    AppCloudBackups appCloudBackups = c0014aFetchForPackage.getAppCloudBackups();
                    if (appCloudBackups != null) {
                        AppCloudBackups appCloudBackups2 = appCloudBackups.hasBackups() ? appCloudBackups : null;
                        if (appCloudBackups2 != null) {
                            listB = b(appCloudBackups2.getBackups(), (ly7) ny7Var);
                        }
                    }
                }
                arrayList2.add(Boolean.valueOf(zQ));
            } else {
                if (!(ny7Var instanceof my7)) {
                    q.j();
                    return;
                }
                listB = ((my7) ny7Var).b;
            }
            if (listB == null || listB.isEmpty()) {
                zQ = true;
            } else {
                id1 id1Var = new id1(listB, oy7Var);
                tb1 tb1Var = tb1.a;
                zQ = qb1.c().b(id1Var).c().q();
            }
            arrayList2.add(Boolean.valueOf(zQ));
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        Iterator it4 = arrayList2.iterator();
        while (it4.hasNext() && ((Boolean) it4.next()).booleanValue()) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0021 A[PHI: r3
      0x0021: PHI (r3v2 java.util.List) = (r3v1 java.util.List), (r3v6 java.util.List) binds: [B:11:0x0013, B:13:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:17:0x0025  */
    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    /* JADX WARN: Code duplicated, block: B:26:0x0050 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x002e A[SYNTHETIC] */
    public static List b(List list, ly7 ly7Var) {
        ArrayList arrayList;
        ly7Var.getClass();
        if (list != null) {
            if (list.isEmpty()) {
                list = null;
            }
            if (list != null) {
                if (ly7Var.b) {
                    list = el1.N0(1, list);
                    if (!list.isEmpty()) {
                        if (ly7Var.a) {
                            arrayList = new ArrayList();
                            for (Object obj : list) {
                                if (!((AppCloudBackup) obj).getMetadata().isProtectedBackup()) {
                                    arrayList.add(obj);
                                }
                            }
                            list = arrayList;
                        }
                        if (!list.isEmpty()) {
                            return list;
                        }
                    }
                } else {
                    if (ly7Var.a) {
                        arrayList = new ArrayList();
                        while (r3.hasNext()) {
                            if (!((AppCloudBackup) obj).getMetadata().isProtectedBackup()) {
                                arrayList.add(obj);
                            }
                        }
                        list = arrayList;
                    }
                    if (!list.isEmpty()) {
                        return list;
                    }
                }
            }
        }
        return null;
    }
}
