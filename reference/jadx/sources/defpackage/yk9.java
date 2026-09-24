package defpackage;

import android.os.Build;
import java.nio.charset.Charset;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yk9 {
    public static final s89 a = new s89(1);

    public static AlgorithmParameterSpec a(byte[] bArr, int i, int i2) {
        Charset charset = au9.a;
        Integer numValueOf = !Objects.equals(System.getProperty("java.vendor"), "The Android Project") ? null : Integer.valueOf(Build.VERSION.SDK_INT);
        return (numValueOf == null || numValueOf.intValue() > 19) ? new GCMParameterSpec(128, bArr, i, i2) : new IvParameterSpec(bArr, i, i2);
    }

    public static Cipher b() {
        return (Cipher) a.get();
    }

    public static SecretKeySpec c(byte[] bArr) {
        lg7.P(bArr.length);
        return new SecretKeySpec(bArr, "AES");
    }
}
