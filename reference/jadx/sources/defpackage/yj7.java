package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yj7 implements Cloneable {
    public /* synthetic */ int[] a;
    public /* synthetic */ Object[] b;
    public /* synthetic */ int c;

    public yj7() {
        int i;
        int i2 = 4;
        while (true) {
            i = 40;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (40 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 4;
        this.a = new int[i4];
        this.b = new Object[i4];
    }

    public final Object a(int i) {
        Object obj;
        int iE = g67.e(this.c, i, this.a);
        if (iE < 0 || (obj = this.b[iE]) == y13.f) {
            return null;
        }
        return obj;
    }

    public final void b(int i, Object obj) {
        int iE = g67.e(this.c, i, this.a);
        if (iE >= 0) {
            this.b[iE] = obj;
            return;
        }
        int i2 = ~iE;
        int i3 = this.c;
        if (i2 < i3) {
            Object[] objArr = this.b;
            if (objArr[i2] == y13.f) {
                this.a[i2] = i;
                objArr[i2] = obj;
                return;
            }
        }
        if (i3 >= this.a.length) {
            int i4 = (i3 + 1) * 4;
            for (int i5 = 4; i5 < 32; i5++) {
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
            }
            int i7 = i4 / 4;
            this.a = Arrays.copyOf(this.a, i7);
            this.b = Arrays.copyOf(this.b, i7);
        }
        int i8 = this.c;
        if (i8 - i2 != 0) {
            int[] iArr = this.a;
            int i9 = i2 + 1;
            x50.f0(i9, i2, i8, iArr, iArr);
            Object[] objArr2 = this.b;
            x50.g0(i9, i2, this.c, objArr2, objArr2);
        }
        this.a[i2] = i;
        this.b[i2] = obj;
        this.c++;
    }

    public final Object c(int i) {
        Object[] objArr = this.b;
        if (i < objArr.length) {
            return objArr[i];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final Object clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        objClone.getClass();
        yj7 yj7Var = (yj7) objClone;
        yj7Var.a = (int[]) this.a.clone();
        yj7Var.b = (Object[]) this.b.clone();
        return yj7Var;
    }

    public final String toString() {
        int i = this.c;
        if (i <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        int i2 = this.c;
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append(this.a[i3]);
            sb.append('=');
            Object objC = c(i3);
            if (objC != this) {
                sb.append(objC);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
