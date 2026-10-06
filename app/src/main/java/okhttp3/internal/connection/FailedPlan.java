package okhttp3.internal.connection;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FailedPlan implements RoutePlanner.Plan {
    public final RoutePlanner.ConnectResult a;

    public FailedPlan(Throwable th) {
        this.a = new RoutePlanner.ConnectResult(this, null, th, 2);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.Plan a() {
        throw new IllegalStateException("unexpected retry");
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RealConnection c() {
        throw new IllegalStateException("unexpected call");
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    public final void cancel() {
        throw new IllegalStateException("unexpected cancel");
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final boolean d() {
        return false;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.ConnectResult e() {
        return this.a;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.ConnectResult g() {
        return this.a;
    }
}
