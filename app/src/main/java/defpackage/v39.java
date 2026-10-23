package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class v39 implements Iterator {
    public String b;
    public final CharSequence c;
    public int a = 2;
    public int d = 0;
    public int e = Integer.MAX_VALUE;

    public v39(fu fuVar, CharSequence charSequence) {
        this.c = charSequence;
    }

    public abstract int a(int i);

    public abstract int b(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String string;
        int i = this.a;
        if (i == 4) {
            g84.c();
            return false;
        }
        int i2 = i - 1;
        if (i2 == 0) {
            return true;
        }
        if (i2 != 2) {
            this.a = 4;
            int i3 = this.d;
            while (true) {
                int i4 = this.d;
                if (i4 == -1) {
                    this.a = 3;
                    string = null;
                    break;
                }
                int iB = b(i4);
                CharSequence charSequence = this.c;
                if (iB == -1) {
                    iB = charSequence.length();
                    this.d = -1;
                } else {
                    this.d = a(iB);
                }
                int i5 = this.d;
                if (i5 != i3) {
                    if (i3 < iB) {
                        charSequence.charAt(i3);
                    }
                    if (iB > i3) {
                        charSequence.charAt(iB - 1);
                    }
                    int i6 = this.e;
                    if (i6 == 1) {
                        iB = charSequence.length();
                        this.d = -1;
                        if (iB > i3) {
                            charSequence.charAt(iB - 1);
                        }
                    } else {
                        this.e = i6 - 1;
                    }
                    string = charSequence.subSequence(i3, iB).toString();
                    break;
                }
                int i7 = i5 + 1;
                this.d = i7;
                if (i7 > charSequence.length()) {
                    this.d = -1;
                }
            }
            this.b = string;
            if (this.a != 3) {
                this.a = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            m0.d();
            return null;
        }
        this.a = 2;
        String str = this.b;
        this.b = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
