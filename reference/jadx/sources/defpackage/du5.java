package defpackage;

import com.jcraft.jsch.HostKey;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class du5 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        HostKey hostKey = (HostKey) obj;
        return hostKey != null && "@cert-authority".equals(hostKey.a);
    }
}
