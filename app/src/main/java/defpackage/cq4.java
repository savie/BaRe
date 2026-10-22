package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cq4 extends j3 {
    public static int f(kk1 kk1Var) throws IOException {
        byte[] bArr = kk1Var.d;
        if (bArr == null) {
            y5.m("Missing LZMA2 properties");
            return 0;
        }
        if (bArr.length < 1) {
            y5.m("LZMA2 properties too short");
            return 0;
        }
        byte b = bArr[0];
        int i = b & 255;
        if ((b & 192) != 0) {
            y5.m("Unsupported LZMA2 property bits");
            return 0;
        }
        if (i > 40) {
            y5.m("Dictionary larger than 4GiB maximum size");
            return 0;
        }
        if (i == 40) {
            return -1;
        }
        return ((b & 1) | 2) << ((i / 2) + 11);
    }

    @Override // defpackage.j3
    public final InputStream a(String str, InputStream inputStream, long j, kk1 kk1Var, byte[] bArr, int i) throws IOException {
        try {
            int iF = f(kk1Var);
            int iB = (dq4.b(iF) / 1024) + 104;
            if (iB <= i) {
                return new dq4(inputStream, iF, v40.a);
            }
            throw new zb5(i, iB);
        } catch (IllegalArgumentException e) {
            throw new IOException(e);
        }
    }

    @Override // defpackage.j3
    public final OutputStream b(Object obj, OutputStream outputStream) throws hf8 {
        eq4 eq4Var;
        if (obj instanceof eq4) {
            eq4Var = (eq4) obj;
        } else {
            eq4 eq4Var2 = new eq4();
            eq4Var2.c(j3.e(8388608, obj));
            eq4Var = eq4Var2;
        }
        return eq4Var.b(new pe3(outputStream), v40.a);
    }

    @Override // defpackage.j3
    public final byte[] c(Object obj) {
        int iE = obj instanceof eq4 ? ((eq4) obj).a : j3.e(8388608, obj);
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(iE);
        return new byte[]{(byte) (((19 - iNumberOfLeadingZeros) * 2) + ((iE >>> (30 - iNumberOfLeadingZeros)) - 2))};
    }

    @Override // defpackage.j3
    public final Object d(kk1 kk1Var) {
        return Integer.valueOf(f(kk1Var));
    }
}
