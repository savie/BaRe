package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class un6 extends v3 {
    public int c;
    public int d;
    public final /* synthetic */ vn6 e;

    public un6(vn6 vn6Var) {
        this.e = vn6Var;
        this.c = vn6Var.d;
        this.d = vn6Var.c;
    }

    @Override // defpackage.v3
    public final void a() {
        int i = this.c;
        if (i == 0) {
            this.a = 2;
            return;
        }
        vn6 vn6Var = this.e;
        Object[] objArr = vn6Var.a;
        int i2 = this.d;
        this.b = objArr[i2];
        this.a = 1;
        this.d = (i2 + 1) % vn6Var.b;
        this.c = i - 1;
    }
}
