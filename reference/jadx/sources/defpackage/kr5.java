package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kr5 {
    public static final kr5 f = new kr5(z86.e, Object.class, null, false, null);
    public final z86 a;
    public final Class b;
    public final Class c;
    public final Class d;
    public final boolean e;

    public kr5(z86 z86Var, Class cls, Class cls2, boolean z, Class cls3) {
        this.a = z86Var;
        this.d = cls;
        this.b = cls2;
        this.e = z;
        this.c = cls3 == null ? lg7.class : cls3;
    }

    public final String toString() {
        return "ObjectIdInfo: propName=" + this.a + ", scope=" + u81.t(this.d) + ", generatorType=" + u81.t(this.b) + ", alwaysAsId=" + this.e;
    }
}
