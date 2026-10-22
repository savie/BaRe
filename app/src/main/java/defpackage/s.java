package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends ol1 {
    @Override // defpackage.ol1
    public final z0 C(m2 m2Var, byte[] bArr) {
        if (m2Var.d != d0.CONSTRUCTED) {
            return new v(m2Var, Arrays.copyOfRange(bArr, 1, bArr.length), bArr[0]);
        }
        try {
            p0 p0Var = new p0((nh4) this.b, bArr);
            nh4 nh4Var = p0Var.a;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte b = 0;
                while (p0Var.available() > 0) {
                    nh4Var.getClass();
                    m2 m2VarM = nh4.m(p0Var);
                    boolean z = m2VarM.b == m2Var.b;
                    Object[] objArr = {m2VarM};
                    if (!z) {
                        throw new IllegalStateException(String.format("Expected an ASN.1 BIT STRING as Constructed object, got: %s", objArr));
                    }
                    byte[] bArrN = nh4.n(nh4.l(p0Var), p0Var);
                    byteArrayOutputStream.write(bArrN, 1, bArrN.length - 1);
                    if (p0Var.available() <= 0) {
                        b = bArrN[0];
                    }
                }
                v vVar = new v(m2Var, byteArrayOutputStream.toByteArray(), b);
                p0Var.close();
                return vVar;
            } catch (Throwable th) {
                try {
                    p0Var.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            throw new o1(e, "Unable to parse Constructed ASN.1 BIT STRING", new Object[0]);
        }
    }
}
