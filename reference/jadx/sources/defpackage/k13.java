package defpackage;

import java.security.SecureRandom;
import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k13 implements Supplier {
    public final /* synthetic */ int a;

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 0:
                return new sw8();
            case 1:
                Boolean bool = Boolean.FALSE;
                int i = n84.a;
                return new Object[]{bool, new char[8192]};
            default:
                return new SecureRandom();
        }
    }
}
