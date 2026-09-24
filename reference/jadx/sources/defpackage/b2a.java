package defpackage;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b2a extends ThreadLocal {
    public final /* synthetic */ z1a a;

    public b2a(z1a z1aVar) {
        this.a = z1aVar;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        z1a z1aVar = this.a;
        try {
            s1a s1aVar = s1a.c;
            Mac mac = (Mac) s1aVar.a.zza(z1aVar.b);
            mac.init(z1aVar.c);
            return mac;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
