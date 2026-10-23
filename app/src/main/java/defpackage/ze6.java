package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ze6 extends ye6 {
    public final byte[] j;
    public int k;

    public ze6(v40 v40Var) {
        byte[] bArrA = v40Var.a(65531);
        this.j = bArrA;
        this.k = bArrA.length;
    }

    @Override // defpackage.ye6
    public final void T() throws cy1 {
        int i = this.h;
        if (((-16777216) & i) == 0) {
            try {
                int i2 = this.i << 8;
                byte[] bArr = this.j;
                int i3 = this.k;
                this.k = i3 + 1;
                this.i = i2 | (bArr[i3] & 255);
                this.h = i << 8;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new cy1();
            }
        }
    }
}
