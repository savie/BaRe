package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u72 extends ws7 implements qt3 {
    public f98 a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ eo6 f;
    public final /* synthetic */ mt3 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u72(jv1 jv1Var, mt3 mt3Var, eo6 eo6Var, boolean z, boolean z2) {
        super(2, jv1Var);
        this.d = z;
        this.e = z2;
        this.f = eo6Var;
        this.k = mt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        u72 u72Var = new u72(jv1Var, this.k, this.f, this.d, this.e);
        u72Var.c = obj;
        return u72Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((u72) create((g98) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00a3 A[DONT_INVERT, PHI: r0 r12
      0x00a3: PHI (r0v11 g98) = (r0v8 g98), (r0v15 g98) binds: [B:37:0x00a0, B:11:0x0026] A[DONT_GENERATE, DONT_INLINE]
      0x00a3: PHI (r12v18 java.lang.Object) = (r12v16 java.lang.Object), (r12v0 java.lang.Object) binds: [B:37:0x00a0, B:11:0x0026] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:40:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c3 A[RETURN] */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        f98 f98Var;
        g98 g98Var;
        f98 f98Var2;
        g98 g98Var2;
        g98 g98Var3;
        Boolean boolB;
        Object obj2;
        int i = this.b;
        mt3 mt3Var = this.k;
        eo6 eo6Var = this.f;
        boolean z = this.e;
        yx1 yx1Var = yx1.a;
        if (i == 0) {
            lg7.H(obj);
            g98 g98Var4 = (g98) this.c;
            if (!this.d) {
                g98Var4.getClass();
                return mt3Var.invoke(((gf6) g98Var4).d());
            }
            f98Var = z ? f98.a : f98.b;
            if (z) {
                f98 f98Var3 = f98Var;
                g98Var = g98Var4;
                f98Var2 = f98Var3;
                t72 t72Var = new t72(mt3Var, (jv1) null);
                this.c = g98Var;
                this.a = null;
                this.b = 3;
                obj = g98Var.a(f98Var2, t72Var, this);
                if (obj != yx1Var) {
                    if (z) {
                        return obj;
                    }
                    this.c = obj;
                    this.b = 4;
                    boolB = g98Var.b(this);
                    if (boolB != yx1Var) {
                        Object obj3 = obj;
                        obj = boolB;
                        obj2 = obj3;
                        if (!((Boolean) obj).booleanValue()) {
                            eo6Var.d().a();
                        }
                        return obj2;
                    }
                }
            } else {
                this.c = g98Var4;
                this.a = f98Var;
                this.b = 1;
                Boolean boolB2 = g98Var4.b(this);
                if (boolB2 != yx1Var) {
                    g98Var2 = g98Var4;
                    obj = boolB2;
                }
            }
            return yx1Var;
        }
        if (i == 1) {
            f98Var = this.a;
            g98Var2 = (g98) this.c;
            lg7.H(obj);
        } else {
            if (i == 2) {
                f98Var = this.a;
                g98Var3 = (g98) this.c;
                lg7.H(obj);
                f98Var2 = f98Var;
                g98Var = g98Var3;
                t72 t72Var2 = new t72(mt3Var, (jv1) null);
                this.c = g98Var;
                this.a = null;
                this.b = 3;
                obj = g98Var.a(f98Var2, t72Var2, this);
                if (obj != yx1Var) {
                    if (z) {
                        return obj;
                    }
                    this.c = obj;
                    this.b = 4;
                    boolB = g98Var.b(this);
                    if (boolB != yx1Var) {
                        Object obj4 = obj;
                        obj = boolB;
                        obj2 = obj4;
                    }
                }
                return yx1Var;
            }
            if (i == 3) {
                g98Var = (g98) this.c;
                lg7.H(obj);
                if (z) {
                    return obj;
                }
                this.c = obj;
                this.b = 4;
                boolB = g98Var.b(this);
                if (boolB != yx1Var) {
                    Object obj5 = obj;
                    obj = boolB;
                    obj2 = obj5;
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
        if (((Boolean) obj).booleanValue()) {
            f98Var2 = f98Var;
            g98Var = g98Var2;
            t72 t72Var3 = new t72(mt3Var, (jv1) null);
            this.c = g98Var;
            this.a = null;
            this.b = 3;
            obj = g98Var.a(f98Var2, t72Var3, this);
            if (obj != yx1Var) {
                if (z) {
                    return obj;
                }
                this.c = obj;
                this.b = 4;
                boolB = g98Var.b(this);
                if (boolB != yx1Var) {
                    Object obj6 = obj;
                    obj = boolB;
                    obj2 = obj6;
                    if (!((Boolean) obj).booleanValue()) {
                        eo6Var.d().a();
                    }
                    return obj2;
                }
            }
        } else {
            kg4 kg4VarD = eo6Var.d();
            this.c = g98Var2;
            this.a = f98Var;
            this.b = 2;
            Object objE = kg4VarD.b.e(this);
            if (objE != yx1Var) {
                objE = be8.a;
            }
            if (objE != yx1Var) {
                g98Var3 = g98Var2;
                f98Var2 = f98Var;
                g98Var = g98Var3;
                t72 t72Var4 = new t72(mt3Var, (jv1) null);
                this.c = g98Var;
                this.a = null;
                this.b = 3;
                obj = g98Var.a(f98Var2, t72Var4, this);
                if (obj != yx1Var) {
                    if (z) {
                        return obj;
                    }
                    this.c = obj;
                    this.b = 4;
                    boolB = g98Var.b(this);
                    if (boolB != yx1Var) {
                        Object obj7 = obj;
                        obj = boolB;
                        obj2 = obj7;
                        if (!((Boolean) obj).booleanValue()) {
                            eo6Var.d().a();
                        }
                        return obj2;
                    }
                }
            }
        }
        return yx1Var;
    }
}
