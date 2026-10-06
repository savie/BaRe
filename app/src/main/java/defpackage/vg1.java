package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vg1 {
    public static final gv7 d = new gv7(new el(5));
    public final qg1 a;
    public final Object b = new Object();
    public boolean c;

    public vg1(qg1 qg1Var) {
        this.a = qg1Var;
    }

    public final rg1 a() {
        rg1 rg1Var;
        synchronized (this.b) {
            if (this.c || ((Boolean) this.a.invoke()).booleanValue()) {
                rg1Var = null;
            } else {
                this.c = true;
                rg1Var = new rg1(this);
            }
        }
        return rg1Var;
    }
}
