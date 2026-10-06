package com.jcraft.jsch.bc;

import defpackage.c6;
import defpackage.jb9;
import defpackage.ke;
import defpackage.ms8;
import defpackage.nh;
import defpackage.yc9;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class KeyPairGenEdDSA implements com.jcraft.jsch.KeyPairGenEdDSA {
    public byte[] a;
    public byte[] b;

    @Override // com.jcraft.jsch.KeyPairGenEdDSA
    public final byte[] getPrv() {
        return this.a;
    }

    @Override // com.jcraft.jsch.KeyPairGenEdDSA
    public final byte[] getPub() {
        return this.b;
    }

    @Override // com.jcraft.jsch.KeyPairGenEdDSA
    public final void init(String str, byte[] bArr) throws Exception {
        nh nhVarR;
        ke keVarY;
        if (!str.equals("Ed25519") && !str.equals("Ed448")) {
            throw new NoSuchAlgorithmException("invalid curve ".concat(str));
        }
        if (str.equals("Ed25519")) {
            if (bArr.length != 32) {
                c6.f("'buf' must have length 32");
                return;
            }
            byte[] bArr2 = new byte[32];
            System.arraycopy(bArr, 0, bArr2, 0, 32);
            synchronized (bArr2) {
                keVarY = jb9.y(bArr2);
            }
            byte[] bArr3 = new byte[32];
            jb9.w(keVarY, bArr3);
            this.b = bArr3;
            this.a = ms8.k(bArr2);
        } else {
            if (bArr.length != 57) {
                c6.f("'buf' must have length 57");
                return;
            }
            byte[] bArr4 = new byte[57];
            System.arraycopy(bArr, 0, bArr4, 0, 57);
            synchronized (bArr4) {
                nhVarR = yc9.r(bArr4);
            }
            byte[] bArr5 = new byte[57];
            yc9.n(nhVarR, bArr5);
            this.b = bArr5;
            this.a = ms8.k(bArr4);
        }
        int length = this.a.length;
    }

    @Override // com.jcraft.jsch.KeyPairGenEdDSA
    public final void init(String str, int i) throws Exception {
        nh nhVarR;
        ke keVarY;
        if (!str.equals("Ed25519") && !str.equals("Ed448")) {
            throw new NoSuchAlgorithmException("invalid curve ".concat(str));
        }
        if (str.equals("Ed25519")) {
            byte[] bArr = new byte[32];
            new SecureRandom().nextBytes(bArr);
            synchronized (bArr) {
                keVarY = jb9.y(bArr);
            }
            byte[] bArr2 = new byte[32];
            jb9.w(keVarY, bArr2);
            this.b = bArr2;
            this.a = ms8.k(bArr);
            return;
        }
        byte[] bArr3 = new byte[57];
        new SecureRandom().nextBytes(bArr3);
        synchronized (bArr3) {
            nhVarR = yc9.r(bArr3);
        }
        byte[] bArr4 = new byte[57];
        yc9.n(nhVarR, bArr4);
        this.b = bArr4;
        this.a = ms8.k(bArr3);
    }
}
