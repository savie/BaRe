package com.jcraft.jsch.bc;

import com.jcraft.jsch.MAC;
import defpackage.h24;
import defpackage.le6;
import defpackage.oo4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class HMAC implements MAC {
    public String a;
    public int b;
    public le6 c;
    public boolean d;
    public h24 e;
    public final byte[] f = new byte[4];

    @Override // com.jcraft.jsch.MAC
    public void doFinal(byte[] bArr, int i) {
        this.e.doFinal(bArr, i);
    }

    @Override // com.jcraft.jsch.MAC
    public int getBlockSize() {
        return this.b;
    }

    @Override // com.jcraft.jsch.MAC
    public String getName() {
        return this.a;
    }

    @Override // com.jcraft.jsch.MAC
    public void init(byte[] bArr) throws Exception {
        int length = bArr.length;
        int i = this.b;
        if (length > i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            bArr = bArr2;
        }
        oo4 oo4Var = new oo4(bArr, bArr.length);
        h24 h24Var = new h24(this.c);
        this.e = h24Var;
        h24Var.c(oo4Var);
    }

    @Override // com.jcraft.jsch.MAC
    public boolean isEtM() {
        return this.d;
    }

    @Override // com.jcraft.jsch.MAC
    public void update(int i) {
        byte[] bArr = this.f;
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) i;
        update(bArr, 0, 4);
    }

    @Override // com.jcraft.jsch.MAC
    public void update(byte[] bArr, int i, int i2) {
        this.e.update(bArr, i, i2);
    }
}
