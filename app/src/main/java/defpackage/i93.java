package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class i93 implements ia1 {
    public final File a;
    public final a87 b;
    public final AtomicBoolean c;

    public i93(File file, a87 a87Var) {
        a87Var.getClass();
        this.a = file;
        this.b = a87Var;
        this.c = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11, types: [i93] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [i93, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [i93] */
    public static Object a(i93 i93Var, kv1 kv1Var) {
        h93 h93Var;
        Throwable th;
        Closeable closeable;
        FileInputStream fileInputStream;
        Throwable th2;
        if (kv1Var instanceof h93) {
            h93Var = (h93) kv1Var;
            int i = h93Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                h93Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                h93Var = new h93(i93Var, kv1Var);
            }
        } else {
            h93Var = new h93(i93Var, kv1Var);
        }
        Object obj = h93Var.c;
        ?? r1 = h93Var.e;
        yx1 yx1Var = yx1.a;
        try {
            if (r1 != 0) {
                if (r1 == 1) {
                    fileInputStream = h93Var.b;
                    r1 = (i93) h93Var.a;
                    try {
                        lg7.H(obj);
                        rs9.c(fileInputStream, null);
                        return obj;
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            throw th2;
                        } catch (Throwable th4) {
                            rs9.c(fileInputStream, th2);
                            throw th4;
                        }
                    }
                }
                if (r1 != 2) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                closeable = (Closeable) h93Var.a;
                try {
                    lg7.H(obj);
                    rs9.c(closeable, null);
                    return obj;
                } catch (Throwable th5) {
                    th = th5;
                    try {
                        throw th;
                    } catch (Throwable th6) {
                        rs9.c(closeable, th);
                        throw th6;
                    }
                }
            }
            lg7.H(obj);
            if (i93Var.c.get()) {
                l0.e("This scope has already been closed.");
                return null;
            }
            try {
                FileInputStream fileInputStream2 = new FileInputStream(i93Var.a);
                try {
                    a87 a87Var = i93Var.b;
                    h93Var.a = i93Var;
                    h93Var.b = fileInputStream2;
                    h93Var.e = 1;
                    Object objL = a87Var.l(fileInputStream2);
                    if (objL != yx1Var) {
                        fileInputStream = fileInputStream2;
                        obj = objL;
                        rs9.c(fileInputStream, null);
                        return obj;
                    }
                } catch (Throwable th7) {
                    r1 = i93Var;
                    fileInputStream = fileInputStream2;
                    th2 = th7;
                    throw th2;
                }
            } catch (FileNotFoundException unused) {
                File file = i93Var.a;
                a87 a87Var2 = i93Var.b;
                if (!file.exists()) {
                    return a87Var2.d();
                }
                FileInputStream fileInputStream3 = new FileInputStream(i93Var.a);
                try {
                    h93Var.a = fileInputStream3;
                    h93Var.b = null;
                    h93Var.e = 2;
                    Object objL2 = a87Var2.l(fileInputStream3);
                    if (objL2 != yx1Var) {
                        obj = objL2;
                        closeable = fileInputStream3;
                        rs9.c(closeable, null);
                        return obj;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    closeable = fileInputStream3;
                    throw th;
                }
            }
            return yx1Var;
        } catch (FileNotFoundException unused2) {
            i93Var = r1;
        }
    }

    @Override // defpackage.ia1
    public final void close() {
        this.c.set(true);
    }
}
