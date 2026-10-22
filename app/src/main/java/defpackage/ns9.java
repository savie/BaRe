package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ns9 extends vm4 {
    public final pt9 d;

    public ns9(pt9 pt9Var) {
        int i = ps9.b[dj7.A(pt9Var.d)];
        this.d = pt9Var;
    }

    @Override // defpackage.vm4
    public final bd9 G() {
        pt9 pt9Var = this.d;
        return new ms9(pt9Var.a, pt9Var.e);
    }

    @Override // defpackage.vm4
    public final Integer H() {
        return this.d.f;
    }

    public final d2a J() {
        pt9 pt9Var = this.d;
        r0a r0aVar = pt9Var.e;
        Integer num = pt9Var.f;
        r0a r0aVar2 = pt9Var.e;
        if (r0aVar.equals(r0a.RAW)) {
            return d2a.a(new byte[0]);
        }
        if (r0aVar2.equals(r0a.TINK)) {
            return zs9.b(num.intValue());
        }
        if (r0aVar2.equals(r0a.LEGACY) || r0aVar2.equals(r0a.CRUNCHY)) {
            return zs9.a(num.intValue());
        }
        m0.h("Unknown output prefix type");
        return null;
    }
}
