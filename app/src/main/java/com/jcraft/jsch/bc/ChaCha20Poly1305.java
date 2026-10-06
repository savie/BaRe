package com.jcraft.jsch.bc;

import com.jcraft.jsch.Cipher;
import defpackage.f26;
import defpackage.h31;
import defpackage.oo4;
import defpackage.vw5;
import java.nio.ByteBuffer;
import javax.crypto.AEADBadTagException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ChaCha20Poly1305 implements Cipher {
    public h31 a;
    public h31 b;
    public oo4 c;
    public oo4 d;
    public int e;
    public f26 f;

    @Override // com.jcraft.jsch.Cipher
    public final void doFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        byte[] bArr3;
        if (this.e == 1) {
            byte[] bArr4 = new byte[16];
            System.arraycopy(bArr, i2, bArr4, 0, 16);
            byte[] bArr5 = new byte[16];
            f26 f26Var = this.f;
            if (i < 0) {
                f26Var.update(bArr, i + 4, i2);
            } else {
                f26Var.update(bArr, i, i2);
            }
            this.f.doFinal(bArr5, 0);
            int i4 = 0;
            for (int i5 = 0; i5 < 16; i5++) {
                i4 |= bArr4[i5] ^ bArr5[i5];
            }
            if (i4 != 0) {
                throw new AEADBadTagException("Tag mismatch");
            }
        }
        h31 h31Var = this.b;
        if (i < 0) {
            bArr3 = bArr2;
            h31Var.c(bArr, i + 4, (i2 - 4) - i, bArr3, i3 + 4 + i);
        } else {
            bArr3 = bArr2;
            h31Var.c(bArr, i + 4, i2 - 4, bArr3, i3 + 4);
        }
        if (this.e == 0) {
            this.f.update(bArr3, i3, i2);
            this.f.doFinal(bArr3, i2);
        }
    }

    @Override // com.jcraft.jsch.Cipher
    public final int getBlockSize() {
        return 64;
    }

    @Override // com.jcraft.jsch.Cipher
    public final int getIVSize() {
        return 8;
    }

    @Override // com.jcraft.jsch.Cipher
    public final int getTagSize() {
        return 16;
    }

    @Override // com.jcraft.jsch.Cipher
    public final void init(int i, byte[] bArr, byte[] bArr2) throws Exception {
        if (bArr.length > 64) {
            byte[] bArr3 = new byte[64];
            System.arraycopy(bArr, 0, bArr3, 0, 64);
            bArr = bArr3;
        }
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[32];
        System.arraycopy(bArr, 32, bArr4, 0, 32);
        System.arraycopy(bArr, 0, bArr5, 0, 32);
        this.e = i;
        try {
            this.c = new oo4(bArr4, 32);
            this.d = new oo4(bArr5, 32);
            this.a = new h31();
            this.b = new h31();
            this.f = new f26();
        } catch (Exception e) {
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = null;
            throw e;
        }
    }

    @Override // com.jcraft.jsch.Cipher
    public final boolean isAEAD() {
        return true;
    }

    @Override // com.jcraft.jsch.Cipher
    public final boolean isCBC() {
        return false;
    }

    @Override // com.jcraft.jsch.Cipher
    public final boolean isChaCha20() {
        return true;
    }

    @Override // com.jcraft.jsch.Cipher
    public final void update(int i) throws Exception {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putLong(0, i);
        this.a.b(this.e == 0, new vw5(this.c, byteBufferAllocate.array(), byteBufferAllocate.array().length));
        this.b.b(this.e == 0, new vw5(this.d, byteBufferAllocate.array(), byteBufferAllocate.array().length));
        byte[] bArr = new byte[64];
        this.b.c(bArr, 0, 64, bArr, 0);
        this.f.c(new oo4(bArr, 32));
    }

    @Override // com.jcraft.jsch.Cipher
    public final void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        this.a.c(bArr, i, i2, bArr2, i3);
    }
}
