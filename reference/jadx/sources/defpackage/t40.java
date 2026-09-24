package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t40 {
    public static final t40 b = new t40(new Object[0]);
    public final Object[] a;

    public t40(Object[] objArr) {
        this.a = objArr;
    }

    public static t40 a() {
        ev1 ev1Var = xs4.b;
        t40 t40VarCurrent = ev1Var.current();
        if (t40VarCurrent != null) {
            return t40VarCurrent;
        }
        ev1Var.getClass();
        return b;
    }

    public final Object b(lh9 lh9Var) {
        int i = 0;
        while (true) {
            Object[] objArr = this.a;
            if (i >= objArr.length) {
                return null;
            }
            if (objArr[i] == lh9Var) {
                return objArr[i + 1];
            }
            i += 2;
        }
    }

    public final t40 c(lh9 lh9Var, va4 va4Var) {
        int i = 0;
        while (true) {
            Object[] objArr = this.a;
            if (i >= objArr.length) {
                Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + 2);
                objArrCopyOf[objArrCopyOf.length - 2] = lh9Var;
                objArrCopyOf[objArrCopyOf.length - 1] = va4Var;
                return new t40(objArrCopyOf);
            }
            if (objArr[i] == lh9Var) {
                int i2 = i + 1;
                if (objArr[i2] == va4Var) {
                    return this;
                }
                Object[] objArr2 = (Object[]) objArr.clone();
                objArr2[i2] = va4Var;
                return new t40(objArr2);
            }
            i += 2;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        int i = 0;
        while (true) {
            Object[] objArr = this.a;
            if (i >= objArr.length) {
                break;
            }
            sb.append(objArr[i]);
            sb.append('=');
            sb.append(objArr[i + 1]);
            sb.append(", ");
            i += 2;
        }
        if (sb.length() > 1) {
            sb.setLength(sb.length() - 2);
        }
        sb.append('}');
        return sb.toString();
    }
}
