package defpackage;

import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cx6 implements d33 {
    public final MessageDigest a;
    public final rm7 b = new rm7();

    public cx6(MessageDigest messageDigest) {
        this.a = messageDigest;
    }

    @Override // defpackage.d33
    public final rm7 a() {
        return this.b;
    }
}
