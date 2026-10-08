package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ey1 {
    public final byte[] a;
    public final byte[] b;
    public final int c;

    public ey1(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length == 0) {
            c6.f("Missing Seed for KDF");
            throw null;
        }
        this.a = Arrays.copyOf(bArr, bArr.length);
        if (bArr2 == null) {
            this.b = new byte[0];
        } else {
            this.b = Arrays.copyOf(bArr2, bArr2.length);
        }
        this.c = 32;
    }
}
