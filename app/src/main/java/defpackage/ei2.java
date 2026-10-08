package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ei2 extends j3 {
    @Override // defpackage.j3
    public final InputStream a(String str, InputStream inputStream, long j, kk1 kk1Var, byte[] bArr, int i) throws hf8 {
        byte[] bArr2 = kk1Var.d;
        int i2 = od2.o(bArr2) ? 1 : (bArr2[0] & 255) + 1;
        if (i2 < 1 || i2 > 256) {
            y5.h(fz5.j(i2, "Delta distance must be in the range [1, 256]: "));
            return null;
        }
        v40 v40Var = v40.a;
        return new gi2(inputStream, i2);
    }

    @Override // defpackage.j3
    public final OutputStream b(Object obj, OutputStream outputStream) throws IOException {
        int iE = j3.e(1, obj);
        try {
            hi2 hi2Var = new hi2();
            hi2Var.a = 1;
            if (iE < 1 || iE > 256) {
                throw new hf8("Delta distance must be in the range [1, 256]: " + iE);
            }
            hi2Var.a = iE;
            pe3 pe3Var = new pe3(outputStream);
            v40 v40Var = v40.a;
            return new ii2(pe3Var, hi2Var);
        } catch (hf8 e) {
            y5.m(e.getMessage());
            return null;
        }
    }

    @Override // defpackage.j3
    public final byte[] c(Object obj) {
        return new byte[]{(byte) (j3.e(1, obj) - 1)};
    }

    @Override // defpackage.j3
    public final Object d(kk1 kk1Var) {
        byte[] bArr = kk1Var.d;
        return Integer.valueOf(od2.o(bArr) ? 1 : 1 + (bArr[0] & 255));
    }
}
