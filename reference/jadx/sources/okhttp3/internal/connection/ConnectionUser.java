package okhttp3.internal.connection;

import java.io.IOException;
import java.net.Socket;
import java.util.List;
import okhttp3.Connection;
import okhttp3.HttpUrl;
import okhttp3.Route;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface ConnectionUser {
    boolean a();

    void b(RealConnection realConnection);

    void c(RealConnection realConnection);

    boolean d();

    void e(RealConnection realConnection);

    void f(String str);

    void g(RealConnection realConnection);

    void h(String str, List list);

    void i(ConnectPlan connectPlan);

    void j(Route route, IOException iOException);

    void k(HttpUrl httpUrl);

    void l(HttpUrl httpUrl, List list);

    void m();

    Socket n();

    void o(Route route);

    void p(RealConnection realConnection);

    void q();

    RealConnection r();

    void s(RealConnection realConnection);

    void t(Connection connection, Route route);

    void u(Route route);

    void v(Connection connection);

    void w(Route route);

    void x(ConnectPlan connectPlan);
}
