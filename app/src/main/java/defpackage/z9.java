package defpackage;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z9 extends da {
    @Override // defpackage.da
    public final void d(dn4 dn4Var, Object obj) throws InvocationTargetException {
        qi4[] qi4VarArr = this.f;
        Object[] objArr = new Object[qi4VarArr.length + 2];
        objArr[0] = dn4Var;
        objArr[1] = obj;
        System.arraycopy(qi4VarArr, 0, objArr, 2, qi4VarArr.length);
        try {
            this.d.invoke(this.c, objArr);
        } catch (IllegalAccessException unused) {
            d6.n();
        }
    }
}
