package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class gq4 {
    public final int a;
    public final int[] b = new int[4];
    public final dm7 c = new dm7();
    public final short[][] d;
    public final short[] e;
    public final short[] f;
    public final short[] g;
    public final short[] h;
    public final short[][] i;
    public final short[][] j;
    public final short[][] k;
    public final short[] l;

    public gq4(int i) {
        Class cls = Short.TYPE;
        this.d = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.e = new short[12];
        this.f = new short[12];
        this.g = new short[12];
        this.h = new short[12];
        this.i = (short[][]) Array.newInstance((Class<?>) cls, 12, 16);
        this.j = (short[][]) Array.newInstance((Class<?>) cls, 4, 64);
        this.k = new short[][]{new short[2], new short[2], new short[4], new short[4], new short[8], new short[8], new short[16], new short[16], new short[32], new short[32]};
        this.l = new short[16];
        this.a = (1 << i) - 1;
    }

    public void a() {
        int[] iArr = this.b;
        int i = 0;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        this.c.a = 0;
        int i2 = 0;
        while (true) {
            short[][] sArr = this.d;
            if (i2 >= sArr.length) {
                break;
            }
            y13.o(sArr[i2]);
            i2++;
        }
        y13.o(this.e);
        y13.o(this.f);
        y13.o(this.g);
        y13.o(this.h);
        int i3 = 0;
        while (true) {
            short[][] sArr2 = this.i;
            if (i3 >= sArr2.length) {
                break;
            }
            y13.o(sArr2[i3]);
            i3++;
        }
        int i4 = 0;
        while (true) {
            short[][] sArr3 = this.j;
            if (i4 >= sArr3.length) {
                break;
            }
            y13.o(sArr3[i4]);
            i4++;
        }
        while (true) {
            short[][] sArr4 = this.k;
            if (i >= sArr4.length) {
                y13.o(this.l);
                return;
            } else {
                y13.o(sArr4[i]);
                i++;
            }
        }
    }
}
