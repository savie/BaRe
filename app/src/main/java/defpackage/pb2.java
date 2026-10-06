package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pb2 extends ws7 implements qt3 {
    public ga2 a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ic2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pb2(ic2 ic2Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = ic2Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        pb2 pb2Var = new pb2(this.d, jv1Var);
        pb2Var.c = obj;
        return pb2Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((pb2) create((li3) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00c6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x00c7  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        li3 li3Var;
        em7 em7Var;
        h80 h80Var;
        Object objT;
        int i = this.b;
        int i2 = 1;
        be8 be8Var = be8.a;
        ic2 ic2Var = this.d;
        int i3 = 2;
        jv1 jv1Var = null;
        yx1 yx1Var = yx1.a;
        if (i == 0) {
            lg7.H(obj);
            li3 li3Var2 = (li3) this.c;
            this.c = li3Var2;
            this.b = 1;
            Object objG = l73.G(ic2Var.c.d(), new zq1(ic2Var, jv1Var, i2), this);
            if (objG != yx1Var) {
                li3Var = li3Var2;
                obj = objG;
            }
            return yx1Var;
        }
        if (i == 1) {
            li3 li3Var3 = (li3) this.c;
            lg7.H(obj);
            li3Var = li3Var3;
        } else {
            if (i != 2) {
                if (i == 3) {
                    lg7.H(obj);
                    return be8Var;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            em7Var = this.a;
            li3Var = (li3) this.c;
            lg7.H(obj);
        }
        int i4 = 5;
        h80Var = new h80((Object) new jq6(new c00(i4, new la(new cd(6, new lb2(ic2Var, jv1Var, 0), (km7) ic2Var.h.b), new wm(i3, jv1Var)), new t72(em7Var, (jv1) null)), 9), (Object) new mb2(ic2Var, null), 8, (boolean) (0 == true ? 1 : 0));
        this.c = null;
        this.a = null;
        this.b = 3;
        if (!(li3Var instanceof y28)) {
            throw ((y28) li3Var).a;
        }
        objT = h80Var.t(li3Var, this);
        if (objT != yx1Var) {
            objT = be8Var;
        }
        if (objT == yx1Var) {
            return yx1Var;
        }
        return be8Var;
        em7Var = (em7) obj;
        if (em7Var instanceof ga2) {
            ga2 ga2Var = (ga2) em7Var;
            Object obj2 = ga2Var.b;
            this.c = li3Var;
            this.a = ga2Var;
            this.b = 2;
            if (li3Var.c(obj2, this) != yx1Var) {
            }
            return yx1Var;
        }
        if (em7Var instanceof od8) {
            l0.e("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
            return null;
        }
        if (em7Var instanceof jf6) {
            throw ((jf6) em7Var).b;
        }
        if (!(em7Var instanceof ne3)) {
        }
        return be8Var;
        int i5 = 5;
        h80Var = new h80((Object) new jq6(new c00(i5, new la(new cd(6, new lb2(ic2Var, jv1Var, 0), (km7) ic2Var.h.b), new wm(i3, jv1Var)), new t72(em7Var, (jv1) null)), 9), (Object) new mb2(ic2Var, null), 8, (boolean) (0 == true ? 1 : 0));
        this.c = null;
        this.a = null;
        this.b = 3;
        if (!(li3Var instanceof y28)) {
            throw ((y28) li3Var).a;
        }
        objT = h80Var.t(li3Var, this);
        if (objT != yx1Var) {
            objT = be8Var;
        }
        if (objT == yx1Var) {
            return yx1Var;
        }
        return be8Var;
    }
}
