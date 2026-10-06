package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c81 extends bb9 {
    public final /* synthetic */ Method f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Class h;

    public c81(Method method, Object obj, Class cls) {
        this.f = method;
        this.g = obj;
        this.h = cls;
    }

    @Override // defpackage.bb9
    public final Object D() {
        return this.f.invoke(this.g, this.h);
    }

    public final String toString() {
        return this.h.getName();
    }
}
