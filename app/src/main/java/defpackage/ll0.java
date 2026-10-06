package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ll0 {
    protected String a;
    protected v64.c b;
    protected v64.e c;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class a<B extends a<B, A>, A extends ll0> {
        protected List<Consumer<A>> a = new ArrayList();

        private A l() {
            try {
                for (Constructor<?> constructor : getClass().getEnclosingClass().getDeclaredConstructors()) {
                    if (constructor.getParameterCount() == 0) {
                        return (A) constructor.newInstance(null);
                    }
                }
                throw new RuntimeException(getClass().getEnclosingClass() + " must have no argument constructor");
            } catch (IllegalAccessException e) {
                e = e;
                y5.k(e);
                return null;
            } catch (InstantiationException e2) {
                e = e2;
                y5.k(e);
                return null;
            } catch (SecurityException e3) {
                e = e3;
                y5.k(e);
                return null;
            } catch (InvocationTargetException e4) {
                e = e4;
                y5.k(e);
                return null;
            }
        }

        public A d() {
            A a = (A) l();
            this.a.forEach(new y00(a, 1));
            u(a);
            return a;
        }

        public B e(v64.c cVar) {
            this.a.add(new kl0(new v64.c(cVar), 0));
            return this;
        }

        public B f(Map<String, String> map) {
            return (B) e(new v64.c(map));
        }

        public B g(v64.e eVar) {
            this.a.add(new a10(new v64.e(eVar), 1));
            return this;
        }

        public B h(Map<String, String> map) {
            return (B) g(new v64.e(map));
        }

        /* JADX INFO: renamed from: m */
        public abstract void u(A a);
    }

    public ll0(ll0 ll0Var) {
        this.a = ll0Var.a;
        this.b = ll0Var.b;
        this.c = ll0Var.c;
    }

    public void a(g87 g87Var, boolean z) {
        if (g87Var == null || z) {
            return;
        }
        throw new IllegalArgumentException(g87Var + " operations must be performed over a secure connection.");
    }

    public v64.c b() {
        return this.b;
    }

    public v64.e c() {
        return this.c;
    }

    public String d() {
        return this.a;
    }

    public void e(String str) {
        this.a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ll0)) {
            return false;
        }
        ll0 ll0Var = (ll0) obj;
        return Objects.equals(this.b, ll0Var.b) && Objects.equals(this.c, ll0Var.c);
    }

    public int hashCode() {
        return Objects.hash(this.b, this.c);
    }

    public ll0() {
    }
}
