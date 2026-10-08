package defpackage;

import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class am2 implements Iterator {
    public final r73 a = n83.a(p73.class);
    public m83 b;
    public byte[] c;
    public i73 d;
    public final /* synthetic */ bm2 e;

    public am2(bm2 bm2Var) {
        i73 i73Var;
        this.e = bm2Var;
        a(true);
        while (true) {
            m83 m83Var = this.b;
            if (m83Var == null) {
                i73Var = null;
                break;
            } else {
                if (m83Var.hasNext()) {
                    i73Var = (i73) this.b.next();
                    break;
                }
                a(false);
            }
        }
        this.d = i73Var;
    }

    public final void a(boolean z) {
        byte[] bArr;
        bm2 bm2Var = this.e;
        wm2 wm2Var = bm2Var.b;
        EnumSet enumSetOf = z ? EnumSet.of(xt6.SMB2_RESTART_SCANS) : EnumSet.noneOf(xt6.class);
        r73 r73Var = this.a;
        int iA = r73Var.a();
        nr6 nr6Var = bm2Var.c;
        zt6 zt6Var = (zt6) vc7.a(wm2Var.b(new yt6(wm2Var.e, wm2Var.t, wm2Var.c, nr6Var, iA, enumSetOf, wm2Var.q)), "Query directory", nr6Var, vc7.y, wm2Var.r);
        long j = ((ut6) zt6Var.a).j;
        byte[] bArr2 = zt6Var.e;
        if (j == 2147483654L || j == 3221225487L || ((bArr = this.c) != null && Arrays.equals(bArr, bArr2))) {
            this.b = null;
            this.c = null;
        } else {
            this.c = bArr2;
            HashMap map = n83.a;
            this.b = new m83(bArr2, r73Var);
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        i73 i73Var = null;
        if (!hasNext()) {
            m0.d();
            return null;
        }
        i73 i73Var2 = this.d;
        while (true) {
            m83 m83Var = this.b;
            if (m83Var == null) {
                break;
            }
            if (m83Var.hasNext()) {
                i73Var = (i73) this.b.next();
                break;
            }
            a(false);
        }
        this.d = i73Var;
        return i73Var2;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
