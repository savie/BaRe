package okhttp3.internal.connection;

import java.io.IOException;
import java.net.Socket;
import java.util.List;
import okhttp3.Connection;
import okhttp3.HttpUrl;
import okhttp3.Route;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PoolConnectionUser implements ConnectionUser {
    @Override // okhttp3.internal.connection.ConnectionUser
    public final boolean a() {
        return false;
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void b(RealConnection realConnection) {
        realConnection.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final boolean d() {
        return false;
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void e(RealConnection realConnection) {
        realConnection.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void j(Route route, IOException iOException) {
        route.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void k(HttpUrl httpUrl) {
        httpUrl.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void l(HttpUrl httpUrl, List list) {
        httpUrl.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final Socket n() {
        return null;
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void o(Route route) {
        route.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final RealConnection r() {
        return null;
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void t(Connection connection, Route route) {
        connection.getClass();
        route.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void u(Route route) {
        route.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void v(Connection connection) {
        connection.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void w(Route route) {
        route.getClass();
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void m() {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void q() {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void c(RealConnection realConnection) {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void f(String str) {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void g(RealConnection realConnection) {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void i(ConnectPlan connectPlan) {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void p(RealConnection realConnection) {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void s(RealConnection realConnection) {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void x(ConnectPlan connectPlan) {
    }

    @Override // okhttp3.internal.connection.ConnectionUser
    public final void h(String str, List list) {
    }
}
