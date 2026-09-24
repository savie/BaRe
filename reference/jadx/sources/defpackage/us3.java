package defpackage;

import java.io.IOException;
import java.io.PushbackInputStream;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class us3 extends PushbackInputStream {
    public static final boolean b = System.lineSeparator().equals("\r\n");
    public static final byte[] c = System.lineSeparator().getBytes(StandardCharsets.US_ASCII);
    public int a;

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        if (((PushbackInputStream) this).in != null) {
            return ((PushbackInputStream) this).in.available() + (((PushbackInputStream) this).buf.length - ((PushbackInputStream) this).pos);
        }
        y5.m("Stream closed");
        return 0;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (b) {
            return super.read(bArr, i, i2);
        }
        if (i2 < 1) {
            return 0;
        }
        int iMin = Math.min(i2, available());
        this.a = iMin;
        if (iMin < 1) {
            this.a = 1;
        }
        int i4 = readInt();
        if (i4 == -1) {
            return -1;
        }
        int i5 = i;
        while (true) {
            i3 = i5 + 1;
            bArr[i5] = (byte) i4;
            int i6 = this.a - 1;
            this.a = i6;
            if (i6 <= 0 || (i4 = readInt()) == -1) {
                break;
            }
            i5 = i3;
        }
        return i3 - i;
    }

    public final int readInt() throws IOException {
        int i = super.read();
        if (i != 13) {
            return i;
        }
        int i2 = super.read();
        if (i2 != 10) {
            if (i2 != -1) {
                unread(i2);
            }
            return 13;
        }
        unread(c);
        int i3 = super.read();
        this.a--;
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (b) {
            return super.read();
        }
        return readInt();
    }
}
