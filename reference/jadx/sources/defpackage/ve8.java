package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ve8 extends xe8 {
    public final /* synthetic */ Method b;

    public ve8(Method method) {
        this.b = method;
    }

    @Override // defpackage.xe8
    public final Object a(Class cls) {
        String strA = vt1.a(cls);
        if (strA == null) {
            return this.b.invoke(null, cls, Object.class);
        }
        e6.e("UnsafeAllocator is used for non-instantiable type: ".concat(strA));
        return null;
    }
}
