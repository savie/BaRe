package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fo6 extends ws7 implements qt3 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ eo6 c;
    public final /* synthetic */ o21 d;
    public final /* synthetic */ o41 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fo6(eo6 eo6Var, o21 o21Var, o41 o41Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = eo6Var;
        this.d = o21Var;
        this.e = o41Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        fo6 fo6Var = new fo6(this.c, this.d, this.e, jv1Var);
        fo6Var.b = obj;
        return fo6Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((fo6) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        jv1 jv1Var;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            mx1 mx1Var = ((xx1) this.b).d().get(lv1.b);
            mx1Var.getClass();
            rx1 rx1Var = (rx1) mx1Var;
            ox1 ox1VarS = iz1.s(rx1Var, new c98(rx1Var));
            ox1 ox1VarPlus = ox1VarS.plus(new q28(ox1VarS, this.c.h));
            o21 o21Var = this.d;
            this.b = o21Var;
            this.a = 1;
            obj = l73.G(ox1VarPlus, this.e, this);
            yx1 yx1Var = yx1.a;
            if (obj == yx1Var) {
                return yx1Var;
            }
            jv1Var = o21Var;
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            jv1Var = (jv1) this.b;
            lg7.H(obj);
        }
        jv1Var.resumeWith(obj);
        return be8.a;
    }
}
