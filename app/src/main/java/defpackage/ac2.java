package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ac2 extends ws7 implements qt3 {
    public Object a;
    public int b;
    public /* synthetic */ boolean c;
    public final /* synthetic */ ic2 d;
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ac2(ic2 ic2Var, int i, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = ic2Var;
        this.e = i;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        ac2 ac2Var = new ac2(this.d, this.e, jv1Var);
        ac2Var.c = ((Boolean) obj).booleanValue();
        return ac2Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        return ((ac2) create(bool, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    /* JADX WARN: Code duplicated, block: B:23:0x005a  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        boolean z;
        int iIntValue;
        Object obj2;
        int iHashCode;
        int i = this.b;
        ic2 ic2Var = this.d;
        yx1 yx1Var = yx1.a;
        if (i == 0) {
            lg7.H(obj);
            z = this.c;
            this.c = z;
            this.b = 1;
            obj = ic2Var.i(this);
            if (obj != yx1Var) {
            }
            return yx1Var;
        }
        if (i == 1) {
            z = this.c;
            lg7.H(obj);
        } else {
            if (i != 2) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.a;
            lg7.H(obj);
        }
        iIntValue = ((Number) obj).intValue();
        if (obj2 != null) {
            iHashCode = obj2.hashCode();
        } else {
            iHashCode = 0;
        }
        return new ga2(obj2, iHashCode, iIntValue);
        if (z) {
            sd4 sd4VarG = ic2Var.g();
            this.a = obj;
            this.b = 2;
            Object objB = sd4VarG.b(this);
            if (objB != yx1Var) {
                Object obj3 = obj;
                obj = objB;
                obj2 = obj3;
                iIntValue = ((Number) obj).intValue();
            }
            return yx1Var;
        }
        Object obj4 = obj;
        iIntValue = this.e;
        obj2 = obj4;
        if (obj2 != null) {
            iHashCode = obj2.hashCode();
        } else {
            iHashCode = 0;
        }
        return new ga2(obj2, iHashCode, iIntValue);
    }
}
