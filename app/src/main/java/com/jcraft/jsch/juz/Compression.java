package com.jcraft.jsch.juz;

import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Logger;
import com.jcraft.jsch.Session;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Compression implements com.jcraft.jsch.Compression {
    public Deflater a;
    public Inflater b;
    public byte[] c = new byte[4096];
    public byte[] d;
    public Session e;

    @Override // com.jcraft.jsch.Compression
    public final byte[] compress(byte[] bArr, int i, int[] iArr) {
        int length = this.c.length;
        int i2 = iArr[0];
        if (length < i2) {
            this.c = new byte[i2 * 2];
        }
        this.a.setInput(bArr, i, i2 - i);
        while (true) {
            Deflater deflater = this.a;
            byte[] bArr2 = this.c;
            int iDeflate = deflater.deflate(bArr2, 0, bArr2.length, 2);
            int i3 = i + iDeflate;
            int i4 = i3 + 52;
            if (bArr.length < i4) {
                byte[] bArr3 = new byte[i4 * 2];
                System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
                bArr = bArr3;
            }
            System.arraycopy(this.c, 0, bArr, i, iDeflate);
            if (this.a.needsInput()) {
                iArr[0] = i3;
                return bArr;
            }
            i = i3;
        }
    }

    @Override // com.jcraft.jsch.Compression
    public final void end() {
        this.d = null;
        Inflater inflater = this.b;
        if (inflater != null) {
            inflater.end();
            this.b = null;
        }
        Deflater deflater = this.a;
        if (deflater != null) {
            deflater.end();
            this.a = null;
        }
        this.e = null;
    }

    @Override // com.jcraft.jsch.Compression
    public final void init(int i, int i2) {
        if (i == 1) {
            this.a = new Deflater(i2);
        } else if (i == 0) {
            this.b = new Inflater();
            this.d = new byte[4096];
        }
        Session session = this.e;
        Logger logger = session == null ? JSch.i : session.getLogger();
        if (logger.isEnabled(0)) {
            logger.log(0, "zlib using " + getClass().getCanonicalName());
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0049  */
    /* JADX WARN: Code duplicated, block: B:22:0x004c  */
    /* JADX WARN: Code duplicated, block: B:26:0x0058  */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x0058, please report this as an issue */
    @Override // com.jcraft.jsch.Compression
    public final byte[] uncompress(byte[] bArr, int i, int[] iArr) {
        Session session;
        Logger logger;
        int i2;
        this.b.setInput(bArr, i, iArr[0]);
        int i3 = 0;
        while (true) {
            try {
                Inflater inflater = this.b;
                byte[] bArr2 = this.c;
                int iInflate = inflater.inflate(bArr2, 0, bArr2.length);
                i2 = i3 + iInflate;
                if (i2 > 262139) {
                    throw new com.jcraft.jsch.Compression.InflaterException("Decompressed packet exceeds PACKET_MAX_SIZE");
                }
                byte[] bArr3 = this.d;
                if (bArr3.length < i2) {
                    byte[] bArr4 = new byte[i2];
                    System.arraycopy(bArr3, 0, bArr4, 0, i3);
                    this.d = bArr4;
                }
                System.arraycopy(this.c, 0, this.d, i3, iInflate);
                try {
                    if (this.b.getRemaining() <= 0) {
                        break;
                    }
                    i3 = i2;
                } catch (DataFormatException e) {
                    e = e;
                    i3 = i2;
                    session = this.e;
                    if (session == null) {
                        logger = JSch.i;
                    } else {
                        logger = session.getLogger();
                    }
                    if (logger.isEnabled(2)) {
                        logger.log(2, "an exception during uncompress\n" + e.toString());
                    }
                    i2 = i3;
                }
            } catch (DataFormatException e2) {
                e = e2;
            }
            session = this.e;
            if (session == null) {
                logger = JSch.i;
            } else {
                logger = session.getLogger();
            }
            if (logger.isEnabled(2)) {
                logger.log(2, "an exception during uncompress\n" + e.toString());
            }
            i2 = i3;
        }
        int length = bArr.length;
        byte[] bArr5 = this.d;
        if (length < bArr5.length + i) {
            byte[] bArr6 = new byte[bArr5.length + i];
            System.arraycopy(bArr, 0, bArr6, 0, i);
            bArr = bArr6;
        }
        System.arraycopy(this.d, 0, bArr, i, i2);
        iArr[0] = i2;
        return bArr;
    }

    @Override // com.jcraft.jsch.Compression
    public final void init(int i, int i2, Session session) {
        this.e = session;
        init(i, i2);
    }
}
