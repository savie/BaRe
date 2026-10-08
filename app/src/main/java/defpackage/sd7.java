package defpackage;

import android.os.Build;
import android.util.Log;
import com.topjohnwu.superuser.Shell;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sd7 {
    public static void a(String str, b05 b05Var) {
        str.getClass();
        List listL = g84.l("pm install-abandon ".concat(str), ip6.SHIZUKU);
        if (e(listL)) {
            vr6.w$default(vr6.INSTANCE, "ShellApkInstaller", dj7.l("Failed to abandon install session ", str, ": ", el1.Y0(listL, null, null, null, null, 63)), null, 4, null);
        }
    }

    public static ArrayList b(ArrayList arrayList, ArrayList arrayList2, lk lkVar) {
        String str = ry5.u;
        q63 q63Var = new q63(qy5.f(false, null).e, u48.l(System.nanoTime(), "apk_shell_install_"), 3);
        if (!q63.E(q63Var)) {
            g84.f(xs1.i(q63Var, "Unable to create APK shell install directory: "));
            return null;
        }
        arrayList2.add(q63Var);
        ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sg sgVar = (sg) it.next();
            q63 q63VarJ = q63Var.J(sgVar.a.p());
            q63 q63Var2 = sgVar.a;
            q63Var2.getClass();
            q63Var2.d(q63VarJ, null);
            String str2 = sgVar.b;
            long j = sgVar.c;
            str2.getClass();
            arrayList3.add(new sg(j, q63VarJ, str2));
        }
        return arrayList3;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0053  */
    public static rd7 c(boolean z, String str, String str2, b05 b05Var) {
        Object next;
        String strA;
        for (int i = 0; i < 5; i++) {
            String str3 = (str2 == null || nq7.j0(str2)) ? null : str2;
            if (str3 == null) {
                str3 = "unknown_installer";
            }
            str.getClass();
            boolean z2 = g42.a;
            String strConcat = String.format((String) g42.w.getValue(), Arrays.copyOf(new Object[]{z ? "-g" : "", str, str3}, 3));
            int i2 = b67.a;
            int i3 = bx0.a;
            int i4 = Build.VERSION.SDK_INT;
            if (i4 >= 34) {
                strConcat = strConcat.concat(" --bypass-low-target-sdk-block");
            } else if (i4 >= 33) {
                Build.VERSION.CODENAME.getClass();
                if (bx0.a("UpsideDownCake")) {
                    strConcat = strConcat.concat(" --bypass-low-target-sdk-block");
                }
            }
            List listL = g84.l(strConcat, ip6.SHIZUKU);
            Iterator it = listL.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                String str4 = (String) next;
                if (nq7.Z(str4, "[", false) && nq7.Z(str4, "]", false)) {
                    break;
                }
            }
            String str5 = (String) next;
            String string = (str5 == null || (strA = jq7.a(str5, "[", "]")) == null) ? null : nq7.H0(strA).toString();
            String str6 = string != null ? string : "";
            if (str6.length() > 0) {
                for (int i5 = 0; i5 < str6.length(); i5++) {
                    if (Character.isDigit(str6.charAt(i5))) {
                    }
                }
                return new rd7(str6, listL);
            }
            if (i >= 4) {
                vr6.e$default(vr6.INSTANCE, "ShellApkInstaller", "Failed to create install session: ".concat(el1.Y0(listL, null, null, null, null, 63)), null, 4, null);
                return new rd7(null, listL);
            }
            mp6 mp6Var = mp6.a;
            Log.i(mp6.b, "Creating new shell");
            int i6 = Shell.UNKNOWN;
            zd7 zd7VarK = k55.k();
            if (zd7VarK != null) {
                f13.a(zd7VarK);
            }
            mp6.d(mp6Var, true, false, 2);
            k55.j();
        }
        return new rd7(null, ov2.a);
    }

    public static List d(qd7 qd7Var) throws Throwable {
        int i;
        long j;
        g84 g84Var = new g84();
        b05 b05Var = b05.a;
        lk lkVar = lk.d;
        sl4 sl4Var = sl4.c;
        ArrayList arrayListB = qd7Var.a;
        if (arrayListB.isEmpty()) {
            return nc8.I("Failure [No APK files provided]");
        }
        Iterator it = arrayListB.iterator();
        long j2 = 0;
        long j3 = 0;
        while (it.hasNext()) {
            j3 += ((sg) it.next()).c;
        }
        long j4 = qd7Var.f;
        mt3 mt3Var = qd7Var.g;
        mt3Var.getClass();
        long j5 = j3 + j4;
        long j6 = j5 < 0 ? 0L : j5;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        String str = null;
        try {
            if (qd7Var.e) {
                arrayListB = b(arrayListB, arrayList, lkVar);
            }
            rd7 rd7VarC = c(qd7Var.b, qd7Var.c, qd7Var.d, b05Var);
            ArrayList<sg> arrayList2 = arrayListB;
            String str2 = rd7VarC.a;
            if (str2 == null) {
                List listI = nc8.I("Failed to create install session: [" + el1.Y0(rd7VarC.b, null, null, null, null, 63) + "]");
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((q63) it2.next()).h();
                }
                return listI;
            }
            int i3 = 1;
            try {
                ArrayList arrayList3 = new ArrayList();
                long j7 = 0;
                try {
                    for (sg sgVar : arrayList2) {
                        long j8 = j2;
                        List listG = g(str2, sgVar, arrayList, g84Var, b05Var, lkVar, sl4Var);
                        arrayList3.addAll(listG);
                        if (e(listG)) {
                            a(str2, b05Var);
                            Iterator it3 = arrayList.iterator();
                            while (it3.hasNext()) {
                                ((q63) it3.next()).h();
                            }
                            return arrayList3;
                        }
                        long j9 = sgVar.c;
                        ug ugVar = ug.Writing;
                        if (j9 < j8) {
                            j9 = j8;
                        }
                        long j10 = j7 + j9;
                        long j11 = j6 - j4;
                        if (j11 < j8) {
                            j11 = j8;
                        }
                        if (j10 > j11) {
                            j10 = j11;
                        }
                        i = i3;
                        try {
                            long j12 = j10;
                            long j13 = j6;
                            mt3Var.invoke(new vg(ugVar, j12, j13));
                            j7 = j12;
                            j6 = j13;
                            i3 = i;
                            j2 = j8;
                        } catch (Throwable th) {
                            th = th;
                        }
                        i2 = i;
                        str = str2;
                    }
                    arrayList3.addAll(g84.l(String.format((String) g42.z.getValue(), Arrays.copyOf(new Object[]{str2}, i3)), ip6.SHIZUKU));
                    if (!e(arrayList3)) {
                        mt3Var.invoke(new vg(ug.Committing, j, j));
                    }
                    Iterator it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        ((q63) it4.next()).h();
                    }
                    return arrayList3;
                } catch (Throwable th2) {
                    th = th2;
                }
                j = j6;
            } catch (Throwable th3) {
                th = th3;
                i = i3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        if (i2 != 0 && str != null) {
            a(str, b05Var);
        }
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            ((q63) it5.next()).h();
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0051  */
    /* JADX WARN: Code duplicated, block: B:29:0x0062  */
    /* JADX WARN: Code duplicated, block: B:38:0x0070 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0070 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x000e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:? A[LOOP:2: B:27:0x005c->B:46:?, LOOP_END, SYNTHETIC] */
    public static boolean e(List list) {
        Iterator it;
        list.getClass();
        if (list.isEmpty()) {
            return false;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (!nq7.Z(str, "Failure", true) && !nq7.Z(str, "Segmentation fault", true)) {
                if (!list.isEmpty()) {
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        if (nq7.Z((String) it3.next(), "Failed to parse APK file", true)) {
                        }
                    }
                    if (f(list)) {
                        if (list.isEmpty()) {
                            it = list.iterator();
                            while (it.hasNext()) {
                                if (uq7.V((String) it.next(), "Failed to create install session", true)) {
                                }
                            }
                        }
                    }
                } else if (f(list)) {
                    if (list.isEmpty()) {
                        it = list.iterator();
                        while (it.hasNext()) {
                            if (uq7.V((String) it.next(), "Failed to create install session", true)) {
                            }
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static boolean f(List list) {
        if (list != null && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (nq7.Z(str, "Unable to open file", true) || nq7.Z(str, "data/local", true)) {
                return true;
            }
        }
        return false;
    }

    public static List g(String str, sg sgVar, ArrayList arrayList, g84 g84Var, b05 b05Var, lk lkVar, sl4 sl4Var) {
        q63 q63Var = sgVar.a;
        String strH = h(b05Var, str, sgVar, q63Var);
        ip6 ip6Var = ip6.SHIZUKU;
        List listL = g84.l(strH, ip6Var);
        boolean z = true;
        if (f(listL)) {
            g42.a = true;
            listL = g84.l(h(b05Var, str, sgVar, q63Var), ip6Var);
        }
        if (listL != null && listL.isEmpty()) {
            z = false;
            break;
        }
        Iterator it = listL.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            String str2 = (String) it.next();
            if (uq7.V(str2, "cat: ", true) && nq7.Z(str2, "Permission denied", true)) {
                break;
            }
        }
        if (!z) {
            return listL;
        }
        String str3 = ry5.u;
        q63 q63Var2 = new q63(qy5.f(false, null).e, u48.l(System.nanoTime(), "apk_shell_install_retry_"), 3);
        if (!q63.E(q63Var2)) {
            g84.f(xs1.i(q63Var2, "Unable to create APK shell install retry directory: "));
            return null;
        }
        arrayList.add(q63Var2);
        q63 q63VarJ = q63Var2.J(q63Var.p());
        q63Var.d(q63VarJ, null);
        return g84.l(h(b05Var, str, sgVar, q63VarJ), ip6.SHIZUKU);
    }

    public static final String h(b05 b05Var, String str, sg sgVar, q63 q63Var) {
        String string;
        String str2 = sgVar.b;
        String strV = q63Var.v();
        long jA = q63Var.A();
        str.getClass();
        str2.getClass();
        if (g42.a) {
            return String.format((String) g42.y.getValue(), Arrays.copyOf(new Object[]{strV, Long.valueOf(jA), str, str2}, 4));
        }
        mp6 mp6Var = mp6.a;
        String path = null;
        if (uq7.V(strV, mp6.c(), false)) {
            String strC = mp6.c();
            String str3 = (String) mp6.f.getValue();
            strC.getClass();
            str3.getClass();
            int iH0 = nq7.h0(strV, strC, 0, false, 2);
            if (iH0 < 0) {
                string = strV;
            } else {
                int length = strC.length() + iH0;
                if (length < iH0) {
                    a6.d(dj7.j("End index (", length, ") is less than start index (", ").", iH0));
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                sb.append((CharSequence) strV, 0, iH0);
                sb.append((CharSequence) str3);
                sb.append((CharSequence) strV, length, strV.length());
                string = sb.toString();
            }
            File fileG = jr7.g(string);
            if (!fileG.exists()) {
                fileG = null;
            }
            if (fileG != null) {
                path = fileG.getPath();
            }
        }
        if (path == null) {
            path = strV;
        }
        return uq7.V(path, "/data", false) ? String.format((String) g42.x.getValue(), Arrays.copyOf(new Object[]{Long.valueOf(jA), str, str2, path}, 4)) : String.format((String) g42.y.getValue(), Arrays.copyOf(new Object[]{strV, Long.valueOf(jA), str, str2}, 4));
    }
}
