package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pp3 implements dz7 {
    public cd a;
    public rn3 b;
    public final ArrayList c = new ArrayList();

    @Override // defpackage.dz7
    public final String b() {
        String string;
        String string2;
        StringBuilder sb = new StringBuilder();
        cd cdVar = this.a;
        if (cdVar != null && cdVar.g()) {
            cd cdVar2 = this.a;
            if (cdVar2 != null) {
                ArrayList arrayList = (ArrayList) cdVar2.c;
                StringBuilder sb2 = new StringBuilder();
                ArrayList arrayList2 = (ArrayList) cdVar2.b;
                if (!arrayList2.isEmpty()) {
                    ArrayList<String> arrayList3 = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((gk3) it.next()).getClass();
                    }
                    ArrayList<String> arrayList4 = new ArrayList();
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((gk3) it2.next()).getClass();
                    }
                    ArrayList<String> arrayList5 = new ArrayList();
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        ((gk3) it3.next()).getClass();
                    }
                    ArrayList<String> arrayList6 = new ArrayList();
                    Iterator it4 = arrayList2.iterator();
                    while (it4.hasNext()) {
                        ((gk3) it4.next()).getClass();
                    }
                    ArrayList<String> arrayList7 = new ArrayList();
                    Iterator it5 = arrayList2.iterator();
                    while (it5.hasNext()) {
                        String str = ((gk3) it5.next()).b;
                        if (str != null) {
                            arrayList7.add(str);
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        sb2.append(arrayList3.size() + " folder(s) skipped due to insufficient storage:");
                        sb2.append("\n");
                        int i = 0;
                        for (String str2 : arrayList3) {
                            int i2 = i + 1;
                            if (i > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str2);
                            i = i2;
                        }
                    }
                    if (!arrayList4.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        sb2.append(arrayList4.size() + " folder(s) skipped from local backup as the backup size is larger than the supported maximum file size on your FAT32 storage (4GB):");
                        sb2.append("\n");
                        int i3 = 0;
                        for (String str3 : arrayList4) {
                            int i4 = i3 + 1;
                            if (i3 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str3);
                            i3 = i4;
                        }
                    }
                    if (!arrayList5.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        sb2.append("Packing errors during " + arrayList5.size() + " folder backups:");
                        sb2.append("\n");
                        int i5 = 0;
                        for (String str4 : arrayList5) {
                            int i6 = i5 + 1;
                            if (i5 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str4);
                            i5 = i6;
                        }
                    }
                    if (!arrayList6.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        sb2.append("Compression errors during " + arrayList6.size() + " folder backups:");
                        sb2.append("\n");
                        int i7 = 0;
                        for (String str5 : arrayList6) {
                            int i8 = i7 + 1;
                            if (i7 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str5);
                            i7 = i8;
                        }
                    }
                    if (!arrayList7.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        sb2.append("Critical errors during " + arrayList7.size() + " folder backups:");
                        sb2.append("\n");
                        int i9 = 0;
                        for (String str6 : arrayList7) {
                            int i10 = i9 + 1;
                            if (i9 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str6);
                            i9 = i10;
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    ArrayList<String> arrayList8 = new ArrayList();
                    Iterator it6 = arrayList.iterator();
                    while (it6.hasNext()) {
                        String str7 = ((ho3) it6.next()).a;
                        if (str7 != null) {
                            arrayList8.add(str7);
                        }
                    }
                    ArrayList<String> arrayList9 = new ArrayList();
                    Iterator it7 = arrayList.iterator();
                    while (it7.hasNext()) {
                        String str8 = ((ho3) it7.next()).c;
                        if (str8 != null) {
                            arrayList9.add(str8);
                        }
                    }
                    if (!arrayList8.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        sb2.append("Cloud upload errors during " + arrayList8.size() + " folder backups:");
                        sb2.append("\n");
                        int i11 = 0;
                        for (String str9 : arrayList8) {
                            int i12 = i11 + 1;
                            if (i11 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str9);
                            i11 = i12;
                        }
                    }
                    if (!arrayList9.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        sb2.append("Firebase errors during " + arrayList9.size() + " folder backups:");
                        sb2.append("\n");
                        int i13 = 0;
                        for (String str10 : arrayList9) {
                            int i14 = i13 + 1;
                            if (i13 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str10);
                            i13 = i14;
                        }
                    }
                }
                sb2.append("\n");
                string2 = sb2.toString();
            } else {
                string2 = null;
            }
            sb.append(string2);
        }
        rn3 rn3Var = this.b;
        if (rn3Var != null && rn3Var.a()) {
            rn3 rn3Var2 = this.b;
            if (rn3Var2 != null) {
                ArrayList arrayList10 = rn3Var2.a;
                StringBuilder sb3 = new StringBuilder();
                ArrayList arrayList11 = rn3Var2.b;
                if (!arrayList11.isEmpty()) {
                    ArrayList arrayList12 = new ArrayList();
                    Iterator it8 = arrayList11.iterator();
                    while (it8.hasNext()) {
                        ((hm3) it8.next()).getClass();
                    }
                    ArrayList arrayList13 = new ArrayList();
                    Iterator it9 = arrayList11.iterator();
                    while (it9.hasNext()) {
                        String str11 = ((hm3) it9.next()).a;
                        if (str11 != null) {
                            arrayList13.add(str11);
                        }
                    }
                    ArrayList arrayList14 = new ArrayList();
                    Iterator it10 = arrayList11.iterator();
                    while (it10.hasNext()) {
                        ((hm3) it10.next()).getClass();
                    }
                    if (!arrayList12.isEmpty()) {
                        SwiftApp.Companion companion = SwiftApp.d;
                        String string3 = SwiftApp.Companion.c().getString(R.string.x_apps_skipped_insufficient_space_message, String.valueOf(arrayList12.size()));
                        string3.getClass();
                        sb3.append(string3);
                        sb3.append("\n\n");
                        Iterator it11 = arrayList12.iterator();
                        while (it11.hasNext()) {
                            sb3.append((String) it11.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList13.isEmpty()) {
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        String string4 = SwiftApp.Companion.c().getString(R.string.x_apps_downloading_error_message, String.valueOf(arrayList13.size()));
                        string4.getClass();
                        sb3.append(string4);
                        sb3.append("\n\n");
                        Iterator it12 = arrayList13.iterator();
                        while (it12.hasNext()) {
                            sb3.append((String) it12.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList14.isEmpty()) {
                        SwiftApp.Companion companion3 = SwiftApp.d;
                        String string5 = SwiftApp.Companion.c().getString(R.string.x_apps_failed_to_restore, String.valueOf(arrayList14.size()));
                        string5.getClass();
                        sb3.append(string5);
                        sb3.append("\n\n");
                        Iterator it13 = arrayList14.iterator();
                        while (it13.hasNext()) {
                            sb3.append((String) it13.next());
                            sb3.append("\n");
                        }
                    }
                }
                if (!arrayList10.isEmpty()) {
                    ArrayList arrayList15 = new ArrayList();
                    Iterator it14 = arrayList10.iterator();
                    while (it14.hasNext()) {
                        ((un3) it14.next()).getClass();
                    }
                    ArrayList arrayList16 = new ArrayList();
                    Iterator it15 = arrayList10.iterator();
                    while (it15.hasNext()) {
                        ((un3) it15.next()).getClass();
                    }
                    ArrayList arrayList17 = new ArrayList();
                    Iterator it16 = arrayList10.iterator();
                    while (it16.hasNext()) {
                        ((un3) it16.next()).getClass();
                    }
                    ArrayList arrayList18 = new ArrayList();
                    Iterator it17 = arrayList10.iterator();
                    while (it17.hasNext()) {
                        ((un3) it17.next()).getClass();
                    }
                    ArrayList arrayList19 = new ArrayList();
                    Iterator it18 = arrayList10.iterator();
                    while (it18.hasNext()) {
                        ((un3) it18.next()).getClass();
                    }
                    ArrayList arrayList20 = new ArrayList();
                    Iterator it19 = arrayList10.iterator();
                    while (it19.hasNext()) {
                        ((un3) it19.next()).getClass();
                    }
                    ArrayList arrayList21 = new ArrayList();
                    Iterator it20 = arrayList10.iterator();
                    while (it20.hasNext()) {
                        String str12 = ((un3) it20.next()).a;
                        if (str12 != null) {
                            arrayList21.add(str12);
                        }
                    }
                    if (!arrayList15.isEmpty()) {
                        SwiftApp.Companion companion4 = SwiftApp.d;
                        String string6 = SwiftApp.Companion.c().getString(R.string.x_apps_skipped_insufficient_space_message, String.valueOf(arrayList15.size()));
                        string6.getClass();
                        sb3.append(string6);
                        sb3.append("\n\n");
                        Iterator it21 = arrayList15.iterator();
                        while (it21.hasNext()) {
                            sb3.append((String) it21.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList16.isEmpty()) {
                        SwiftApp.Companion companion5 = SwiftApp.d;
                        String string7 = SwiftApp.Companion.c().getString(R.string.x_apps_failed_to_restore, String.valueOf(arrayList16.size()));
                        string7.getClass();
                        sb3.append(string7);
                        sb3.append("\n\n");
                        Iterator it22 = arrayList16.iterator();
                        while (it22.hasNext()) {
                            sb3.append((String) it22.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList17.isEmpty()) {
                        SwiftApp.Companion companion6 = SwiftApp.d;
                        String string8 = SwiftApp.Companion.c().getString(R.string.x_apps_skipped_no_apk_message, String.valueOf(arrayList17.size()));
                        string8.getClass();
                        sb3.append(string8);
                        sb3.append("\n\n");
                        Iterator it23 = arrayList17.iterator();
                        while (it23.hasNext()) {
                            sb3.append((String) it23.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList19.isEmpty()) {
                        SwiftApp.Companion companion7 = SwiftApp.d;
                        String string9 = SwiftApp.Companion.c().getString(R.string.x_apps_had_data_restore_issues_wrong_password, String.valueOf(arrayList19.size()));
                        string9.getClass();
                        sb3.append(string9);
                        sb3.append("\n\n");
                        Iterator it24 = arrayList19.iterator();
                        while (it24.hasNext()) {
                            sb3.append((String) it24.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList20.isEmpty()) {
                        SwiftApp.Companion companion8 = SwiftApp.d;
                        String string10 = SwiftApp.Companion.c().getString(R.string.x_apps_had_data_restore_issues_data_corruption, String.valueOf(arrayList20.size()));
                        string10.getClass();
                        sb3.append(string10);
                        sb3.append("\n\n");
                        Iterator it25 = arrayList20.iterator();
                        while (it25.hasNext()) {
                            sb3.append((String) it25.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList18.isEmpty()) {
                        sb3.append("Unexpected Errors\n\n");
                        Iterator it26 = arrayList18.iterator();
                        while (it26.hasNext()) {
                            sb3.append((String) it26.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList21.isEmpty()) {
                        sb3.append("Critical Errors\n\n");
                        Iterator it27 = arrayList21.iterator();
                        while (it27.hasNext()) {
                            sb3.append((String) it27.next());
                            sb3.append("\n");
                        }
                    }
                }
                sb3.append("\n");
                string = sb3.toString();
            } else {
                string = null;
            }
            sb.append(string);
        }
        ArrayList arrayList22 = this.c;
        if (!arrayList22.isEmpty()) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(arrayList22);
        }
        return sb.toString();
    }

    @Override // defpackage.dz7
    public final boolean c() {
        rn3 rn3Var;
        cd cdVar = this.a;
        return (cdVar != null && cdVar.g()) || ((rn3Var = this.b) != null && rn3Var.a()) || !this.c.isEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0043  */
    /* JADX WARN: Code duplicated, block: B:55:0x004f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:? A[LOOP:0: B:23:0x003d->B:56:?, LOOP_END, SYNTHETIC] */
    @Override // defpackage.dz7
    public final boolean l() {
        ArrayList arrayList;
        Iterator it;
        cd cdVar = this.a;
        if (cdVar != null) {
            ArrayList arrayList2 = (ArrayList) cdVar.b;
            if (arrayList2 != null && arrayList2.isEmpty()) {
                arrayList = (ArrayList) cdVar.c;
                if (arrayList == null) {
                }
                it = arrayList.iterator();
                while (it.hasNext()) {
                    if (!((ho3) it.next()).a()) {
                    }
                }
                return true;
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    arrayList = (ArrayList) cdVar.c;
                    if (arrayList == null && arrayList.isEmpty()) {
                        return true;
                    }
                    it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (!((ho3) it.next()).a()) {
                        }
                    }
                    return true;
                }
                String str = ((gk3) it2.next()).b;
                if (str == null || str.length() == 0) {
                }
            }
        }
        rn3 rn3Var = this.b;
        if (rn3Var == null) {
            return false;
        }
        ArrayList arrayList3 = rn3Var.a;
        if (arrayList3 == null || !arrayList3.isEmpty()) {
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                String str2 = ((un3) it3.next()).a;
                if (str2 != null && str2.length() != 0) {
                    return false;
                }
            }
        }
        ArrayList arrayList4 = rn3Var.b;
        if (arrayList4 != null && arrayList4.isEmpty()) {
            return true;
        }
        Iterator it4 = arrayList4.iterator();
        if (!it4.hasNext()) {
            return true;
        }
        ((hm3) it4.next()).getClass();
        return false;
    }
}
