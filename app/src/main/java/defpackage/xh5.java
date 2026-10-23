package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xh5 implements ra2, qa2 {
    public final ArrayList a;
    public final d36 b;
    public int c;
    public e66 d;
    public qa2 e;
    public List f;
    public boolean k;

    public xh5(ArrayList arrayList, d36 d36Var) {
        this.b = d36Var;
        if (arrayList.isEmpty()) {
            c6.f("Must not be empty.");
            throw null;
        }
        this.a = arrayList;
        this.c = 0;
    }

    @Override // defpackage.ra2
    public final Class a() {
        return ((ra2) this.a.get(0)).a();
    }

    @Override // defpackage.qa2
    public final void b(Exception exc) {
        List list = this.f;
        ms8.j(list, "Argument must not be null");
        list.add(exc);
        g();
    }

    @Override // defpackage.ra2
    public final void c() {
        List list = this.f;
        if (list != null) {
            this.b.c(list);
        }
        this.f = null;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ra2) it.next()).c();
        }
    }

    @Override // defpackage.ra2
    public final void cancel() {
        this.k = true;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ra2) it.next()).cancel();
        }
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) {
        this.d = e66Var;
        this.e = qa2Var;
        this.f = (List) this.b.d();
        ((ra2) this.a.get(this.c)).d(e66Var, this);
        if (this.k) {
            cancel();
        }
    }

    @Override // defpackage.ra2
    public final int e() {
        return ((ra2) this.a.get(0)).e();
    }

    @Override // defpackage.qa2
    public final void f(Object obj) {
        if (obj != null) {
            this.e.f(obj);
        } else {
            g();
        }
    }

    public final void g() {
        if (this.k) {
            return;
        }
        if (this.c < this.a.size() - 1) {
            this.c++;
            d(this.d, this.e);
        } else {
            ms8.i(this.f);
            this.e.b(new fy3("Fetch failed", new ArrayList(this.f)));
        }
    }
}
