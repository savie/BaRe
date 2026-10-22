package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sw6 extends kv1 implements li3 {
    public final li3 a;
    public final ox1 b;
    public final int c;
    public ox1 d;
    public jv1 e;

    public sw6(li3 li3Var, ox1 ox1Var) {
        super(jn5.a, lv2.a);
        this.a = li3Var;
        this.b = ox1Var;
        this.c = ((Number) ox1Var.fold(0, new oc1(5))).intValue();
    }

    @Override // defpackage.li3
    public final Object c(Object obj, jv1 jv1Var) {
        try {
            Object objF = f(jv1Var, obj);
            return objF == yx1.a ? objF : be8.a;
        } catch (Throwable th) {
            this.d = new vo2(jv1Var.getContext(), th);
            throw th;
        }
    }

    public final Object f(jv1 jv1Var, Object obj) {
        ox1 context = jv1Var.getContext();
        sz8.p(context);
        ox1 ox1Var = this.d;
        if (ox1Var != context) {
            if (ox1Var instanceof vo2) {
                throw new IllegalStateException(oq7.L("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((vo2) ox1Var).b + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
            if (((Number) context.fold(0, new tj3(this, 2))).intValue() != this.c) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.b + ",\n\t\tbut emission happened in " + context + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.d = context;
        }
        this.e = jv1Var;
        rt3 rt3Var = uw6.a;
        li3 li3Var = this.a;
        li3Var.getClass();
        Object objA = rt3Var.a(li3Var, obj, this);
        if (!pe4.d(objA, yx1.a)) {
            this.e = null;
        }
        return objA;
    }

    @Override // defpackage.ml0, defpackage.zx1
    public final zx1 getCallerFrame() {
        jv1 jv1Var = this.e;
        if (jv1Var instanceof zx1) {
            return (zx1) jv1Var;
        }
        return null;
    }

    @Override // defpackage.kv1, defpackage.jv1
    public final ox1 getContext() {
        ox1 ox1Var = this.d;
        return ox1Var == null ? lv2.a : ox1Var;
    }

    @Override // defpackage.ml0
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Throwable thA = en6.a(obj);
        if (thA != null) {
            this.d = new vo2(getContext(), thA);
        }
        jv1 jv1Var = this.e;
        if (jv1Var != null) {
            jv1Var.resumeWith(obj);
        }
        return yx1.a;
    }
}
