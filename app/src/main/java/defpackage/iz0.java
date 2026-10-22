package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iz0 extends k50 {
    public int k;

    @Override // defpackage.dg7, java.util.Map
    public final void clear() {
        this.k = 0;
        super.clear();
    }

    @Override // defpackage.dg7
    public final void h(k50 k50Var) {
        this.k = 0;
        super.h(k50Var);
    }

    @Override // defpackage.dg7, java.util.Map
    public final int hashCode() {
        if (this.k == 0) {
            this.k = super.hashCode();
        }
        return this.k;
    }

    @Override // defpackage.dg7
    public final Object i(int i) {
        this.k = 0;
        return super.i(i);
    }

    @Override // defpackage.dg7
    public final Object j(int i, Object obj) {
        this.k = 0;
        return super.j(i, obj);
    }

    @Override // defpackage.dg7, java.util.Map
    public final Object put(Object obj, Object obj2) {
        this.k = 0;
        return super.put(obj, obj2);
    }
}
