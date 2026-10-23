package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d70 implements Runnable {
    public final /* synthetic */ Object a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ rd5 c;
    public final /* synthetic */ e70 d;

    public d70(e70 e70Var, Object obj, Object obj2, rd5 rd5Var) {
        this.d = e70Var;
        this.a = obj;
        this.b = obj2;
        this.c = rd5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.d.e.b(this.a, this.b, this.c);
    }
}
