package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zu4 extends lm0 {
    public int q;
    public int r;
    public boolean s;
    public int t;
    public Integer u;
    public int v;
    public float w;
    public boolean x;
    public boolean y;

    @Override // defpackage.lm0
    public final boolean c() {
        return super.c() && e() == a();
    }

    @Override // defpackage.lm0
    public final void d() {
        super.d();
        if (this.t < 0) {
            c6.f("Stop indicator size must be >= 0.");
            return;
        }
        if (this.q == 0) {
            if ((a() > 0 || (this.y && e() > 0)) && this.i == 0) {
                c6.f("Rounded corners without gap are not supported in contiguous indeterminate animation.");
            } else {
                if (this.e.length >= 3) {
                    return;
                }
                c6.f("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    public final int e() {
        if (this.y) {
            return this.x ? (int) (this.a * this.w) : this.v;
        }
        return a();
    }
}
