package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lf6 {
    public final kf6[] a;
    public final int b;

    public lf6(wp4 wp4Var) {
        int size = wp4Var.a.a.size();
        int i = 8;
        while (i < (size <= 64 ? size + size : size + (size >> 2))) {
            i += i;
        }
        this.b = i - 1;
        kf6[] kf6VarArr = new kf6[i];
        for (Map.Entry entry : (r66) wp4Var.a.entrySet()) {
            oc8 oc8Var = (oc8) entry.getKey();
            em4 em4Var = (em4) entry.getValue();
            int i2 = oc8Var.a & this.b;
            kf6VarArr[i2] = new kf6(kf6VarArr[i2], oc8Var, em4Var);
        }
        this.a = kf6VarArr;
    }

    public final em4 a(gc8 gc8Var) {
        kf6 kf6Var = this.a[(gc8Var.hashCode() - 1) & this.b];
        if (kf6Var == null) {
            return null;
        }
        if (!kf6Var.e && gc8Var.equals(kf6Var.d)) {
            return kf6Var.a;
        }
        while (true) {
            kf6Var = kf6Var.b;
            if (kf6Var == null) {
                return null;
            }
            if (!kf6Var.e && gc8Var.equals(kf6Var.d)) {
                return kf6Var.a;
            }
        }
    }

    public final em4 b(Class cls) {
        kf6 kf6Var = this.a[cls.getName().hashCode() & this.b];
        if (kf6Var == null) {
            return null;
        }
        if (kf6Var.c == cls && !kf6Var.e) {
            return kf6Var.a;
        }
        while (true) {
            kf6Var = kf6Var.b;
            if (kf6Var == null) {
                return null;
            }
            if (kf6Var.c == cls && !kf6Var.e) {
                return kf6Var.a;
            }
        }
    }
}
