package defpackage;

import android.util.Log;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.cloud.protocols.CloudServiceId;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class eh1 {
    public static String a(String str) {
        if (!uq7.V(str, "DO_NOT_DELETE_cloud_account_id_copy_", false) || !uq7.O(str, ".json", false)) {
            return null;
        }
        String string = nq7.H0(nq7.r0(nq7.q0(str, "DO_NOT_DELETE_cloud_account_id_copy_"), ".json")).toString();
        if (nq7.j0(string)) {
            return null;
        }
        return string;
    }

    public static String b(String str, String str2) {
        return u48.n(str, "/DO_NOT_DELETE_cloud_account_id_copy_", str2, ".json");
    }

    /* JADX WARN: Code duplicated, block: B:141:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:175:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0112 A[RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:141:0x03d4, please report this as an issue */
    public static CloudServiceId c(jh1 jh1Var, CloudServiceId cloudServiceId) {
        int[] iArr;
        int i;
        boolean z;
        boolean zG;
        int i2;
        Object bh1Var;
        int i3;
        Set setA0;
        jh1Var.getClass();
        String mainCloudFolderName = jh1Var.g().getMainCloudFolderName();
        ch1 ch1Var = ch1.j;
        ah1 ah1Var = ah1.j;
        xg1 xg1Var = xg1.g;
        yg1 yg1Var = yg1.g;
        mainCloudFolderName.getClass();
        String strConcat = mainCloudFolderName.concat("/DO_NOT_DELETE_cloud_account_id.json");
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "CloudOperationsImpl", "getOrCreateCloudServiceId called. Id file relative path = ".concat(strConcat), null, 4, null);
        ih1 ih1VarO = jh1Var.o(strConcat);
        int[] iArr2 = dh1.a;
        int i4 = iArr2[ih1VarO.ordinal()];
        if (i4 == 1) {
            iArr = iArr2;
            i = 1;
            vr6.i$default(vr6Var, "CloudOperationsImpl", "getOrCreateCloudServiceId: Id already exists", null, 4, null);
            wx3 wx3VarE = e(jh1Var, strConcat);
            if (!(wx3VarE instanceof zg1)) {
                if (wx3VarE.equals(yg1Var)) {
                    vr6.e$default(vr6Var, "CloudOperationsImpl", "getOrCreateCloudServiceId: Invalid primary id content at ".concat(strConcat), null, 4, null);
                    if (!zm5.u(cloudServiceId)) {
                        z = true;
                    } else if (f(jh1Var, mainCloudFolderName, cloudServiceId, null)) {
                        return cloudServiceId;
                    }
                    return null;
                }
                if (!wx3VarE.equals(xg1Var)) {
                    q.j();
                    return null;
                }
                if (cloudServiceId == null || !zm5.u(cloudServiceId)) {
                    return null;
                }
                return cloudServiceId;
            }
            CloudServiceId cloudServiceId2 = ((zg1) wx3VarE).g;
            if (zm5.u(cloudServiceId) && !pe4.d(cloudServiceId2.getId(), cloudServiceId.getId())) {
                vr6.e$default(vr6Var, "CloudOperationsImpl", "getOrCreateCloudServiceId: Primary id " + cloudServiceId2 + " doesn't match saved id " + cloudServiceId, null, 4, null);
                if (f(jh1Var, mainCloudFolderName, cloudServiceId, cloudServiceId2)) {
                    return cloudServiceId;
                }
                return null;
            }
            vr6.i$default(vr6Var, "CloudOperationsImpl", "getOrCreateCloudServiceId: CloudServiceId found = " + cloudServiceId2, null, 4, null);
            String strB = b(mainCloudFolderName, cloudServiceId2.getId());
            int i5 = iArr[jh1Var.o(strB).ordinal()];
            if (i5 != 1) {
                if (i5 == 2) {
                    zG = g(jh1Var, mainCloudFolderName, cloudServiceId2);
                } else {
                    if (i5 != 3) {
                        q.j();
                        return null;
                    }
                    vr6.e$default(vr6Var, "CloudOperationsImpl", "ensureCloudServiceIdCopyFile: Id file copy state unknown at path: ".concat(strB), null, 4, null);
                }
                if (zG) {
                    return cloudServiceId2;
                }
                return null;
            }
            vr6.i$default(vr6Var, "CloudOperationsImpl", "ensureCloudServiceIdCopyFile: Id file copy already exists", null, 4, null);
            zG = true;
            if (zG) {
                return null;
            }
            return cloudServiceId2;
        }
        if (i4 != 2) {
            if (i4 != 3) {
                q.j();
                return null;
            }
            if (cloudServiceId == null || !zm5.u(cloudServiceId)) {
                return null;
            }
            return cloudServiceId;
        }
        z = false;
        iArr = iArr2;
        i = 1;
        if (zm5.u(cloudServiceId)) {
            String strB2 = b(mainCloudFolderName, cloudServiceId.getId());
            int i6 = iArr[jh1Var.o(strB2).ordinal()];
            sv2 sv2Var = sv2.a;
            if (i6 == i) {
                i3 = 3;
                wx3 wx3VarE2 = e(jh1Var, strB2);
                if (wx3VarE2 instanceof zg1) {
                    if (pe4.d(((zg1) wx3VarE2).g.getId(), cloudServiceId.getId())) {
                        setA0 = sz8.Y(wg1.Primary);
                    } else {
                        vr6.e$default(vr6Var, "CloudOperationsImpl", "recoverCloudServiceId: Id copy content doesn't match saved id at ".concat(strB2), null, 4, null);
                        setA0 = x50.A0(new wg1[]{wg1.Primary, wg1.Copy});
                    }
                    bh1Var = new bh1(cloudServiceId, setA0);
                } else if (wx3VarE2.equals(yg1Var)) {
                    bh1Var = new bh1(cloudServiceId, x50.A0(new wg1[]{wg1.Primary, wg1.Copy}));
                } else {
                    if (!wx3VarE2.equals(xg1Var)) {
                        q.j();
                        return null;
                    }
                    bh1Var = new bh1(cloudServiceId, sv2Var);
                }
            } else if (i6 != 2) {
                i3 = 3;
                if (i6 != 3) {
                    q.j();
                    return null;
                }
                bh1Var = new bh1(cloudServiceId, sv2Var);
            } else {
                i3 = 3;
                bh1Var = new bh1(cloudServiceId, x50.A0(new wg1[]{wg1.Primary, wg1.Copy}));
            }
            i2 = i3;
        } else {
            i2 = 3;
            hh1 hh1VarQ = jh1Var.q(mainCloudFolderName);
            if (hh1VarQ instanceof gh1) {
                List list = ((gh1) hh1VarQ).a;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (a(((pg1) obj).a) != null) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        pg1 pg1Var = (pg1) it.next();
                        String strK = dj7.k(mainCloudFolderName, "/", pg1Var.a);
                        wx3 wx3VarE3 = e(jh1Var, strK);
                        if (wx3VarE3 instanceof zg1) {
                            String strA = a(pg1Var.a);
                            if (strA != null) {
                                CloudServiceId cloudServiceId3 = ((zg1) wx3VarE3).g;
                                if (pe4.d(cloudServiceId3.getId(), strA)) {
                                    arrayList2.add(cloudServiceId3);
                                }
                            }
                            vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", "recoverCloudServiceId: Id file copy name/content mismatch: ".concat(strK), null, 4, null);
                        } else {
                            if (!wx3VarE3.equals(yg1Var) && !wx3VarE3.equals(xg1Var)) {
                                q.j();
                                return null;
                            }
                            vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", "recoverCloudServiceId: Invalid or unreadable id file copy: ".concat(strK), null, 4, null);
                        }
                    } else {
                        HashSet hashSet = new HashSet();
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj2 : arrayList2) {
                            if (hashSet.add(((CloudServiceId) obj2).getId())) {
                                arrayList3.add(obj2);
                            }
                        }
                        int size = arrayList3.size();
                        if (size == 0) {
                            bh1Var = ch1Var;
                        } else if (size != i) {
                            vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", "recoverCloudServiceId: Multiple id file copies found: " + arrayList3, null, 4, null);
                        } else {
                            bh1Var = new bh1((CloudServiceId) el1.k1(arrayList3), sz8.Y(wg1.Primary));
                        }
                    }
                }
            } else if (!pe4.d(hh1VarQ, fh1.a)) {
                q.j();
                return null;
            }
            bh1Var = ah1Var;
        }
        if (bh1Var instanceof bh1) {
            bh1 bh1Var2 = (bh1) bh1Var;
            CloudServiceId cloudServiceId4 = bh1Var2.j;
            vr6.i$default(vr6.INSTANCE, "CloudOperationsImpl", "getOrCreateCloudServiceId: Recovered cloud id = " + cloudServiceId4, null, 4, null);
            if (i(jh1Var, mainCloudFolderName, cloudServiceId4, bh1Var2.k)) {
                return cloudServiceId4;
            }
        } else if (!bh1Var.equals(ah1Var)) {
            if (!bh1Var.equals(ch1Var)) {
                q.j();
                return null;
            }
            if (!z) {
                CloudServiceId.Companion.getClass();
                CloudServiceId cloudServiceId5 = new CloudServiceId(0, null, i2, null);
                vr6 vr6Var2 = vr6.INSTANCE;
                vr6.i$default(vr6Var2, "CloudOperationsImpl", "generateAndUploadCloudServiceIdFile: Generated id file: " + cloudServiceId5, null, 4, null);
                String strConcat2 = mainCloudFolderName.concat("/DO_NOT_DELETE_cloud_account_id.json");
                vr6.i$default(vr6Var2, "CloudOperationsImpl", "generateAndUploadCloudServiceIdFile: Uploading id file to ".concat(strConcat2), null, 4, null);
                if (h(jh1Var, strConcat2, cloudServiceId5)) {
                    String strB3 = b(mainCloudFolderName, cloudServiceId5.getId());
                    vr6.i$default(vr6Var2, "CloudOperationsImpl", "generateAndUploadCloudServiceIdFile: Uploading copy of id file to ".concat(strB3), null, 4, null);
                    if (!h(jh1Var, strB3, cloudServiceId5)) {
                        vr6.e$default(vr6Var2, "CloudOperationsImpl", "generateAndUploadCloudServiceIdFile: Failed uploading copy of id file to ".concat(strConcat2), null, 4, null);
                    }
                    if (zm5.u(cloudServiceId5)) {
                        vr6.i$default(vr6Var2, "CloudOperationsImpl", "getOrCreateCloudServiceId: Created cloud id file at " + strConcat + " with value = " + cloudServiceId5, null, 4, null);
                    }
                    return cloudServiceId5;
                }
                vr6.e$default(vr6Var2, "CloudOperationsImpl", "generateAndUploadCloudServiceIdFile: Failed uploading id file to ".concat(strConcat2), null, 4, null);
                cloudServiceId5 = null;
                if (zm5.u(cloudServiceId5)) {
                    vr6.i$default(vr6Var2, "CloudOperationsImpl", "getOrCreateCloudServiceId: Created cloud id file at " + strConcat + " with value = " + cloudServiceId5, null, 4, null);
                }
                return cloudServiceId5;
            }
        }
        return null;
    }

    public static String d(jh1 jh1Var) {
        boolean zR;
        jh1Var.getClass();
        Log.i("CloudOperationsImpl", "getOrCreateMainFolder");
        String mainCloudFolderName = jh1Var.g().getMainCloudFolderName();
        try {
            zR = jh1Var.r(mainCloudFolderName);
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", dj7.l("Exists check failed for folder /", mainCloudFolderName, ". Error=", yc9.g0(e)), null, 4, null);
            zR = false;
        }
        if (zR) {
            return mainCloudFolderName;
        }
        vr6.i$default(vr6.INSTANCE, "CloudOperationsImpl", eq3.k("Main folder ", mainCloudFolderName, " not found, Creating..."), null, 4, null);
        try {
            jh1Var.h(mainCloudFolderName);
            return mainCloudFolderName;
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", "Creation of main folder failed. Error=".concat(yc9.g0(e2)), null, 4, null);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0048  */
    public static wx3 e(jh1 jh1Var, String str) {
        String string;
        qj4 qj4VarX;
        qj4 qj4VarX2;
        String strO;
        Integer numValueOf = null;
        try {
            tc4 tc4VarC = jh1Var.c(str, null);
            try {
                String str2 = new String(cy0.E(tc4VarC.a), f51.a);
                tc4VarC.close();
                try {
                    gv7 gv7Var = w14.a;
                    fl4 fl4Var = (fl4) w14.c().c(str2, fl4.class);
                    if (fl4Var == null || (qj4VarX2 = fl4Var.x("id")) == null) {
                        string = null;
                    } else {
                        if (!(qj4VarX2 instanceof kl4)) {
                            qj4VarX2 = null;
                        }
                        if (qj4VarX2 == null || (strO = qj4VarX2.o()) == null) {
                            string = null;
                        } else {
                            string = nq7.H0(strO).toString();
                        }
                    }
                    if (fl4Var != null && (qj4VarX = fl4Var.x("version")) != null) {
                        if (!(qj4VarX instanceof kl4)) {
                            qj4VarX = null;
                        }
                        if (qj4VarX != null) {
                            numValueOf = Integer.valueOf(qj4VarX.f());
                        }
                    }
                    if (string != null && !nq7.j0(string) && numValueOf != null && numValueOf.intValue() > 0) {
                        return new zg1(new CloudServiceId(numValueOf.intValue(), string));
                    }
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", "readCloudServiceIdFile: Invalid content at path=".concat(str), e, null, 8, null);
                }
                return yg1.g;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(tc4VarC, th);
                    throw th2;
                }
            }
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", dj7.l("readCloudServiceIdFile: path=", str, " error=", yc9.g0(e2)), null, 4, null);
            return xg1.g;
        }
    }

    public static boolean f(jh1 jh1Var, String str, CloudServiceId cloudServiceId, CloudServiceId cloudServiceId2) {
        if (!i(jh1Var, str, cloudServiceId, x50.A0(new wg1[]{wg1.Primary, wg1.Copy}))) {
            return false;
        }
        if (cloudServiceId2 != null) {
            String strB = b(str, cloudServiceId2.getId());
            int i = dh1.a[jh1Var.o(strB).ordinal()];
            if (i == 1) {
                try {
                    jh1Var.j(strB);
                    vr6.i$default(vr6.INSTANCE, "CloudOperationsImpl", "deleteCloudServiceIdCopyFile: Deleted stale id file copy at ".concat(strB), null, 4, null);
                    return true;
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", "deleteCloudServiceIdCopyFile: Failed deleting stale id file copy at ".concat(strB), e, null, 8, null);
                    return true;
                }
            }
            if (i != 2 && i != 3) {
                q.j();
                return false;
            }
        }
        return true;
    }

    public static boolean g(jh1 jh1Var, String str, CloudServiceId cloudServiceId) {
        String strB = b(str, cloudServiceId.getId());
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "CloudOperationsImpl", "uploadCloudServiceIdCopyFile: Creating id file copy at ".concat(strB), null, 4, null);
        boolean zH = h(jh1Var, strB, cloudServiceId);
        if (!zH) {
            vr6.e$default(vr6Var, "CloudOperationsImpl", "Failed creating a copy of the id file at path: ".concat(strB), null, 4, null);
        }
        return zH;
    }

    public static boolean h(jh1 jh1Var, String str, CloudServiceId cloudServiceId) {
        String str2;
        try {
            gv7 gv7Var = w14.a;
            String strI = w14.c().i(cloudServiceId);
            Charset charsetDefaultCharset = Charset.defaultCharset();
            charsetDefaultCharset.getClass();
            byte[] bytes = strI.getBytes(charsetDefaultCharset);
            bytes.getClass();
            str2 = str;
            try {
                jh1Var.e(new c62(new ah(bytes, 15)), str2, bytes.length, null);
                return true;
            } catch (Exception e) {
                e = e;
                Exception exc = e;
                vr6 vr6Var = vr6.INSTANCE;
                vr6.e$default(vr6Var, "CloudOperationsImpl", "uploadIdFile: Error when uploading id file to path: ".concat(str2), null, 4, null);
                vr6.e$default(vr6Var, "CloudOperationsImpl", "uploadIdFile", exc, null, 8, null);
                return false;
            }
        } catch (Exception e2) {
            e = e2;
            str2 = str;
        }
    }

    public static boolean i(jh1 jh1Var, String str, CloudServiceId cloudServiceId, Set set) {
        String strConcat = str.concat("/DO_NOT_DELETE_cloud_account_id.json");
        if (!set.contains(wg1.Primary) || h(jh1Var, strConcat, cloudServiceId)) {
            return !set.contains(wg1.Copy) || g(jh1Var, str, cloudServiceId);
        }
        vr6.e$default(vr6.INSTANCE, "CloudOperationsImpl", "Failed uploading recovered id file to path: ".concat(strConcat), null, 4, null);
        return false;
    }
}
