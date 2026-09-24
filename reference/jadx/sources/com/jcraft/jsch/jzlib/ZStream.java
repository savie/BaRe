package com.jcraft.jsch.jzlib;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class ZStream {
    public byte[] a;
    public int b;
    public int c;
    public long d;
    public byte[] e;
    public int f;
    public int g;
    public long h;
    public String i;
    public Deflate j;
    public Inflate k;
    public Checksum l;

    public ZStream() {
        this(new Adler32());
    }

    public final void a() {
        Deflate deflate = this.j;
        int i = deflate.f;
        int i2 = this.g;
        if (i > i2) {
            i = i2;
        }
        if (i == 0) {
            return;
        }
        byte[] bArr = deflate.c;
        int length = bArr.length;
        int i3 = deflate.e;
        if (length > i3) {
            byte[] bArr2 = this.e;
            if (bArr2.length > this.f && bArr.length >= i3 + i) {
                int length2 = bArr2.length;
            }
        }
        System.arraycopy(bArr, i3, this.e, this.f, i);
        this.f += i;
        Deflate deflate2 = this.j;
        deflate2.e += i;
        this.h += (long) i;
        this.g -= i;
        int i4 = deflate2.f - i;
        deflate2.f = i4;
        if (i4 == 0) {
            deflate2.e = 0;
        }
    }

    public final void b(byte[] bArr, int i, int i2) {
        if (i2 > 0 || this.a == null) {
            int i3 = this.c;
            if (i3 <= 0) {
                this.a = bArr;
                this.b = i;
                this.c = i2;
            } else {
                byte[] bArr2 = new byte[i3 + i2];
                System.arraycopy(this.a, this.b, bArr2, 0, i3);
                System.arraycopy(bArr, i, bArr2, this.c, i2);
                this.a = bArr2;
                this.b = 0;
                this.c += i2;
            }
        }
    }

    public ZStream(Checksum checksum) {
        this.l = checksum;
    }
}
