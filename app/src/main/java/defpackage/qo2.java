package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qo2 extends so2 {
    @Override // defpackage.so2
    public final int a(int i, int i2, int i3, int i4) {
        return so2.g ? 2 : 1;
    }

    @Override // defpackage.so2
    public final float b(int i, int i2, int i3, int i4) {
        if (so2.g) {
            return Math.min(i3 / i, i4 / i2);
        }
        int iMax = Math.max(i2 / i4, i / i3);
        if (iMax == 0) {
            return 1.0f;
        }
        return 1.0f / Integer.highestOneBit(iMax);
    }
}
