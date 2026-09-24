package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g81 extends bb9 {
    public final /* synthetic */ Method f;
    public final /* synthetic */ Class g;

    public g81(Method method, Class cls) {
        this.f = method;
        this.g = cls;
    }

    @Override // defpackage.bb9
    public final Object D() {
        return this.f.invoke(null, this.g, Object.class);
    }

    public final String toString() {
        return this.g.getName();
    }
}
