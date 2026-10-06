package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cc2 extends ws7 implements mt3 {
    public Object a;
    public int b;
    public final /* synthetic */ ic2 c;
    public final /* synthetic */ ox1 d;
    public final /* synthetic */ qt3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cc2(ic2 ic2Var, ox1 ox1Var, qt3 qt3Var, jv1 jv1Var) {
        super(1, jv1Var);
        this.c = ic2Var;
        this.d = ox1Var;
        this.e = qt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(jv1 jv1Var) {
        return new cc2(this.c, this.d, this.e, jv1Var);
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        return ((cc2) create((jv1) obj)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0051  */
    /* JADX WARN: Code duplicated, block: B:22:0x0056  */
    /* JADX WARN: Code duplicated, block: B:25:0x005b  */
    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    /* JADX WARN: Code duplicated, block: B:31:0x006f  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        ga2 ga2Var;
        Object obj2;
        int iHashCode;
        int i = this.b;
        jv1 jv1Var = null;
        ic2 ic2Var = this.c;
        int i2 = 1;
        yx1 yx1Var = yx1.a;
        if (i == 0) {
            lg7.H(obj);
            this.b = 1;
            obj = ic2.f(ic2Var, true, this);
            if (obj != yx1Var) {
            }
            return yx1Var;
        }
        if (i == 1) {
            lg7.H(obj);
        } else {
            if (i != 2) {
                if (i != 3) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                Object obj3 = this.a;
                lg7.H(obj);
                return obj3;
            }
            ga2Var = (ga2) this.a;
            lg7.H(obj);
        }
        obj2 = ga2Var.b;
        if (obj2 != null) {
            iHashCode = obj2.hashCode();
        } else {
            iHashCode = 0;
        }
        if (iHashCode == ga2Var.c) {
            l0.e("Data in DataStore was mutated but DataStore is only compatible with Immutable types.");
            return null;
        }
        if (!pe4.d(ga2Var.b, obj)) {
            this.a = obj;
            this.b = 3;
            if (ic2Var.j(obj, true, this) == yx1Var) {
                return yx1Var;
            }
        }
        return obj;
        ga2Var = (ga2) obj;
        fs1 fs1Var = new fs1(this.e, ga2Var, jv1Var, i2);
        this.a = ga2Var;
        this.b = 2;
        obj = l73.G(this.d, fs1Var, this);
        if (obj != yx1Var) {
            obj2 = ga2Var.b;
            if (obj2 != null) {
                iHashCode = obj2.hashCode();
            } else {
                iHashCode = 0;
            }
            if (iHashCode == ga2Var.c) {
                l0.e("Data in DataStore was mutated but DataStore is only compatible with Immutable types.");
                return null;
            }
            if (!pe4.d(ga2Var.b, obj)) {
                this.a = obj;
                this.b = 3;
                if (ic2Var.j(obj, true, this) == yx1Var) {
                }
            }
            return obj;
        }
        return yx1Var;
    }
}
