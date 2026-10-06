package org.swiftapps.swiftbackup.compress;

import android.util.Log;
import defpackage.bn6;
import defpackage.c73;
import defpackage.cz4;
import defpackage.db7;
import defpackage.dz8;
import defpackage.eb7;
import defpackage.el1;
import defpackage.en6;
import defpackage.ew5;
import defpackage.ez8;
import defpackage.f6;
import defpackage.fb7;
import defpackage.fl1;
import defpackage.fw5;
import defpackage.g51;
import defpackage.g84;
import defpackage.gb7;
import defpackage.gl1;
import defpackage.gw5;
import defpackage.hl1;
import defpackage.hz8;
import defpackage.i40;
import defpackage.io4;
import defpackage.j77;
import defpackage.jq6;
import defpackage.ky6;
import defpackage.le3;
import defpackage.mb7;
import defpackage.me3;
import defpackage.mz6;
import defpackage.nb7;
import defpackage.nc8;
import defpackage.nq7;
import defpackage.ov2;
import defpackage.q;
import defpackage.q63;
import defpackage.rf;
import defpackage.rs9;
import defpackage.rt3;
import defpackage.uq7;
import defpackage.vr6;
import defpackage.wa7;
import defpackage.ws1;
import defpackage.wy6;
import defpackage.xs1;
import defpackage.xy6;
import defpackage.z17;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Packer {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.Exception, java.lang.String] */
    /* JADX WARN: Type inference failed for: r30v0, types: [rt3] */
    /* JADX WARN: Type inference failed for: r30v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r30v2 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [rt3] */
    /* JADX WARN: Type inference failed for: r6v5 */
    public static fw5 a(q63 q63Var, q63 q63Var2, List list, String str, List list2, rt3 rt3Var, int i) throws Throwable {
        List listN1;
        boolean z;
        boolean z2;
        boolean z3;
        ArrayList arrayList;
        Throwable th;
        boolean z4;
        List list3 = (i & 4) != 0 ? null : list;
        String str2 = (i & 8) != 0 ? null : str;
        List list4 = (i & 16) != 0 ? null : list2;
        ?? r6 = (i & 32) != 0 ? 0 : rt3Var;
        q63Var.getClass();
        q63Var2.getClass();
        ArrayList arrayList2 = new ArrayList();
        if (list3 != null) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : list3) {
                if (((char[]) obj).length != 0) {
                    arrayList3.add(obj);
                }
            }
            HashSet hashSet = new HashSet();
            ArrayList arrayList4 = new ArrayList();
            for (Object obj2 : arrayList3) {
                if (hashSet.add(new String((char[]) obj2))) {
                    arrayList4.add(obj2);
                }
            }
            listN1 = el1.n1(arrayList4, new mb7(str2));
        } else {
            listN1 = null;
        }
        boolean z5 = true;
        try {
            if (listN1 != null) {
                try {
                    if (!listN1.isEmpty()) {
                        if (!listN1.isEmpty()) {
                            Iterator it = listN1.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    arrayList = arrayList2;
                                    th = null;
                                    z4 = false;
                                    break;
                                }
                                char[] cArr = (char[]) it.next();
                                int iIndexOf = listN1.indexOf(cArr);
                                try {
                                    nb7.a(q63Var, q63Var2, list4, r6, cArr);
                                    arrayList = arrayList2;
                                    z4 = z5;
                                } catch (Exception e) {
                                    arrayList2.add(e);
                                    ArrayList arrayList5 = arrayList2;
                                    Log.e("SevenZipPacker", "Failed with password [" + (iIndexOf + 1) + "/" + listN1.size() + "]: " + io4.b(e));
                                    String strB = io4.b(e);
                                    boolean z6 = nq7.Z(strB, "code:WRONG_PASSWORD", true) || nq7.Z(strB, "password", true);
                                    boolean zC = cz4.c(e, nc8.I(cArr), str2);
                                    if (z6 || zC) {
                                        Log.e("SevenZipPacker", "Password error: " + io4.b(e));
                                    }
                                    arrayList2 = arrayList5;
                                    z5 = true;
                                }
                            }
                            if (!z4 || arrayList.isEmpty()) {
                                ?? r2 = th;
                                return new fw5(z4, (String) r2, (Exception) r2, 14);
                            }
                            int i2 = 0;
                            for (Object obj3 : arrayList) {
                                int i3 = i2 + 1;
                                if (i2 < 0) {
                                    fl1.F0();
                                    throw th;
                                }
                                vr6.e$default(vr6.INSTANCE, "SevenZipPacker", "Error#" + i2, (Exception) obj3, null, 8, null);
                                i2 = i3;
                            }
                            throw new RuntimeException("Failed extracting file: " + q63Var);
                        }
                        arrayList = arrayList2;
                        z4 = false;
                        th = null;
                        if (z4) {
                        }
                        ?? r3 = th;
                        return new fw5(z4, (String) r3, (Exception) r3, 14);
                    }
                } catch (Exception e2) {
                    e = e2;
                    rt3Var = arrayList2;
                    Exception exc = e;
                    vr6.e$default(vr6.INSTANCE, "SevenZipPacker", "extract", exc, null, 8, null);
                    if (!rt3Var.isEmpty()) {
                        Iterator it2 = rt3Var.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z = true;
                                z2 = true;
                                break;
                            }
                            String strB2 = io4.b((Exception) it2.next());
                            z = true;
                            if (!nq7.Z(strB2, "code:WRONG_PASSWORD", true) && !nq7.Z(strB2, "password", true)) {
                                z2 = false;
                                break;
                            }
                        }
                    } else {
                        z2 = true;
                        z = true;
                    }
                    if (z2) {
                        vr6.e$default(vr6.INSTANCE, "SevenZipPacker", "Wrong password", null, 4, null);
                    }
                    if (rt3Var.isEmpty()) {
                        z3 = z;
                        break;
                    }
                    Iterator it3 = rt3Var.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z3 = z;
                            break;
                        }
                        if (!cz4.c((Exception) it3.next(), listN1, str2)) {
                            z3 = false;
                            break;
                        }
                    }
                    if (z3) {
                        vr6.e$default(vr6.INSTANCE, "SevenZipPacker", "Password hash mismatch", null, 4, null);
                    }
                    return new fw5(false, "Error while extracting archive", exc, z2 ? ew5.PasswordError : z3 ? ew5.PasswordMismatchError : ew5.CorruptionError);
                }
            }
            String str3 = null;
            ?? r4 = 0;
            nb7.a(q63Var, q63Var2, list4, r6, null);
            return new fw5(true, str3, (Exception) (r4 == true ? 1 : 0), 14);
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:101:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:172:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0195 A[Catch: all -> 0x01a7, LOOP:7: B:91:0x018f->B:93:0x0195, LOOP_END, TryCatch #2 {all -> 0x01a7, blocks: (B:90:0x0180, B:91:0x018f, B:93:0x0195, B:94:0x01a1), top: B:172:0x0180 }] */
    public static i40 b(q63 q63Var) throws IOException {
        Object bn6Var;
        Throwable thA;
        i40 i40Var;
        ArrayList arrayList;
        Iterator it;
        q63Var.getClass();
        HashSet hashSet = mz6.a;
        String str = null;
        boolean zK = false;
        if (mz6.m(q63Var)) {
            ky6 ky6VarT = mz6.t(q63Var);
            List list = ky6VarT.i;
            ArrayList arrayList2 = new ArrayList(hl1.G0(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((xy6) it2.next()).a);
            }
            ArrayList arrayList3 = new ArrayList(arrayList2);
            wy6 wy6Var = ky6VarT.f.g;
            zK = wy6Var != wy6.None;
            int i = gw5.a[wy6Var.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    str = "AEGIS-256";
                } else {
                    if (i != 3) {
                        q.j();
                        return null;
                    }
                    str = "AEGIS-128X2";
                }
            }
            return new i40(6, arrayList3, zK, str);
        }
        byte[] bArrCopyOf = new byte[512];
        InputStream inputStreamW = q63Var.w(false);
        try {
            int i2 = inputStreamW.read(bArrCopyOf);
            inputStreamW.close();
            if (i2 <= 0) {
                f6.g(xs1.i(q63Var, "Empty archive: "));
                return null;
            }
            if (i2 != 512) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i2);
            }
            int i3 = 4;
            if (bArrCopyOf.length >= 6) {
                int i4 = 0;
                while (true) {
                    if (i4 >= 6) {
                        jq6 jq6Var = new jq6(q63Var);
                        c73 c73VarL = q63Var.l(1);
                        if (c73VarL == null) {
                            g84.f(xs1.i(q63Var, "LegacySevenZipArchive: Unable to open archive channel: "));
                            return null;
                        }
                        try {
                            db7 db7VarB = eb7.b();
                            db7VarB.t = c73VarL.a;
                            eb7 eb7VarK = db7VarB.K();
                            try {
                                ArrayList arrayList4 = new ArrayList();
                                for (wa7 wa7Var : new ArrayList(Arrays.asList(eb7VarK.c.g))) {
                                    arrayList4.add(jq6.v(wa7Var.a));
                                    List list2 = wa7Var.r;
                                    List listV1 = list2 != null ? el1.v1(list2) : null;
                                    if (listV1 == null) {
                                        listV1 = ov2.a;
                                    }
                                    if (!listV1.isEmpty()) {
                                        Iterator it3 = listV1.iterator();
                                        while (it3.hasNext()) {
                                            if (((gb7) it3.next()).a == fb7.AES256SHA256) {
                                                zK = true;
                                                break;
                                            }
                                        }
                                    }
                                }
                                if (!zK) {
                                    zK = jq6Var.k();
                                }
                                if (!arrayList4.isEmpty()) {
                                    Iterator it4 = arrayList4.iterator();
                                    while (it4.hasNext()) {
                                        if (nq7.B0((String) it4.next(), '.').equals("compressed")) {
                                            i3 = 5;
                                            break;
                                        }
                                    }
                                }
                                String str2 = "7Z AES-256";
                                if (!zK) {
                                    str2 = null;
                                }
                                i40 i40Var2 = new i40(i3, arrayList4, zK, str2);
                                eb7VarK.close();
                                c73VarL.close();
                                i40Var = i40Var2;
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    rs9.c(eb7VarK, th);
                                    throw th2;
                                }
                            }
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                rs9.c(c73VarL, th3);
                                throw th4;
                            }
                        }
                    } else if (bArrCopyOf[i4] == eb7.q[i4]) {
                        i4++;
                    } else if (bArrCopyOf.length < 4) {
                        HashSet hashSet2 = mz6.a;
                        ArrayList arrayListO = mz6.o(q63Var);
                        arrayList = new ArrayList();
                        it = arrayListO.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((z17) it.next()).a);
                        }
                        bn6Var = new i40(3, arrayList, false, null);
                        thA = en6.a(bn6Var);
                        if (thA != null) {
                            throw new IllegalArgumentException(xs1.i(q63Var, "Unhandled archive format for file="), thA);
                        }
                        i40Var = (i40) bn6Var;
                    } else {
                        HashSet hashSet3 = mz6.a;
                        ArrayList arrayListO2 = mz6.o(q63Var);
                        arrayList = new ArrayList();
                        it = arrayListO2.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((z17) it.next()).a);
                        }
                        bn6Var = new i40(3, arrayList, false, null);
                        thA = en6.a(bn6Var);
                        if (thA != null) {
                            throw new IllegalArgumentException(xs1.i(q63Var, "Unhandled archive format for file="), thA);
                        }
                        i40Var = (i40) bn6Var;
                    }
                }
            } else if (bArrCopyOf.length < 4 && bArrCopyOf[0] == 80 && bArrCopyOf[1] == 75 && fl1.A0((byte) 3, (byte) 5, (byte) 7).contains(Byte.valueOf(bArrCopyOf[2])) && fl1.A0((byte) 4, (byte) 6, (byte) 8).contains(Byte.valueOf(bArrCopyOf[3]))) {
                ArrayList arrayList5 = new ArrayList();
                c73 c73VarL2 = q63Var.l(1);
                if (c73VarL2 == null) {
                    g84.f("Unable to open archive channel: ".concat(q63Var.v()));
                    return null;
                }
                try {
                    FileChannel fileChannel = c73VarL2.a;
                    byte[] bArr = hz8.L;
                    dz8 dz8Var = new dz8();
                    dz8Var.x = true;
                    Charset charset = dz8.y;
                    Charset charset2 = dz8Var.p;
                    int i5 = g51.a;
                    if (charset != null) {
                        charset2 = charset;
                    }
                    dz8Var.n = charset2;
                    dz8Var.p = charset;
                    dz8Var.t = fileChannel;
                    hz8 hz8VarK = dz8Var.K();
                    try {
                        Enumeration enumeration = Collections.enumeration(hz8VarK.a);
                        boolean z = false;
                        while (enumeration.hasMoreElements()) {
                            ez8 ez8Var = (ez8) enumeration.nextElement();
                            arrayList5.add(ez8Var.getName());
                            if (ez8Var.p.c) {
                                z = true;
                            }
                        }
                        hz8VarK.close();
                        c73VarL2.close();
                        if (!arrayList5.isEmpty()) {
                            if (arrayList5.isEmpty()) {
                                zK = true;
                                break;
                            }
                            Iterator it5 = arrayList5.iterator();
                            do {
                                if (!it5.hasNext()) {
                                    zK = true;
                                    break;
                                }
                            } while (uq7.O((String) it5.next(), ".tar", false));
                        }
                        i40Var = new i40(zK ? 2 : 1, arrayList5, z, null);
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            rs9.c(hz8VarK, th5);
                            throw th6;
                        }
                    }
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        rs9.c(c73VarL2, th7);
                        throw th8;
                    }
                }
            } else {
                try {
                    HashSet hashSet4 = mz6.a;
                    ArrayList arrayListO3 = mz6.o(q63Var);
                    arrayList = new ArrayList();
                    it = arrayListO3.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((z17) it.next()).a);
                    }
                    bn6Var = new i40(3, arrayList, false, null);
                } catch (Throwable th9) {
                    bn6Var = new bn6(th9);
                }
                thA = en6.a(bn6Var);
                if (thA != null) {
                    throw new IllegalArgumentException(xs1.i(q63Var, "Unhandled archive format for file="), thA);
                }
                i40Var = (i40) bn6Var;
            }
            if (i40Var.a >= 0) {
                return i40Var;
            }
            q.g("Invalid archive info for file at ", q63Var, " (", i40Var, ")");
            return null;
        } catch (Throwable th10) {
            try {
                throw th10;
            } catch (Throwable th11) {
                rs9.c(inputStreamW, th10);
                throw th11;
            }
        }
    }

    public static i40 c(q63 q63Var) {
        q63Var.getClass();
        try {
            return b(q63Var);
        } catch (Exception e) {
            String strI = xs1.i(q63Var, "Error getting archive info for ");
            vr6.e$default(vr6.INSTANCE, "Packer", strI, null, 4, null);
            Log.e("Packer", strI, e);
            return null;
        }
    }

    public static final boolean eh(String str, String str2) {
        str2.getClass();
        List listX0 = nq7.x0(str2, new String[]{","}, 6);
        ArrayList<String> arrayList = new ArrayList(hl1.G0(listX0, 10));
        Iterator it = listX0.iterator();
        while (it.hasNext()) {
            arrayList.add(nq7.H0((String) it.next()).toString());
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        for (String str3 : arrayList) {
            if (str != null && nq7.Z(str, str3, true)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean vz(String str, String str2, String str3, String str4) throws IOException {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        int i = Integer.parseInt(str4);
        ZipFile zipFile = new ZipFile(str);
        try {
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            enumerationEntries.getClass();
            le3 le3Var = new le3(new me3(new ws1(new j77(new gl1(enumerationEntries))), true, new rf(3, str2, str3)));
            if (!le3Var.hasNext()) {
                throw new NoSuchElementException();
            }
            long compressedSize = ((ZipEntry) le3Var.next()).getCompressedSize();
            while (le3Var.hasNext()) {
                long compressedSize2 = ((ZipEntry) le3Var.next()).getCompressedSize();
                if (compressedSize < compressedSize2) {
                    compressedSize = compressedSize2;
                }
            }
            boolean z = compressedSize <= ((long) i);
            zipFile.close();
            return z;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(zipFile, th);
                throw th2;
            }
        }
    }
}
