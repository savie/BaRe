package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v extends a2 {
    public final int c;
    public final boolean[] d;

    public v(m2 m2Var, byte[] bArr, int i) {
        super(m2Var, bArr);
        this.c = i;
        int length = (bArr.length * 8) - i;
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            boolean z = true;
            if ((bArr[i2 / 8] & (1 << (7 - (i2 % 8)))) == 0) {
                z = false;
            }
            zArr[i2] = z;
        }
        this.d = zArr;
    }

    @Override // defpackage.z0
    public final String c() {
        return Arrays.toString(this.d);
    }

    @Override // defpackage.z0
    public final Object getValue() {
        boolean[] zArr = this.d;
        return Arrays.copyOf(zArr, zArr.length);
    }
}
