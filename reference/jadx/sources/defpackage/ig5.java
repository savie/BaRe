package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CompletionException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ig5 implements Iterator {
    public dn6 a = null;
    public Iterator b = null;
    public boolean c = false;
    public final Iterator d;
    public final /* synthetic */ jg5 e;

    public ig5(jg5 jg5Var) {
        this.e = jg5Var;
        this.d = jg5Var.a.l().iterator();
    }

    public final void a() {
        this.a = null;
        while (this.b.hasNext()) {
            wh2.b bVar = (wh2.b) this.b.next();
            if (!"NoSuchVersion".equals(bVar.b())) {
                this.a = new dn6(bVar);
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final boolean hasNext() {
        dn6 dn6Var;
        while (true) {
            dn6Var = this.a;
            if (dn6Var != null || this.b != null || this.c) {
                break;
            }
            synchronized (this) {
                try {
                    if (!this.c) {
                        try {
                            ArrayList arrayList = new ArrayList();
                            while (this.d.hasNext() && arrayList.size() < 1000) {
                                arrayList.add(this.d.next());
                            }
                            boolean zIsEmpty = arrayList.isEmpty();
                            this.c = zIsEmpty;
                            if (!zIsEmpty) {
                                try {
                                    uh2 uh2Var = (uh2) this.e.b.h((th2) ((th2.a) ((th2.a) th2.l().e(this.e.a.b())).g(this.e.a.c())).p(this.e.a.f()).s(this.e.a.g()).E(arrayList).F(true).A(this.e.a.k()).d()).join();
                                    if (!uh2Var.a.a().isEmpty()) {
                                        this.b = uh2Var.a.a().iterator();
                                        a();
                                        this.c = true;
                                    }
                                } catch (CompletionException e) {
                                    this.e.b.getClass();
                                    pg5.W(e);
                                    throw null;
                                }
                            }
                        } catch (rg5 e2) {
                            this.a = new dn6(e2);
                            this.c = true;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (dn6Var == null && this.b != null) {
            a();
        }
        if (this.a != null) {
            return true;
        }
        if (this.c) {
            return false;
        }
        this.b = null;
        return hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            m0.d();
            return null;
        }
        dn6 dn6Var = this.a;
        if (dn6Var != null) {
            this.a = null;
            return dn6Var;
        }
        m0.d();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
