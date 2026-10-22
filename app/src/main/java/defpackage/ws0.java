package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ws0 extends on5 {
    @Override // defpackage.on5
    public final on5 c() {
        return (ws0) this.a;
    }

    @Override // defpackage.on5
    public final void d(on5 on5Var) {
        if (on5Var instanceof ws0) {
            this.a = on5Var;
        } else {
            c6.f("Parent of block must also be block (can not be inline)");
        }
    }
}
