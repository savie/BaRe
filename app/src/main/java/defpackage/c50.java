package defpackage;

import java.io.EOFException;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c50 extends qi4 {
    public static final b50 c = new b50();
    public final Class a;
    public final qi4 b;

    public c50(Class cls, qi4 qi4Var) {
        this.a = cls;
        this.b = qi4Var;
    }

    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws EOFException, tj4 {
        ArrayList arrayList = new ArrayList();
        bn4Var.a();
        while (bn4Var.u()) {
            arrayList.add(this.b.a(bn4Var));
        }
        bn4Var.j();
        Object objNewInstance = Array.newInstance((Class<?>) this.a, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(objNewInstance, i, arrayList.get(i));
        }
        return objNewInstance;
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        dn4Var.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.b.e(dn4Var, Array.get(obj, i));
        }
        dn4Var.h(1, 2, ']');
    }

    public final String toString() {
        return this.b + ".array()";
    }
}
