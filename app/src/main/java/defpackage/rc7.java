package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rc7 implements tu1 {
    public final int a;
    public final bc b;
    public final bc c;
    public final bc d;
    public final boolean e;

    public rc7(String str, int i, bc bcVar, bc bcVar2, bc bcVar3, boolean z) {
        this.a = i;
        this.b = bcVar;
        this.c = bcVar2;
        this.d = bcVar3;
        this.e = z;
    }

    @Override // defpackage.tu1
    public final gu1 a(c35 c35Var, am0 am0Var) {
        return new nb8(am0Var, this);
    }

    public final String toString() {
        return "Trim Path: {start: " + this.b + ", end: " + this.c + ", offset: " + this.d + "}";
    }
}
