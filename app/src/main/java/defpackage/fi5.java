package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fi5 implements sd4 {
    public final ox1 a;
    public final File b;
    public final m41 c;
    public final String d;
    public final String e;
    public final String f;
    public final mj5 g;
    public final gv7 h;
    public final gv7 i;

    public fi5(ox1 ox1Var, File file) {
        ox1Var.getClass();
        file.getClass();
        this.a = ox1Var;
        this.b = file;
        Object obj = si5.b;
        this.c = new m41(new j41(file, (jv1) null, 2), lv2.a, -2, pw0.a);
        this.d = ".lock";
        this.e = ".version";
        this.f = "fcntl failed: EAGAIN";
        this.g = new mj5();
        this.h = new gv7(new di5(this, 0));
        this.i = new gv7(new v30(this, 3));
    }

    public static final void f(fi5 fi5Var, File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                c6.n(file, "Unable to create parent directories of ");
                return;
            }
        }
        if (file.exists()) {
            return;
        }
        file.createNewFile();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b9 A[Catch: all -> 0x00bd, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00bd, blocks: (B:41:0x00b9, B:55:0x00d7, B:56:0x00da), top: B:77:0x0022, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d7 A[Catch: all -> 0x00bd, TRY_ENTER, TryCatch #7 {all -> 0x00bd, blocks: (B:41:0x00b9, B:55:0x00d7, B:56:0x00da), top: B:77:0x0022, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [kj5] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [kj5] */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [mt3] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v24, types: [kj5] */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.io.Closeable, java.lang.Object, mt3] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    @Override // defpackage.sd4
    public final Object a(mt3 mt3Var, kv1 kv1Var) throws Throwable {
        ci5 ci5Var;
        mj5 mj5Var;
        ?? r9;
        FileOutputStream fileOutputStream;
        Throwable th;
        ?? r10;
        ?? r8;
        ?? r1;
        Closeable closeable;
        FileLock fileLock;
        FileLock fileLock2;
        Object objInvoke;
        ?? r0;
        ?? r11;
        if (kv1Var instanceof ci5) {
            ci5Var = (ci5) kv1Var;
            int i = ci5Var.f;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                ci5Var.f = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                ci5Var = new ci5(this, kv1Var);
            }
        } else {
            ci5Var = new ci5(this, kv1Var);
        }
        ?? r12 = ci5Var.d;
        int i2 = ci5Var.f;
        yx1 yx1Var = yx1.a;
        try {
            try {
                try {
                    if (i2 == 0) {
                        lg7.H(r12);
                        ci5Var.a = this;
                        ci5Var.b = mt3Var;
                        mj5Var = this.g;
                        ci5Var.c = mj5Var;
                        ci5Var.f = 1;
                        if (mj5Var.a(ci5Var) != yx1Var) {
                        }
                        r9 = mt3Var;
                        r12 = mj5Var;
                        return yx1Var;
                    }
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (i2 != 3) {
                                l0.e("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            fileLock = (FileLock) ci5Var.c;
                            closeable = (Closeable) ci5Var.b;
                            kj5 kj5Var = (kj5) ci5Var.a;
                            try {
                                lg7.H(r12);
                                r0 = kj5Var;
                                r11 = r12;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                try {
                                    rs9.c(closeable, null);
                                    r0.b(null);
                                    return r11;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r12 = r0;
                                    r12.b(null);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        }
                        closeable = (Closeable) ci5Var.c;
                        r8 = (kj5) ci5Var.b;
                        mt3 mt3Var2 = (mt3) ci5Var.a;
                        try {
                            lg7.H(r12);
                            r1 = mt3Var2;
                            r8 = r8;
                            r10 = r12;
                            fileLock2 = (FileLock) r10;
                            try {
                                ci5Var.a = r8;
                                ci5Var.b = closeable;
                                ci5Var.c = fileLock2;
                                ci5Var.f = 3;
                                objInvoke = r1.invoke(ci5Var);
                                if (objInvoke != yx1Var) {
                                    r0 = r8;
                                    fileLock = fileLock2;
                                    r11 = objInvoke;
                                    if (fileLock != null) {
                                        fileLock.release();
                                    }
                                    rs9.c(closeable, null);
                                    r0.b(null);
                                    return r11;
                                }
                                r9 = mt3Var;
                                r12 = mj5Var;
                                return yx1Var;
                            } catch (Throwable th4) {
                                fileLock = fileLock2;
                                th = th4;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            fileLock = null;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            throw th;
                        }
                    }
                    kj5 kj5Var2 = (kj5) ci5Var.c;
                    mt3 mt3Var3 = (mt3) ci5Var.b;
                    fi5 fi5Var = (fi5) ci5Var.a;
                    lg7.H(r12);
                    r12 = kj5Var2;
                    this = fi5Var;
                    r9 = mt3Var3;
                    ci5Var.a = r9;
                    ci5Var.b = r12;
                    ci5Var.c = fileOutputStream;
                    ci5Var.f = 2;
                    Object objV = sl4.v(fileOutputStream, ci5Var);
                    if (objV != yx1Var) {
                        ?? r7 = r12;
                        r10 = objV;
                        r8 = r7;
                        r1 = r9;
                        closeable = fileOutputStream;
                        fileLock2 = (FileLock) r10;
                        ci5Var.a = r8;
                        ci5Var.b = closeable;
                        ci5Var.c = fileLock2;
                        ci5Var.f = 3;
                        objInvoke = r1.invoke(ci5Var);
                        if (objInvoke != yx1Var) {
                            r0 = r8;
                            fileLock = fileLock2;
                            r11 = objInvoke;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            rs9.c(closeable, null);
                            r0.b(null);
                            return r11;
                        }
                    }
                    r9 = mt3Var;
                    r12 = mj5Var;
                    return yx1Var;
                } catch (Throwable th6) {
                    th = th6;
                    fileLock = null;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    throw th;
                }
                r9 = mt3Var;
                r12 = mj5Var;
                fileOutputStream = new FileOutputStream((File) this.h.getValue());
            } catch (Throwable th7) {
                th = th7;
                r12.b(null);
                throw th;
            }
        } catch (Throwable th8) {
            r12 = ci5Var;
            try {
                throw th8;
            } catch (Throwable th9) {
                rs9.c(mt3Var, th8);
                throw th9;
            }
        }
    }

    @Override // defpackage.sd4
    public final Object b(kv1 kv1Var) {
        gv7 gv7Var = this.i;
        if (gv7Var.a()) {
            return new Integer(xc7.b.nativeGetCounterValue(((xc7) gv7Var.getValue()).a));
        }
        return l73.G(this.a, new vs(this, null, 2), kv1Var);
    }

    @Override // defpackage.sd4
    public final Object c(hc2 hc2Var) {
        gv7 gv7Var = this.i;
        if (gv7Var.a()) {
            return new Integer(xc7.b.nativeIncrementAndGetCounterValue(((xc7) gv7Var.getValue()).a));
        }
        return l73.G(this.a, new lj(this, null, 3), hc2Var);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code duplicated, block: B:61:0x00dc A[Catch: all -> 0x00e0, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00e0, blocks: (B:61:0x00dc, B:75:0x00f7, B:76:0x00fa), top: B:88:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f7 A[Catch: all -> 0x00e0, TRY_ENTER, TryCatch #1 {all -> 0x00e0, blocks: (B:61:0x00dc, B:75:0x00f7, B:76:0x00fa), top: B:88:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [qt3] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v10, types: [kj5] */
    /* JADX WARN: Type inference failed for: r2v13, types: [mj5] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v2, types: [kj5] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ei5, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [kj5] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int, java.io.Closeable] */
    @Override // defpackage.sd4
    public final Object d(qt3 qt3Var, kv1 kv1Var) throws Throwable {
        ?? ei5Var;
        ?? r1;
        ?? r2;
        String message;
        FileLock fileLockTryLock;
        FileLock fileLock;
        FileInputStream fileInputStream;
        ?? r3;
        ?? r4;
        if (kv1Var instanceof ei5) {
            ei5 ei5Var2 = (ei5) kv1Var;
            int i = ei5Var2.k;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                ei5Var2.k = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                ei5Var = ei5Var2;
            } else {
                ei5Var = new ei5(this, kv1Var);
            }
        } else {
            ei5Var = new ei5(this, kv1Var);
        }
        Object objInvoke = ei5Var.e;
        ?? r5 = ei5Var.k;
        try {
            if (r5 == 0) {
                lg7.H(objInvoke);
                mj5 mj5Var = this.g;
                boolean zH = mj5Var.h();
                yx1 yx1Var = yx1.a;
                try {
                    if (zH) {
                        FileInputStream fileInputStream2 = new FileInputStream((File) this.h.getValue());
                        try {
                            try {
                                fileLockTryLock = fileInputStream2.getChannel().tryLock(0L, Long.MAX_VALUE, true);
                            } catch (Throwable th) {
                                th = th;
                                fileLock = null;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                throw th;
                            }
                        } catch (IOException e) {
                            String message2 = e.getMessage();
                            if ((message2 == null || !uq7.V(message2, this.f, false)) && ((message = e.getMessage()) == null || !uq7.V(message, "Resource deadlock would occur", false))) {
                                throw e;
                            }
                            fileLockTryLock = null;
                        }
                        try {
                            Boolean boolValueOf = Boolean.valueOf(fileLockTryLock != null);
                            ei5Var.a = mj5Var;
                            ei5Var.b = fileInputStream2;
                            ei5Var.c = fileLockTryLock;
                            ei5Var.d = zH;
                            ei5Var.k = 2;
                            objInvoke = qt3Var.invoke(boolValueOf, ei5Var);
                            if (objInvoke != yx1Var) {
                                fileLock = fileLockTryLock;
                                ei5Var = mj5Var;
                                r1 = zH;
                                fileInputStream = fileInputStream2;
                                if (fileLock != null) {
                                    fileLock.release();
                                }
                                rs9.c(fileInputStream, null);
                                if (r1 != 0) {
                                    ei5Var.b(null);
                                }
                                return objInvoke;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileLock = fileLockTryLock;
                            if (fileLock != null) {
                                fileLock.release();
                            }
                            throw th;
                        }
                    } else {
                        Boolean bool = Boolean.FALSE;
                        ei5Var.a = mj5Var;
                        ei5Var.d = zH;
                        ei5Var.k = 1;
                        objInvoke = qt3Var.invoke(bool, ei5Var);
                        if (objInvoke != yx1Var) {
                            r3 = mj5Var;
                            r4 = zH;
                            if (r4 != 0) {
                                r3.b(null);
                            }
                            return objInvoke;
                        }
                    }
                    return yx1Var;
                } catch (Throwable th3) {
                    th = th3;
                    r2 = mj5Var;
                    r1 = zH;
                }
            } else if (r5 == 1) {
                r1 = ei5Var.d;
                r2 = ei5Var.a;
                try {
                    lg7.H(objInvoke);
                    r4 = r1;
                    r3 = r2;
                    if (r4 != 0) {
                        r3.b(null);
                    }
                    return objInvoke;
                } catch (Throwable th4) {
                    th = th4;
                }
            } else {
                if (r5 != 2) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                boolean z = ei5Var.d;
                fileLock = ei5Var.c;
                fileInputStream = ei5Var.b;
                mj5 mj5Var2 = ei5Var.a;
                try {
                    lg7.H(objInvoke);
                    r1 = z;
                    ei5Var = mj5Var2;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    try {
                        rs9.c(fileInputStream, null);
                        if (r1 != 0) {
                            ei5Var.b(null);
                        }
                        return objInvoke;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (fileLock != null) {
                        fileLock.release();
                    }
                    throw th;
                }
            }
        } catch (Throwable th7) {
            try {
                throw th7;
            } catch (Throwable th8) {
                try {
                    rs9.c(r5, th7);
                    throw th8;
                } catch (Throwable th9) {
                    th = th9;
                    r1 = this;
                }
            }
        }
        r2 = ei5Var;
        if (r1 != 0) {
            r2.b(null);
        }
        throw th;
    }

    @Override // defpackage.sd4
    public final ji3 e() {
        return this.c;
    }
}
