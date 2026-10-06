package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class le8 extends r48 {
    @Override // defpackage.r48, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        if (c87Var.a.l(x77.FAIL_ON_EMPTY_BEANS)) {
            o(c87Var, obj);
            throw null;
        }
        super.e(obj, fk4Var, c87Var);
    }

    @Override // defpackage.r48, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws ag4 {
        if (c87Var.a.l(x77.FAIL_ON_EMPTY_BEANS)) {
            o(c87Var, obj);
            throw null;
        }
        super.f(obj, fk4Var, c87Var, rc8Var);
    }

    public final void o(c87 c87Var, Object obj) throws ag4 {
        Class<?> cls = obj.getClass();
        boolean zA = rk5.a(cls);
        Class cls2 = this.a;
        if (zA) {
            c87Var.A(cls2, "No serializer found for class " + cls.getName() + " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS). This appears to be a native image, in which case you may need to configure reflection for the class that is to be serialized");
            throw null;
        }
        c87Var.A(cls2, "No serializer found for class " + cls.getName() + " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS)");
        throw null;
    }
}
