package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ev6 implements hw5 {
    public dv6 a;
    public zu6 b;

    public ev6(dv6 dv6Var, byte[] bArr) {
        this(dv6Var, new zu6(bArr, true, vw2.b));
    }

    public zu6 b() {
        return this.b;
    }

    public dv6 c() {
        return this.a;
    }

    public ev6(dv6 dv6Var) {
        this.a = dv6Var;
    }

    public ev6(dv6 dv6Var, zu6 zu6Var) {
        this.a = dv6Var;
        this.b = zu6Var;
        dv6Var.a(zu6Var);
    }
}
