package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cg6 implements tu1 {
    public final String a;
    public final oc b;
    public final oc c;
    public final bc d;
    public final boolean e;

    public cg6(String str, oc ocVar, fc fcVar, bc bcVar, boolean z) {
        this.a = str;
        this.b = ocVar;
        this.c = fcVar;
        this.d = bcVar;
        this.e = z;
    }

    @Override // defpackage.tu1
    public final gu1 a(c35 c35Var, am0 am0Var) {
        return new bg6(c35Var, am0Var, this);
    }

    public final String toString() {
        return "RectangleShape{position=" + this.b + ", size=" + this.c + '}';
    }
}
