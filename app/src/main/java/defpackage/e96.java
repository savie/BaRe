package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e96 extends od2 {
    public final Class i;
    public final Class j;
    public final em4 k;
    public final em4 l;

    public e96(h96 h96Var, Class cls, em4 em4Var, Class cls2, em4 em4Var2) {
        this.i = cls;
        this.k = em4Var;
        this.j = cls2;
        this.l = em4Var2;
    }

    @Override // defpackage.od2
    public final od2 s(Class cls, em4 em4Var) {
        return new g96(this, new i96[]{new i96(this.i, this.k), new i96(this.j, this.l), new i96(cls, em4Var)});
    }

    @Override // defpackage.od2
    public final em4 x(Class cls) {
        if (cls == this.i) {
            return this.k;
        }
        if (cls == this.j) {
            return this.l;
        }
        return null;
    }
}
