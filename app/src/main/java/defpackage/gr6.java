package defpackage;

import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gr6 extends s51 {
    public final MessageDigest d;

    public gr6() {
        this.b = 32;
        this.c = "SHA-256";
        this.d = MessageDigest.getInstance("SHA-256");
    }

    @Override // defpackage.s51
    public final byte[] a() {
        MessageDigest messageDigest = this.d;
        byte[] bArrDigest = messageDigest.digest();
        messageDigest.reset();
        return bArrDigest;
    }

    @Override // defpackage.s51
    public final void d(byte[] bArr, int i, int i2) {
        this.d.update(bArr, i, i2);
    }
}
