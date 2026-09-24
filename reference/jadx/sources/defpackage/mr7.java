package defpackage;

import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mr7 extends xg7 {
    public final /* synthetic */ int a;

    @Override // defpackage.ix7
    public final Collection b() {
        switch (this.a) {
            case 0:
                return Collections.singleton("sub");
            default:
                return Collections.singleton("sup");
        }
    }

    @Override // defpackage.xg7
    public final Object d(j75 j75Var, di4 di4Var, q64 q64Var) {
        switch (this.a) {
            case 0:
                return new nr7(0);
            default:
                return new nr7(1);
        }
    }
}
