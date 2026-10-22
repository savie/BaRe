package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k1 extends a2 {
    public k1(byte[] bArr) {
        super(m2.h, bArr);
    }

    @Override // defpackage.z0
    public final String c() {
        return Arrays.toString(this.b);
    }

    @Override // defpackage.z0
    public final Object getValue() {
        byte[] bArr = this.b;
        return Arrays.copyOf(bArr, bArr.length);
    }
}
