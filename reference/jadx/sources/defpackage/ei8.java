package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ei8 extends ThreadLocal {
    public final /* synthetic */ int a;

    public /* synthetic */ ei8(int i) {
        this.a = i;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.a) {
            case 0:
                return new float[4];
            default:
                try {
                    return (Cipher) s1a.b.a.zza("AES/CTR/NOPADDING");
                } catch (GeneralSecurityException e) {
                    throw new IllegalStateException(e);
                }
        }
    }
}
