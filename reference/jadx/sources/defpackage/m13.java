package defpackage;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m13 implements Supplier {
    public final /* synthetic */ int a;

    public /* synthetic */ m13(int i) {
        this.a = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 0:
                return new uw8(uw8.d);
            default:
                try {
                    return SecureRandom.getInstanceStrong();
                } catch (NoSuchAlgorithmException e) {
                    throw new pd8(e);
                }
        }
    }
}
