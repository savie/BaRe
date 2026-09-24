package org.swiftapps.swiftbackup.apkshare;

import defpackage.ai;
import defpackage.c6;
import defpackage.cy0;
import defpackage.f51;
import defpackage.f6;
import defpackage.gv7;
import defpackage.hl1;
import defpackage.nq7;
import defpackage.q63;
import defpackage.rs9;
import defpackage.uh;
import defpackage.vh;
import defpackage.w14;
import defpackage.x50;
import defpackage.xs1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static String a(q63 q63Var) throws NoSuchAlgorithmException, IOException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        boolean z = q63.d;
        InputStream inputStreamW = q63Var.w(true);
        try {
            byte[] bArr = new byte[262144];
            while (true) {
                int i = inputStreamW.read(bArr);
                int i2 = 0;
                if (i <= 0) {
                    inputStreamW.close();
                    byte[] bArrDigest = messageDigest.digest();
                    bArrDigest.getClass();
                    return x50.t0(bArrDigest, "", new ai(i2), 30);
                }
                messageDigest.update(bArr, 0, i);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(inputStreamW, th);
                throw th2;
            }
        }
    }

    public static void b(String str) {
        if (nq7.j0(str)) {
            c6.f("Blank archive entry name");
            return;
        }
        if (nq7.a0(str, '/')) {
            f6.g("Archive entry name must not contain '/': ".concat(str));
        } else if (nq7.a0(str, '\\')) {
            f6.g("Archive entry name must not contain '\\': ".concat(str));
        } else if (nq7.Z(str, "..", false)) {
            f6.g("Archive entry name must not contain '..': ".concat(str));
        }
    }

    public static void c(q63 q63Var, ApkSharePackageMetadata apkSharePackageMetadata, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            c6.f("APKS archive needs at least one APK file");
            return;
        }
        boolean z = q63.d;
        ZipOutputStream zipOutputStream = new ZipOutputStream(q63Var.F(true));
        try {
            ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                vh vhVar = (vh) it.next();
                String str = vhVar.b;
                String str2 = vhVar.b;
                q63 q63Var2 = vhVar.a;
                b(str);
                d(zipOutputStream, str2, q63Var2);
                String lowerCase = vhVar.c.name().toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                arrayList2.add(new ApkSharePackageMetadata.FileMetadata(str2, lowerCase, q63Var2.A(), a(q63Var2)));
            }
            ApkSharePackageMetadata apkSharePackageMetadataCopy$default = ApkSharePackageMetadata.copy$default(apkSharePackageMetadata, null, null, null, null, null, 0L, null, arrayList2, 127, null);
            gv7 gv7Var = w14.a;
            com.google.gson.a aVarD = w14.d();
            String packageName = apkSharePackageMetadataCopy$default.getPackageName();
            String appName = apkSharePackageMetadataCopy$default.getAppName();
            String versionName = apkSharePackageMetadataCopy$default.getVersionName();
            Long versionCode = apkSharePackageMetadataCopy$default.getVersionCode();
            boolean z2 = false;
            if (!arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (((vh) it2.next()).c == uh.SPLIT) {
                        z2 = true;
                        break;
                    }
                }
            }
            String strI = aVarD.i(new SaiApksMetadata(packageName, appName, versionName, versionCode, z2));
            b("meta.sai_v2.json");
            zipOutputStream.putNextEntry(new ZipEntry("meta.sai_v2.json"));
            Charset charset = f51.a;
            byte[] bytes = strI.getBytes(charset);
            bytes.getClass();
            zipOutputStream.write(bytes);
            zipOutputStream.closeEntry();
            gv7 gv7Var2 = w14.a;
            String strI2 = w14.d().i(apkSharePackageMetadataCopy$default);
            b("meta.swiftbackup_v1.json");
            zipOutputStream.putNextEntry(new ZipEntry("meta.swiftbackup_v1.json"));
            byte[] bytes2 = strI2.getBytes(charset);
            bytes2.getClass();
            zipOutputStream.write(bytes2);
            zipOutputStream.closeEntry();
            zipOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(zipOutputStream, th);
                throw th2;
            }
        }
    }

    public static void d(ZipOutputStream zipOutputStream, String str, q63 q63Var) throws IOException {
        b(str);
        if (!q63Var.j()) {
            f6.g(xs1.i(q63Var, "Missing APK file: "));
            return;
        }
        zipOutputStream.putNextEntry(new ZipEntry(str));
        InputStream inputStreamW = q63Var.w(true);
        try {
            cy0.j(inputStreamW, zipOutputStream, 262144);
            inputStreamW.close();
            zipOutputStream.closeEntry();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(inputStreamW, th);
                throw th2;
            }
        }
    }
}
