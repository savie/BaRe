package okhttp3.internal.connection;

import defpackage.l0;
import defpackage.pe4;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import java.util.TimeZone;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CallConnectionUser implements ConnectionUser {
    public final RealCall a;
    public final RealInterceptorChain b;

    public CallConnectionUser(RealCall realCall, ConnectionListener connectionListener, RealInterceptorChain realInterceptorChain) {
        this.a = realCall;
        this.b = realInterceptorChain;
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final boolean a() {
        return this.a.G;
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void b(RealConnection realConnection) {
        realConnection.getClass();
        TimeZone timeZone = _UtilJvmKt.a;
        RealCall realCall = this.a;
        if (realCall.p != null) {
            l0.e("Check failed.");
        } else {
            realCall.p = realConnection;
            realConnection.K.add(new RealCall.CallReference(realCall, realCall.k));
        }
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final boolean d() {
        return !pe4.d(this.b.e.b, "GET");
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void e(RealConnection realConnection) {
        realConnection.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void f(String str) {
        this.a.d.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void h(String str, List list) {
        this.a.d.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void i(ConnectPlan connectPlan) {
        this.a.I.remove(connectPlan);
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void j(Route route, IOException iOException) {
        route.getClass();
        EventListener eventListener = this.a.d;
        InetSocketAddress inetSocketAddress = route.c;
        eventListener.getClass();
        inetSocketAddress.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void k(HttpUrl httpUrl) {
        httpUrl.getClass();
        this.a.d.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void l(HttpUrl httpUrl, List list) {
        httpUrl.getClass();
        this.a.d.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void m() {
        this.a.d.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final Socket n() {
        return this.a.h();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void o(Route route) {
        route.getClass();
        EventListener eventListener = this.a.d;
        InetSocketAddress inetSocketAddress = route.c;
        eventListener.getClass();
        inetSocketAddress.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void q() {
        this.a.d.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final RealConnection r() {
        return this.a.p;
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void s(RealConnection realConnection) {
        this.a.d.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void t(Connection connection, Route route) {
        connection.getClass();
        route.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void u(Route route) {
        route.getClass();
        RouteDatabase routeDatabase = this.a.a.A;
        synchronized (routeDatabase) {
            routeDatabase.a.remove(route);
        }
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void v(Connection connection) {
        connection.getClass();
        this.a.d.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void w(Route route) {
        route.getClass();
        EventListener eventListener = this.a.d;
        InetSocketAddress inetSocketAddress = route.c;
        eventListener.getClass();
        inetSocketAddress.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void x(ConnectPlan connectPlan) {
        this.a.I.add(connectPlan);
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void c(RealConnection realConnection) {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void g(RealConnection realConnection) {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void p(RealConnection realConnection) {
    }
}
