package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ye6 extends y13 {
    public int h = 0;
    public int i = 0;

    public final int R(int i, short[] sArr) {
        T();
        short s = sArr[i];
        int i2 = (this.h >>> 11) * s;
        if (Integer.compareUnsigned(this.i, i2) < 0) {
            this.h = i2;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
            return 0;
        }
        this.h -= i2;
        this.i -= i2;
        sArr[i] = (short) (s - (s >>> 5));
        return 1;
    }

    public final int S(short[] sArr) {
        int iR = 1;
        do {
            iR = R(iR, sArr) | (iR << 1);
        } while (iR < sArr.length);
        return iR - sArr.length;
    }

    public abstract void T();
}
