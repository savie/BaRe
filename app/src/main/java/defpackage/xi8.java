package defpackage;

import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xi8 extends yl0 {
    public final Object i;

    public xi8(cd cdVar, Object obj) {
        super(Collections.EMPTY_LIST);
        k(cdVar);
        this.i = obj;
    }

    @Override // defpackage.yl0
    public final float c() {
        return 1.0f;
    }

    @Override // defpackage.yl0
    public final Object f() {
        cd cdVar = this.e;
        Object obj = this.i;
        return cdVar.f(obj, obj);
    }

    @Override // defpackage.yl0
    public final Object g(wo4 wo4Var, float f) {
        return f();
    }

    @Override // defpackage.yl0
    public final void i() {
        if (this.e != null) {
            super.i();
        }
    }

    @Override // defpackage.yl0
    public final void j(float f) {
        this.d = f;
    }
}
