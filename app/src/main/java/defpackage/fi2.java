package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fi2 extends gk1 {
    public final void d0(byte[] bArr, byte[] bArr2, int i, int i2) {
        byte[] bArr3 = (byte[]) this.b;
        int i3 = this.a;
        int iMin = Math.min(i2, i3);
        int i4 = 0;
        while (i4 < iMin) {
            bArr2[i4] = (byte) (bArr[i + i4] - bArr3[i4]);
            i4++;
        }
        if (i2 >= i3) {
            System.arraycopy(bArr, (i + i2) - i3, bArr3, 0, i3);
        } else {
            int i5 = i3 - i4;
            System.arraycopy(bArr3, i4, bArr3, 0, i5);
            System.arraycopy(bArr, i, bArr3, i5, i2);
        }
        while (i4 < i2) {
            int i6 = i + i4;
            bArr2[i4] = (byte) (bArr[i6] - bArr[i6 - i3]);
            i4++;
        }
    }
}
