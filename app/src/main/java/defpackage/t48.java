package defpackage;

import java.io.FilterOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t48 extends FilterOutputStream {
    public boolean a;

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final synchronized void write(int i) {
        try {
            if (i != 10) {
                if (i == 13) {
                    this.a = true;
                    ((FilterOutputStream) this).out.write(13);
                    return;
                }
            } else if (!this.a) {
                ((FilterOutputStream) this).out.write(13);
            }
            this.a = false;
            ((FilterOutputStream) this).out.write(i);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                int i4 = i + 1;
                write(bArr[i]);
                i = i4;
                i2 = i3;
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }
}
