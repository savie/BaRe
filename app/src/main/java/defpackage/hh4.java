package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hh4 extends ws7 implements qt3 {
    public final /* synthetic */ int a = 0;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hh4(ih4 ih4Var, mt3 mt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = ih4Var;
        this.d = mt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                return new hh4((ih4) this.c, (mt3) obj2, jv1Var);
            default:
                hh4 hh4Var = new hh4((li3) obj2, jv1Var);
                hh4Var.c = obj;
                return hh4Var;
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((hh4) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((hh4) create(obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        Object obj2 = this.d;
        yx1 yx1Var = yx1.a;
        switch (i) {
            case 0:
                ih4 ih4Var = (ih4) this.c;
                ThreadLocal threadLocal = ih4Var.b;
                int i2 = this.b;
                try {
                    if (i2 != 0) {
                        if (i2 != 1) {
                            l0.e("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        lg7.H(obj);
                        ij5 ij5Var = (ij5) obj;
                        threadLocal.set(Boolean.FALSE);
                        return ij5Var;
                    }
                    lg7.H(obj);
                    Object obj3 = threadLocal.get();
                    Boolean bool = Boolean.TRUE;
                    if (pe4.d(obj3, bool)) {
                        l0.e("Don't call JavaDataStorage.edit() from within an existing edit() callback.\nThis causes deadlocks, and is generally indicative of a code smell.\nInstead, either pass around the initial `MutablePreferences` instance, or don't do everything in a single callback. ");
                        return null;
                    }
                    threadLocal.set(bool);
                    w36 w36Var = ih4Var.c;
                    gh4 gh4Var = new gh4((mt3) obj2, null);
                    this.b = 1;
                    obj = w36Var.a(new fs1(gh4Var, null), this);
                    if (obj == yx1Var) {
                        return yx1Var;
                    }
                    ij5 ij5Var2 = (ij5) obj;
                    threadLocal.set(Boolean.FALSE);
                    return ij5Var2;
                } catch (Throwable th) {
                    threadLocal.set(Boolean.FALSE);
                    throw th;
                }
            default:
                Object obj4 = this.c;
                int i3 = this.b;
                if (i3 == 0) {
                    lg7.H(obj);
                    this.c = null;
                    this.b = 1;
                    if (((li3) obj2).c(obj4, this) == yx1Var) {
                        return yx1Var;
                    }
                } else {
                    if (i3 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                }
                return be8.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hh4(li3 li3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = li3Var;
    }
}
