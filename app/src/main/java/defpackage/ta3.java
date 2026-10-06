package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.io.FileOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ta3 extends i93 {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(Object obj, kv1 kv1Var) {
        sa3 sa3Var;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        if (kv1Var instanceof sa3) {
            sa3Var = (sa3) kv1Var;
            int i = sa3Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                sa3Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                sa3Var = new sa3(this, kv1Var);
            }
        } else {
            sa3Var = new sa3(this, kv1Var);
        }
        Object obj2 = sa3Var.c;
        int i2 = sa3Var.e;
        be8 be8Var = be8.a;
        if (i2 == 0) {
            lg7.H(obj2);
            if (this.c.get()) {
                l0.e("This scope has already been closed.");
                return null;
            }
            FileOutputStream fileOutputStream3 = new FileOutputStream(this.a);
            try {
                a87 a87Var = this.b;
                qd8 qd8Var = new qd8(fileOutputStream3);
                sa3Var.a = fileOutputStream3;
                sa3Var.b = fileOutputStream3;
                sa3Var.e = 1;
                a87Var.h(obj, qd8Var);
                yx1 yx1Var = yx1.a;
                if (be8Var == yx1Var) {
                    return yx1Var;
                }
                fileOutputStream2 = fileOutputStream3;
                fileOutputStream = fileOutputStream2;
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream3;
                throw th;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            fileOutputStream2 = sa3Var.b;
            fileOutputStream = sa3Var.a;
            try {
                lg7.H(obj2);
            } catch (Throwable th2) {
                th = th2;
                try {
                    throw th;
                } catch (Throwable th3) {
                    rs9.c(fileOutputStream, th);
                    throw th3;
                }
            }
        }
        fileOutputStream2.getFD().sync();
        rs9.c(fileOutputStream, null);
        return be8Var;
    }
}
