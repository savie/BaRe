package com.jcraft.jsch.jzlib;

import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Logger;
import com.jcraft.jsch.Session;
import java.io.UncheckedIOException;
import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Compression implements com.jcraft.jsch.Compression {
    public Deflater a;
    public Inflater b;
    public final byte[] c = new byte[4096];
    public byte[] d;
    public Session e;

    public final void a(int i, Supplier supplier) {
        Session session = this.e;
        Logger logger = session == null ? JSch.i : session.getLogger();
        if (logger.isEnabled(i)) {
            logger.log(i, (String) supplier.get());
        }
    }

    @Override // com.jcraft.jsch.Compression
    public final byte[] compress(byte[] bArr, int i, int[] iArr) {
        Deflater deflater = this.a;
        deflater.a = bArr;
        deflater.b = i;
        deflater.c = iArr[0] - i;
        do {
            Deflater deflater2 = this.a;
            byte[] bArr2 = this.c;
            deflater2.e = bArr2;
            deflater2.f = 0;
            deflater2.g = 4096;
            final int iC = deflater2.c(1);
            if (iC != 0) {
                a(2, new Supplier() { // from class: qp1
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return fz5.j(iC, "compress: deflate returnd ");
                    }
                });
            } else {
                int i2 = 4096 - this.a.g;
                int i3 = i + i2;
                int i4 = i3 + 52;
                if (bArr.length < i4) {
                    byte[] bArr3 = new byte[i4 * 2];
                    System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
                    bArr = bArr3;
                }
                System.arraycopy(bArr2, 0, bArr, i, i2);
                i = i3;
            }
        } while (this.a.g == 0);
        iArr[0] = i;
        return bArr;
    }

    @Override // com.jcraft.jsch.Compression
    public final void end() {
        InfBlocks infBlocks;
        this.d = null;
        Inflater inflater = this.b;
        if (inflater != null) {
            Inflate inflate = inflater.k;
            if (inflate != null && (infBlocks = inflate.f) != null) {
                infBlocks.b();
                infBlocks.s = null;
                infBlocks.r = null;
            }
            this.b = null;
        }
        Deflater deflater = this.a;
        if (deflater != null) {
            deflater.d();
            this.a = null;
        }
        this.e = null;
    }

    @Override // com.jcraft.jsch.Compression
    public final void init(int i, int i2) throws UncheckedIOException {
        if (i == 1) {
            try {
                this.a = new Deflater(i2);
            } catch (GZIPException e) {
                throw new UncheckedIOException(e);
            }
        } else if (i == 0) {
            this.b = new Inflater();
            this.d = new byte[4096];
        }
        a(0, new Supplier() { // from class: sp1
            @Override // java.util.function.Supplier
            public final Object get() {
                return "zlib using " + this.a.getClass().getCanonicalName();
            }
        });
    }

    @Override // com.jcraft.jsch.Compression
    public final byte[] uncompress(byte[] bArr, int i, int[] iArr) {
        Inflater inflater = this.b;
        inflater.a = bArr;
        inflater.b = i;
        inflater.c = iArr[0];
        int i2 = 0;
        while (true) {
            Inflater inflater2 = this.b;
            byte[] bArr2 = this.c;
            inflater2.e = bArr2;
            inflater2.f = 0;
            inflater2.g = 4096;
            final int iC = inflater2.c(1);
            if (iC == -5) {
                if (i2 > bArr.length - i) {
                    byte[] bArr3 = new byte[i2 + i];
                    System.arraycopy(bArr, 0, bArr3, 0, i);
                    System.arraycopy(this.d, 0, bArr3, i, i2);
                    bArr = bArr3;
                } else {
                    System.arraycopy(this.d, 0, bArr, i, i2);
                }
                iArr[0] = i2;
                return bArr;
            }
            if (iC != 0) {
                a(2, new Supplier() { // from class: rp1
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return fz5.j(iC, "compress: deflate returnd ");
                    }
                });
                return null;
            }
            int i3 = (i2 + 4096) - this.b.g;
            if (i3 > 262139) {
                throw new com.jcraft.jsch.Compression.InflaterException("Decompressed packet exceeds PACKET_MAX_SIZE");
            }
            byte[] bArr4 = this.d;
            if (bArr4.length < i3) {
                int length = bArr4.length * 2;
                if (length >= i3) {
                    i3 = length;
                }
                byte[] bArr5 = new byte[i3];
                System.arraycopy(bArr4, 0, bArr5, 0, i2);
                this.d = bArr5;
            }
            System.arraycopy(bArr2, 0, this.d, i2, 4096 - this.b.g);
            i2 += 4096 - this.b.g;
            iArr[0] = i2;
        }
    }

    @Override // com.jcraft.jsch.Compression
    public final void init(int i, int i2, Session session) {
        this.e = session;
        init(i, i2);
    }
}
