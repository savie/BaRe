package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b40 implements dz7 {
    public hl a;
    public sv b;
    public ArrayList c;
    public final ArrayList d = new ArrayList();

    @Override // defpackage.dz7
    public final String b() {
        String string;
        String string2;
        StringBuilder sb = new StringBuilder();
        hl hlVar = this.a;
        if (hlVar != null && hlVar.a()) {
            hl hlVar2 = this.a;
            if (hlVar2 != null) {
                ArrayList arrayList = hlVar2.b;
                StringBuilder sb2 = new StringBuilder();
                ArrayList arrayList2 = hlVar2.a;
                if (!arrayList2.isEmpty()) {
                    ArrayList<String> arrayList3 = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        String str = ((tl) it.next()).c;
                        if (str != null) {
                            arrayList3.add(str);
                        }
                    }
                    ArrayList<String> arrayList4 = new ArrayList();
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        String str2 = ((tl) it2.next()).d;
                        if (str2 != null) {
                            arrayList4.add(str2);
                        }
                    }
                    ArrayList<String> arrayList5 = new ArrayList();
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        String str3 = ((tl) it3.next()).f;
                        if (str3 != null) {
                            arrayList5.add(str3);
                        }
                    }
                    ArrayList<String> arrayList6 = new ArrayList();
                    Iterator it4 = arrayList2.iterator();
                    while (it4.hasNext()) {
                        String str4 = ((tl) it4.next()).g;
                        if (str4 != null) {
                            arrayList6.add(str4);
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        SwiftApp.Companion companion = SwiftApp.d;
                        String string3 = SwiftApp.Companion.c().getString(R.string.x_apps_skipped_insufficient_space_message, String.valueOf(arrayList3.size()));
                        string3.getClass();
                        sb2.append(string3);
                        sb2.append("\n");
                        int i = 0;
                        for (String str5 : arrayList3) {
                            int i2 = i + 1;
                            if (i > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str5);
                            i = i2;
                        }
                    }
                    if (!arrayList4.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        String string4 = SwiftApp.Companion.c().getString(R.string.skipped_app_part_in_local_backup);
                        string4.getClass();
                        sb2.append(string4);
                        sb2.append("\n");
                        int i3 = 0;
                        for (String str6 : arrayList4) {
                            int i4 = i3 + 1;
                            if (i3 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str6);
                            i3 = i4;
                        }
                    }
                    if (!arrayList5.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        SwiftApp.Companion companion3 = SwiftApp.d;
                        String string5 = SwiftApp.Companion.c().getString(R.string.skipped_app_part_in_local_backup_fat32_limit);
                        string5.getClass();
                        sb2.append(string5);
                        sb2.append("\n");
                        int i5 = 0;
                        for (String str7 : arrayList5) {
                            int i6 = i5 + 1;
                            if (i5 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str7);
                            i5 = i6;
                        }
                    }
                    if (!arrayList6.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        sb2.append("Critical Errors");
                        sb2.append("\n");
                        int i7 = 0;
                        for (String str8 : arrayList6) {
                            int i8 = i7 + 1;
                            if (i7 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str8);
                            i7 = i8;
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    ArrayList<String> arrayList7 = new ArrayList();
                    Iterator it5 = arrayList.iterator();
                    while (it5.hasNext()) {
                        String str9 = ((xz) it5.next()).c;
                        if (str9 != null) {
                            arrayList7.add(str9);
                        }
                    }
                    ArrayList<String> arrayList8 = new ArrayList();
                    Iterator it6 = arrayList.iterator();
                    while (it6.hasNext()) {
                        String str10 = ((xz) it6.next()).a;
                        if (str10 != null) {
                            arrayList8.add(str10);
                        }
                    }
                    ArrayList<String> arrayList9 = new ArrayList();
                    Iterator it7 = arrayList.iterator();
                    while (it7.hasNext()) {
                        String str11 = ((xz) it7.next()).d;
                        if (str11 != null) {
                            arrayList9.add(str11);
                        }
                    }
                    if (!arrayList7.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        SwiftApp.Companion companion4 = SwiftApp.d;
                        StringBuilder sbN = fz5.n(dj7.g(R.string.skipped_app_part_in_cloud_backup), "\n");
                        int i9 = 0;
                        for (String str12 : arrayList7) {
                            int i10 = i9 + 1;
                            if (i9 > 0) {
                                sbN.append("\n");
                            }
                            sbN.append(" • " + str12);
                            i9 = i10;
                        }
                        sb2.append(sbN.toString());
                    }
                    if (!arrayList8.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        SwiftApp.Companion companion5 = SwiftApp.d;
                        String string6 = SwiftApp.Companion.c().getString(R.string.x_apps_skipped_cloud_sync_message, String.valueOf(arrayList8.size()));
                        string6.getClass();
                        sb2.append(string6);
                        sb2.append("\n");
                        int i11 = 0;
                        for (String str13 : arrayList8) {
                            int i12 = i11 + 1;
                            if (i11 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str13);
                            i11 = i12;
                        }
                    }
                    if (!arrayList9.isEmpty()) {
                        if (sb2.length() > 0) {
                            sb2.append("\n\n");
                        }
                        SwiftApp.Companion companion6 = SwiftApp.d;
                        String string7 = SwiftApp.Companion.c().getString(R.string.cloud_error);
                        string7.getClass();
                        sb2.append(string7);
                        sb2.append("\n");
                        int i13 = 0;
                        for (String str14 : arrayList9) {
                            int i14 = i13 + 1;
                            if (i13 > 0) {
                                sb2.append("\n");
                            }
                            sb2.append(" • " + str14);
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
        sv svVar = this.b;
        if (svVar != null && svVar.a()) {
            sv svVar2 = this.b;
            if (svVar2 != null) {
                ArrayList arrayList10 = svVar2.a;
                StringBuilder sb3 = new StringBuilder();
                ArrayList arrayList11 = svVar2.b;
                if (!arrayList11.isEmpty()) {
                    ArrayList arrayList12 = new ArrayList();
                    Iterator it8 = arrayList11.iterator();
                    while (it8.hasNext()) {
                        String str15 = ((kq) it8.next()).b;
                        if (str15 != null) {
                            arrayList12.add(str15);
                        }
                    }
                    ArrayList arrayList13 = new ArrayList();
                    Iterator it9 = arrayList11.iterator();
                    while (it9.hasNext()) {
                        String str16 = ((kq) it9.next()).a;
                        if (str16 != null) {
                            arrayList13.add(str16);
                        }
                    }
                    ArrayList arrayList14 = new ArrayList();
                    Iterator it10 = arrayList11.iterator();
                    while (it10.hasNext()) {
                        String str17 = ((kq) it10.next()).c;
                        if (str17 != null) {
                            arrayList14.add(str17);
                        }
                    }
                    if (!arrayList12.isEmpty()) {
                        SwiftApp.Companion companion7 = SwiftApp.d;
                        String string8 = SwiftApp.Companion.c().getString(R.string.x_apps_skipped_insufficient_space_message, String.valueOf(arrayList12.size()));
                        string8.getClass();
                        sb3.append(string8);
                        sb3.append("\n\n");
                        Iterator it11 = arrayList12.iterator();
                        while (it11.hasNext()) {
                            sb3.append((String) it11.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList13.isEmpty()) {
                        SwiftApp.Companion companion8 = SwiftApp.d;
                        String string9 = SwiftApp.Companion.c().getString(R.string.x_apps_downloading_error_message, String.valueOf(arrayList13.size()));
                        string9.getClass();
                        sb3.append(string9);
                        sb3.append("\n\n");
                        Iterator it12 = arrayList13.iterator();
                        while (it12.hasNext()) {
                            sb3.append((String) it12.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList14.isEmpty()) {
                        SwiftApp.Companion companion9 = SwiftApp.d;
                        String string10 = SwiftApp.Companion.c().getString(R.string.x_apps_failed_to_restore, String.valueOf(arrayList14.size()));
                        string10.getClass();
                        sb3.append(string10);
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
                        String str18 = ((uw) it14.next()).a;
                        if (str18 != null) {
                            arrayList15.add(str18);
                        }
                    }
                    ArrayList arrayList16 = new ArrayList();
                    Iterator it15 = arrayList10.iterator();
                    while (it15.hasNext()) {
                        String str19 = ((uw) it15.next()).b;
                        if (str19 != null) {
                            arrayList16.add(str19);
                        }
                    }
                    ArrayList arrayList17 = new ArrayList();
                    Iterator it16 = arrayList10.iterator();
                    while (it16.hasNext()) {
                        String str20 = ((uw) it16.next()).c;
                        if (str20 != null) {
                            arrayList17.add(str20);
                        }
                    }
                    ArrayList arrayList18 = new ArrayList();
                    Iterator it17 = arrayList10.iterator();
                    while (it17.hasNext()) {
                        String str21 = ((uw) it17.next()).h;
                        if (str21 != null) {
                            arrayList18.add(str21);
                        }
                    }
                    ArrayList arrayList19 = new ArrayList();
                    Iterator it18 = arrayList10.iterator();
                    while (it18.hasNext()) {
                        String str22 = ((uw) it18.next()).d;
                        if (str22 != null) {
                            arrayList19.add(str22);
                        }
                    }
                    ArrayList arrayList20 = new ArrayList();
                    Iterator it19 = arrayList10.iterator();
                    while (it19.hasNext()) {
                        String str23 = ((uw) it19.next()).e;
                        if (str23 != null) {
                            arrayList20.add(str23);
                        }
                    }
                    ArrayList arrayList21 = new ArrayList();
                    Iterator it20 = arrayList10.iterator();
                    while (it20.hasNext()) {
                        String str24 = ((uw) it20.next()).g;
                        if (str24 != null) {
                            arrayList21.add(str24);
                        }
                    }
                    ArrayList arrayList22 = new ArrayList();
                    Iterator it21 = arrayList10.iterator();
                    while (it21.hasNext()) {
                        String str25 = ((uw) it21.next()).f;
                        if (str25 != null) {
                            arrayList22.add(str25);
                        }
                    }
                    if (!arrayList15.isEmpty()) {
                        SwiftApp.Companion companion10 = SwiftApp.d;
                        String string11 = SwiftApp.Companion.c().getString(R.string.x_apps_skipped_insufficient_space_message, String.valueOf(arrayList15.size()));
                        string11.getClass();
                        sb3.append(string11);
                        sb3.append("\n\n");
                        Iterator it22 = arrayList15.iterator();
                        while (it22.hasNext()) {
                            sb3.append((String) it22.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList16.isEmpty()) {
                        SwiftApp.Companion companion11 = SwiftApp.d;
                        String string12 = SwiftApp.Companion.c().getString(R.string.x_apps_failed_to_restore, String.valueOf(arrayList16.size()));
                        string12.getClass();
                        sb3.append(string12);
                        sb3.append("\n\n");
                        Iterator it23 = arrayList16.iterator();
                        while (it23.hasNext()) {
                            sb3.append((String) it23.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList17.isEmpty()) {
                        SwiftApp.Companion companion12 = SwiftApp.d;
                        String string13 = SwiftApp.Companion.c().getString(R.string.x_apps_skipped_no_apk_message, String.valueOf(arrayList17.size()));
                        string13.getClass();
                        sb3.append(string13);
                        sb3.append("\n\n");
                        Iterator it24 = arrayList17.iterator();
                        while (it24.hasNext()) {
                            sb3.append((String) it24.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList19.isEmpty()) {
                        SwiftApp.Companion companion13 = SwiftApp.d;
                        String string14 = SwiftApp.Companion.c().getString(R.string.x_apps_had_data_restore_issues_wrong_password, String.valueOf(arrayList19.size()));
                        string14.getClass();
                        sb3.append(string14);
                        sb3.append("\n\n");
                        Iterator it25 = arrayList19.iterator();
                        while (it25.hasNext()) {
                            sb3.append((String) it25.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList20.isEmpty()) {
                        SwiftApp.Companion companion14 = SwiftApp.d;
                        String string15 = SwiftApp.Companion.c().getString(R.string.x_apps_had_data_restore_issues_data_corruption, String.valueOf(arrayList20.size()));
                        string15.getClass();
                        sb3.append(string15);
                        sb3.append("\n\n");
                        Iterator it26 = arrayList20.iterator();
                        while (it26.hasNext()) {
                            sb3.append((String) it26.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList18.isEmpty()) {
                        sb3.append("Unexpected Errors\n\n");
                        Iterator it27 = arrayList18.iterator();
                        while (it27.hasNext()) {
                            sb3.append((String) it27.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList21.isEmpty()) {
                        sb3.append("Warnings\n\n");
                        Iterator it28 = arrayList21.iterator();
                        while (it28.hasNext()) {
                            sb3.append((String) it28.next());
                            sb3.append("\n");
                        }
                    }
                    if (!arrayList22.isEmpty()) {
                        sb3.append("Critical Errors\n\n");
                        Iterator it29 = arrayList22.iterator();
                        while (it29.hasNext()) {
                            sb3.append((String) it29.next());
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
        ArrayList arrayList23 = this.d;
        if (!arrayList23.isEmpty()) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(arrayList23);
        }
        return sb.toString();
    }

    @Override // defpackage.dz7
    public final boolean c() {
        sv svVar;
        hl hlVar = this.a;
        return (hlVar != null && hlVar.a()) || ((svVar = this.b) != null && svVar.a()) || !this.d.isEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003f  */
    /* JADX WARN: Code duplicated, block: B:53:0x004b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:? A[LOOP:0: B:23:0x0039->B:54:?, LOOP_END, SYNTHETIC] */
    @Override // defpackage.dz7
    public final boolean l() {
        ArrayList arrayList;
        Iterator it;
        hl hlVar = this.a;
        if (hlVar != null) {
            ArrayList arrayList2 = hlVar.a;
            if (arrayList2 != null && arrayList2.isEmpty()) {
                arrayList = hlVar.b;
                if (arrayList == null) {
                }
                it = arrayList.iterator();
                while (it.hasNext()) {
                    if (!((xz) it.next()).a()) {
                    }
                }
                return true;
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    arrayList = hlVar.b;
                    if (arrayList == null && arrayList.isEmpty()) {
                        return true;
                    }
                    it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (!((xz) it.next()).a()) {
                        }
                    }
                    return true;
                }
                String str = ((tl) it2.next()).g;
                if (str == null || str.length() == 0) {
                }
            }
        }
        sv svVar = this.b;
        if (svVar == null) {
            return false;
        }
        ArrayList arrayList3 = svVar.a;
        if (arrayList3 == null || !arrayList3.isEmpty()) {
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                if (((uw) it3.next()).f()) {
                    return false;
                }
            }
        }
        ArrayList arrayList4 = svVar.b;
        if (arrayList4 != null && arrayList4.isEmpty()) {
            return true;
        }
        Iterator it4 = arrayList4.iterator();
        if (!it4.hasNext()) {
            return true;
        }
        ((kq) it4.next()).getClass();
        return false;
    }
}
