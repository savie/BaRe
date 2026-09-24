package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nv implements mt3 {
    public final /* synthetic */ wv a;
    public final /* synthetic */ kz b;
    public final /* synthetic */ int c;

    public /* synthetic */ nv(wv wvVar, kz kzVar, int i) {
        this.a = wvVar;
        this.b = kzVar;
        this.c = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int iH = l73.h(((Integer) obj).intValue(), 0, 99);
        c40 c40Var = this.a.a;
        c40Var.k(new r62(Integer.valueOf(iH), ((jz) this.b).b.getPackageName()));
        c40Var.n(this.c + iH);
        return be8.a;
    }
}
