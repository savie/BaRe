package okhttp3.internal.connection;

import defpackage.w40;
import okhttp3.Address;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ForceConnectRoutePlanner implements RoutePlanner {
    public final RealRoutePlanner a;

    public ForceConnectRoutePlanner(RealRoutePlanner realRoutePlanner) {
        this.a = realRoutePlanner;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean a() {
        return this.a.l.a();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean b(RealConnection realConnection) {
        return this.a.b(realConnection);
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final Address c() {
        return this.a.j;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean d(HttpUrl httpUrl) {
        httpUrl.getClass();
        return this.a.d(httpUrl);
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final w40 e() {
        return this.a.p;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final RoutePlanner.Plan f() {
        return this.a.g();
    }
}
