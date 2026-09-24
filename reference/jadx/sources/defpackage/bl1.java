package defpackage;

import java.io.EOFException;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class bl1 extends qi4 {
    public static final yk1 b = new yk1();
    public final qi4 a;

    public bl1(qi4 qi4Var) {
        this.a = qi4Var;
    }

    @Override // defpackage.qi4
    public Object a(bn4 bn4Var) throws EOFException, tj4 {
        Collection collectionF = f();
        bn4Var.a();
        while (bn4Var.u()) {
            collectionF.add(this.a.a(bn4Var));
        }
        bn4Var.j();
        return collectionF;
    }

    @Override // defpackage.qi4
    public void e(dn4 dn4Var, Object obj) {
        dn4Var.b();
        Iterator it = ((Collection) obj).iterator();
        while (it.hasNext()) {
            this.a.e(dn4Var, it.next());
        }
        dn4Var.h(1, 2, ']');
    }

    public abstract Collection f();

    public final String toString() {
        return this.a + ".collection()";
    }
}
