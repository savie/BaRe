package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bm1 implements ox1, Serializable {
    public final ox1 a;
    public final mx1 b;

    public bm1(mx1 mx1Var, ox1 ox1Var) {
        ox1Var.getClass();
        mx1Var.getClass();
        this.a = ox1Var;
        this.b = mx1Var;
    }

    public final boolean equals(Object obj) {
        boolean zD;
        if (this == obj) {
            return true;
        }
        if (obj instanceof bm1) {
            bm1 bm1Var = (bm1) obj;
            int i = 2;
            bm1 bm1Var2 = bm1Var;
            int i2 = 2;
            while (true) {
                ox1 ox1Var = bm1Var2.a;
                bm1Var2 = ox1Var instanceof bm1 ? (bm1) ox1Var : null;
                if (bm1Var2 == null) {
                    break;
                }
                i2++;
            }
            bm1 bm1Var3 = this;
            while (true) {
                ox1 ox1Var2 = bm1Var3.a;
                bm1Var3 = ox1Var2 instanceof bm1 ? (bm1) ox1Var2 : null;
                if (bm1Var3 == null) {
                    break;
                }
                i++;
            }
            if (i2 == i) {
                while (true) {
                    mx1 mx1Var = this.b;
                    if (!pe4.d(bm1Var.get(mx1Var.getKey()), mx1Var)) {
                        zD = false;
                        break;
                    }
                    ox1 ox1Var3 = this.a;
                    if (!(ox1Var3 instanceof bm1)) {
                        ox1Var3.getClass();
                        mx1 mx1Var2 = (mx1) ox1Var3;
                        zD = pe4.d(bm1Var.get(mx1Var2.getKey()), mx1Var2);
                        break;
                    }
                    this = (bm1) ox1Var3;
                }
                if (zD) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.ox1
    public final Object fold(Object obj, qt3 qt3Var) {
        return qt3Var.invoke(this.a.fold(obj, qt3Var), this.b);
    }

    @Override // defpackage.ox1
    public final mx1 get(nx1 nx1Var) {
        nx1Var.getClass();
        while (true) {
            mx1 mx1Var = this.b.get(nx1Var);
            if (mx1Var != null) {
                return mx1Var;
            }
            ox1 ox1Var = this.a;
            if (!(ox1Var instanceof bm1)) {
                return ox1Var.get(nx1Var);
            }
            this = (bm1) ox1Var;
        }
    }

    public final int hashCode() {
        return this.b.hashCode() + this.a.hashCode();
    }

    @Override // defpackage.ox1
    public final ox1 minusKey(nx1 nx1Var) {
        nx1Var.getClass();
        mx1 mx1Var = this.b;
        mx1 mx1Var2 = mx1Var.get(nx1Var);
        ox1 ox1Var = this.a;
        if (mx1Var2 != null) {
            return ox1Var;
        }
        ox1 ox1VarMinusKey = ox1Var.minusKey(nx1Var);
        if (ox1VarMinusKey == ox1Var) {
            return this;
        }
        return ox1VarMinusKey == lv2.a ? mx1Var : new bm1(mx1Var, ox1VarMinusKey);
    }

    @Override // defpackage.ox1
    public final /* bridge */ ox1 plus(ox1 ox1Var) {
        return iz1.s(this, ox1Var);
    }

    public final String toString() {
        return "[" + ((String) fold("", new pc1(1))) + ']';
    }
}
