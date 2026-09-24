package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dt7 {
    /* JADX WARN: Code duplicated, block: B:184:0x0460  */
    /* JADX WARN: Code duplicated, block: B:186:0x0468 A[LOOP:2: B:182:0x045a->B:186:0x0468, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:192:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:194:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:197:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:201:0x04db  */
    /* JADX WARN: Code duplicated, block: B:203:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:241:0x048c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x002b  */
    /* JADX WARN: Instruction removed from duplicated block: B:186:0x0468, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v36 */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v11, types: [long] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v13 */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v15 */
    /* JADX WARN: Type inference failed for: r17v16 */
    /* JADX WARN: Type inference failed for: r17v17 */
    /* JADX WARN: Type inference failed for: r17v18 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    public static q63 a(Context context, boolean z, List list) {
        String path;
        ?? r17;
        ?? r12;
        ?? r18;
        ?? r19;
        fw5 fw5Var;
        vr6 vr6Var;
        String str;
        Exception exc;
        int i;
        int i2;
        Throwable th;
        ArrayList arrayList;
        ArrayList arrayList2;
        long j;
        list.getClass();
        String strD = d(Const.n(), list);
        mp6 mp6Var = mp6.a;
        if (mp6.g()) {
            d45.b.getClass();
            if (d45.a() != null) {
                String str2 = ry5.u;
                path = qy5.f(false, null).e;
            } else {
                path = context.getCacheDir().getPath();
            }
        } else {
            path = context.getCacheDir().getPath();
        }
        q63 q63Var = new q63(path, "SwiftLogger.xml", 2);
        q63Var.h();
        boolean z2 = true;
        if (pe4.d(io4.j("SwiftLoggerExportHelper", xs1.i(q63Var, "Failed while writing "), true, new l30(14, q63Var, strD), 8), Boolean.TRUE) && q63Var.j()) {
            long j2 = 0;
            j2 = 0;
            if (q63Var.A() > 0) {
                q63 q63Var2 = new q63(path, "Logcat.xml", 2);
                q63Var2.h();
                if (z && (mp6.d(mp6Var, false, true, 1) || mp6.f())) {
                    io4.g(q63Var2);
                    Calendar calendar = Calendar.getInstance();
                    calendar.add(5, -7);
                    mp6Var.h(new String[]{dj7.l("logcat -b all -t \"", new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.mmm", Locale.ENGLISH).format(Long.valueOf(calendar.getTimeInMillis())), "\" > ", q63Var2.v())}, ip6.SHIZUKU);
                    g00 g00Var = g00.a;
                    SwiftApp.Companion companion = SwiftApp.d;
                    PackageInfo packageInfoQ = g00.q(0, SwiftApp.Companion.c().getPackageName());
                    if (packageInfoQ == null) {
                        g84.h("claimSBDataOwnership: Unable to get Swift Backup package info");
                        return null;
                    }
                    ApplicationInfo applicationInfo = packageInfoQ.applicationInfo;
                    if (applicationInfo == null) {
                        g84.h("claimSBDataOwnership: Missing Swift Backup application info");
                        return null;
                    }
                    g00.f(applicationInfo.dataDir, applicationInfo.deviceProtectedDataDir, applicationInfo.uid, null, true);
                    if (q63Var2.j()) {
                        BufferedReader bufferedReaderA = q63Var2.a();
                        try {
                            String line = bufferedReaderA.readLine();
                            boolean z3 = line == null || line.length() == 0;
                            bufferedReaderA.close();
                            if (z3) {
                                vr6.e$default(vr6.INSTANCE, "SwiftLoggerExportHelper", "Logcat empty!", null, 4, null);
                                r17 = "SwiftLoggerExportHelper";
                            }
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                rs9.c(bufferedReaderA, th2);
                                throw th3;
                            }
                        }
                    } else {
                        vr6.e$default(vr6.INSTANCE, "SwiftLoggerExportHelper", "No logcat file created by system", null, 4, null);
                        r17 = "SwiftLoggerExportHelper";
                    }
                }
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMMdd_hh.mm.ssaa", Locale.forLanguageTag("en-IN"));
                long jCurrentTimeMillis = System.currentTimeMillis();
                q63 q63Var3 = new q63(path, eq3.k("SwiftLogger_", simpleDateFormat.format(Long.valueOf(jCurrentTimeMillis)), ".7z"), 2);
                q63Var3.h();
                List listP0 = x50.p0(new q63[]{q63Var, q63Var2});
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : (ArrayList) listP0) {
                    if (((q63) obj).j()) {
                        arrayList3.add(obj);
                    }
                }
                if (arrayList3.isEmpty()) {
                    vr6.e$default(vr6.INSTANCE, "SwiftLoggerExportHelper", "No files to pack!", null, 4, null);
                    return null;
                }
                xp1 xp1Var = xp1.FASTEST;
                try {
                    ?? r13 = jCurrentTimeMillis;
                    if (q63Var3.j()) {
                        r13 = 15;
                        io4.j("CommonsSevenZipPacker", "pack", true, new ek(q63Var3, 15), 8);
                    }
                    if (xp1Var == null) {
                        xp1.Companion.getClass();
                        xp1Var = xp1.DEFAULT;
                    }
                    List listE = mm1.e(xp1Var);
                    ArrayList<km1> arrayListB = mm1.b(arrayList3);
                    try {
                        if (arrayListB.isEmpty()) {
                            throw new IllegalArgumentException("CommonsSevenZipPacker: Empty items");
                        }
                        r13 = 10;
                        ArrayList arrayList4 = new ArrayList(hl1.G0(arrayListB, 10));
                        Iterator it = arrayListB.iterator();
                        while (it.hasNext()) {
                            try {
                                j = j2;
                                try {
                                    arrayList4.add(((km1) it.next()).b);
                                    j2 = j;
                                } catch (Exception e) {
                                    e = e;
                                    r12 = arrayList3;
                                    r18 = j;
                                    i = 0;
                                    for (Object obj2 : r12) {
                                        i2 = i + 1;
                                        if (i >= 0) {
                                            fl1.F0();
                                            throw null;
                                        }
                                        vr6.e$default(vr6.INSTANCE, "CommonsSevenZipPacker", "pack: File" + i2 + "=" + ((q63) obj2), null, 4, null);
                                        i = i2;
                                    }
                                    vr6.e$default(vr6.INSTANCE, "CommonsSevenZipPacker", "pack: ".concat(yc9.g0(e)), null, 4, null);
                                    fw5Var = new fw5(false, "Error while creating 7z archive", e, 8);
                                    r19 = r18;
                                    if (fw5Var.a) {
                                        if (!q63Var3.j()) {
                                        }
                                        vr6.e$default(vr6.INSTANCE, "SwiftLoggerExportHelper", xs1.i(q63Var3, "Created SwiftLogger archive is missing or empty: "), null, 4, null);
                                        q63Var3.h();
                                        return null;
                                    }
                                    vr6Var = vr6.INSTANCE;
                                    str = fw5Var.b;
                                    if (str == null) {
                                        str = "Failed to create SwiftLogger archive";
                                    }
                                    vr6.e$default(vr6Var, "SwiftLoggerExportHelper", str, null, 4, null);
                                    exc = fw5Var.c;
                                    if (exc != null) {
                                        vr6.e$default(vr6Var, "SwiftLoggerExportHelper", "Packer failed", exc, null, 8, null);
                                    }
                                    q63Var3.h();
                                    return null;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                j = j2;
                            }
                        }
                        r17 = j2;
                        if (el1.z1(arrayList4).size() != arrayListB.size()) {
                            throw new IllegalArgumentException(("CommonsSevenZipPacker: Duplicate archive entry names").toString());
                        }
                        ?? A = r17;
                        for (km1 km1Var : arrayListB) {
                            A += km1Var.a.y() ? km1Var.a.A() : r17;
                        }
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        kh6 kh6Var = new kh6();
                        kh6Var.a = jCurrentTimeMillis2;
                        kh6 kh6Var2 = new kh6();
                        kh6 kh6Var3 = new kh6();
                        byte[] bArr = new byte[262144];
                        q63 q63VarT = q63Var3.t();
                        if (q63VarT == null) {
                            throw new IllegalArgumentException(("CommonsSevenZipPacker: Destination has no parent: " + q63Var3).toString());
                        }
                        if (!q63VarT.j() && !q63.E(q63VarT)) {
                            throw new IllegalStateException(("CommonsSevenZipPacker: Failed to create parent dir for " + q63Var3).toString());
                        }
                        c73 c73VarL = q63Var3.l(2);
                        if (c73VarL == null) {
                            throw new IllegalStateException(("CommonsSevenZipPacker: Unable to open destination archive channel: " + q63Var3).toString());
                        }
                        try {
                            try {
                                lb7 lb7Var = new lb7(c73VarL.a);
                                try {
                                    LinkedList linkedList = new LinkedList();
                                    Iterator it2 = listE.iterator();
                                    while (it2.hasNext()) {
                                        linkedList.addFirst(it2.next());
                                    }
                                    lb7Var.q = linkedList;
                                    Iterator it3 = arrayListB.iterator();
                                    arrayList3 = arrayList3;
                                    while (it3.hasNext()) {
                                        km1 km1Var2 = (km1) it3.next();
                                        wa7 wa7VarA = km1Var2.a();
                                        q63 q63Var4 = km1Var2.a;
                                        lb7Var.b.add(wa7VarA);
                                        if (q63Var4.y()) {
                                            arrayList = arrayList3;
                                            InputStream inputStreamW = q63Var4.w(z2);
                                            ArrayList arrayList5 = arrayList3;
                                            while (true) {
                                                try {
                                                    int i3 = inputStreamW.read(bArr);
                                                    if (i3 < 0) {
                                                        break;
                                                    }
                                                    lb7Var.h(bArr, i3);
                                                    Iterator it4 = it3;
                                                    arrayList2 = arrayList5;
                                                    try {
                                                        kh6Var3.a += (long) i3;
                                                        kh6 kh6Var4 = kh6Var;
                                                        kh6 kh6Var5 = kh6Var3;
                                                        mm1.c(kh6Var4, A, kh6Var5, kh6Var2, false);
                                                        arrayList5 = arrayList2;
                                                        kh6Var = kh6Var4;
                                                        kh6Var3 = kh6Var5;
                                                        it3 = it4;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                    }
                                                } catch (Throwable th5) {
                                                    th = th5;
                                                    arrayList2 = arrayList5;
                                                }
                                                Throwable th6 = th;
                                                try {
                                                    throw th6;
                                                } catch (Throwable th7) {
                                                    rs9.c(inputStreamW, th6);
                                                    throw th7;
                                                }
                                            }
                                            inputStreamW.close();
                                            arrayList = arrayList5;
                                        }
                                        arrayList = arrayList3;
                                        Iterator it5 = it3;
                                        arrayList2 = arrayList;
                                        kh6 kh6Var6 = kh6Var;
                                        kh6 kh6Var7 = kh6Var3;
                                        try {
                                            lb7Var.a();
                                            arrayList3 = arrayList2;
                                            kh6Var = kh6Var6;
                                            kh6Var3 = kh6Var7;
                                            it3 = it5;
                                            z2 = true;
                                        } catch (Throwable th8) {
                                            th = th8;
                                            r13 = arrayList2;
                                            Throwable th9 = th;
                                            try {
                                                throw th9;
                                            } catch (Throwable th10) {
                                                rs9.c(lb7Var, th9);
                                                throw th10;
                                            }
                                        }
                                    }
                                    kh6 kh6Var8 = kh6Var;
                                    kh6 kh6Var9 = kh6Var3;
                                    lb7Var.b();
                                    lb7Var.close();
                                    c73VarL.close();
                                    mm1.c(kh6Var8, A, kh6Var9, kh6Var2, true);
                                    ArrayList arrayList6 = new ArrayList(hl1.G0(arrayListB, 10));
                                    Iterator it6 = arrayListB.iterator();
                                    while (it6.hasNext()) {
                                        arrayList6.add(((km1) it6.next()).a);
                                    }
                                    HashSet hashSet = new HashSet();
                                    ArrayList arrayList7 = new ArrayList();
                                    for (Object obj3 : arrayList6) {
                                        if (hashSet.add(((q63) obj3).v())) {
                                            arrayList7.add(obj3);
                                        }
                                    }
                                    ArrayList arrayList8 = new ArrayList();
                                    for (Object obj4 : arrayList7) {
                                        if (((q63) obj4).y()) {
                                            arrayList8.add(obj4);
                                        }
                                    }
                                    Iterator it7 = arrayList8.iterator();
                                    while (it7.hasNext()) {
                                        ((q63) it7.next()).h();
                                    }
                                    Log.i("CommonsSevenZipPacker", "7z creation succeeded in " + ((System.currentTimeMillis() - jCurrentTimeMillis2) / 1000.0d) + "s");
                                    fw5Var = new fw5(true, (String) null, (Exception) null, 14);
                                    r19 = r17;
                                    if (fw5Var.a) {
                                        if (!q63Var3.j() && q63Var3.A() > r19) {
                                            return q63Var3;
                                        }
                                        vr6.e$default(vr6.INSTANCE, "SwiftLoggerExportHelper", xs1.i(q63Var3, "Created SwiftLogger archive is missing or empty: "), null, 4, null);
                                        q63Var3.h();
                                        return null;
                                    }
                                    vr6Var = vr6.INSTANCE;
                                    str = fw5Var.b;
                                    if (str == null) {
                                        str = "Failed to create SwiftLogger archive";
                                    }
                                    vr6.e$default(vr6Var, "SwiftLoggerExportHelper", str, null, 4, null);
                                    exc = fw5Var.c;
                                    if (exc != null) {
                                        vr6.e$default(vr6Var, "SwiftLoggerExportHelper", "Packer failed", exc, null, 8, null);
                                    }
                                    q63Var3.h();
                                    return null;
                                } catch (Throwable th11) {
                                    th = th11;
                                    r13 = arrayList3;
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                r13 = arrayList3;
                                th = th;
                                try {
                                    throw th;
                                } catch (Throwable th13) {
                                    rs9.c(c73VarL, th);
                                    throw th13;
                                }
                            }
                        } catch (Throwable th14) {
                            th = th14;
                            th = th;
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        r12 = r13;
                        r18 = r17;
                    }
                } catch (Exception e4) {
                    e = e4;
                    r12 = arrayList3;
                    r18 = j2;
                }
                i = 0;
                while (r1.hasNext()) {
                    i2 = i + 1;
                    if (i >= 0) {
                        fl1.F0();
                        throw null;
                    }
                    vr6.e$default(vr6.INSTANCE, "CommonsSevenZipPacker", "pack: File" + i2 + "=" + ((q63) obj2), null, 4, null);
                    i = i2;
                }
                vr6.e$default(vr6.INSTANCE, "CommonsSevenZipPacker", "pack: ".concat(yc9.g0(e)), null, 4, null);
                fw5Var = new fw5(false, "Error while creating 7z archive", e, 8);
                r19 = r18;
                if (fw5Var.a) {
                    if (!q63Var3.j()) {
                    }
                    vr6.e$default(vr6.INSTANCE, "SwiftLoggerExportHelper", xs1.i(q63Var3, "Created SwiftLogger archive is missing or empty: "), null, 4, null);
                    q63Var3.h();
                    return null;
                }
                vr6Var = vr6.INSTANCE;
                str = fw5Var.b;
                if (str == null) {
                    str = "Failed to create SwiftLogger archive";
                }
                vr6.e$default(vr6Var, "SwiftLoggerExportHelper", str, null, 4, null);
                exc = fw5Var.c;
                if (exc != null) {
                    vr6.e$default(vr6Var, "SwiftLoggerExportHelper", "Packer failed", exc, null, 8, null);
                }
                q63Var3.h();
                return null;
            }
        }
        vr6.e$default(vr6.INSTANCE, "SwiftLoggerExportHelper", xs1.i(q63Var, "SwiftLogger log file missing or empty: "), null, 4, null);
        q63Var.h();
        return null;
    }

    public static String b(String str, List list) {
        int iG = g("\n[SwiftLogger end]") + g(c(str));
        if (iG > 131072) {
            return e(str, list);
        }
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2 = i + 1;
            int iG2 = g(jv6.toString$default((jv6) it.next(), false, false, true, 3, null)) + iG;
            iG = i < list.size() + (-1) ? g("\n") + iG2 : iG2;
            if (iG > 131072) {
                return e(str, list);
            }
            i = i2;
        }
        return d(str, list);
    }

    public static String c(String str) {
        return eq3.k("[DeviceInfo start]\n", str, "\n[DeviceInfo end]\n\n[SwiftLogger start]\n");
    }

    public static String d(String str, List list) {
        StringBuilder sb = new StringBuilder();
        sb.append(c(str));
        return dj7.n(sb, el1.Y0(list, "\n", null, null, new zi1(8), 30), "\n[SwiftLogger end]");
    }

    public static String e(String str, List list) {
        String strConcat = c(str).concat("[SwiftLogger truncated: older entries omitted]\n");
        int iG = g("\n");
        int iG2 = g("\n[SwiftLogger end]") + g(strConcat);
        if (iG2 >= 131072) {
            return f(strConcat.concat("\n[SwiftLogger end]"));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = new rn6(list).iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            ListIterator listIterator = ((qn6) it).a;
            if (!listIterator.hasPrevious()) {
                break;
            }
            String string$default = jv6.toString$default((jv6) listIterator.previous(), false, false, true, 3, null);
            int i3 = arrayList.isEmpty() ? 0 : iG;
            int iG3 = g(string$default);
            if (iG2 + i2 + i3 + iG3 > 131072) {
                int iG4 = (((131072 - iG2) - i2) - i3) - g("[SwiftLogger log line truncated]\n");
                if (iG4 <= 0) {
                    break;
                }
                if (iG4 <= 0) {
                    string$default = "";
                } else if (g(string$default) > iG4) {
                    int length = string$default.length();
                    while (i < length) {
                        int i4 = ((i + length) + 1) / 2;
                        if (g(string$default.substring(string$default.length() - i4)) <= iG4) {
                            i = i4;
                        } else {
                            length = i4 - 1;
                        }
                    }
                    int length2 = string$default.length() - i;
                    if (length2 < string$default.length() && Character.isLowSurrogate(string$default.charAt(length2))) {
                        length2++;
                    }
                    string$default = string$default.substring(length2);
                }
                arrayList.add("[SwiftLogger log line truncated]\n".concat(string$default));
                break;
            }
            arrayList.add(string$default);
            i2 += i3 + iG3;
        }
        StringBuilder sbS = dj7.s(strConcat);
        if (!arrayList.isEmpty()) {
            sbS.append(el1.Y0(new pn6(arrayList), "\n", null, null, null, 62));
        }
        sbS.append("\n[SwiftLogger end]");
        return f(sbS.toString());
    }

    public static String f(String str) {
        if (g(str) <= 131072) {
            return str;
        }
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2 = ((i + length) + 1) / 2;
            if (g(str.substring(0, i2)) <= 131072) {
                i = i2;
            } else {
                length = i2 - 1;
            }
        }
        if (i > 0) {
            int i3 = i - 1;
            if (Character.isHighSurrogate(str.charAt(i3))) {
                i = i3;
            }
        }
        return str.substring(0, i);
    }

    public static int g(String str) {
        Charset charset = StandardCharsets.UTF_8;
        charset.getClass();
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        return bytes.length;
    }
}
