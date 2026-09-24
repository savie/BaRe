package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class x54 extends qo0 {
    public static final Set j = x50.A0(new String[]{"ID_BACKUP_ALL_APPS", "ID_RESTORE_ALL_APPS"});
    public final ex6 e;
    public final gv7 f;
    public bl7 g;
    public String h;
    public boolean i;

    public x54() {
        ex6 ex6Var = new ex6();
        ex6Var.k(new v54());
        this.e = ex6Var;
        this.f = new gv7(new zk(this));
        this.h = "";
        boolean z = true;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("home_search_show_system_apps", true);
            this.i = z;
        } catch (ClassCastException unused) {
        }
    }

    public static int j(List list, String str, u54 u54Var) {
        int i = 0;
        if (nq7.j0(str) || list.isEmpty()) {
            return 0;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((s54) it.next()).b == u54Var && (i = i + 1) < 0) {
                fl1.E0();
                throw null;
            }
        }
        return i;
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        bl7 bl7Var = this.g;
        if (bl7Var != null) {
            bl7Var.cancel(null);
        }
        super.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r14v20, types: [java.lang.Number] */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v27 */
    public final v54 k(String str, List list, List list2) throws Throwable {
        List listC0;
        boolean z;
        boolean z2;
        ArrayList arrayList;
        String strQ0;
        boolean zContains;
        ?? r14;
        int i;
        j54 j54Var = (j54) this.f.getValue();
        j54Var.getClass();
        list.getClass();
        list2.getClass();
        ww4 ww4VarP = nc8.p();
        bt3 bt3Var = j54Var.b;
        boolean zBooleanValue = ((Boolean) bt3Var.invoke()).booleanValue();
        boolean zBooleanValue2 = ((Boolean) j54Var.c.invoke()).booleanValue();
        ww4 ww4VarP2 = nc8.p();
        ww4VarP2.add(j54Var.a(1, R.string.apps, R.drawable.ic_app, R.color.apps, 0));
        if (zBooleanValue) {
            ww4VarP2.add(j54Var.a(2, R.string.messages, R.drawable.ic_message_full, R.color.messages, 1));
            ww4VarP2.add(j54Var.a(3, R.string.call_logs, R.drawable.ic_call_log, R.color.calls, 2));
        }
        ww4VarP2.add(j54Var.a(6, R.string.folders, R.drawable.ic_folder_full, R.color.folders, 3));
        if (zBooleanValue2) {
            ww4VarP2.add(j54Var.a(4, R.string.wallpapers, R.drawable.ic_photo_full, R.color.walls, 4));
        }
        ww4VarP2.add(j54Var.a(5, R.string.wifi, R.drawable.ic_wifi_full, R.color.wifi, 5));
        ww4VarP.addAll(nc8.h(ww4VarP2));
        iy iyVar = iy.a;
        Throwable th = null;
        List listF = iy.f(list, null);
        ArrayList arrayList2 = new ArrayList(hl1.G0(listF, 10));
        boolean z3 = false;
        int i2 = 0;
        for (Object obj : listF) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                Throwable th2 = th;
                fl1.F0();
                throw th2;
            }
            ji jiVar = (ji) obj;
            arrayList2.add(new s54(xs1.j("app:", jiVar.getPackageName()), u54.APPS, jiVar.getName(), jiVar.getPackageName(), 0, 0, jiVar, (FolderItem) null, (Integer) null, (zc6) null, fl1.A0(jiVar.getName(), jiVar.getPackageName()), i2, 1824));
            i2 = i3;
            th = th;
        }
        Throwable th3 = th;
        ww4VarP.addAll(arrayList2);
        List listN1 = el1.n1(list2, nm3.a(FolderItem.Companion, new ou(9)));
        ArrayList arrayList3 = new ArrayList(hl1.G0(listN1, 10));
        int i4 = 0;
        for (Object obj2 : listN1) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                fl1.F0();
                throw th3;
            }
            FolderItem folderItem = ((FolderMetadata) obj2).getFolderItem();
            arrayList3.add(new s54(xs1.j("folder:", folderItem.getId()), u54.FOLDERS, folderItem.getDisplayName(), folderItem.getSourceFolder(), R.drawable.ic_folder_full, 0, (ji) null, folderItem, (Integer) null, (zc6) null, fl1.A0(folderItem.getDisplayName(), folderItem.getSourceFolder()), i4, 1760));
            i4 = i5;
        }
        ww4VarP.addAll(arrayList3);
        Parcelable.Creator<zc6> creator = zc6.CREATOR;
        ArrayList arrayListG1 = el1.g1(el1.g1(el1.g1(el1.g1(el1.g1(yc6.a(), yc6.b()), yc6.f()), yc6.e(((Boolean) bt3Var.invoke()).booleanValue())), yc6.c(((Boolean) bt3Var.invoke()).booleanValue())), yc6.d());
        ArrayList arrayList4 = new ArrayList(hl1.G0(arrayListG1, 10));
        int i6 = 0;
        for (Object obj3 : arrayListG1) {
            int i7 = i6 + 1;
            if (i6 < 0) {
                fl1.F0();
                throw th3;
            }
            zc6 zc6Var = (zc6) obj3;
            Context context = j54Var.a;
            int i8 = zc6Var.c;
            String str2 = zc6Var.a;
            String string = context.getString(i8);
            string.getClass();
            int i9 = zc6Var.d;
            Integer numValueOf = Integer.valueOf(i9);
            if (i9 == 0) {
                r14 = numValueOf;
                r14 = th3;
            }
            ?? string2 = r14 != 0 ? context.getString(r14.intValue()) : th3;
            String strJ = xs1.j("action:", str2);
            u54 u54Var = u54.QUICK_ACTIONS;
            Parcelable.Creator<zc6> creator2 = zc6.CREATOR;
            if (yc6.h(str2)) {
                i = R.drawable.ic_app;
            } else if (yc6.j(str2)) {
                i = R.drawable.ic_message_full;
            } else if (yc6.i(str2)) {
                i = R.drawable.ic_call_log;
            } else {
                i = (str2 == null || !uq7.O(str2, "FOLDERS", false)) ? R.drawable.ic_quick_actions : R.drawable.ic_folder_full;
            }
            arrayList4.add(new s54(strJ, u54Var, string, (String) string2, i, 0, (ji) null, (FolderItem) null, (Integer) null, zc6Var, x50.p0(new String[]{string, string2}), i6, 992));
            i6 = i7;
        }
        ww4VarP.addAll(arrayList4);
        ww4 ww4VarH = nc8.h(ww4VarP);
        ai6 ai6Var = o54.a;
        ww4VarH.getClass();
        String strC = o54.c(str);
        int length = strC.length();
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        if (length == 0) {
            l54 l54Var = new l54(new zk2(2));
            comparator.getClass();
            listC0 = el1.n1(ww4VarH, new n54(new m54(l54Var, 0)));
        } else {
            me3 me3VarA0 = h77.A0(new ll1(ww4VarH), new hj(strC, 17));
            uk0 uk0Var = new uk0(new yg(new yx(new cz3(1), 2), 3), 1);
            comparator.getClass();
            listC0 = h77.C0(new q98(new l77(me3VarA0, new gy(uk0Var, 1)), new sh(9)));
        }
        ArrayList arrayList5 = new ArrayList();
        for (Object obj4 : listC0) {
            if (((s54) obj4).b == u54.APPS) {
                arrayList5.add(obj4);
            }
        }
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw th3;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            boolean z4 = !nq7.j0(str) && this.i;
            if (!z || arrayList5.isEmpty()) {
                z2 = false;
                break;
            }
            Iterator it = arrayList5.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                ji jiVar2 = ((s54) it.next()).n;
                if (jiVar2 != null && jiVar2.isBundled()) {
                    z2 = true;
                    break;
                }
            }
            boolean z5 = z && z4;
            if (z) {
                arrayList = arrayList5;
            } else {
                arrayList = new ArrayList();
                for (Object obj5 : arrayList5) {
                    ji jiVar3 = ((s54) obj5).n;
                    if (jiVar3 == null || !jiVar3.isBundled()) {
                        arrayList.add(obj5);
                    }
                }
            }
            if (!z5) {
                ArrayList arrayList6 = new ArrayList();
                for (Object obj6 : arrayList5) {
                    ji jiVar4 = ((s54) obj6).n;
                    if (jiVar4 == null || !jiVar4.isBundled()) {
                        arrayList6.add(obj6);
                    }
                }
                arrayList5 = arrayList6;
            }
            int size = arrayList.size();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it2 = arrayList5.iterator();
            while (it2.hasNext()) {
                linkedHashSet.add(((s54) it2.next()).a);
            }
            ArrayList arrayList7 = new ArrayList();
            for (Object obj7 : listC0) {
                s54 s54Var = (s54) obj7;
                if (s54Var.b != u54.APPS || linkedHashSet.contains(s54Var.a)) {
                    arrayList7.add(obj7);
                }
            }
            Map mapR0 = nq7.j0(str) ? x65.r0(new pw5(u54.SHORTCUTS, 8), new pw5(u54.APPS, 2), new pw5(u54.FOLDERS, 2), new pw5(u54.QUICK_ACTIONS, 2)) : x65.r0(new pw5(u54.SHORTCUTS, 4), new pw5(u54.APPS, 16), new pw5(u54.FOLDERS, 8), new pw5(u54.QUICK_ACTIONS, Integer.MAX_VALUE));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            ArrayList arrayList8 = new ArrayList();
            for (Object obj8 : arrayList7) {
                s54 s54Var2 = (s54) obj8;
                if (nq7.j0(str)) {
                    if (s54Var2.b != u54.QUICK_ACTIONS) {
                        zContains = true;
                    } else {
                        zc6 zc6Var2 = s54Var2.r;
                        if (zc6Var2 == null || (strQ0 = zc6Var2.a) == null) {
                            strQ0 = nq7.q0(s54Var2.a, "action:");
                        }
                        zContains = j.contains(strQ0);
                    }
                    if (!zContains) {
                    }
                }
                u54 u54Var2 = s54Var2.b;
                Integer num = (Integer) mapR0.get(u54Var2);
                int iIntValue = num != null ? num.intValue() : 0;
                Integer num2 = (Integer) linkedHashMap.get(u54Var2);
                int iIntValue2 = num2 != null ? num2.intValue() : 0;
                if (iIntValue2 < iIntValue) {
                    linkedHashMap.put(u54Var2, Integer.valueOf(iIntValue2 + 1));
                    arrayList8.add(obj8);
                }
            }
            ArrayList arrayList9 = new ArrayList();
            for (Object obj9 : arrayList8) {
                if (((s54) obj9).b == u54.SHORTCUTS) {
                    arrayList9.add(obj9);
                }
            }
            ArrayList arrayList10 = new ArrayList();
            for (Object obj10 : arrayList8) {
                if (((s54) obj10).b == u54.QUICK_ACTIONS) {
                    arrayList10.add(obj10);
                }
            }
            ArrayList arrayList11 = new ArrayList();
            for (Object obj11 : arrayList8) {
                u54 u54Var3 = ((s54) obj11).b;
                if (u54Var3 != u54.SHORTCUTS && u54Var3 != u54.QUICK_ACTIONS) {
                    arrayList11.add(obj11);
                }
            }
            int iJ = j(listC0, str, u54.QUICK_ACTIONS);
            if (nq7.j0(str)) {
                size = 0;
            }
            int iJ2 = j(listC0, str, u54.FOLDERS);
            if (!nq7.j0(str) && z2) {
                z3 = true;
            }
            return new v54(str, arrayList9, arrayList10, arrayList11, iJ, size, iJ2, z3, z5);
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    public final void l(String str) {
        if (str == null) {
            str = "";
        }
        this.h = str;
        bl7 bl7Var = this.g;
        if (bl7Var != null) {
            bl7Var.cancel(null);
        }
        this.g = null;
        if (!nq7.j0(str)) {
            zn4 zn4Var = zn4.a;
            this.g = zn4.b(null, new k41(this, str, null, 1));
            return;
        }
        ov2 ov2Var = ov2.a;
        this.e.k(k(str, ov2Var, ov2Var));
        zn4 zn4Var2 = zn4.a;
        this.g = zn4.b(null, new w54(this, str, null));
    }
}
