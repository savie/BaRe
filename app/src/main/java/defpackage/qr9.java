package defpackage;

import java.security.GeneralSecurityException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qr9 implements ca9 {
    public final it9 a;

    public qr9(it9 it9Var) {
        this.a = it9Var;
    }

    @Override // defpackage.ca9
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        Iterator it = this.a.a(bArr).iterator();
        while (it.hasNext()) {
            try {
                return ((rr9) it.next()).a.zza(bArr);
            } catch (GeneralSecurityException unused) {
            }
        }
        m0.h("decryption failed");
        return null;
    }
}
