package com.jcraft.jsch.jzlib;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class InfBlocks {
    public int a;
    public int b;
    public int c;
    public int d;
    public int[] e;
    public final InfCodes n;
    public int o;
    public int p;
    public int q;
    public byte[] s;
    public final int t;
    public int u;
    public int v;
    public final boolean w;
    public final ZStream y;
    public static final int[] z = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    public static final int[] A = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
    public final int[] f = new int[1];
    public final int[] g = new int[1];
    public final int[] h = new int[1];
    public final int[] i = new int[1];
    public final int[][] j = new int[1][];
    public final int[][] k = new int[1][];
    public final int[] l = new int[1];
    public final int[] m = new int[1];
    public final InfTree x = new InfTree();
    public int[] r = new int[4320];

    public InfBlocks(ZStream zStream, int i) {
        this.y = zStream;
        this.n = new InfCodes(zStream, this);
        this.s = new byte[i];
        this.t = i;
        this.w = zStream.k.d != 0;
        this.a = 0;
        b();
    }

    public final int a(int i) {
        ZStream zStream = this.y;
        int i2 = zStream.f;
        int i3 = this.u;
        int i4 = this.v;
        int i5 = this.t;
        if (i3 > i4) {
            i4 = i5;
        }
        int i6 = i4 - i3;
        int i7 = zStream.g;
        if (i6 > i7) {
            i6 = i7;
        }
        if (i6 != 0 && i == -5) {
            i = 0;
        }
        zStream.g = i7 - i6;
        zStream.h += (long) i6;
        boolean z2 = this.w;
        if (z2 && i6 > 0) {
            zStream.l.update(this.s, i3, i6);
        }
        System.arraycopy(this.s, i3, zStream.e, i2, i6);
        int i8 = i2 + i6;
        int i9 = i3 + i6;
        if (i9 == i5) {
            if (this.v == i5) {
                this.v = 0;
            }
            i9 = this.v;
            int i10 = zStream.g;
            if (i9 > i10) {
                i9 = i10;
            }
            if (i9 != 0 && i == -5) {
                i = 0;
            }
            zStream.g = i10 - i9;
            zStream.h += (long) i9;
            if (z2 && i9 > 0) {
                zStream.l.update(this.s, 0, i9);
            }
            System.arraycopy(this.s, 0, zStream.e, i8, i9);
            i8 += i9;
        }
        zStream.f = i8;
        this.u = i9;
        return i;
    }

    public final void b() {
        this.a = 0;
        this.p = 0;
        this.q = 0;
        this.v = 0;
        this.u = 0;
        if (this.w) {
            this.y.l.reset();
        }
    }
}
