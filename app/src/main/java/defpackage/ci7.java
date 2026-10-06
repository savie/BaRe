package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ci7 implements Closeable {
    public final ai7 a;
    public int b = 1;
    public boolean c = false;
    public long d = 0;

    public ci7(ai7 ai7Var) {
        this.a = ai7Var;
    }

    public static byte[] a(byte b, byte b2, byte b3, byte b4, byte[] bArr, int i, int i2) {
        if (i2 > 255) {
            c6.f("Length must be no greater than 255");
            return null;
        }
        ByteBuffer byteBufferPut = ByteBuffer.allocate((i2 > 0 ? 1 : 0) + 4 + i2).put(b).put(b2).put(b3).put(b4);
        if (i2 > 0) {
            byteBufferPut.put((byte) i2).put(bArr, i, i2);
        }
        return byteBufferPut.array();
    }

    public final byte[] b(ie ieVar) {
        int i;
        byte b;
        short s;
        ke keVar;
        byte[] bArr;
        byte[] bArr2;
        boolean z = this.c;
        ai7 ai7Var = this.a;
        if (z && this.d > 0 && System.currentTimeMillis() - this.d < 2000) {
            ai7Var.I(new byte[5]);
            this.d = 0L;
        }
        byte[] bArr3 = ieVar.e;
        byte b2 = ieVar.a;
        byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length);
        int iA = dj7.A(this.b);
        byte[] bArr4 = null;
        boolean z2 = true;
        int i2 = 2;
        byte b3 = 0;
        if (iA == 0) {
            int i3 = 0;
            while (bArrCopyOf.length - i3 > 255) {
                boolean z3 = z2;
                int i4 = i2;
                byte b4 = b3;
                byte[] bArr5 = bArr4;
                byte[] bArrI = ai7Var.I(a((byte) (b2 | 16), ieVar.b, ieVar.c, ieVar.d, bArrCopyOf, i3, 255));
                if (bArrI.length < i4) {
                    c6.f("Invalid APDU response data");
                    return bArr5;
                }
                byte[] bArrCopyOf2 = Arrays.copyOf(bArrI, bArrI.length);
                if (((short) (((bArrCopyOf2[bArrCopyOf2.length - i4] & 255) << 8) | (bArrCopyOf2[bArrCopyOf2.length - 1] & 255))) != -28672) {
                    throw new je((short) (((bArrCopyOf2[bArrCopyOf2.length - i4] & 255) << 8) | (bArrCopyOf2[bArrCopyOf2.length - 1] & 255)));
                }
                i3 += 255;
                i2 = i4;
                b3 = b4;
                bArr4 = bArr5;
                z2 = z3;
            }
            i = i2;
            b = b3;
            s = -28672;
            keVar = new ke(ai7Var.I(a(ieVar.a, ieVar.b, ieVar.c, ieVar.d, bArrCopyOf, i3, bArrCopyOf.length - i3)));
            bArr = new byte[5];
            bArr[b] = b;
            bArr[z2 ? 1 : 0] = -64;
            bArr[i] = b;
            bArr[3] = b;
            bArr[4] = b;
        } else {
            if (iA != 1) {
                l0.e("Invalid APDU format");
                return null;
            }
            ByteBuffer byteBufferPut = ByteBuffer.allocate((bArrCopyOf.length > 0 ? 2 : 0) + 5 + bArrCopyOf.length).put(b2).put(ieVar.b).put(ieVar.c).put(ieVar.d).put((byte) 0);
            if (bArrCopyOf.length > 0) {
                byteBufferPut.putShort((short) bArrCopyOf.length).put(bArrCopyOf);
            }
            ke keVar2 = new ke(ai7Var.I(byteBufferPut.array()));
            bArr = new byte[]{0, -64, 0, 0, 0, 0, 0};
            keVar = keVar2;
            i = 2;
            b = 0;
            s = -28672;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            bArr2 = (byte[]) keVar.b;
            if ((keVar.d() >> 8) != 97) {
                break;
            }
            byteArrayOutputStream.write(Arrays.copyOfRange(bArr2, (int) b, bArr2.length - i));
            keVar = new ke(ai7Var.I(bArr));
        }
        if (keVar.d() != s) {
            throw new je(keVar.d());
        }
        byteArrayOutputStream.write(Arrays.copyOfRange(bArr2, (int) b, bArr2.length - i));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (!this.c || byteArray.length <= 54) {
            this.d = 0L;
            return byteArray;
        }
        this.d = System.currentTimeMillis();
        return byteArray;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
    }
}
