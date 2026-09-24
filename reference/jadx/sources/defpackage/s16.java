package defpackage;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s16 extends Provider.Service {
    public final /* synthetic */ t16 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s16(t16 t16Var, String str) {
        super(t16Var, "Signature", str, u16.class.getName(), null, t16.d);
        this.a = t16Var;
    }

    @Override // java.security.Provider.Service
    public final Object newInstance(Object obj) throws NoSuchAlgorithmException {
        try {
            t16 t16Var = this.a;
            return new u16(t16Var.a, t16Var.b, getAlgorithm());
        } catch (NoSuchPaddingException unused) {
            throw new NoSuchAlgorithmException("No underlying Provider supporting " + getAlgorithm() + " available.");
        }
    }
}
