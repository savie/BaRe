package defpackage;

import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class x1 extends q1 implements Iterable {
    public static final b1 c = new b1(1, x1.class);
    public final b0[] a;
    public b0[] b;

    public x1(c0 c0Var) {
        if (c0Var == null) {
            f6.n("'elementVector' cannot be null");
            throw null;
        }
        b0[] b0VarArrC = c0Var.c();
        this.a = b0VarArrC;
        this.b = b0VarArrC.length < 2 ? b0VarArrC : null;
    }

    public static byte[] x(b0 b0Var) {
        try {
            return b0Var.d().i();
        } catch (IOException unused) {
            c6.f("cannot encode object added to SET");
            return null;
        }
    }

    public static boolean y(byte[] bArr, byte[] bArr2) {
        int i = bArr[0] & 223;
        int i2 = bArr2[0] & 223;
        if (i != i2) {
            return i < i2;
        }
        int iMin = Math.min(bArr.length, bArr2.length) - 1;
        for (int i3 = 1; i3 < iMin; i3++) {
            byte b = bArr[i3];
            byte b2 = bArr2[i3];
            if (b != b2) {
                return (b & 255) < (b2 & 255);
            }
        }
        return (bArr[iMin] & 255) <= (bArr2[iMin] & 255);
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        b0[] b0VarArr = this.a;
        int length = b0VarArr.length;
        int iHashCode = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return iHashCode;
            }
            iHashCode += b0VarArr[length].d().hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        b0[] b0VarArr = this.a;
        return new v50(b0VarArr.length < 1 ? c0.d : (b0[]) b0VarArr.clone());
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof x1) {
            x1 x1Var = (x1) q1Var;
            int length = this.a.length;
            if (x1Var.a.length == length) {
                u82 u82Var = (u82) u();
                u82 u82Var2 = (u82) x1Var.u();
                for (int i = 0; i < length; i++) {
                    q1 q1VarD = u82Var.a[i].d();
                    q1 q1VarD2 = u82Var2.a[i].d();
                    if (q1VarD == q1VarD2 || q1VarD.k(q1VarD2)) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.q1
    public final boolean o() {
        return true;
    }

    public final String toString() {
        b0[] b0VarArr = this.a;
        int length = b0VarArr.length;
        if (length == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (true) {
            sb.append(b0VarArr[i]);
            i++;
            if (i >= length) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
        }
    }

    @Override // defpackage.q1
    public q1 u() {
        int i;
        if (this.b == null) {
            b0[] b0VarArr = (b0[]) this.a.clone();
            this.b = b0VarArr;
            int length = b0VarArr.length;
            if (length >= 2) {
                b0 b0Var = b0VarArr[0];
                b0 b0Var2 = b0VarArr[1];
                byte[] bArrX = x(b0Var);
                byte[] bArrX2 = x(b0Var2);
                if (y(bArrX2, bArrX)) {
                    b0Var2 = b0Var;
                    b0Var = b0Var2;
                    bArrX2 = bArrX;
                    bArrX = bArrX2;
                }
                for (int i2 = 2; i2 < length; i2++) {
                    b0 b0Var3 = b0VarArr[i2];
                    byte[] bArrX3 = x(b0Var3);
                    if (y(bArrX2, bArrX3)) {
                        b0VarArr[i2 - 2] = b0Var;
                        b0Var = b0Var2;
                        bArrX = bArrX2;
                        b0Var2 = b0Var3;
                        bArrX2 = bArrX3;
                    } else if (y(bArrX, bArrX3)) {
                        b0VarArr[i2 - 2] = b0Var;
                        b0Var = b0Var3;
                        bArrX = bArrX3;
                    } else {
                        int i3 = i2 - 1;
                        while (true) {
                            i = i3 - 1;
                            if (i <= 0) {
                                break;
                            }
                            b0 b0Var4 = b0VarArr[i3 - 2];
                            if (y(x(b0Var4), bArrX3)) {
                                break;
                            }
                            b0VarArr[i] = b0Var4;
                            i3 = i;
                        }
                        b0VarArr[i] = b0Var3;
                    }
                }
                b0VarArr[length - 2] = b0Var;
                b0VarArr[length - 1] = b0Var2;
            }
        }
        u82 u82Var = new u82(true, this.b);
        u82Var.d = -1;
        return u82Var;
    }

    @Override // defpackage.q1
    public q1 w() {
        i92 i92Var = new i92(this.a, this.b);
        i92Var.d = -1;
        return i92Var;
    }

    public x1() {
        b0[] b0VarArr = c0.d;
        this.a = b0VarArr;
        this.b = b0VarArr;
    }

    public x1(boolean z, b0[] b0VarArr) {
        this.a = b0VarArr;
        if (!z && b0VarArr.length >= 2) {
            b0VarArr = null;
        }
        this.b = b0VarArr;
    }

    public x1(b0[] b0VarArr, b0[] b0VarArr2) {
        this.a = b0VarArr;
        this.b = b0VarArr2;
    }
}
