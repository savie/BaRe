package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d1 extends ol1 {
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d1(nh4 nh4Var, int i) {
        super(nh4Var, 1);
        this.e = i;
    }

    @Override // defpackage.ol1
    public final z0 C(m2 m2Var, byte[] bArr) {
        int i;
        boolean z;
        switch (this.e) {
            case 0:
                if (bArr.length <= 0) {
                    c6.f("An ASN.1 OBJECT IDENTIFIER should have at least a one byte value");
                    return null;
                }
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                StringBuilder sb = new StringBuilder();
                int i2 = byteArrayInputStream.read();
                sb.append(i2 / 40);
                sb.append('.');
                sb.append(i2 % 40);
                while (byteArrayInputStream.available() > 0) {
                    int i3 = byteArrayInputStream.read();
                    if (i3 < 127) {
                        sb.append('.');
                        sb.append(i3);
                    } else {
                        BigInteger bigIntegerValueOf = BigInteger.valueOf(i3 & 127);
                        do {
                            i = byteArrayInputStream.read();
                            bigIntegerValueOf = bigIntegerValueOf.shiftLeft(7).add(BigInteger.valueOf(i & 127));
                        } while (i > 127);
                        sb.append('.');
                        sb.append(bigIntegerValueOf);
                    }
                }
                String string = sb.toString();
                g1 g1Var = new g1(m2.j, bArr);
                g1Var.c = string;
                return g1Var;
            default:
                HashSet hashSet = new HashSet();
                try {
                    p0 p0Var = new p0((nh4) this.b, bArr);
                    while (true) {
                        try {
                            try {
                                z = p0Var.available() > 0;
                            } catch (Throwable th) {
                                try {
                                    p0Var.close();
                                    break;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (IOException unused) {
                        }
                        if (!z) {
                            p0Var.close();
                            return new y1(hashSet, bArr);
                        }
                        try {
                            hashSet.add(p0Var.g());
                        } catch (Exception e) {
                            throw new NoSuchElementException(e.getMessage());
                        }
                        throw new o1(e, "Could not parse ASN.1 SET contents.", new Object[0]);
                    }
                } catch (IOException e2) {
                    throw new o1(e2, "Could not parse ASN.1 SET contents.", new Object[0]);
                }
        }
    }
}
