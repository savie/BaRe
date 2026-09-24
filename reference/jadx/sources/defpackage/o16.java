package defpackage;

import java.security.Provider;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o16 extends Provider.Service {
    public final /* synthetic */ vz0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o16(t16 t16Var, String str, vz0 vz0Var) {
        super(t16Var, "KeyStore", "YKPiv", str, null, null);
        this.a = vz0Var;
    }

    @Override // java.security.Provider.Service
    public final Object newInstance(Object obj) {
        return new d16(this.a);
    }
}
