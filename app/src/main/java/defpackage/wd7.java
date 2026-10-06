package defpackage;

import com.topjohnwu.superuser.Shell;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wd7 implements DataInput, DataOutput, Closeable {
    public final kr7 a;
    public final boolean b;
    public boolean c;
    public long d;

    public wd7(kr7 kr7Var, String str) throws FileNotFoundException {
        FileNotFoundException fileNotFoundException = new FileNotFoundException("No such file or directory");
        this.a = kr7Var;
        if (kr7Var.b("[ -d @@ ]")) {
            throw fileNotFoundException;
        }
        this.d = 0L;
        switch (str) {
            case "r":
                if (!kr7Var.b("[ -e @@ ]")) {
                    throw fileNotFoundException;
                }
                this.b = true;
                return;
            case "w":
                if (!kr7Var.b("echo -n > @@")) {
                    throw fileNotFoundException;
                }
                return;
            case "rw":
                if (!kr7Var.b("[ -e @@ ]") && !kr7Var.b("[ ! -e @@ ] && echo -n > @@")) {
                    throw fileNotFoundException;
                }
                return;
            default:
                return;
        }
    }

    public int a(final byte[] bArr, final int i, final int i2, final int i3, final int i4) {
        if (this.c) {
            return 0;
        }
        final int[] iArr = new int[1];
        final int i5 = i2 * i4;
        this.a.getClass();
        int i6 = Shell.UNKNOWN;
        k55.j().execTask(new pd7() { // from class: vd7
            @Override // defpackage.pd7
            public final void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) throws IOException {
                Locale locale = Locale.ROOT;
                StringBuilder sbV = dj7.v("dd if=", this.a.a.a, " ibs=", i4, " skip=");
                xs1.s(sbV, i3, " count=", i2, " obs=");
                int i7 = i5;
                outputStream.write(xs1.m(sbV, i7, " 2>/dev/null; echo >&2\n").getBytes(StandardCharsets.UTF_8));
                outputStream.flush();
                int i8 = i;
                while (true) {
                    int[] iArr2 = iArr;
                    if ((iArr2[0] == i7 || inputStream2.available() != 0) && inputStream.available() == 0) {
                        inputStream2.read(wx3.b);
                        return;
                    }
                    int i9 = inputStream.read(bArr, i8, inputStream.available());
                    i8 += i9;
                    iArr2[0] = iArr2[0] + i9;
                }
            }
        });
        int i7 = iArr[0];
        if (i7 != 0 && i7 == i5) {
            return i7;
        }
        this.c = true;
        return i7;
    }

    public String b() {
        return "conv=notrunc";
    }

    public long g() {
        return this.a.length();
    }

    public final int read(byte[] bArr, int i, int i2) {
        int iA;
        byte[] bArr2 = bArr;
        int i3 = i;
        if (i3 < 0 || i2 < 0 || i3 + i2 > bArr2.length) {
            l0.a();
            return 0;
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.c) {
            return -1;
        }
        long j = this.d;
        long j2 = i2;
        if (j == 0) {
            j = j2;
        } else if (j2 != 0) {
            int i4 = 0;
            long j3 = j2;
            while (((j | j3) & 1) == 0) {
                j >>= 1;
                j3 >>= 1;
                i4++;
            }
            while ((j & 1) == 0) {
                j >>= 1;
            }
            while (true) {
                if ((j3 & 1) == 0) {
                    j3 >>= 1;
                } else {
                    if (j <= j3) {
                        long j4 = j3;
                        j3 = j;
                        j = j4;
                    }
                    long j5 = j - j3;
                    if (j5 == 0) {
                        break;
                    }
                    long j6 = j3;
                    j3 = j5;
                    j = j6;
                    bArr2 = bArr;
                    i3 = i;
                }
            }
            j = j3 << i4;
        }
        int i5 = (int) j;
        if (i5 >= 512 || i2 < 512) {
            iA = a(bArr2, i3, i2 / i5, (int) (this.d / ((long) i5)), i5);
        } else {
            long j7 = this.d;
            long j8 = j7 / 4096;
            int i6 = (int) ((((j7 + j2) + 4095) / 4096) - j8);
            byte[] bArr3 = new byte[i6 * 4096];
            long j9 = 4096 * j8;
            int iA2 = a(bArr3, 0, i6, (int) j8, 4096);
            if (iA2 > 0) {
                int i7 = (int) ((((long) iA2) + j9) - this.d);
                if (i7 < i2) {
                    this.c = true;
                }
                int iMin = Math.min(i7, i2);
                System.arraycopy(bArr3, (int) (this.d - j9), bArr2, i3, iMin);
                iA = iMin;
            } else {
                iA = i2;
            }
        }
        this.d += (long) iA;
        if (iA == 0) {
            return -1;
        }
        return iA;
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        return readByte() != 0;
    }

    @Override // java.io.DataInput
    public final byte readByte() throws EOFException {
        byte[] bArr = new byte[1];
        readFully(bArr, 0, 1);
        return bArr[0];
    }

    @Override // java.io.DataInput
    public final char readChar() {
        return (char) readUnsignedShort();
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
    public final void readFully(byte[] bArr, int i, int i2) throws EOFException {
        if (read(bArr, i, i2) == i2) {
            return;
        }
        d6.d();
    }

    @Override // java.io.DataInput
    public final int readInt() throws EOFException {
        byte[] bArr = new byte[4];
        readFully(bArr, 0, 4);
        return (bArr[0] << 24) + (bArr[1] << 16) + (bArr[2] << 8) + bArr[3];
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006a  */
    @Override // java.io.DataInput
    public final String readLine() throws IOException {
        wd7 wd7Var;
        by0 by0Var = new by0();
        boolean z = false;
        while (true) {
            long j = this.d / 512;
            byte[] bArr = new byte[512];
            wd7Var = this;
            int iA = wd7Var.a(bArr, 0, 1, (int) j, 512);
            if (iA == 0) {
                break;
            }
            int i = (int) (wd7Var.d - (j * 512));
            while (i < iA) {
                byte b = bArr[i];
                by0Var.write(b);
                if (b == 10) {
                    i++;
                    z = true;
                    break;
                }
                i++;
            }
            if (wd7Var.c && i != iA) {
                wd7Var.c = false;
            }
            if (wd7Var.c || z) {
                break;
            }
            this = wd7Var;
        }
        int size = by0Var.size();
        if (size == 0) {
            return null;
        }
        wd7Var.d += (long) size;
        byte[] bArrA = by0Var.a();
        if (bArrA[size - 1] == 10) {
            int i2 = size - 1;
            if (i2 > 0) {
                size -= 2;
                if (bArrA[size] != 13) {
                    size = i2;
                }
            } else {
                size = i2;
            }
        }
        return new String(bArrA, 0, size, StandardCharsets.UTF_8);
    }

    @Override // java.io.DataInput
    public final long readLong() throws EOFException {
        byte[] bArr = new byte[8];
        readFully(bArr, 0, 8);
        return (((long) bArr[0]) << 56) + (((long) (bArr[1] & 255)) << 48) + (((long) (bArr[2] & 255)) << 40) + (((long) (bArr[3] & 255)) << 32) + (((long) (bArr[4] & 255)) << 24) + ((long) ((bArr[5] & 255) << 16)) + ((long) ((bArr[6] & 255) << 8)) + ((long) (bArr[7] & 255));
    }

    @Override // java.io.DataInput
    public final short readShort() throws EOFException {
        byte[] bArr = new byte[2];
        readFully(bArr, 0, 2);
        return (short) ((bArr[0] << 8) + bArr[1]);
    }

    @Override // java.io.DataInput
    public final String readUTF() throws EOFException {
        int unsignedShort = readUnsignedShort();
        byte[] bArr = new byte[unsignedShort + 2];
        bArr[0] = (byte) (unsignedShort >>> 8);
        bArr[1] = (byte) unsignedShort;
        readFully(bArr, 2, unsignedShort);
        return new DataInputStream(new ByteArrayInputStream(bArr)).readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        return readByte() & 255;
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws EOFException {
        byte[] bArr = new byte[2];
        readFully(bArr, 0, 2);
        return (bArr[0] << 8) + bArr[1];
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i) {
        if (i <= 0) {
            return 0;
        }
        long j = this.d;
        long jMin = Math.min(g(), this.d + ((long) i));
        this.d = jMin;
        return (int) (jMin - j);
    }

    public void write(final byte[] bArr, final int i, final int i2) throws IOException {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            l0.a();
            return;
        }
        if (this.b) {
            y5.m("File is opened as read-only");
            return;
        }
        long j = this.d;
        kr7 kr7Var = this.a;
        if (j > 0 && j < 512 && i2 > 512) {
            final int i3 = 512 - ((int) j);
            kr7Var.getClass();
            int i4 = Shell.UNKNOWN;
            k55.j().execTask(new pd7() { // from class: ud7
                @Override // defpackage.pd7
                public final void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) throws IOException {
                    String string;
                    wd7 wd7Var = this.a;
                    kr7 kr7Var2 = wd7Var.a;
                    long j2 = wd7Var.d;
                    int i5 = i3;
                    if (j2 == 0) {
                        Locale locale = Locale.ROOT;
                        String str = kr7Var2.a;
                        string = dj7.n(dj7.v("dd of=", str, " bs=", i5, " count=1 "), wd7Var.b(), " 2>/dev/null; echo\n");
                    } else {
                        Locale locale2 = Locale.ROOT;
                        String str2 = kr7Var2.a;
                        String strB = wd7Var.b();
                        StringBuilder sbV = dj7.v("dd of=", str2, " ibs=", i5, " count=1 obs=");
                        sbV.append(j2);
                        sbV.append(" seek=1 ");
                        sbV.append(strB);
                        sbV.append(" 2>/dev/null; echo\n");
                        string = sbV.toString();
                    }
                    outputStream.write(string.getBytes(StandardCharsets.UTF_8));
                    outputStream.flush();
                    outputStream.write(bArr, i, i5);
                    outputStream.flush();
                    inputStream.read(wx3.b);
                }
            });
            this.d += (long) i3;
            i2 -= i3;
            i += i3;
        }
        kr7Var.getClass();
        int i5 = Shell.UNKNOWN;
        k55.j().execTask(new pd7() { // from class: ud7
            @Override // defpackage.pd7
            public final void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) throws IOException {
                String string;
                wd7 wd7Var = this.a;
                kr7 kr7Var2 = wd7Var.a;
                long j2 = wd7Var.d;
                int i6 = i2;
                if (j2 == 0) {
                    Locale locale = Locale.ROOT;
                    String str = kr7Var2.a;
                    string = dj7.n(dj7.v("dd of=", str, " bs=", i6, " count=1 "), wd7Var.b(), " 2>/dev/null; echo\n");
                } else {
                    Locale locale2 = Locale.ROOT;
                    String str2 = kr7Var2.a;
                    String strB = wd7Var.b();
                    StringBuilder sbV = dj7.v("dd of=", str2, " ibs=", i6, " count=1 obs=");
                    sbV.append(j2);
                    sbV.append(" seek=1 ");
                    sbV.append(strB);
                    sbV.append(" 2>/dev/null; echo\n");
                    string = sbV.toString();
                }
                outputStream.write(string.getBytes(StandardCharsets.UTF_8));
                outputStream.flush();
                outputStream.write(bArr, i, i6);
                outputStream.flush();
                inputStream.read(wx3.b);
            }
        });
        this.d += (long) i2;
    }

    @Override // java.io.DataOutput
    public void writeBoolean(boolean z) throws IOException {
        write(z ? 1 : 0);
    }

    @Override // java.io.DataOutput
    public void writeByte(int i) throws IOException {
        write(i);
    }

    @Override // java.io.DataOutput
    public final void writeBytes(String str) throws IOException {
        by0 by0Var = new by0();
        new DataOutputStream(by0Var).writeBytes(str);
        by0Var.g(this);
    }

    @Override // java.io.DataOutput
    public void writeChar(int i) throws IOException {
        writeShort(i);
    }

    @Override // java.io.DataOutput
    public final void writeChars(String str) throws IOException {
        by0 by0Var = new by0();
        new DataOutputStream(by0Var).writeChars(str);
        by0Var.g(this);
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
        write(new byte[]{(byte) (i >>> 24), (byte) (i >>> 16), (byte) (i >>> 8), (byte) i}, 0, 4);
    }

    @Override // java.io.DataOutput
    public final void writeLong(long j) throws IOException {
        write(new byte[]{(byte) (j >>> 56), (byte) (j >>> 48), (byte) (j >>> 40), (byte) (j >>> 32), (byte) (j >>> 24), (byte) (j >>> 16), (byte) (j >>> 8), (byte) j}, 0, 8);
    }

    @Override // java.io.DataOutput
    public final void writeShort(int i) throws IOException {
        write(new byte[]{(byte) (i >>> 8), (byte) i}, 0, 2);
    }

    @Override // java.io.DataOutput
    public final void writeUTF(String str) throws IOException {
        by0 by0Var = new by0();
        new DataOutputStream(by0Var).writeUTF(str);
        by0Var.g(this);
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws EOFException {
        readFully(bArr, 0, bArr.length);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.DataOutput
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.DataOutput
    public final void write(int i) throws IOException {
        write(new byte[]{(byte) (i & 255)}, 0, 1);
    }
}
