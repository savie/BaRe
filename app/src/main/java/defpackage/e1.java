package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.StringTokenizer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e1 extends ol1 {
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e1(nh4 nh4Var, int i) {
        super(nh4Var, 2);
        this.e = i;
    }

    public static void H(g1 g1Var) {
        String str = g1Var.c;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        byteArrayOutputStream.write((Integer.parseInt(stringTokenizer.nextToken()) * 40) + Integer.parseInt(stringTokenizer.nextToken()));
        while (stringTokenizer.hasMoreTokens()) {
            BigInteger bigInteger = new BigInteger(stringTokenizer.nextToken());
            if (bigInteger.intValue() <= 0 || bigInteger.intValue() >= 127) {
                for (int iBitLength = ((bigInteger.bitLength() / 7) + (bigInteger.bitLength() % 7 > 0 ? 1 : 0)) - 1; iBitLength >= 0; iBitLength--) {
                    byte bByteValue = (byte) (bigInteger.shiftRight(iBitLength * 7).byteValue() & 127);
                    if (iBitLength > 0) {
                        bByteValue = (byte) (bByteValue | 128);
                    }
                    byteArrayOutputStream.write(bByteValue);
                }
            } else {
                byteArrayOutputStream.write(bigInteger.intValue());
            }
        }
        g1Var.b = byteArrayOutputStream.toByteArray();
    }

    @Override // defpackage.ol1
    public final void D(z0 z0Var, n1 n1Var) throws IOException {
        switch (this.e) {
            case 0:
                g1 g1Var = (g1) z0Var;
                if (g1Var.b == null) {
                    H(g1Var);
                }
                n1Var.write(g1Var.b);
                break;
            default:
                y1 y1Var = (y1) z0Var;
                byte[] bArr = y1Var.c;
                if (bArr == null) {
                    Iterator it = y1Var.iterator();
                    while (it.hasNext()) {
                        n1Var.a((z0) it.next());
                    }
                } else {
                    n1Var.write(bArr);
                }
                break;
        }
    }

    @Override // defpackage.ol1
    public final int E(z0 z0Var) throws IOException {
        switch (this.e) {
            case 0:
                g1 g1Var = (g1) z0Var;
                if (g1Var.b == null) {
                    H(g1Var);
                }
                return g1Var.b.length;
            default:
                y1 y1Var = (y1) z0Var;
                if (y1Var.c == null) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    n1 n1Var = new n1((nh4) this.b, byteArrayOutputStream);
                    Iterator it = y1Var.iterator();
                    while (it.hasNext()) {
                        n1Var.a((z0) it.next());
                    }
                    y1Var.c = byteArrayOutputStream.toByteArray();
                }
                return y1Var.c.length;
        }
    }
}
