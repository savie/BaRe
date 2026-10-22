package defpackage;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j74 extends od2 {
    public final long i;
    public long j;
    public final /* synthetic */ k74 k;

    public j74(k74 k74Var, long j) {
        this.k = k74Var;
        this.i = j;
    }

    @Override // defpackage.od2
    public final int b() {
        long j = this.i - this.j;
        gr0 gr0Var = this.k.c;
        return (int) Math.min(j, ((((long) gr0Var.a.available()) * 8) + ((long) gr0Var.d)) / 8);
    }

    @Override // defpackage.od2
    public final boolean n() {
        return this.j < this.i;
    }

    @Override // defpackage.od2
    public final int v(byte[] bArr, int i, int i2) throws IOException {
        k74 k74Var = this.k;
        b3 b3Var = k74Var.e;
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        int iMin = (int) Math.min(this.i - this.j, i2);
        while (i3 < iMin) {
            gr0 gr0Var = k74Var.c;
            int i4 = 1;
            if (gr0Var.d > 0) {
                byte bH = (byte) k74.h(gr0Var, 8);
                int i5 = i + i3;
                byte[] bArr2 = (byte[]) b3Var.c;
                int i6 = b3Var.a;
                bArr2[i6] = bH;
                int i7 = 65535 & (i6 + 1);
                if (!b3Var.b && i7 < i6) {
                    b3Var.b = true;
                }
                b3Var.a = i7;
                bArr[i5] = bH;
            } else {
                int i8 = i + i3;
                int i9 = k74Var.d.read(bArr, i8, iMin - i3);
                if (i9 == -1) {
                    throw new EOFException("Truncated Deflate64 Stream");
                }
                for (int i10 = i8; i10 < i8 + i9; i10++) {
                    byte b = bArr[i10];
                    byte[] bArr3 = (byte[]) b3Var.c;
                    int i11 = b3Var.a;
                    bArr3[i11] = b;
                    int i12 = (i11 + 1) & 65535;
                    if (!b3Var.b && i12 < i11) {
                        b3Var.b = true;
                    }
                    b3Var.a = i12;
                }
                i4 = i9;
            }
            this.j += (long) i4;
            i3 += i4;
        }
        return iMin;
    }

    @Override // defpackage.od2
    public final int y() {
        return this.j < this.i ? 2 : 1;
    }
}
