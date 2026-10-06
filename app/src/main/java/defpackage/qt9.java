package defpackage;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qt9 extends ThreadLocal {
    /* JADX WARN: Code duplicated, block: B:12:0x0028  */
    /* JADX WARN: Code duplicated, block: B:22:0x0023 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        SecureRandom secureRandom;
        Provider provider;
        Provider providerH = l73.H();
        if (providerH != null) {
            try {
                secureRandom = SecureRandom.getInstance("SHA1PRNG", providerH);
            } catch (GeneralSecurityException unused) {
                provider = null;
                try {
                    provider = (Provider) Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider", null).invoke(null, null);
                } catch (Throwable unused2) {
                }
                if (provider != null) {
                    try {
                        secureRandom = SecureRandom.getInstance("SHA1PRNG", provider);
                    } catch (GeneralSecurityException unused3) {
                        secureRandom = new SecureRandom();
                    }
                } else {
                    secureRandom = new SecureRandom();
                }
            }
        } else {
            provider = null;
            provider = (Provider) Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider", null).invoke(null, null);
            if (provider != null) {
                secureRandom = SecureRandom.getInstance("SHA1PRNG", provider);
            } else {
                secureRandom = new SecureRandom();
            }
        }
        secureRandom.nextLong();
        return secureRandom;
    }
}
