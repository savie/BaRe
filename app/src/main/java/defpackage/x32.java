package defpackage;

import com.facebook.crypto.cipher.NativeGCMCipher;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x32 {
    public final ov7 a;
    public final w00 b;

    public x32(gk1 gk1Var, ov7 ov7Var) {
        z28 z28Var = new z28(gk1Var, 9);
        this.a = ov7Var;
        this.b = new w00(2, ov7Var, z28Var);
    }

    public final byte[] a(byte[] bArr, gx2 gx2Var) throws IOException {
        int length = bArr.length;
        pk5 pk5VarC = c(new ByteArrayInputStream(bArr), gx2Var);
        lh3 lh3Var = new lh3(length - 30);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i = pk5VarC.read(bArr2, 0, 1024);
            if (i == -1) {
                pk5VarC.close();
                return lh3Var.a();
            }
            lh3Var.write(bArr2, 0, i);
        }
    }

    public final byte[] b(byte[] bArr, gx2 gx2Var) throws IOException {
        lh3 lh3Var = new lh3(bArr.length + 30);
        qk5 qk5VarD = d(lh3Var, gx2Var);
        qk5VarD.write(bArr, 0, bArr.length);
        qk5VarD.close();
        return lh3Var.a();
    }

    public final pk5 c(InputStream inputStream, gx2 gx2Var) throws IOException {
        byte b = (byte) inputStream.read();
        byte b2 = (byte) inputStream.read();
        boolean z = b == 1;
        String strJ = fz5.j(b, "Unexpected crypto version ");
        if (!z) {
            y5.m(strJ);
            return null;
        }
        boolean z2 = b2 == 2;
        String strJ2 = fz5.j(b2, "Unexpected cipher ID ");
        if (!z2) {
            y5.m(strJ2);
            return null;
        }
        byte[] bArr = new byte[12];
        new DataInputStream(inputStream).readFully(bArr);
        w00 w00Var = this.b;
        NativeGCMCipher nativeGCMCipher = new NativeGCMCipher((ov7) w00Var.b);
        nativeGCMCipher.b(((z28) w00Var.c).i(), bArr);
        byte[] bArr2 = gx2Var.a;
        nativeGCMCipher.i(new byte[]{b}, 1);
        nativeGCMCipher.i(new byte[]{b2}, 1);
        nativeGCMCipher.i(bArr2, bArr2.length);
        return new pk5(inputStream, nativeGCMCipher);
    }

    public final qk5 d(OutputStream outputStream, gx2 gx2Var) {
        outputStream.write(1);
        outputStream.write(2);
        w00 w00Var = this.b;
        z28 z28Var = (z28) w00Var.c;
        gk1 gk1Var = (gk1) z28Var.b;
        if (gk1Var.a == 0) {
            throw null;
        }
        byte[] bArr = new byte[12];
        ((kh3) gk1Var.b).nextBytes(bArr);
        z28.D("IV", 12, bArr);
        NativeGCMCipher nativeGCMCipher = new NativeGCMCipher((ov7) w00Var.b);
        nativeGCMCipher.e(z28Var.i(), bArr);
        outputStream.write(bArr);
        byte[] bArr2 = gx2Var.a;
        nativeGCMCipher.i(new byte[]{1}, 1);
        nativeGCMCipher.i(new byte[]{2}, 1);
        nativeGCMCipher.i(bArr2, bArr2.length);
        return new qk5(outputStream, nativeGCMCipher);
    }
}
