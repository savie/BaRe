package defpackage;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mg extends qo0 {
    public final ex6 e;
    public final ix6 f;
    public lg g;
    public boolean h;
    public ig i;
    public zf j;

    public mg() {
        ex6 ex6Var = new ex6();
        ex6Var.k(new fg());
        this.e = ex6Var;
        this.f = new ix6();
        this.i = new fg();
    }

    public static void k(Uri uri, q63 q63Var, String str) throws IOException {
        SwiftApp.Companion companion = SwiftApp.d;
        InputStream inputStreamOpenInputStream = SwiftApp.Companion.c().getContentResolver().openInputStream(uri);
        if (inputStreamOpenInputStream == null) {
            g84.f(str);
            return;
        }
        try {
            boolean z = q63.d;
            OutputStream outputStreamF = q63Var.F(true);
            try {
                byte[] bArr = new byte[262144];
                long j = 0;
                while (true) {
                    int i = inputStreamOpenInputStream.read(bArr);
                    if (i < 0) {
                        outputStreamF.close();
                        inputStreamOpenInputStream.close();
                        return;
                    } else {
                        j += (long) i;
                        if (j > 4294967296L) {
                            throw new IllegalArgumentException("APK import file is too large");
                        }
                        outputStreamF.write(bArr, 0, i);
                    }
                    try {
                        throw th;
                    } catch (Throwable th) {
                        rs9.c(inputStreamOpenInputStream, th);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    rs9.c(outputStreamF, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            throw th4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00d1 A[Catch: all -> 0x0101, TryCatch #0 {all -> 0x0101, blocks: (B:9:0x003f, B:10:0x005d, B:12:0x0064, B:14:0x006f, B:16:0x0075, B:19:0x00a0, B:22:0x00ab, B:24:0x00b1, B:27:0x00cb, B:29:0x00d1, B:31:0x00e6, B:33:0x00ec, B:36:0x00f9, B:37:0x0100, B:40:0x0105, B:42:0x010b, B:45:0x0118, B:46:0x011f, B:47:0x0120, B:48:0x0127, B:49:0x0128, B:50:0x0142, B:25:0x00c5, B:51:0x0143, B:52:0x0161, B:53:0x0162, B:54:0x0169), top: B:71:0x003f }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00e6 A[Catch: all -> 0x0101, TryCatch #0 {all -> 0x0101, blocks: (B:9:0x003f, B:10:0x005d, B:12:0x0064, B:14:0x006f, B:16:0x0075, B:19:0x00a0, B:22:0x00ab, B:24:0x00b1, B:27:0x00cb, B:29:0x00d1, B:31:0x00e6, B:33:0x00ec, B:36:0x00f9, B:37:0x0100, B:40:0x0105, B:42:0x010b, B:45:0x0118, B:46:0x011f, B:47:0x0120, B:48:0x0127, B:49:0x0128, B:50:0x0142, B:25:0x00c5, B:51:0x0143, B:52:0x0161, B:53:0x0162, B:54:0x0169), top: B:71:0x003f }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:44:0x0116  */
    /* JADX WARN: Code duplicated, block: B:77:0x0128 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0120 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x0105 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x00f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x005d A[SYNTHETIC] */
    public static zh n(Uri uri, q63 q63Var) throws IOException {
        String str;
        q63 q63VarJ;
        q63 q63VarJ2 = q63Var.J("import.apks");
        k(uri, q63VarJ2, "Unable to open APKS file");
        q63 q63VarJ3 = q63Var.J("extracted");
        if (!q63.E(q63VarJ3)) {
            l0.e("Unable to create APKS import directory");
            return null;
        }
        if (!q63VarJ2.j()) {
            f6.g(xs1.i(q63VarJ2, "APKS file does not exist: "));
            return null;
        }
        if (!q63.E(q63VarJ3)) {
            g84.f(xs1.i(q63VarJ3, "Unable to create APKS extraction directory: "));
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ZipFile zipFile = new ZipFile(q63VarJ2.v());
        try {
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            enumerationEntries.getClass();
            long jL = 0;
            int i = 0;
            for (ZipEntry zipEntry : new ws1(new j77(new gl1(enumerationEntries)))) {
                i++;
                if (i > 512) {
                    throw new IllegalArgumentException("APKS archive has too many entries");
                }
                if (zipEntry.isDirectory()) {
                    throw new IllegalArgumentException(("Directories are not supported in APKS archives: " + zipEntry.getName()).toString());
                }
                String name = zipEntry.getName();
                name.getClass();
                tu0.C(name);
                String name2 = zipEntry.getName();
                name2.getClass();
                Locale locale = Locale.US;
                locale.getClass();
                String lowerCase = name2.toLowerCase(locale);
                lowerCase.getClass();
                int size = arrayList.size();
                if (!lowerCase.equals("base.apk") && !lowerCase.equals("base-master.apk")) {
                    if (uq7.O(lowerCase, ".apk", false)) {
                        str = "split_" + size + ".apk";
                    } else {
                        tu0.n(lowerCase);
                    }
                    if (linkedHashSet.add(str)) {
                        throw new IllegalArgumentException(("Duplicate APKS archive entry: " + str).toString());
                    }
                    q63VarJ = q63VarJ3.J(str);
                    q63VarJ.h();
                    jL += tu0.l(zipFile, zipEntry, q63VarJ);
                    if (jL <= 4294967296L) {
                        throw new IllegalArgumentException("APKS archive is too large");
                    }
                    if (uq7.O(lowerCase, ".apk", false)) {
                        arrayList.add(q63VarJ);
                        if (arrayList.size() <= 256) {
                            throw new IllegalArgumentException("APKS archive has too many APK files");
                        }
                    } else if (tu0.n(lowerCase)) {
                        arrayList2.add(q63VarJ);
                        if (arrayList2.size() <= 8) {
                            throw new IllegalArgumentException("APKS archive has too many metadata files");
                        }
                    } else {
                        continue;
                    }
                }
                str = lowerCase;
                if (linkedHashSet.add(str)) {
                    throw new IllegalArgumentException(("Duplicate APKS archive entry: " + str).toString());
                }
                q63VarJ = q63VarJ3.J(str);
                q63VarJ.h();
                jL += tu0.l(zipFile, zipEntry, q63VarJ);
                if (jL <= 4294967296L) {
                    throw new IllegalArgumentException("APKS archive is too large");
                }
                if (uq7.O(lowerCase, ".apk", false)) {
                    arrayList.add(q63VarJ);
                    if (arrayList.size() <= 256) {
                        throw new IllegalArgumentException("APKS archive has too many APK files");
                    }
                } else if (tu0.n(lowerCase)) {
                    arrayList2.add(q63VarJ);
                    if (arrayList2.size() <= 8) {
                        throw new IllegalArgumentException("APKS archive has too many metadata files");
                    }
                } else {
                    continue;
                }
            }
            zipFile.close();
            if (!arrayList.isEmpty()) {
                return new zh(q63VarJ3, el1.n1(arrayList, new yg(new xg(0), 0)), el1.n1(arrayList2, new y09(1)));
            }
            c6.f("APKS archive does not contain APK files");
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(zipFile, th);
                throw th2;
            }
        }
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        zf zfVar = this.j;
        if (zfVar != null) {
            zfVar.a.h();
        }
        this.j = null;
        super.b();
    }

    public final void j(zf zfVar) {
        zfVar.a.h();
        zf zfVar2 = this.j;
        if (zfVar2 == null || zfVar2.a.v().equals(zfVar.a.v())) {
            zfVar2 = null;
        }
        this.j = zfVar2;
    }

    public final bg l() {
        ig igVar = this.i;
        if (igVar instanceof fg) {
            return ((fg) igVar).b;
        }
        if (igVar instanceof gg) {
            return ((gg) igVar).a;
        }
        if (igVar instanceof eg) {
            return ((eg) igVar).a;
        }
        if (igVar instanceof hg) {
            return ((hg) igVar).a;
        }
        q.j();
        return null;
    }

    public final void m(zf zfVar) {
        zfVar.getClass();
        this.j = null;
        o(new fg(R.string.apk_import_status_installing_with_root_or_shizuku, l()));
        zn4 zn4Var = zn4.a;
        zn4.d(new kg(0, this, zfVar));
    }

    public final void o(ig igVar) {
        this.i = igVar;
        this.e.k(igVar);
    }
}
