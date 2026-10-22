package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fn9 extends gk1 {
    @Override // defpackage.gk1
    public final int B() {
        return 24;
    }

    @Override // defpackage.gk1
    public final int[] G(int[] iArr, int i) {
        if (iArr.length != 6) {
            l0.i("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", new Object[]{Integer.valueOf(iArr.length << 5)});
            return null;
        }
        int[] iArr2 = new int[16];
        int[] iArrE = ym9.e((int[]) this.b, iArr);
        int[] iArr3 = ym9.a;
        System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
        System.arraycopy(iArrE, 0, iArr2, iArr3.length, 8);
        iArr2[12] = i;
        iArr2[13] = 0;
        iArr2[14] = iArr[4];
        iArr2[15] = iArr[5];
        return iArr2;
    }
}
