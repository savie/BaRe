package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a80 implements Iterator {
    public int a = 0;
    public final /* synthetic */ b80 b;

    public a80(b80 b80Var) {
        this.b = b80Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a < this.b.a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        b80 b80Var = this.b;
        String[] strArr = b80Var.c;
        int i = this.a;
        String str = strArr[i];
        String str2 = b80Var.b[i];
        if (str == null) {
            str = "";
        }
        v70 v70Var = new v70();
        if (str2 == null) {
            c6.f("Object must not be null");
            return null;
        }
        v70Var.a = str2.trim();
        if (str2.length() == 0) {
            c6.f("String must not be empty");
            return null;
        }
        v70Var.b = str;
        v70Var.c = b80Var;
        this.a++;
        return v70Var;
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.a;
        int i2 = i - 1;
        this.a = i2;
        b80 b80Var = this.b;
        int i3 = b80Var.a;
        if (i2 >= i3) {
            c6.f("Must be false");
            return;
        }
        int i4 = (i3 - i2) - 1;
        if (i4 > 0) {
            String[] strArr = b80Var.b;
            System.arraycopy(strArr, i, strArr, i2, i4);
            String[] strArr2 = b80Var.c;
            System.arraycopy(strArr2, i, strArr2, i2, i4);
        }
        int i5 = b80Var.a - 1;
        b80Var.a = i5;
        b80Var.b[i5] = null;
        b80Var.c[i5] = null;
    }
}
