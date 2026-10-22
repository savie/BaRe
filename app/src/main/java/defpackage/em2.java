package defpackage;

import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class em2 {
    public final q63 a;
    public final q63 b;
    public long c;
    public long d;
    public int e;

    public em2(q63 q63Var, q63 q63Var2) {
        this.a = q63Var;
        this.b = q63Var2;
    }

    public final void a(q63 q63Var, q63 q63Var2, rf rfVar) {
        if (q63Var.x()) {
            if (!q63Var2.j()) {
                q63.E(q63Var2);
            }
            String[] list = q63Var.n().getFile().list();
            if (list != null) {
                for (String str : list) {
                    a(new q63(1, q63Var, str), new q63(2, q63Var2, str), rfVar);
                }
                return;
            }
            return;
        }
        long j = this.c;
        try {
            InputStream inputStreamW = q63Var.w(true);
            try {
                OutputStream outputStreamF = q63Var2.F(true);
                try {
                    byte[] bArr = new byte[262144];
                    long j2 = 0;
                    while (true) {
                        int i = inputStreamW.read(bArr);
                        if (i <= 0) {
                            outputStreamF.close();
                            inputStreamW.close();
                            return;
                        } else {
                            j2 += (long) i;
                            outputStreamF.write(bArr, 0, i);
                            long j3 = j + j2;
                            this.c = j3;
                            rfVar.invoke(Long.valueOf(j3));
                        }
                        try {
                            throw th;
                        } catch (Throwable th) {
                            rs9.c(inputStreamW, th);
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
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "DirectoryCopier", "copy: ".concat(io4.b(e)), null, 4, null);
            Log.e("DirectoryCopier", "copy", e);
        }
    }

    public final void b(jj2 jj2Var) {
        this.e = 0;
        this.c = 0L;
        p93 p93Var = p93.a;
        q63 q63Var = this.a;
        this.d = p93Var.f(q63Var.v());
        vr6 vr6Var = vr6.INSTANCE;
        StringBuilder sb = new StringBuilder("start: Copying ");
        sb.append(q63Var);
        sb.append(" to ");
        q63 q63Var2 = this.b;
        sb.append(q63Var2);
        vr6.i$default(vr6Var, "DirectoryCopier", sb.toString(), null, 4, null);
        vr6.i$default(vr6Var, "DirectoryCopier", "start: Total size = ".concat(p93.c(Long.valueOf(this.d))), null, 4, null);
        a(q63Var, q63Var2, new rf(2, this, jj2Var));
    }
}
