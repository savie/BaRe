package defpackage;

import java.io.Closeable;
import java.io.DataInput;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r33 implements DataInput, Closeable {
    public final byte[] a;
    public final int b;
    public InputStream c;
    public int d;
    public int e;
    public int f = 0;
    public String[] k = new String[32];

    public r33(InputStream inputStream) {
        Objects.requireNonNull(inputStream);
        this.c = inputStream;
        this.a = new byte[32768];
        this.b = 32768;
    }

    public final void a(int i) throws IOException {
        int i2 = this.e;
        int i3 = this.d;
        int i4 = i2 - i3;
        byte[] bArr = this.a;
        System.arraycopy(bArr, i3, bArr, 0, i4);
        this.d = 0;
        this.e = i4;
        while (true) {
            i -= i4;
            if (i <= 0) {
                return;
            }
            InputStream inputStream = this.c;
            int i5 = this.e;
            i4 = inputStream.read(bArr, i5, this.b - i5);
            if (i4 == -1) {
                d6.d();
                return;
            }
            this.e += i4;
        }
    }

    public final String b() throws IOException {
        int unsignedShort = readUnsignedShort();
        if (unsignedShort != 65535) {
            if (unsignedShort < this.f) {
                return this.k[unsignedShort];
            }
            y5.m(xs1.m(dj7.r(unsignedShort, "Invalid interned string reference ", " for "), this.f, " interned strings"));
            return null;
        }
        String utf = readUTF();
        int i = this.f;
        if (i < 65535) {
            String[] strArr = this.k;
            if (i == strArr.length) {
                this.k = (String[]) Arrays.copyOf(strArr, i + (i >> 1));
            }
            String[] strArr2 = this.k;
            int i2 = this.f;
            this.f = i2 + 1;
            strArr2[i2] = utf;
        }
        return utf;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        InputStream inputStream = this.c;
        this.c = null;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        return readByte() != 0;
    }

    @Override // java.io.DataInput
    public final byte readByte() throws IOException {
        if (this.e - this.d < 1) {
            a(1);
        }
        int i = this.d;
        this.d = i + 1;
        return this.a[i];
    }

    @Override // java.io.DataInput
    public final char readChar() {
        return (char) readShort();
    }

    @Override // java.io.DataInput
    public final double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public final float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.e;
        byte[] bArr2 = this.a;
        if (this.b >= i2) {
            if (i3 - this.d < i2) {
                a(i2);
            }
            System.arraycopy(bArr2, this.d, bArr, i, i2);
            this.d += i2;
            return;
        }
        int i4 = this.d;
        int i5 = i3 - i4;
        System.arraycopy(bArr2, i4, bArr, i, i5);
        this.d += i5;
        do {
            i += i5;
            i2 -= i5;
            if (i2 <= 0) {
                return;
            } else {
                i5 = this.c.read(bArr, i, i2);
            }
        } while (i5 != -1);
        d6.d();
    }

    @Override // java.io.DataInput
    public final int readInt() throws IOException {
        if (this.e - this.d < 4) {
            a(4);
        }
        int i = this.d;
        int i2 = i + 1;
        this.d = i2;
        byte[] bArr = this.a;
        int i3 = (bArr[i] & 255) << 24;
        int i4 = i + 2;
        this.d = i4;
        int i5 = ((bArr[i2] & 255) << 16) | i3;
        int i6 = i + 3;
        this.d = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.d = i + 4;
        return (bArr[i6] & 255) | i7;
    }

    @Override // java.io.DataInput
    public final String readLine() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.DataInput
    public final long readLong() throws IOException {
        if (this.e - this.d < 8) {
            a(8);
        }
        int i = this.d;
        int i2 = i + 1;
        this.d = i2;
        byte[] bArr = this.a;
        int i3 = (bArr[i] & 255) << 24;
        int i4 = i + 2;
        this.d = i4;
        int i5 = ((bArr[i2] & 255) << 16) | i3;
        int i6 = i + 3;
        this.d = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i + 4;
        this.d = i8;
        int i9 = i7 | (bArr[i6] & 255);
        int i10 = i + 5;
        this.d = i10;
        int i11 = (bArr[i8] & 255) << 24;
        int i12 = i + 6;
        this.d = i12;
        int i13 = ((bArr[i10] & 255) << 16) | i11;
        int i14 = i + 7;
        this.d = i14;
        int i15 = i13 | ((bArr[i12] & 255) << 8);
        this.d = i + 8;
        return (((long) i9) << 32) | (((long) ((bArr[i14] & 255) | i15)) & 4294967295L);
    }

    @Override // java.io.DataInput
    public final short readShort() throws IOException {
        if (this.e - this.d < 2) {
            a(2);
        }
        int i = this.d;
        int i2 = i + 1;
        this.d = i2;
        byte[] bArr = this.a;
        int i3 = (bArr[i] & 255) << 8;
        this.d = i + 2;
        return (short) ((bArr[i2] & 255) | i3);
    }

    @Override // java.io.DataInput
    public final String readUTF() throws IOException {
        int unsignedShort = readUnsignedShort();
        if (this.b <= unsignedShort) {
            byte[] bArr = new byte[unsignedShort + 1];
            readFully(bArr, 0, unsignedShort);
            return nc8.r(bArr, new char[unsignedShort], 0, unsignedShort);
        }
        if (this.e - this.d < unsignedShort) {
            a(unsignedShort);
        }
        String strR = nc8.r(this.a, new char[unsignedShort], this.d, unsignedShort);
        this.d += unsignedShort;
        return strR;
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        return Byte.toUnsignedInt(readByte());
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() {
        return Short.toUnsignedInt(readShort());
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }
}
