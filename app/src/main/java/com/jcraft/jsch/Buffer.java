package com.jcraft.jsch;

import defpackage.e6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Buffer {
    public final byte[] a;
    public byte[] b;
    public int c;
    public int d;

    public Buffer(int i) {
        this.a = new byte[4];
        this.b = new byte[i];
        this.c = 0;
        this.d = 0;
    }

    public static Buffer b(byte[][] bArr) {
        int length = bArr.length * 4;
        for (byte[] bArr2 : bArr) {
            length += bArr2.length;
        }
        Buffer buffer = new Buffer(length);
        for (byte[] bArr3 : bArr) {
            buffer.putString(bArr3);
        }
        return buffer;
    }

    public final void a(int i) {
        int i2 = this.c;
        int i3 = i + i2 + 128;
        byte[] bArr = this.b;
        if (bArr.length < i3) {
            int length = bArr.length * 2;
            if (length >= i3) {
                i3 = length;
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.b = bArr2;
        }
    }

    public final void c(byte[] bArr, int i, int i2) {
        System.arraycopy(this.b, this.d, bArr, i, i2);
        this.d += i2;
    }

    public final byte[][] d(int i, String str) throws JSchException {
        byte[][] bArr = new byte[i][];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = getInt();
            if (getLength() < i3) {
                e6.h(str);
                return null;
            }
            byte[] bArr2 = new byte[i3];
            bArr[i2] = bArr2;
            c(bArr2, 0, i3);
        }
        return bArr;
    }

    public final byte e() {
        return this.b[5];
    }

    public final int f() {
        return (getByte() & 255) | ((getByte() << 8) & 65280);
    }

    public final void g() {
        this.d = 0;
    }

    public final int getByte() {
        byte[] bArr = this.b;
        int i = this.d;
        this.d = i + 1;
        return bArr[i] & 255;
    }

    public final int getInt() {
        return (f() & 65535) | ((f() << 16) & (-65536));
    }

    public final int getLength() {
        return this.c - this.d;
    }

    public final long getLong() {
        return ((((long) getInt()) & 4294967295L) << 32) | (4294967295L & ((long) getInt()));
    }

    public final byte[] getMPInt() {
        int i = getInt();
        if (i < 0 || i > 8192) {
            i = 8192;
        }
        byte[] bArr = new byte[i];
        c(bArr, 0, i);
        return bArr;
    }

    public final byte[] getMPIntBits() {
        int i = (getInt() + 7) / 8;
        byte[] bArr = new byte[i];
        c(bArr, 0, i);
        if ((bArr[0] & 128) == 0) {
            return bArr;
        }
        byte[] bArr2 = new byte[i + 1];
        bArr2[0] = 0;
        System.arraycopy(bArr, 0, bArr2, 1, i);
        return bArr2;
    }

    public final int getOffSet() {
        return this.d;
    }

    public final byte[] getString() {
        int i = getInt();
        if (i < 0 || i > 262144) {
            i = 262144;
        }
        byte[] bArr = new byte[i];
        c(bArr, 0, i);
        return bArr;
    }

    public final long getUInt() {
        return (((((((long) getByte()) << 8) & 65280) | ((long) (getByte() & 255))) << 16) & (-65536)) | ((((((long) getByte()) << 8) & 65280) | ((long) (getByte() & 255))) & 65535);
    }

    public final void h(int i) {
        this.c += i;
    }

    public final void putByte(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.b, this.c, i2);
        this.c += i2;
    }

    public final void putInt(int i) {
        byte[] bArr = this.a;
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) i;
        System.arraycopy(bArr, 0, this.b, this.c, 4);
        this.c += 4;
    }

    public final void putLong(long j) {
        byte[] bArr = this.a;
        bArr[0] = (byte) (j >>> 56);
        bArr[1] = (byte) (j >>> 48);
        bArr[2] = (byte) (j >>> 40);
        bArr[3] = (byte) (j >>> 32);
        System.arraycopy(bArr, 0, this.b, this.c, 4);
        bArr[0] = (byte) (j >>> 24);
        bArr[1] = (byte) (j >>> 16);
        bArr[2] = (byte) (j >>> 8);
        bArr[3] = (byte) j;
        System.arraycopy(bArr, 0, this.b, this.c + 4, 4);
        this.c += 8;
    }

    public final void putMPInt(byte[] bArr) {
        int length = bArr.length;
        if ((bArr[0] & 128) != 0) {
            putInt(length + 1);
            putByte((byte) 0);
        } else {
            putInt(length);
        }
        putByte(bArr, 0, bArr.length);
    }

    public final void putString(byte[] bArr, int i, int i2) {
        putInt(i2);
        putByte(bArr, i, i2);
    }

    public final void reset() {
        this.c = 0;
        this.d = 0;
    }

    public final void setOffSet(int i) {
        this.d = i;
    }

    public final void shift() {
        int i = this.d;
        if (i == 0) {
            return;
        }
        byte[] bArr = this.b;
        System.arraycopy(bArr, i, bArr, 0, this.c - i);
        this.c -= this.d;
        this.d = 0;
    }

    public final void putString(byte[] bArr) {
        putString(bArr, 0, bArr.length);
    }

    public final void getByte(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    public final void putByte(byte[] bArr) {
        putByte(bArr, 0, bArr.length);
    }

    public final int getByte(int i) {
        int i2 = this.d;
        this.d = i + i2;
        return i2;
    }

    public final void putByte(byte b) {
        byte[] bArr = this.b;
        int i = this.c;
        this.c = i + 1;
        bArr[i] = b;
    }

    public Buffer(byte[] bArr) {
        this.a = new byte[4];
        this.b = bArr;
        this.c = 0;
        this.d = 0;
    }

    public Buffer() {
        this(20480);
    }
}
