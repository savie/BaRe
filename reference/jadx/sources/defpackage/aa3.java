package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class aa3 implements ia1 {
    public final File a;
    public final a87 b;
    public final sd4 c;
    public final w93 d;
    public final AtomicBoolean e;
    public final mj5 f;

    public aa3(File file, a87 a87Var, sd4 sd4Var, w93 w93Var) {
        a87Var.getClass();
        sd4Var.getClass();
        this.a = file;
        this.b = a87Var;
        this.c = sd4Var;
        this.d = w93Var;
        this.e = new AtomicBoolean(false);
        this.f = new mj5();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x008c */
    /* JADX WARN: Code duplicated, block: B:31:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0075  */
    /* JADX WARN: Code duplicated, block: B:58:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.bo7 r8, defpackage.kv1 r9) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r9 instanceof defpackage.y93
            if (r0 == 0) goto L13
            r0 = r9
            y93 r0 = (defpackage.y93) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            y93 r0 = new y93
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.d
            int r1 = r0.f
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L38
            if (r1 != r2) goto L32
            boolean r7 = r0.c
            i93 r8 = r0.b
            aa3 r0 = r0.a
            defpackage.lg7.H(r9)     // Catch: java.lang.Throwable -> L2c
            goto L6b
        L2c:
            r9 = move-exception
            r6 = r9
            r9 = r7
            r7 = r0
            r0 = r6
            goto L83
        L32:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r7)
            return r3
        L38:
            defpackage.lg7.H(r9)
            java.util.concurrent.atomic.AtomicBoolean r9 = r7.e
            boolean r9 = r9.get()
            if (r9 != 0) goto L95
            mj5 r9 = r7.f
            boolean r9 = r9.h()
            i93 r1 = new i93     // Catch: java.lang.Throwable -> L8c
            java.io.File r4 = r7.a     // Catch: java.lang.Throwable -> L8c
            a87 r5 = r7.b     // Catch: java.lang.Throwable -> L8c
            r1.<init>(r4, r5)     // Catch: java.lang.Throwable -> L8c
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r9)     // Catch: java.lang.Throwable -> L80
            r0.a = r7     // Catch: java.lang.Throwable -> L80
            r0.b = r1     // Catch: java.lang.Throwable -> L80
            r0.c = r9     // Catch: java.lang.Throwable -> L80
            r0.f = r2     // Catch: java.lang.Throwable -> L80
            java.lang.Object r8 = r8.a(r1, r4, r0)     // Catch: java.lang.Throwable -> L80
            yx1 r0 = defpackage.yx1.a
            if (r8 != r0) goto L67
            return r0
        L67:
            r0 = r7
            r7 = r9
            r9 = r8
            r8 = r1
        L6b:
            r8.close()     // Catch: java.lang.Throwable -> L70
            r8 = r3
            goto L71
        L70:
            r8 = move-exception
        L71:
            if (r8 != 0) goto L7b
            if (r7 == 0) goto L7a
            mj5 r7 = r0.f
            r7.b(r3)
        L7a:
            return r9
        L7b:
            throw r8     // Catch: java.lang.Throwable -> L7c
        L7c:
            r8 = move-exception
            r9 = r7
            r7 = r0
            goto L8d
        L80:
            r8 = move-exception
            r0 = r8
            r8 = r1
        L83:
            r8.close()     // Catch: java.lang.Throwable -> L87
            goto L8b
        L87:
            r8 = move-exception
            defpackage.yc9.a(r0, r8)     // Catch: java.lang.Throwable -> L8c
        L8b:
            throw r0     // Catch: java.lang.Throwable -> L8c
        L8c:
            r8 = move-exception
        L8d:
            if (r9 == 0) goto L94
            mj5 r7 = r7.f
            r7.b(r3)
        L94:
            throw r8
        L95:
            java.lang.String r7 = "StorageConnection has already been disposed."
            defpackage.l0.e(r7)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aa3.a(bo7, kv1):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00cf A[Catch: all -> 0x010b, IOException -> 0x010d, TRY_ENTER, TryCatch #4 {all -> 0x010b, blocks: (B:43:0x00cf, B:45:0x00d5, B:46:0x00d7, B:48:0x00ea, B:49:0x010a, B:56:0x0116, B:65:0x0125, B:67:0x012b, B:68:0x012e, B:63:0x0123, B:62:0x0120, B:33:0x008d, B:34:0x00a9), top: B:81:0x008d }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00d5 A[Catch: all -> 0x010b, IOException -> 0x010d, TRY_LEAVE, TryCatch #4 {all -> 0x010b, blocks: (B:43:0x00cf, B:45:0x00d5, B:46:0x00d7, B:48:0x00ea, B:49:0x010a, B:56:0x0116, B:65:0x0125, B:67:0x012b, B:68:0x012e, B:63:0x0123, B:62:0x0120, B:33:0x008d, B:34:0x00a9), top: B:81:0x008d }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0116 A[Catch: all -> 0x010b, IOException -> 0x010d, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x010b, blocks: (B:43:0x00cf, B:45:0x00d5, B:46:0x00d7, B:48:0x00ea, B:49:0x010a, B:56:0x0116, B:65:0x0125, B:67:0x012b, B:68:0x012e, B:63:0x0123, B:62:0x0120, B:33:0x008d, B:34:0x00a9), top: B:81:0x008d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object b(hc2 hc2Var, kv1 kv1Var) {
        z93 z93Var;
        File file;
        kj5 kj5Var;
        qt3 qt3Var;
        ta3 ta3Var;
        Throwable th;
        ta3 ta3Var2;
        aa3 aa3Var;
        File file2;
        if (kv1Var instanceof z93) {
            z93Var = (z93) kv1Var;
            int i = z93Var.k;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                z93Var.k = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                z93Var = new z93(this, kv1Var);
            }
        } else {
            z93Var = new z93(this, kv1Var);
        }
        Object obj = z93Var.e;
        int i2 = z93Var.k;
        yx1 yx1Var = yx1.a;
        try {
            try {
                try {
                    try {
                        if (i2 == 0) {
                            lg7.H(obj);
                            if (this.e.get()) {
                                l0.e("StorageConnection has already been disposed.");
                                return null;
                            }
                            File file3 = this.a;
                            File parentFile = file3.getCanonicalFile().getParentFile();
                            if (parentFile != null) {
                                parentFile.mkdirs();
                                if (!parentFile.isDirectory()) {
                                    c6.n(file3, "Unable to create parent directories of ");
                                    return null;
                                }
                            }
                            z93Var.a = this;
                            z93Var.b = hc2Var;
                            mj5 mj5Var = this.f;
                            z93Var.c = mj5Var;
                            z93Var.k = 1;
                            if (mj5Var.a(z93Var) != yx1Var) {
                                kj5Var = mj5Var;
                                qt3Var = hc2Var;
                            }
                            return yx1Var;
                        }
                        if (i2 != 1) {
                            if (i2 != 2) {
                                l0.e("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ta3Var2 = z93Var.d;
                            File file4 = (File) z93Var.c;
                            kj5Var = (kj5) z93Var.b;
                            aa3Var = z93Var.a;
                            try {
                                lg7.H(obj);
                                file2 = file4;
                                try {
                                    ta3Var2.close();
                                    th = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                                if (th == null) {
                                    throw th;
                                }
                                if (file2.exists()) {
                                    try {
                                        Files.move(file2.toPath(), aa3Var.a.toPath(), StandardCopyOption.REPLACE_EXISTING);
                                    } catch (IOException unused) {
                                        throw new IOException("Unable to rename " + file2 + " to " + aa3Var.a + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                    }
                                }
                                kj5Var.b(null);
                                return be8.a;
                            } catch (Throwable th3) {
                                th = th3;
                                try {
                                    ta3Var2.close();
                                } catch (Throwable th4) {
                                    yc9.a(th, th4);
                                }
                                throw th;
                            }
                        }
                        kj5 kj5Var2 = (kj5) z93Var.c;
                        qt3 qt3Var2 = (qt3) z93Var.b;
                        aa3 aa3Var2 = z93Var.a;
                        lg7.H(obj);
                        kj5Var = kj5Var2;
                        this = aa3Var2;
                        qt3Var = qt3Var2;
                        z93Var.a = this;
                        z93Var.b = kj5Var;
                        z93Var.c = file;
                        z93Var.d = ta3Var;
                        z93Var.k = 2;
                        if (qt3Var.invoke(ta3Var, z93Var) != yx1Var) {
                            aa3Var = this;
                            file2 = file;
                            ta3Var2 = ta3Var;
                            ta3Var2.close();
                            th = null;
                            if (th == null) {
                                throw th;
                            }
                            if (file2.exists()) {
                                Files.move(file2.toPath(), aa3Var.a.toPath(), StandardCopyOption.REPLACE_EXISTING);
                            }
                            kj5Var.b(null);
                            return be8.a;
                        }
                        return yx1Var;
                    } catch (Throwable th5) {
                        th = th5;
                        ta3Var2 = ta3Var;
                        ta3Var2.close();
                        throw th;
                    }
                    a87 a87Var = this.b;
                    a87Var.getClass();
                    ta3Var = new ta3(file, a87Var);
                } catch (IOException e) {
                    e = e;
                    if (file.exists()) {
                        file.delete();
                    }
                    throw e;
                }
                file = new File(this.a.getAbsolutePath() + ".tmp");
            } catch (Throwable th6) {
                kj5Var.b(null);
                throw th6;
            }
        } catch (IOException e2) {
            e = e2;
            file = hc2Var;
        }
    }

    @Override // defpackage.ia1
    public final void close() {
        this.e.set(true);
        this.d.invoke();
    }
}
