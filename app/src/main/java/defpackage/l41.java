package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l41 implements du3 {
    public final ox1 a;
    public final int b;
    public final pw0 c;

    public l41(ox1 ox1Var, int i, pw0 pw0Var) {
        this.a = ox1Var;
        this.b = i;
        this.c = pw0Var;
    }

    public abstract Object a(r76 r76Var, k41 k41Var);

    public abstract l41 b(ox1 ox1Var, int i, pw0 pw0Var);

    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    @Override // defpackage.du3
    public final ji3 j(ox1 ox1Var, int i, pw0 pw0Var) {
        ox1 ox1Var2 = this.a;
        ox1 ox1VarPlus = ox1Var.plus(ox1Var2);
        pw0 pw0Var2 = pw0.a;
        pw0 pw0Var3 = this.c;
        int i2 = this.b;
        if (pw0Var == pw0Var2) {
            if (i2 != -3) {
                if (i == -3) {
                    i = i2;
                } else if (i2 != -2) {
                    if (i == -2) {
                        i = i2;
                    } else {
                        i += i2;
                        if (i < 0) {
                            i = Integer.MAX_VALUE;
                        }
                    }
                }
            }
            pw0Var = pw0Var3;
        }
        return (pe4.d(ox1VarPlus, ox1Var2) && i == i2 && pw0Var == pw0Var3) ? this : b(ox1VarPlus, i, pw0Var);
    }

    @Override // defpackage.ji3
    public Object t(li3 li3Var, kv1 kv1Var) {
        Object objK = l73.k(new j41(li3Var, this, (jv1) null), kv1Var);
        return objK == yx1.a ? objK : be8.a;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        lv2 lv2Var = lv2.a;
        ox1 ox1Var = this.a;
        if (ox1Var != lv2Var) {
            arrayList.add("context=" + ox1Var);
        }
        int i = this.b;
        if (i != -3) {
            arrayList.add("capacity=" + i);
        }
        pw0 pw0Var = pw0.a;
        pw0 pw0Var2 = this.c;
        if (pw0Var2 != pw0Var) {
            arrayList.add("onBufferOverflow=" + pw0Var2);
        }
        return getClass().getSimpleName() + '[' + el1.Y0(arrayList, ", ", null, null, null, 62) + ']';
    }
}
