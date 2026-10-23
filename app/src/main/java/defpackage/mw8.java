package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mw8 {
    public final ir5 a;
    public Object b;
    public boolean c = false;

    public mw8(ir5 ir5Var) {
        this.a = ir5Var;
    }

    public final Object a(Object obj) {
        if (this.b == null) {
            mp0 mp0Var = ((v86) this.a).b;
            try {
                Method method = mp0Var.n;
                this.b = method == null ? mp0Var.p.get(obj) : method.invoke(obj, null);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new IllegalStateException("Problem accessing property '" + mp0Var.b.a + "': " + e2.getMessage(), e2);
            }
        }
        return this.b;
    }
}
