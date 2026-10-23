package defpackage;

import java.security.Provider;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q16 extends Provider.Service {
    public final String a;
    public final /* synthetic */ t16 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q16(t16 t16Var, String str, String str2, List list) {
        super(t16Var, "Signature", str, n06.class.getName(), list, t16.c);
        this.b = t16Var;
        this.a = str2;
    }

    @Override // java.security.Provider.Service
    public final Object newInstance(Object obj) {
        return new n06(this.b.a, this.a);
    }
}
