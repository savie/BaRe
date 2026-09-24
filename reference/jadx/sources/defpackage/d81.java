package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d81 extends sz8 {
    public final /* synthetic */ Method f;
    public final /* synthetic */ Class g;
    public final /* synthetic */ int h;

    public d81(Method method, Class cls, int i) {
        this.f = method;
        this.g = cls;
        this.h = i;
    }

    @Override // defpackage.sz8
    public final Object M() {
        return this.f.invoke(null, this.g, Integer.valueOf(this.h));
    }

    public final String toString() {
        return this.g.getName();
    }
}
