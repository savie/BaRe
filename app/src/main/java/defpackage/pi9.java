package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pi9 implements zi9 {
    public final zi9[] a;

    public pi9(zi9... zi9VarArr) {
        this.a = zi9VarArr;
    }

    @Override // defpackage.zi9
    public final hk9 zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            zi9 zi9Var = this.a[i];
            if (zi9Var.zzc(cls)) {
                return zi9Var.zzb(cls);
            }
        }
        g84.j("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // defpackage.zi9
    public final boolean zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.a[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
