package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mp7 implements Serializable {
    public static final mp7 a = new mp7();

    public static void a(int i) throws dp7 {
        if (i > 1000) {
            throw new dp7(String.format("Document nesting depth (%d) exceeds the maximum allowed (%d, from %s)", Integer.valueOf(i), Integer.valueOf(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT), "`StreamWriteConstraints.getMaxNestingDepth()`"));
        }
    }
}
