package defpackage;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vo0 extends v40 {
    public final so0 b = new so0();
    public final so0 c = new so0();

    /* JADX WARN: Multi-variable type inference failed */
    public static Object e(so0 so0Var, int i) {
        to0 to0Var;
        Object obj;
        Object obj2;
        if (i >= 32768) {
            synchronized (so0Var) {
                to0Var = (to0) so0Var.get(Integer.valueOf(i));
            }
            if (to0Var != null) {
                do {
                    synchronized (to0Var) {
                        Object[] objArr = to0Var.a;
                        int i2 = to0Var.b;
                        obj = objArr[i2];
                        objArr[i2] = null;
                        to0Var.b = (i2 - 1) & 511;
                    }
                    Reference reference = (Reference) obj;
                    if (reference != null) {
                        obj2 = reference.get();
                    }
                } while (obj2 == null);
                return obj2;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(so0 so0Var, Object obj, int i) {
        to0 to0Var;
        if (i < 32768) {
            return;
        }
        synchronized (so0Var) {
            try {
                to0Var = (to0) so0Var.get(Integer.valueOf(i));
                if (to0Var == null) {
                    to0Var = new to0();
                    so0Var.put(Integer.valueOf(i), to0Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        SoftReference softReference = new SoftReference(obj);
        synchronized (to0Var) {
            int i2 = (to0Var.b + 1) & 511;
            to0Var.b = i2;
            to0Var.a[i2] = softReference;
        }
    }

    @Override // defpackage.v40
    public final byte[] a(int i) {
        byte[] bArr = (byte[]) e(this.b, i);
        return bArr == null ? new byte[i] : bArr;
    }

    @Override // defpackage.v40
    public final int[] b(int i, boolean z) {
        int[] iArr = (int[]) e(this.c, i);
        if (iArr == null) {
            return new int[i];
        }
        if (z) {
            Arrays.fill(iArr, 0);
        }
        return iArr;
    }

    @Override // defpackage.v40
    public final void c(byte[] bArr) {
        f(this.b, bArr, bArr.length);
    }

    @Override // defpackage.v40
    public final void d(int[] iArr) {
        f(this.c, iArr, iArr.length);
    }
}
