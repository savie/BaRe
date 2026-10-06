package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f14 extends xo4 {
    public final e14 i;

    public f14(List list) {
        super(list);
        e14 e14Var = (e14) ((wo4) list.get(0)).b;
        int length = e14Var != null ? e14Var.b.length : 0;
        this.i = new e14(new float[length], new int[length]);
    }

    @Override // defpackage.yl0
    public final Object g(wo4 wo4Var, float f) {
        e14 e14Var = (e14) wo4Var.b;
        e14 e14Var2 = (e14) wo4Var.c;
        e14 e14Var3 = this.i;
        e14Var3.getClass();
        int[] iArr = e14Var.b;
        int length = iArr.length;
        int[] iArr2 = e14Var2.b;
        if (length != iArr2.length) {
            StringBuilder sb = new StringBuilder("Cannot interpolate between gradients. Lengths vary (");
            sb.append(iArr.length);
            sb.append(" vs ");
            c6.f(xs1.m(sb, iArr2.length, ")"));
            return null;
        }
        for (int i = 0; i < iArr.length; i++) {
            e14Var3.a[i] = sg5.d(e14Var.a[i], e14Var2.a[i], f);
            e14Var3.b[i] = bb9.t(f, iArr[i], iArr2[i]);
        }
        return e14Var3;
    }
}
