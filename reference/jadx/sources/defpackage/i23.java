package defpackage;

import com.jcraft.jsch.HostKey;
import java.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i23 implements Predicate {
    public final /* synthetic */ int a;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        Object obj2;
        switch (this.a) {
            case 0:
                obj2 = (g23) obj;
                break;
            default:
                obj2 = (HostKey) obj;
                break;
        }
        return Objects.nonNull(obj2);
    }
}
