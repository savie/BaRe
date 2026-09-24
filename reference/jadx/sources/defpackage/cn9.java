package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cn9 extends gk1 {
    @Override // defpackage.gk1
    public final int B() {
        return 12;
    }

    @Override // defpackage.gk1
    public final int[] G(int[] iArr, int i) {
        if (iArr.length != 3) {
            l0.i("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", new Object[]{Integer.valueOf(iArr.length << 5)});
            return null;
        }
        int[] iArr2 = new int[16];
        int[] iArr3 = (int[]) this.b;
        int[] iArr4 = ym9.a;
        System.arraycopy(iArr4, 0, iArr2, 0, iArr4.length);
        System.arraycopy(iArr3, 0, iArr2, iArr4.length, 8);
        iArr2[12] = i;
        System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
        return iArr2;
    }
}
