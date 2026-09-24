package defpackage;

import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tu9 extends bd9 {
    public final int a;

    public tu9(int i) {
        this.a = i;
    }

    public static tu9 b(int i) throws InvalidAlgorithmParameterException {
        if (i == 16 || i == 32) {
            return new tu9(i);
        }
        throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit are supported", Integer.valueOf(i << 3)));
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return false;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof tu9) && ((tu9) obj).a == this.a;
    }

    public final int hashCode() {
        return Objects.hash(tu9.class, Integer.valueOf(this.a));
    }

    public final String toString() {
        return xs1.h(this.a, "AesCmac PRF Parameters (", "-byte key)");
    }
}
