package defpackage;

import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.File;
import java.io.RandomAccessFile;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class pn4 extends fa3 {
    @Override // defpackage.fa3
    public final on4 a(ey5 ey5Var) {
        return new on4(new RandomAccessFile(new File(ey5Var.a.w()), JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR));
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }
}
