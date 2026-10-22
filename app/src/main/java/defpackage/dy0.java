package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dy0 implements Iterator {
    public final /* synthetic */ int a = 2;
    public int b = 0;
    public final int c;
    public final /* synthetic */ Object d;

    public dy0(hg9 hg9Var) {
        this.d = hg9Var;
        this.c = hg9Var.e();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.a) {
            case 0:
                return this.b < this.c;
            case 1:
                return this.b < this.c;
            default:
                return this.b < this.c;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.a;
        Object obj = this.d;
        int i2 = this.c;
        switch (i) {
            case 0:
                int i3 = this.b;
                if (i3 < i2) {
                    this.b = i3 + 1;
                    return Byte.valueOf(((gy0) obj).i(i3));
                }
                m0.d();
                return null;
            case 1:
                int i4 = this.b;
                if (i4 < i2) {
                    this.b = i4 + 1;
                    return Byte.valueOf(((hg9) obj).d(i4));
                }
                m0.d();
                return null;
            default:
                int i5 = this.b;
                if (i5 < i2) {
                    this.b = i5 + 1;
                    return Byte.valueOf(((dh9) obj).d(i5));
                }
                m0.d();
                return null;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public dy0(dh9 dh9Var) {
        this.d = dh9Var;
        this.c = dh9Var.f();
    }

    public dy0(gy0 gy0Var) {
        this.d = gy0Var;
        this.c = gy0Var.size();
    }
}
