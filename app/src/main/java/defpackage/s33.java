package defpackage;

import java.io.Closeable;
import java.io.DataOutput;
import java.io.Flushable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s33 implements DataOutput, Flushable, Closeable {
    public final byte[] a;
    public final int b;
    public OutputStream c;
    public int d;
    public final HashMap e;

    public s33(OutputStream outputStream) {
        HashMap map = new HashMap();
        this.e = map;
        this.a = new byte[32768];
        this.b = 32768;
        if (this.c != null) {
            l0.e("setOutput() called before calling release()");
            throw null;
        }
        Objects.requireNonNull(outputStream);
        this.c = outputStream;
        this.d = 0;
        map.clear();
    }

    public final void a() throws IOException {
        int i = this.d;
        if (i > 0) {
            this.c.write(this.a, 0, i);
            this.d = 0;
        }
    }

    public final void b(String str) throws IOException {
        HashMap map = this.e;
        Integer num = (Integer) map.get(str);
        if (num != null) {
            writeShort(num.intValue());
            return;
        }
        writeShort(65535);
        writeUTF(str);
        int size = map.size();
        Integer numValueOf = Integer.valueOf(size);
        if (size < 65535) {
            map.put(str, numValueOf);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        OutputStream outputStream = this.c;
        if (outputStream == null) {
            return;
        }
        try {
            flush();
            e = null;
        } catch (IOException e) {
            e = e;
        }
        this.c = null;
        this.d = 0;
        this.e.clear();
        try {
            outputStream.close();
        } catch (IOException e2) {
            if (e == null) {
                e = e2;
            } else {
                e.addSuppressed(e2);
            }
        }
        if (e != null) {
            throw e;
        }
    }

    @Override // java.io.Flushable
    public final void flush() {
        a();
        this.c.flush();
    }

    @Override // java.io.DataOutput
    public final void write(byte[] bArr, int i, int i2) {
        int i3 = this.b;
        if (i3 < i2) {
            a();
            this.c.write(bArr, i, i2);
        } else {
            if (i3 - this.d < i2) {
                a();
            }
            System.arraycopy(bArr, i, this.a, this.d, i2);
            this.d += i2;
        }
    }

    @Override // java.io.DataOutput
    public final void writeBoolean(boolean z) {
        writeByte(z ? 1 : 0);
    }

    @Override // java.io.DataOutput
    public final void writeByte(int i) {
        if (this.b - this.d < 1) {
            a();
        }
        int i2 = this.d;
        this.d = i2 + 1;
        this.a[i2] = (byte) (i & 255);
    }

    @Override // java.io.DataOutput
    public final void writeBytes(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.DataOutput
    public final void writeChar(int i) throws IOException {
        writeShort((short) i);
    }

    @Override // java.io.DataOutput
    public final void writeChars(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.DataOutput
    public final void writeDouble(double d) throws IOException {
        writeLong(Double.doubleToLongBits(d));
    }

    @Override // java.io.DataOutput
    public final void writeFloat(float f) throws IOException {
        writeInt(Float.floatToIntBits(f));
    }

    @Override // java.io.DataOutput
    public final void writeInt(int i) throws IOException {
        if (this.b - this.d < 4) {
            a();
        }
        int i2 = this.d;
        int i3 = i2 + 1;
        this.d = i3;
        byte[] bArr = this.a;
        bArr[i2] = (byte) ((i >> 24) & 255);
        int i4 = i2 + 2;
        this.d = i4;
        bArr[i3] = (byte) ((i >> 16) & 255);
        int i5 = i2 + 3;
        this.d = i5;
        bArr[i4] = (byte) ((i >> 8) & 255);
        this.d = i2 + 4;
        bArr[i5] = (byte) (i & 255);
    }

    @Override // java.io.DataOutput
    public final void writeLong(long j) throws IOException {
        if (this.b - this.d < 8) {
            a();
        }
        int i = (int) (j >> 32);
        int i2 = this.d;
        int i3 = i2 + 1;
        this.d = i3;
        byte[] bArr = this.a;
        bArr[i2] = (byte) ((i >> 24) & 255);
        int i4 = i2 + 2;
        this.d = i4;
        bArr[i3] = (byte) ((i >> 16) & 255);
        int i5 = i2 + 3;
        this.d = i5;
        bArr[i4] = (byte) ((i >> 8) & 255);
        int i6 = i2 + 4;
        this.d = i6;
        bArr[i5] = (byte) (i & 255);
        int i7 = (int) j;
        int i8 = i2 + 5;
        this.d = i8;
        bArr[i6] = (byte) ((i7 >> 24) & 255);
        int i9 = i2 + 6;
        this.d = i9;
        bArr[i8] = (byte) ((i7 >> 16) & 255);
        int i10 = i2 + 7;
        this.d = i10;
        bArr[i9] = (byte) ((i7 >> 8) & 255);
        this.d = i2 + 8;
        bArr[i10] = (byte) (i7 & 255);
    }

    @Override // java.io.DataOutput
    public final void writeShort(int i) throws IOException {
        if (this.b - this.d < 2) {
            a();
        }
        int i2 = this.d;
        int i3 = i2 + 1;
        this.d = i3;
        byte[] bArr = this.a;
        bArr[i2] = (byte) ((i >> 8) & 255);
        this.d = i2 + 2;
        bArr[i3] = (byte) (i & 255);
    }

    @Override // java.io.DataOutput
    public final void writeUTF(String str) {
        int length = str.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            j += (cCharAt == 0 || cCharAt > 127) ? cCharAt <= 2047 ? 2L : 3L : 1L;
        }
        int i2 = (int) j;
        if (i2 > 65535) {
            y5.m(fz5.j(i2, "Modified UTF-8 length too large: "));
            return;
        }
        int i3 = i2 + 2;
        int i4 = this.b;
        if (i4 < i3) {
            byte[] bArr = new byte[i2 + 1];
            nc8.w(str, 0, bArr);
            writeShort(i2);
            write(bArr, 0, i2);
            return;
        }
        if (i4 - this.d < i3) {
            a();
        }
        writeShort(i2);
        nc8.w(str, this.d, this.a);
        this.d += i2;
    }

    @Override // java.io.DataOutput
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.DataOutput
    public final void write(int i) {
        writeByte(i);
    }
}
