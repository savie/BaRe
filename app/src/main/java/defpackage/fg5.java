package defpackage;

import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fg5 implements Supplier {
    public final /* synthetic */ dc6 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ hx5 c;
    public final /* synthetic */ ox0 d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ boolean f;

    public /* synthetic */ fg5(dc6 dc6Var, String str, hx5 hx5Var, ox0 ox0Var, boolean z, boolean z2) {
        this.a = dc6Var;
        this.b = str;
        this.c = hx5Var;
        this.d = ox0Var;
        this.e = z;
        this.f = z2;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        int i = pg5.n;
        hx5 hx5Var = this.c;
        return new wf8(this.a, this.b, hx5Var.i, this.d, y51.c(hx5Var.g, this.e, this.f));
    }
}
