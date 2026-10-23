package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mj6 implements tu1 {
    public final String a;
    public final bc b;
    public final bc c;
    public final mc d;
    public final boolean e;

    public mj6(String str, bc bcVar, bc bcVar2, mc mcVar, boolean z) {
        this.a = str;
        this.b = bcVar;
        this.c = bcVar2;
        this.d = mcVar;
        this.e = z;
    }

    @Override // defpackage.tu1
    public final gu1 a(c35 c35Var, am0 am0Var) {
        return new nj6(c35Var, am0Var, this);
    }
}
