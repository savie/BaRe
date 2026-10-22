package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class bf6 extends y13 {
    public static final int[] l = new int[128];
    public long h;
    public int i;
    public long j;
    public byte k;

    static {
        for (int i = 8; i < 2048; i += 16) {
            int i2 = i;
            int i3 = 0;
            for (int i4 = 0; i4 < 4; i4++) {
                i2 *= i2;
                i3 <<= 1;
                while (((-65536) & i2) != 0) {
                    i2 >>>= 1;
                    i3++;
                }
            }
            l[i >> 4] = 161 - i3;
        }
    }

    public static int T(int i, int i2) {
        return l[(i ^ ((-i2) & 2047)) >>> 4];
    }

    public static int U(int i, short[] sArr) {
        int length = i | sArr.length;
        int iT = 0;
        do {
            int i2 = length & 1;
            length >>>= 1;
            iT += T(sArr[length], i2);
        } while (length != 1);
        return iT;
    }

    public final void R(short[] sArr, int i, int i2) {
        short s = sArr[i];
        int i3 = this.i;
        int i4 = (i3 >>> 11) * s;
        if (i2 == 0) {
            this.i = i4;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
        } else {
            this.h += ((long) i4) & 4294967295L;
            this.i = i3 - i4;
            sArr[i] = (short) (s - (s >>> 5));
        }
        int i5 = this.i;
        if (((-16777216) & i5) == 0) {
            this.i = i5 << 8;
            W();
        }
    }

    public final void S(int i, short[] sArr) {
        int length = sArr.length;
        int i2 = 1;
        do {
            length >>>= 1;
            int i3 = i & length;
            R(sArr, i2, i3);
            i2 <<= 1;
            if (i3 != 0) {
                i2 |= 1;
            }
        } while (length != 1);
    }

    public int V() {
        throw new Error();
    }

    public final void W() {
        long j = this.h;
        int i = (int) (j >>> 32);
        if (i != 0 || j < 4278190080L) {
            byte b = this.k;
            while (true) {
                X(b + i);
                long j2 = this.j - 1;
                this.j = j2;
                if (j2 == 0) {
                    break;
                } else {
                    b = 255;
                }
            }
            this.k = (byte) (this.h >>> 24);
        }
        this.j++;
        this.h = (this.h & 16777215) << 8;
    }

    public abstract void X(int i);
}
