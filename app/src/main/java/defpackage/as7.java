package defpackage;

import java.lang.reflect.Method;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class as7 implements l15 {
    public final String a;
    public volatile l15 b;
    public Boolean c;
    public Method d;
    public dz2 e;
    public final Queue f;
    public final boolean k;

    public as7(String str, LinkedBlockingQueue linkedBlockingQueue, boolean z) {
        this.a = str;
        this.f = linkedBlockingQueue;
        this.k = z;
    }

    @Override // defpackage.l15
    public final boolean A(int i) {
        return u().A(i);
    }

    @Override // defpackage.l15
    public final void B(Object obj, Object obj2, String str) {
        u().B(obj, obj2, str);
    }

    @Override // defpackage.l15
    public final void C(Object obj, Object obj2, String str) {
        u().C(obj, obj2, str);
    }

    @Override // defpackage.l15
    public final void D(Object obj, String str) {
        u().D(obj, str);
    }

    @Override // defpackage.l15
    public final void E(Object... objArr) {
        u().E(objArr);
    }

    public final boolean F() {
        Boolean bool = this.c;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.d = this.b.getClass().getMethod("log", cs7.class);
            this.c = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.c = Boolean.FALSE;
        }
        return this.c.booleanValue();
    }

    @Override // defpackage.l15
    public final void a(Object obj, String str) {
        u().a(obj, str);
    }

    @Override // defpackage.l15
    public final boolean b() {
        return u().b();
    }

    @Override // defpackage.l15
    public final boolean c() {
        return u().c();
    }

    @Override // defpackage.l15
    public final void d(String str) {
        u().d(str);
    }

    @Override // defpackage.l15
    public final void e(Object obj, Object obj2, String str) {
        u().e(obj, obj2, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && as7.class == obj.getClass() && this.a.equals(((as7) obj).a);
    }

    @Override // defpackage.l15
    public final void f(String str, Throwable th) {
        u().f(str, th);
    }

    @Override // defpackage.l15
    public final void g(Object obj, String str) {
        u().g(obj, str);
    }

    @Override // defpackage.l15
    public final String getName() {
        return this.a;
    }

    @Override // defpackage.l15
    public final boolean h() {
        return u().h();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.l15
    public final void i(Object obj, String str) {
        u().i(obj, str);
    }

    @Override // defpackage.l15
    public final boolean j() {
        return u().j();
    }

    @Override // defpackage.l15
    public final void k(String str) {
        u().k(str);
    }

    @Override // defpackage.l15
    public final boolean l() {
        return u().l();
    }

    @Override // defpackage.l15
    public final void m(Object obj, Object obj2, String str) {
        u().m(obj, obj2, str);
    }

    @Override // defpackage.l15
    public final void n(Object... objArr) {
        u().n(objArr);
    }

    @Override // defpackage.l15
    public final void o(String str, Object... objArr) {
        u().o(str, objArr);
    }

    @Override // defpackage.l15
    public final void p(String str, Throwable th) {
        u().p(str, th);
    }

    @Override // defpackage.l15
    public final void q(Object... objArr) {
        u().q(objArr);
    }

    @Override // defpackage.l15
    public final void r(String str, Throwable th) {
        u().r(str, th);
    }

    @Override // defpackage.l15
    public final void s(String str, Throwable th) {
        u().s(str, th);
    }

    @Override // defpackage.l15
    public final void t(Object obj, String str) {
        u().t(obj, str);
    }

    public final l15 u() {
        if (this.b != null) {
            return this.b;
        }
        if (this.k) {
            return rj5.a;
        }
        if (this.e == null) {
            Queue queue = this.f;
            dz2 dz2Var = new dz2();
            dz2Var.b = this;
            dz2Var.a = this.a;
            dz2Var.c = queue;
            this.e = dz2Var;
        }
        return this.e;
    }

    @Override // defpackage.l15
    public final void v(String str, Throwable th) {
        u().v(str, th);
    }

    @Override // defpackage.l15
    public final void w(String str) {
        u().w(str);
    }

    @Override // defpackage.l15
    public final void x(String str) {
        u().x(str);
    }

    @Override // defpackage.l15
    public final void y(Object obj, Object obj2, String str) {
        u().y(obj, obj2, str);
    }

    @Override // defpackage.l15
    public final void z(String str) {
        u().z(str);
    }
}
