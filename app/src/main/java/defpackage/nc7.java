package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nc7 implements tu1 {
    public final String a;
    public final int b;
    public final hc c;
    public final boolean d;

    public nc7(String str, int i, hc hcVar, boolean z) {
        this.a = str;
        this.b = i;
        this.c = hcVar;
        this.d = z;
    }

    @Override // defpackage.tu1
    public final gu1 a(c35 c35Var, am0 am0Var) {
        return new wb7(c35Var, am0Var, this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShapePath{name=");
        sb.append(this.a);
        sb.append(", index=");
        return eq3.m(sb, this.b, '}');
    }
}
