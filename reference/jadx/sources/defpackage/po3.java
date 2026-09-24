package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.manage.ManageSpaceActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class po3 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ po3(Object obj, Object obj2, Object obj3, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.d;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                return new po3((qo3) obj4, (lk3) obj3, (List) obj2, jv1Var, 0);
            default:
                return new po3((ManageSpaceActivity) obj4, (ry5) obj3, (gp3) obj2, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((po3) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((po3) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:78:0x0286  */
    /* JADX WARN: Code duplicated, block: B:80:0x028a  */
    /* JADX WARN: Code duplicated, block: B:83:0x029d A[LOOP:1: B:81:0x0297->B:83:0x029d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:87:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:88:0x02bb  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        ArrayList arrayList;
        List listC;
        ArrayList arrayList2;
        Iterator it;
        Set setZ1;
        ym7 ym7Var;
        String strK;
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.d;
        Boolean boolValueOf = null;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                List list = (List) obj2;
                lg7.H(obj);
                qo3 qo3Var = (qo3) obj4;
                ex6 ex6Var = qo3Var.g;
                ex6Var.k(ym7.LOADING);
                String str = ((lk3) obj3).a;
                switch (str) {
                    case "Copy folder setups":
                        ArrayList arrayList3 = new ArrayList(hl1.G0(list, 10));
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            arrayList3.add(((zk3) it2.next()).a);
                        }
                        List listE = pz4.g.e();
                        ArrayList arrayList4 = new ArrayList(hl1.G0(listE, 10));
                        Iterator it3 = listE.iterator();
                        while (it3.hasNext()) {
                            arrayList4.add(((FolderMetadata) it3.next()).getFolderItem());
                        }
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        Iterator it4 = arrayList4.iterator();
                        while (it4.hasNext()) {
                            linkedHashSet.add(((FolderItem) it4.next()).getId());
                        }
                        ArrayList arrayList5 = new ArrayList();
                        for (Object obj5 : arrayList3) {
                            if (!linkedHashSet.contains(((FolderItem) obj5).getId())) {
                                arrayList5.add(obj5);
                            }
                        }
                        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                        Iterator it5 = arrayList5.iterator();
                        while (it5.hasNext()) {
                            linkedHashSet2.add(((FolderItem) it5.next()).getId());
                        }
                        ArrayList arrayList6 = new ArrayList();
                        for (Object obj6 : list) {
                            if (linkedHashSet2.contains(((zk3) obj6).a.getId())) {
                                arrayList6.add(obj6);
                            }
                        }
                        arrayList = arrayList6;
                        listC = zm5.C(arrayList);
                        if (pe4.d(str, "Delete backups")) {
                            setZ1 = sv2.a;
                        } else {
                            arrayList2 = new ArrayList(hl1.G0(listC, 10));
                            it = listC.iterator();
                            while (it.hasNext()) {
                                arrayList2.add(((zk3) it.next()).a.getId());
                            }
                            setZ1 = el1.z1(arrayList2);
                        }
                        Set set = setZ1;
                        if (listC.isEmpty()) {
                            ym7Var = ym7.DATA_EMPTY;
                        } else {
                            ym7Var = ym7.DATA_RECEIVED;
                        }
                        ex6Var.k(ym7Var);
                        qo3Var.h.k(new fm7(listC, set, true, (String) null, 20));
                        return be8Var;
                    case "Restore":
                        arrayList = new ArrayList();
                        for (Object obj7 : list) {
                            if (((zk3) obj7).a.hasBackup(qo3Var.f)) {
                                arrayList.add(obj7);
                            }
                        }
                        listC = zm5.C(arrayList);
                        if (pe4.d(str, "Delete backups")) {
                            setZ1 = sv2.a;
                        } else {
                            arrayList2 = new ArrayList(hl1.G0(listC, 10));
                            it = listC.iterator();
                            while (it.hasNext()) {
                                arrayList2.add(((zk3) it.next()).a.getId());
                            }
                            setZ1 = el1.z1(arrayList2);
                        }
                        Set set2 = setZ1;
                        if (listC.isEmpty()) {
                            ym7Var = ym7.DATA_RECEIVED;
                        } else {
                            ym7Var = ym7.DATA_EMPTY;
                        }
                        ex6Var.k(ym7Var);
                        qo3Var.h.k(new fm7(listC, set2, true, (String) null, 20));
                        return be8Var;
                    case "Delete backups":
                        arrayList = new ArrayList();
                        for (Object obj8 : list) {
                            if (((zk3) obj8).a.hasBackup(qo3Var.f)) {
                                arrayList.add(obj8);
                            }
                        }
                        listC = zm5.C(arrayList);
                        if (pe4.d(str, "Delete backups")) {
                            setZ1 = sv2.a;
                        } else {
                            arrayList2 = new ArrayList(hl1.G0(listC, 10));
                            it = listC.iterator();
                            while (it.hasNext()) {
                                arrayList2.add(((zk3) it.next()).a.getId());
                            }
                            setZ1 = el1.z1(arrayList2);
                        }
                        Set set3 = setZ1;
                        if (listC.isEmpty()) {
                            ym7Var = ym7.DATA_RECEIVED;
                        } else {
                            ym7Var = ym7.DATA_EMPTY;
                        }
                        ex6Var.k(ym7Var);
                        qo3Var.h.k(new fm7(listC, set3, true, (String) null, 20));
                        return be8Var;
                    case "Backup":
                        arrayList = new ArrayList();
                        for (Object obj9 : list) {
                            if (((zk3) obj9).a.getSourceFolder().length() > 0) {
                                arrayList.add(obj9);
                            }
                        }
                        listC = zm5.C(arrayList);
                        if (pe4.d(str, "Delete backups")) {
                            setZ1 = sv2.a;
                        } else {
                            arrayList2 = new ArrayList(hl1.G0(listC, 10));
                            it = listC.iterator();
                            while (it.hasNext()) {
                                arrayList2.add(((zk3) it.next()).a.getId());
                            }
                            setZ1 = el1.z1(arrayList2);
                        }
                        Set set4 = setZ1;
                        if (listC.isEmpty()) {
                            ym7Var = ym7.DATA_RECEIVED;
                        } else {
                            ym7Var = ym7.DATA_EMPTY;
                        }
                        ex6Var.k(ym7Var);
                        qo3Var.h.k(new fm7(listC, set4, true, (String) null, 20));
                        return be8Var;
                    default:
                        if (str.equals("Copy folder setups")) {
                            ArrayList arrayList7 = new ArrayList(hl1.G0(list, 10));
                            Iterator it6 = list.iterator();
                            while (it6.hasNext()) {
                                arrayList7.add(((zk3) it6.next()).a);
                            }
                            List listE2 = pz4.g.e();
                            ArrayList arrayList8 = new ArrayList(hl1.G0(listE2, 10));
                            Iterator it7 = listE2.iterator();
                            while (it7.hasNext()) {
                                arrayList8.add(((FolderMetadata) it7.next()).getFolderItem());
                            }
                            LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                            Iterator it8 = arrayList8.iterator();
                            while (it8.hasNext()) {
                                linkedHashSet3.add(((FolderItem) it8.next()).getId());
                            }
                            ArrayList arrayList9 = new ArrayList();
                            for (Object obj10 : arrayList7) {
                                if (!linkedHashSet3.contains(((FolderItem) obj10).getId())) {
                                    arrayList9.add(obj10);
                                }
                            }
                            LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                            Iterator it9 = arrayList9.iterator();
                            while (it9.hasNext()) {
                                linkedHashSet4.add(((FolderItem) it9.next()).getId());
                            }
                            ArrayList arrayList10 = new ArrayList();
                            for (Object obj11 : list) {
                                if (linkedHashSet4.contains(((zk3) obj11).a.getId())) {
                                    arrayList10.add(obj11);
                                }
                            }
                            arrayList = arrayList10;
                            listC = zm5.C(arrayList);
                            if (pe4.d(str, "Delete backups")) {
                                setZ1 = sv2.a;
                            } else {
                                arrayList2 = new ArrayList(hl1.G0(listC, 10));
                                it = listC.iterator();
                                while (it.hasNext()) {
                                    arrayList2.add(((zk3) it.next()).a.getId());
                                }
                                setZ1 = el1.z1(arrayList2);
                            }
                            Set set5 = setZ1;
                            if (listC.isEmpty()) {
                                ym7Var = ym7.DATA_EMPTY;
                            } else {
                                ym7Var = ym7.DATA_RECEIVED;
                            }
                            ex6Var.k(ym7Var);
                            qo3Var.h.k(new fm7(listC, set5, true, (String) null, 20));
                            return be8Var;
                        }
                        l0.e(xs1.j("loadFoldersForBatchAction not implemented for ", str));
                        return null;
                }
            default:
                lg7.H(obj);
                ManageSpaceActivity manageSpaceActivity = (ManageSpaceActivity) obj4;
                ry5 ry5Var = (ry5) obj3;
                int i2 = ManageSpaceActivity.O;
                try {
                    d45.b.getClass();
                    MFirebaseUser mFirebaseUserA = d45.a();
                    if (mFirebaseUserA != null) {
                        boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                    }
                    break;
                } catch (Exception unused) {
                }
                if (pe4.d(boolValueOf, Boolean.TRUE)) {
                    strK = eq3.j(manageSpaceActivity.getString(R.string.account_email), ": \nAnonymous");
                } else {
                    String string = manageSpaceActivity.getString(R.string.account_email);
                    d45.b.getClass();
                    MFirebaseUser mFirebaseUserA2 = d45.a();
                    if (mFirebaseUserA2 == null) {
                        throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
                    }
                    strK = dj7.k(string, ": \n", mFirebaseUserA2.getEmail());
                }
                String strY0 = el1.Y0(x50.p0(new String[]{strK, dj7.k(manageSpaceActivity.getString(R.string.backup_folder_location), ": \n", ry5Var.c)}), "\n\n", null, null, null, 62);
                SwiftApp.Companion companion = SwiftApp.d;
                String string2 = SwiftApp.Companion.c().getString(R.string.connected_account);
                string2.getClass();
                u55 u55Var = new u55(-1, string2, null, strY0, false, true);
                Context contextC = SwiftApp.Companion.c();
                String string3 = contextC.getString(R.string.reset_app);
                String string4 = contextC.getString(R.string.reset_app_summary);
                string3.getClass();
                string4.getClass();
                u55 u55Var2 = new u55(2, string3, null, string4, false, false);
                u55 u55VarN = ManageSpaceActivity.N(manageSpaceActivity, ry5Var, true);
                u55 u55VarN2 = ManageSpaceActivity.N(manageSpaceActivity, ry5Var, false);
                Context contextC2 = SwiftApp.Companion.c();
                String string5 = contextC2.getString(R.string.delete_all_data);
                String string6 = contextC2.getString(R.string.delete_all_data_summary);
                string5.getClass();
                string6.getClass();
                ArrayList arrayListC0 = fl1.C0(u55Var, u55Var2, u55VarN, u55VarN2, new u55(3, string5, null, string6, true, false));
                zn4 zn4Var = zn4.a;
                zn4.e(new rm(13, (gp3) obj2, arrayListC0));
                return be8Var;
        }
    }
}
