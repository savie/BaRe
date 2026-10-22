package defpackage;

import java.security.Provider;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l16 extends Provider.Service {
    public final /* synthetic */ vz0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l16(t16 t16Var, String str, Map map, vz0 vz0Var) {
        super(t16Var, "Signature", "NONEwithECDSA", str, null, map);
        this.a = vz0Var;
    }

    @Override // java.security.Provider.Service
    public final Object newInstance(Object obj) {
        return new o06(this.a);
    }
}
