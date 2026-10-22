package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x55 implements od5 {
    public od5[] a;

    @Override // defpackage.od5
    public final hf6 a(Class cls) {
        for (od5 od5Var : this.a) {
            if (od5Var.b(cls)) {
                return od5Var.a(cls);
            }
        }
        g84.j("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // defpackage.od5
    public final boolean b(Class cls) {
        for (od5 od5Var : this.a) {
            if (od5Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
