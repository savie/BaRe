package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p41 extends l41 {
    public final ji3 d;

    public p41(ji3 ji3Var, ox1 ox1Var, int i, pw0 pw0Var) {
        super(ox1Var, i, pw0Var);
        this.d = ji3Var;
    }

    @Override // defpackage.l41
    public final Object a(r76 r76Var, k41 k41Var) {
        Object objT = this.d.t(new d77(r76Var), k41Var);
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        if (objT != yx1Var) {
            objT = be8Var;
        }
        return objT == yx1Var ? objT : be8Var;
    }

    @Override // defpackage.l41
    public final l41 b(ox1 ox1Var, int i, pw0 pw0Var) {
        return new p41(this.d, ox1Var, i, pw0Var);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0075 A[RETURN] */
    @Override // defpackage.l41, defpackage.ji3
    public final Object t(li3 li3Var, kv1 kv1Var) throws Throwable {
        Object objT;
        int i = this.b;
        yx1 yx1Var = yx1.a;
        be8 be8Var = be8.a;
        if (i == -3) {
            ox1 context = kv1Var.getContext();
            Boolean bool = Boolean.FALSE;
            pc1 pc1Var = new pc1(2);
            ox1 ox1Var = this.a;
            boolean zBooleanValue = ((Boolean) ox1Var.fold(bool, pc1Var)).booleanValue();
            int i2 = 0;
            ox1 ox1VarPlus = !zBooleanValue ? context.plus(ox1Var) : w13.i(context, ox1Var, false);
            if (pe4.d(ox1VarPlus, context)) {
                Object objT2 = this.d.t(li3Var, kv1Var);
                if (objT2 != yx1Var) {
                    objT2 = be8Var;
                }
                if (objT2 == yx1Var) {
                    return objT2;
                }
            } else {
                lv1 lv1Var = lv1.b;
                if (pe4.d(ox1VarPlus.get(lv1Var), context.get(lv1Var))) {
                    ox1 context2 = kv1Var.getContext();
                    if (!(li3Var instanceof d77)) {
                        li3Var = new ud8(li3Var, context2);
                    }
                    Object objO = ji8.O(ox1VarPlus, li3Var, pe4.E(ox1VarPlus), new o41(this, (jv1) null, i2), kv1Var);
                    if (objO == yx1Var) {
                        return objO;
                    }
                } else {
                    objT = super.t(li3Var, kv1Var);
                    if (objT == yx1Var) {
                        return objT;
                    }
                }
            }
        } else {
            objT = super.t(li3Var, kv1Var);
            if (objT == yx1Var) {
                return objT;
            }
        }
        return be8Var;
    }

    @Override // defpackage.l41
    public final String toString() {
        return this.d + " -> " + super.toString();
    }
}
