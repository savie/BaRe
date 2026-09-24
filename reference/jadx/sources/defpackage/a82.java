package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a82 extends ws7 implements qt3 {
    public f98 a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ eo6 e;
    public final /* synthetic */ mt3 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a82(jv1 jv1Var, mt3 mt3Var, eo6 eo6Var, boolean z) {
        super(2, jv1Var);
        this.d = z;
        this.e = eo6Var;
        this.f = mt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        a82 a82Var = new a82(jv1Var, this.f, this.e, this.d);
        a82Var.c = obj;
        return a82Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((a82) create((g98) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0077 A[PHI: r0 r11
      0x0077: PHI (r0v6 g98) = (r0v3 g98), (r0v9 g98) binds: [B:26:0x0074, B:12:0x0024] A[DONT_GENERATE, DONT_INLINE]
      0x0077: PHI (r11v12 java.lang.Object) = (r11v10 java.lang.Object), (r11v0 java.lang.Object) binds: [B:26:0x0074, B:12:0x0024] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x007b  */
    /* JADX WARN: Code duplicated, block: B:33:0x0086  */
    /* JADX WARN: Code duplicated, block: B:36:0x0091  */
    /* JADX WARN: Code duplicated, block: B:38:0x0099 A[RETURN] */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        f98 f98Var;
        f98 f98Var2;
        g98 g98Var;
        g98 g98Var2;
        Boolean boolB;
        Object obj2;
        int i = this.b;
        mt3 mt3Var = this.f;
        if (i == 0) {
            lg7.H(obj);
            g98 g98Var3 = (g98) this.c;
            g98Var3.getClass();
            return mt3Var.invoke(((gf6) g98Var3).d());
        }
        eo6 eo6Var = this.e;
        yx1 yx1Var = yx1.a;
        if (i != 1) {
            if (i == 2) {
                f98Var = this.a;
                g98Var2 = (g98) this.c;
                lg7.H(obj);
            } else {
                if (i == 3) {
                    g98Var = (g98) this.c;
                    lg7.H(obj);
                    if (this.d) {
                        return obj;
                    }
                    this.c = obj;
                    this.b = 4;
                    boolB = g98Var.b(this);
                    if (boolB != yx1Var) {
                        Object obj3 = obj;
                        obj = boolB;
                        obj2 = obj3;
                    }
                    return yx1Var;
                }
                if (i != 4) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                obj2 = this.c;
                lg7.H(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                eo6Var.d().a();
            }
            return obj2;
        }
        f98Var = this.a;
        g98 g98Var4 = (g98) this.c;
        lg7.H(obj);
        if (((Boolean) obj).booleanValue()) {
            f98Var2 = f98Var;
            g98Var = g98Var4;
            z72 z72Var = new z72(mt3Var, null);
            this.c = g98Var;
            this.a = null;
            this.b = 3;
            obj = g98Var.a(f98Var2, z72Var, this);
            if (obj != yx1Var) {
                if (this.d) {
                    return obj;
                }
                this.c = obj;
                this.b = 4;
                boolB = g98Var.b(this);
                if (boolB != yx1Var) {
                    Object obj4 = obj;
                    obj = boolB;
                    obj2 = obj4;
                    if (!((Boolean) obj).booleanValue()) {
                        eo6Var.d().a();
                    }
                    return obj2;
                }
            }
        } else {
            kg4 kg4VarD = eo6Var.d();
            this.c = g98Var4;
            this.a = f98Var;
            this.b = 2;
            Object objE = kg4VarD.b.e(this);
            if (objE != yx1Var) {
                objE = be8.a;
            }
            if (objE != yx1Var) {
                g98Var2 = g98Var4;
            }
        }
        return yx1Var;
        f98Var2 = f98Var;
        g98Var = g98Var2;
        z72 z72Var2 = new z72(mt3Var, null);
        this.c = g98Var;
        this.a = null;
        this.b = 3;
        obj = g98Var.a(f98Var2, z72Var2, this);
        if (obj != yx1Var) {
            if (this.d) {
                return obj;
            }
            this.c = obj;
            this.b = 4;
            boolB = g98Var.b(this);
            if (boolB != yx1Var) {
                Object obj5 = obj;
                obj = boolB;
                obj2 = obj5;
                if (!((Boolean) obj).booleanValue()) {
                    eo6Var.d().a();
                }
                return obj2;
            }
        }
        return yx1Var;
    }
}
