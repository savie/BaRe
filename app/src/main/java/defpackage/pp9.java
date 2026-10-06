package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pp9 extends mo9 {
    public final byte[] c;

    public pp9(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.c = bArr;
    }

    @Override // defpackage.mo9
    public final byte[] q() {
        return this.c;
    }
}
