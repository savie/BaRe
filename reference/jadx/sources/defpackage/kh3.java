package defpackage;

import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kh3 extends SecureRandom {
    @Override // java.security.SecureRandom, java.util.Random
    public final synchronized void nextBytes(byte[] bArr) {
        synchronized (g67.class) {
            if (!g67.a) {
                g67.a = true;
            }
        }
        super.nextBytes(bArr);
    }
}
