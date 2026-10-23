package defpackage;

import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lh5 extends qi4 {
    public final Type a;
    public final String b;
    public final Object c;
    public qi4 d;

    public lh5(Type type, String str, Object obj) {
        this.a = type;
        this.b = str;
        this.c = obj;
    }

    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) {
        qi4 qi4Var = this.d;
        if (qi4Var != null) {
            return qi4Var.a(bn4Var);
        }
        l0.e("JsonAdapter isn't ready");
        return null;
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        qi4 qi4Var = this.d;
        if (qi4Var != null) {
            qi4Var.e(dn4Var, obj);
        } else {
            l0.e("JsonAdapter isn't ready");
        }
    }

    public final String toString() {
        qi4 qi4Var = this.d;
        return qi4Var != null ? qi4Var.toString() : super.toString();
    }
}
