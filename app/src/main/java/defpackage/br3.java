package defpackage;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class br3 extends f48 {
    public f48 e;

    public br3(f48 f48Var) {
        f48Var.getClass();
        this.e = f48Var;
    }

    @Override // defpackage.f48
    public final f48 a() {
        return this.e.a();
    }

    @Override // defpackage.f48
    public final f48 b() {
        return this.e.b();
    }

    @Override // defpackage.f48
    public final long c() {
        return this.e.c();
    }

    @Override // defpackage.f48
    public final f48 d(long j) {
        return this.e.d(j);
    }

    @Override // defpackage.f48
    public final boolean e() {
        return this.e.e();
    }

    @Override // defpackage.f48
    public final void f() throws InterruptedIOException {
        this.e.f();
    }

    @Override // defpackage.f48
    public final f48 g(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.e.g(j, timeUnit);
    }
}
