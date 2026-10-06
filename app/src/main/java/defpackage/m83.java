package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m83 implements Iterator {
    public final jw0 a;
    public final r73 b;
    public int c = 0;
    public i73 d = a();

    public m83(byte[] bArr, r73 r73Var) {
        this.a = new jw0(bArr, true, vw2.b);
        this.b = r73Var;
    }

    public final i73 a() {
        i73 i73Var = null;
        while (i73Var == null) {
            try {
                int i = this.c;
                if (i == -1) {
                    break;
                }
                jw0 jw0Var = this.a;
                jw0Var.c = i;
                i73Var = (i73) this.b.c(jw0Var);
                int i2 = (int) i73Var.b;
                if (i2 == 0) {
                    this.c = -1;
                } else {
                    this.c += i2;
                }
            } catch (iw0 e) {
                throw new gv6(e);
            }
        }
        return i73Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        i73 i73Var = this.d;
        if (i73Var != null) {
            this.d = a();
            return i73Var;
        }
        m0.d();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
