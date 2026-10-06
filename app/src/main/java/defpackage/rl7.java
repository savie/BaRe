package defpackage;

import java.io.EOFException;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rl7 extends qi4 {
    public final nh5 a;
    public final qi4 b;
    public final qi4 c;
    public final qi4 d;
    public final qi4 e;
    public final qi4 f;

    public rl7(nh5 nh5Var) {
        this.a = nh5Var;
        this.b = nh5Var.a(List.class);
        this.c = nh5Var.a(Map.class);
        this.d = nh5Var.a(String.class);
        this.e = nh5Var.a(Double.class);
        this.f = nh5Var.a(Boolean.class);
    }

    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws EOFException, tj4 {
        int iA = dj7.A(bn4Var.W());
        if (iA == 0) {
            return this.b.a(bn4Var);
        }
        if (iA == 2) {
            return this.c.a(bn4Var);
        }
        if (iA == 5) {
            return this.d.a(bn4Var);
        }
        if (iA == 6) {
            return this.e.a(bn4Var);
        }
        if (iA == 7) {
            return this.f.a(bn4Var);
        }
        if (iA == 8) {
            bn4Var.J();
            return null;
        }
        l0.f("Expected a value but was ", eq3.s(bn4Var.W()), " at path ", bn4Var.r());
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001e A[PHI: r1
      0x001e: PHI (r1v4 java.lang.Class<?>) = (r1v1 java.lang.Class<?>), (r1v2 java.lang.Class<?>) binds: [B:7:0x001c, B:10:0x0026] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        Class<?> cls = obj.getClass();
        if (cls == Object.class) {
            dn4Var.g();
            dn4Var.e = false;
            dn4Var.h(3, 5, '}');
            return;
        }
        Class<?> cls2 = Map.class;
        if (cls2.isAssignableFrom(cls)) {
            cls = cls2;
        } else {
            cls2 = Collection.class;
            if (cls2.isAssignableFrom(cls)) {
                cls = cls2;
            }
        }
        this.a.b(cls, yh8.a, null).e(dn4Var, obj);
    }

    public final String toString() {
        return "JsonAdapter(Object)";
    }
}
