package defpackage;

import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b80 implements Iterable, Cloneable {
    public static final String[] d = new String[0];
    public int a = 0;
    public String[] b;
    public String[] c;

    public b80() {
        String[] strArr = d;
        this.b = strArr;
        this.c = strArr;
    }

    public final int c(String str) {
        if (str == null) {
            c6.f("Object must not be null");
            return 0;
        }
        for (int i = 0; i < this.a; i++) {
            if (str.equals(this.b[i])) {
                return i;
            }
        }
        return -1;
    }

    public final Object clone() {
        try {
            b80 b80Var = (b80) super.clone();
            b80Var.a = this.a;
            String[] strArr = this.b;
            int i = this.a;
            String[] strArr2 = new String[i];
            System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i));
            this.b = strArr2;
            String[] strArr3 = this.c;
            int i2 = this.a;
            String[] strArr4 = new String[i2];
            System.arraycopy(strArr3, 0, strArr4, 0, Math.min(strArr3.length, i2));
            this.c = strArr4;
            return b80Var;
        } catch (CloneNotSupportedException e) {
            y5.k(e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b80.class != obj.getClass()) {
            return false;
        }
        b80 b80Var = (b80) obj;
        if (this.a == b80Var.a && Arrays.equals(this.b, b80Var.b)) {
            return Arrays.equals(this.c, b80Var.c);
        }
        return false;
    }

    public final int hashCode() {
        return (((this.a * 31) + Arrays.hashCode(this.b)) * 31) + Arrays.hashCode(this.c);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new a80(this);
    }
}
