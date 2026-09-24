package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y24 extends q4 implements ti5 {
    public final transient int f;

    public y24() {
        super(vm1.a());
        this.f = 2;
    }

    @Override // defpackage.q4, defpackage.ti5
    public final Collection a() {
        return (Set) super.a();
    }

    @Override // defpackage.ti5
    public final Map b() {
        Map map = this.c;
        if (map != null) {
            return map;
        }
        d4 d4VarD = d();
        this.c = d4VarD;
        return d4VarD;
    }

    @Override // defpackage.q4
    public final Collection e() {
        return xm1.c(this.f);
    }

    @Override // defpackage.q4
    public final Collection h(Object obj, Collection collection) {
        return new p4(this, obj, (Set) collection);
    }
}
