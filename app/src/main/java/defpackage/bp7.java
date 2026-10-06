package defpackage;

import java.io.InputStream;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bp7 implements ql6 {
    public final uo2 a;
    public final m35 b;

    public bp7(uo2 uo2Var, m35 m35Var) {
        this.a = uo2Var;
        this.b = m35Var;
    }

    @Override // defpackage.ql6
    public final boolean a(Object obj, ou5 ou5Var) {
        return true;
    }

    @Override // defpackage.ql6
    public final ll6 b(Object obj, int i, int i2, ou5 ou5Var) {
        boolean z;
        eg6 eg6Var;
        iz2 iz2Var;
        InputStream inputStream = (InputStream) obj;
        if (inputStream instanceof eg6) {
            eg6Var = (eg6) inputStream;
            z = false;
        } else {
            z = true;
            eg6Var = new eg6(inputStream, this.b);
        }
        ArrayDeque arrayDeque = iz2.c;
        synchronized (arrayDeque) {
            iz2Var = (iz2) arrayDeque.poll();
        }
        if (iz2Var == null) {
            iz2Var = new iz2();
        }
        iz2 iz2Var2 = iz2Var;
        iz2Var2.a = eg6Var;
        y65 y65Var = new y65(iz2Var2);
        ro roVar = new ro(15, eg6Var, iz2Var2);
        try {
            uo2 uo2Var = this.a;
            or0 or0VarA = uo2Var.a(new u00(y65Var, uo2Var.d, uo2Var.c), i, i2, ou5Var, roVar);
            iz2Var2.b = null;
            iz2Var2.a = null;
            synchronized (arrayDeque) {
                arrayDeque.offer(iz2Var2);
            }
            return or0VarA;
        } finally {
            iz2Var2.b = null;
            iz2Var2.a = null;
            ArrayDeque arrayDeque2 = iz2.c;
            synchronized (arrayDeque2) {
                arrayDeque2.offer(iz2Var2);
                if (z) {
                    eg6Var.b();
                }
            }
        }
    }
}
