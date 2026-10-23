package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m1a {
    public static final byte[] d = new byte[16];
    public static final byte[] e = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1};
    public static final s89 f = new s89(2);
    public final yu9 a;
    public final byte[] b;
    public final byte[] c;

    public m1a(byte[] bArr, d2a d2aVar) throws GeneralSecurityException {
        if (!u48.e(1)) {
            m0.h("Can not use AES-SIV in FIPS-mode.");
            throw null;
        }
        if (bArr.length != 32 && bArr.length != 64) {
            throw new InvalidKeyException(xs1.h(bArr.length, "invalid key size: ", " bytes; key must have 32 or 64 bytes"));
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, bArr.length / 2);
        this.b = Arrays.copyOfRange(bArr, bArr.length / 2, bArr.length);
        this.a = g67.G(xu9.J(tu9.b(bArrCopyOfRange.length), new km8(d2a.a(bArrCopyOfRange))));
        this.c = d2aVar.b();
    }
}
