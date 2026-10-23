package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class og5 implements Iterable {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public og5(it9 it9Var, List list, List list2) {
        this.b = list;
        this.c = list2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        switch (this.a) {
            case 0:
                return new ng5(this);
            default:
                return new jt9(((List) this.b).iterator(), ((List) this.c).iterator());
        }
    }

    public og5(pg5 pg5Var, px4 px4Var) {
        this.c = pg5Var;
        this.b = px4Var;
    }
}
