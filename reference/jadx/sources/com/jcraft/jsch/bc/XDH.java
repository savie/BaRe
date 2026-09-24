package com.jcraft.jsch.bc;

import defpackage.as2;
import defpackage.ax8;
import defpackage.bp0;
import defpackage.bx8;
import defpackage.g84;
import defpackage.jb9;
import defpackage.ms8;
import defpackage.n60;
import defpackage.nc8;
import defpackage.yc9;
import defpackage.yw8;
import defpackage.zh8;
import defpackage.zw8;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class XDH implements com.jcraft.jsch.XDH {
    public byte[] a;
    public n60 b;
    public int c;
    public String d;

    @Override // com.jcraft.jsch.XDH
    public final byte[] getQ() throws Exception {
        return this.a;
    }

    @Override // com.jcraft.jsch.XDH
    public final byte[] getSecret(byte[] bArr) throws Exception {
        byte[] bArr2 = new byte[this.c];
        if (this.d.equals("X25519")) {
            try {
                try {
                    ((yw8) this.b).a(new zw8(bArr), bArr2);
                    return bArr2;
                } catch (Exception e) {
                    throw new IllegalStateException(e);
                }
            } catch (Exception e2) {
                throw new InvalidKeyException(e2);
            }
        }
        try {
            try {
                ((ax8) this.b).a(new bx8(bArr), bArr2);
                return bArr2;
            } catch (Exception e3) {
                throw new IllegalStateException(e3);
            }
        } catch (Exception e4) {
            throw new InvalidKeyException(e4);
        }
    }

    @Override // com.jcraft.jsch.XDH
    public final void init(String str, int i) throws Exception {
        if (!str.equals("X25519") && !str.equals("X448")) {
            throw new NoSuchAlgorithmException("invalid curve ".concat(str));
        }
        this.c = i;
        this.d = str;
        if (str.equals("X25519")) {
            yw8 yw8Var = new yw8(new SecureRandom());
            byte[] bArr = new byte[32];
            int[] iArr = new int[10];
            int[] iArr2 = new int[10];
            byte[] bArr2 = new byte[32];
            jb9.T(yw8Var.b, bArr2);
            as2 as2Var = new as2();
            jb9.b0(bArr2, as2Var);
            int[] iArr3 = new int[10];
            int[] iArr4 = new int[10];
            int[] iArr5 = new int[10];
            int[] iArr6 = new int[10];
            nc8.i0((int[]) as2Var.a, iArr4);
            nc8.i0((int[]) as2Var.b, iArr5);
            nc8.i0((int[]) as2Var.c, iArr6);
            nc8.K(iArr4, iArr5, iArr3);
            nc8.l0(iArr4, iArr5, iArr4);
            nc8.K(iArr4, iArr6, iArr4);
            nc8.i0(iArr6, iArr6);
            nc8.K(iArr3, jb9.q, iArr3);
            nc8.b(iArr3, iArr6, iArr3);
            nc8.b(iArr3, iArr4, iArr3);
            nc8.M(iArr3);
            nc8.M(iArr5);
            nc8.M(iArr6);
            if (((~nc8.H(iArr6)) & nc8.H(iArr3) & (~nc8.H(iArr5))) == 0) {
                g84.c();
                return;
            }
            nc8.n(0, 0, (int[]) as2Var.b, iArr);
            nc8.n(0, 0, (int[]) as2Var.c, iArr2);
            nc8.c(iArr2, iArr, iArr, iArr2);
            nc8.E(iArr2, iArr2);
            nc8.K(iArr, iArr2, iArr);
            nc8.M(iArr);
            nc8.x(0, 0, bArr, iArr);
            nc8.x(5, 16, bArr, iArr);
            byte[] bArr3 = new byte[32];
            System.arraycopy(bArr, 0, bArr3, 0, 32);
            this.a = ms8.k(bArr3);
            this.b = yw8Var;
            return;
        }
        ax8 ax8Var = new ax8(new SecureRandom());
        byte[] bArr4 = new byte[56];
        int[] iArr7 = new int[16];
        int[] iArr8 = new int[16];
        byte[] bArr5 = new byte[57];
        yc9.V(ax8Var.b, bArr5);
        bp0 bp0Var = new bp0();
        yc9.d0(bArr5, bp0Var);
        int[] iArr9 = new int[16];
        int[] iArr10 = new int[16];
        int[] iArr11 = new int[16];
        int[] iArr12 = new int[16];
        zh8.L((int[]) bp0Var.a, iArr10);
        zh8.L((int[]) bp0Var.b, iArr11);
        zh8.L((int[]) bp0Var.c, iArr12);
        zh8.z(iArr10, iArr11, iArr9);
        zh8.b(iArr10, iArr11, iArr10);
        zh8.z(iArr10, iArr12, iArr10);
        zh8.L(iArr12, iArr12);
        zh8.y(39081, iArr9, iArr9);
        zh8.M(iArr9, iArr12, iArr9);
        zh8.b(iArr9, iArr10, iArr9);
        zh8.E(iArr9, 1);
        zh8.E(iArr9, -1);
        zh8.E(iArr11, 1);
        zh8.E(iArr11, -1);
        zh8.E(iArr12, 1);
        zh8.E(iArr12, -1);
        if (((~zh8.w(iArr12)) & zh8.w(iArr9) & (~zh8.w(iArr11))) == 0) {
            g84.c();
            return;
        }
        zh8.g(0, 0, (int[]) bp0Var.a, iArr7);
        zh8.g(0, 0, (int[]) bp0Var.b, iArr8);
        zh8.u(iArr7, iArr7);
        zh8.z(iArr7, iArr8, iArr7);
        zh8.L(iArr7, iArr7);
        zh8.E(iArr7, 1);
        zh8.E(iArr7, -1);
        zh8.l(bArr4, iArr7);
        byte[] bArr6 = new byte[56];
        System.arraycopy(bArr4, 0, bArr6, 0, 56);
        this.a = ms8.k(bArr6);
        this.b = ax8Var;
    }

    @Override // com.jcraft.jsch.XDH
    public final boolean validate(byte[] bArr) throws Exception {
        return bArr.length == this.c;
    }
}
