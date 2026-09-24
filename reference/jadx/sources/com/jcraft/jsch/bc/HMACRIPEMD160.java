package com.jcraft.jsch.bc;

import defpackage.b42;
import defpackage.e42;
import defpackage.le6;
import defpackage.zh8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class HMACRIPEMD160 extends HMAC {
    public HMACRIPEMD160() {
        this.a = "hmac-ripemd160";
        this.b = 20;
        le6 le6Var = new le6(b42.a);
        le6Var.j = new int[16];
        zh8.r(le6Var);
        e42.a();
        le6Var.reset();
        this.c = le6Var;
    }

    @Override // com.jcraft.jsch.bc.HMAC, com.jcraft.jsch.MAC
    public final /* bridge */ /* synthetic */ void doFinal(byte[] bArr, int i) {
        super.doFinal(bArr, i);
    }

    @Override // com.jcraft.jsch.bc.HMAC, com.jcraft.jsch.MAC
    public final int getBlockSize() {
        return this.b;
    }

    @Override // com.jcraft.jsch.bc.HMAC, com.jcraft.jsch.MAC
    public final String getName() {
        return this.a;
    }

    @Override // com.jcraft.jsch.bc.HMAC, com.jcraft.jsch.MAC
    public final /* bridge */ /* synthetic */ void init(byte[] bArr) throws Exception {
        super.init(bArr);
    }

    @Override // com.jcraft.jsch.bc.HMAC, com.jcraft.jsch.MAC
    public final boolean isEtM() {
        return this.d;
    }

    @Override // com.jcraft.jsch.bc.HMAC, com.jcraft.jsch.MAC
    public final /* bridge */ /* synthetic */ void update(int i) {
        super.update(i);
    }

    @Override // com.jcraft.jsch.bc.HMAC, com.jcraft.jsch.MAC
    public final /* bridge */ /* synthetic */ void update(byte[] bArr, int i, int i2) {
        super.update(bArr, i, i2);
    }
}
