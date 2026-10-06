package okhttp3.internal.connection;

import defpackage.ai6;
import defpackage.el1;
import defpackage.eq3;
import defpackage.l0;
import defpackage.m0;
import defpackage.nc8;
import defpackage.pe4;
import defpackage.w40;
import defpackage.ww4;
import defpackage.xs1;
import defpackage.y5;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.Address;
import okhttp3.ConnectionSpec;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RealRoutePlanner implements RoutePlanner {
    public final TaskRunner a;
    public final RealConnectionPool b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final boolean h;
    public final boolean i;
    public final Address j;
    public final RouteDatabase k;
    public final ConnectionUser l;
    public RouteSelector.Selection m;
    public RouteSelector n;
    public Route o;
    public final w40 p;

    public RealRoutePlanner(TaskRunner taskRunner, RealConnectionPool realConnectionPool, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, Address address, RouteDatabase routeDatabase, ConnectionUser connectionUser) {
        taskRunner.getClass();
        realConnectionPool.getClass();
        address.getClass();
        routeDatabase.getClass();
        connectionUser.getClass();
        this.a = taskRunner;
        this.b = realConnectionPool;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = z;
        this.i = z2;
        this.j = address;
        this.k = routeDatabase;
        this.l = connectionUser;
        this.p = new w40();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean a() {
        return this.l.a();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean b(RealConnection realConnection) {
        RouteSelector routeSelector;
        Route route;
        if (this.p.isEmpty() && this.o == null) {
            if (realConnection != null) {
                synchronized (realConnection) {
                    route = null;
                    if (realConnection.G == 0 && realConnection.x && _UtilJvmKt.a(realConnection.d.a.h, this.j.h)) {
                        route = realConnection.d;
                    }
                }
                if (route != null) {
                    this.o = route;
                    return true;
                }
            }
            RouteSelector.Selection selection = this.m;
            if ((selection == null || selection.b >= selection.a.size()) && (routeSelector = this.n) != null) {
                return routeSelector.a();
            }
        }
        return true;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final Address c() {
        return this.j;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean d(HttpUrl httpUrl) {
        httpUrl.getClass();
        HttpUrl httpUrl2 = this.j.h;
        return httpUrl.e == httpUrl2.e && pe4.d(httpUrl.d, httpUrl2.d);
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final w40 e() {
        return this.p;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final RoutePlanner.Plan f() throws IOException {
        boolean z;
        Socket socketN;
        ReusePlan reusePlan;
        RealConnection realConnectionR = this.l.r();
        if (realConnectionR == null) {
            reusePlan = null;
        } else {
            boolean zG = realConnectionR.g(this.l.d());
            synchronized (realConnectionR) {
                boolean z2 = realConnectionR.x;
                try {
                    if (!zG) {
                        z = !z2;
                        realConnectionR.x = true;
                        socketN = this.l.n();
                    } else if (z2 || !d(realConnectionR.d.a.h)) {
                        z = false;
                        socketN = this.l.n();
                    } else {
                        z = false;
                        socketN = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.l.r() == null) {
                if (socketN != null) {
                    _UtilJvmKt.c(socketN);
                }
                this.l.s(realConnectionR);
                this.l.c(realConnectionR);
                if (socketN != null) {
                    this.l.p(realConnectionR);
                } else if (z) {
                    this.l.g(realConnectionR);
                }
                reusePlan = null;
            } else {
                if (socketN != null) {
                    l0.e("Check failed.");
                    return null;
                }
                reusePlan = new ReusePlan(realConnectionR);
            }
        }
        if (reusePlan != null) {
            return reusePlan;
        }
        ReusePlan reusePlanI = i(null, null);
        if (reusePlanI != null) {
            return reusePlanI;
        }
        if (!this.p.isEmpty()) {
            return (RoutePlanner.Plan) this.p.removeFirst();
        }
        ConnectPlan connectPlanG = g();
        ReusePlan reusePlanI2 = i(connectPlanG, connectPlanG.t);
        return reusePlanI2 != null ? reusePlanI2 : connectPlanG;
    }

    public final ConnectPlan g() throws IOException {
        String hostAddress;
        int port;
        List listH;
        boolean zContains;
        Route route = this.o;
        if (route != null) {
            this.o = null;
            return h(route, null);
        }
        RouteSelector.Selection selection = this.m;
        if (selection != null && selection.b < selection.a.size()) {
            int i = selection.b;
            ArrayList arrayList = selection.a;
            if (i >= arrayList.size()) {
                m0.d();
                return null;
            }
            int i2 = selection.b;
            selection.b = i2 + 1;
            return h((Route) arrayList.get(i2), null);
        }
        RouteSelector routeSelector = this.n;
        if (routeSelector == null) {
            routeSelector = new RouteSelector(this.j, this.k, this.l, this.i);
            this.n = routeSelector;
        }
        if (!routeSelector.a()) {
            y5.m("exhausted all routes");
            return null;
        }
        if (!routeSelector.a()) {
            m0.d();
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        while (routeSelector.f < routeSelector.e.size()) {
            Address address = routeSelector.a;
            if (routeSelector.f >= routeSelector.e.size()) {
                throw new SocketException("No route to " + address.h.d + "; exhausted proxy configurations: " + routeSelector.e);
            }
            List list = routeSelector.e;
            int i3 = routeSelector.f;
            routeSelector.f = i3 + 1;
            Proxy proxy = (Proxy) list.get(i3);
            ConnectionUser connectionUser = routeSelector.c;
            ArrayList arrayList3 = new ArrayList();
            routeSelector.g = arrayList3;
            if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                HttpUrl httpUrl = address.h;
                hostAddress = httpUrl.d;
                port = httpUrl.e;
            } else {
                SocketAddress socketAddressAddress = proxy.address();
                if (!(socketAddressAddress instanceof InetSocketAddress)) {
                    y5.l(socketAddressAddress.getClass(), "Proxy.address() is not an InetSocketAddress: ");
                    return null;
                }
                InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                InetAddress address2 = inetSocketAddress.getAddress();
                if (address2 == null) {
                    hostAddress = inetSocketAddress.getHostName();
                    hostAddress.getClass();
                } else {
                    hostAddress = address2.getHostAddress();
                    hostAddress.getClass();
                }
                port = inetSocketAddress.getPort();
            }
            if (1 > port || port >= 65536) {
                throw new SocketException("No route to " + hostAddress + ':' + port + "; port is out of range");
            }
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList3.add(InetSocketAddress.createUnresolved(hostAddress, port));
            } else {
                ai6 ai6Var = _HostnamesCommonKt.a;
                hostAddress.getClass();
                if (_HostnamesCommonKt.a.b(hostAddress)) {
                    listH = nc8.I(InetAddress.getByName(hostAddress));
                } else {
                    connectionUser.f(hostAddress);
                    List listA = address.a.a(hostAddress);
                    if (listA.isEmpty()) {
                        throw new UnknownHostException(address.a + " returned no addresses for " + hostAddress);
                    }
                    connectionUser.h(hostAddress, listA);
                    listH = listA;
                }
                if (routeSelector.d && listH.size() >= 2) {
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj : listH) {
                        if (((InetAddress) obj) instanceof Inet6Address) {
                            arrayList4.add(obj);
                        } else {
                            arrayList5.add(obj);
                        }
                    }
                    if (!arrayList4.isEmpty() && !arrayList5.isEmpty()) {
                        byte[] bArr = _UtilCommonKt.a;
                        Iterator it = arrayList4.iterator();
                        Iterator it2 = arrayList5.iterator();
                        ww4 ww4VarP = nc8.p();
                        while (true) {
                            if (!it.hasNext() && !it2.hasNext()) {
                                break;
                            }
                            if (it.hasNext()) {
                                ww4VarP.add(it.next());
                            }
                            if (it2.hasNext()) {
                                ww4VarP.add(it2.next());
                            }
                        }
                        listH = nc8.h(ww4VarP);
                    }
                }
                Iterator it3 = listH.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(new InetSocketAddress((InetAddress) it3.next(), port));
                }
            }
            Iterator it4 = routeSelector.g.iterator();
            while (it4.hasNext()) {
                Route route2 = new Route(routeSelector.a, proxy, (InetSocketAddress) it4.next());
                RouteDatabase routeDatabase = routeSelector.b;
                synchronized (routeDatabase) {
                    zContains = routeDatabase.a.contains(route2);
                }
                if (zContains) {
                    routeSelector.h.add(route2);
                } else {
                    arrayList2.add(route2);
                }
            }
            if (!arrayList2.isEmpty()) {
                break;
            }
        }
        if (arrayList2.isEmpty()) {
            el1.K0(routeSelector.h, arrayList2);
            routeSelector.h.clear();
        }
        RouteSelector.Selection selection2 = new RouteSelector.Selection(arrayList2);
        this.m = selection2;
        if (this.l.a()) {
            y5.m("Canceled");
            return null;
        }
        if (selection2.b >= arrayList2.size()) {
            m0.d();
            return null;
        }
        int i4 = selection2.b;
        selection2.b = i4 + 1;
        return h((Route) arrayList2.get(i4), arrayList2);
    }

    public final ConnectPlan h(Route route, ArrayList arrayList) throws UnknownServiceException {
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        route.getClass();
        Address address = route.a;
        if (address.c == null) {
            if (!address.j.contains(ConnectionSpec.h)) {
                throw new UnknownServiceException("CLEARTEXT communication not enabled for client");
            }
            String str = route.a.h.d;
            Platform platform = Platform.a;
            if (!Platform.a.i(str)) {
                throw new UnknownServiceException(eq3.k("CLEARTEXT communication to ", str, " not permitted by network security policy"));
            }
        } else if (address.i.contains(protocol)) {
            throw new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS");
        }
        Request request = null;
        if (route.b.type() == Proxy.Type.HTTP) {
            Address address2 = route.a;
            if (address2.c != null || address2.i.contains(protocol)) {
                Request.Builder builder = new Request.Builder();
                HttpUrl httpUrl = route.a.h;
                httpUrl.getClass();
                builder.a = httpUrl;
                builder.c("CONNECT", null);
                Address address3 = route.a;
                builder.c.d("Host", _UtilJvmKt.i(address3.h, true));
                builder.c.d("Proxy-Connection", "Keep-Alive");
                Request requestO = xs1.o(builder.c, "User-Agent", "okhttp/5.2.1", builder);
                Response.Builder builder2 = new Response.Builder();
                builder2.a = requestO;
                builder2.b = Protocol.HTTP_1_1;
                builder2.c = 407;
                builder2.d = "Preemptive Authenticate";
                builder2.l = -1L;
                builder2.m = -1L;
                builder2.f.d("Proxy-Authenticate", "OkHttp-Preemptive");
                Request requestB = address3.f.b(route, builder2.a());
                request = requestB == null ? requestO : requestB;
            }
        }
        return new ConnectPlan(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.l, this, route, arrayList, 0, request, -1, false);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004b A[Catch: all -> 0x0049, TryCatch #0 {all -> 0x0049, blocks: (B:14:0x003e, B:22:0x004b, B:25:0x0052), top: B:51:0x003e }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0051  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052 A[Catch: all -> 0x0049, TRY_LEAVE, TryCatch #0 {all -> 0x0049, blocks: (B:14:0x003e, B:22:0x004b, B:25:0x0052), top: B:51:0x003e }] */
    public final ReusePlan i(ConnectPlan connectPlan, List list) {
        RealConnection realConnection;
        boolean z;
        Socket socketN;
        RealConnectionPool realConnectionPool = this.b;
        boolean zD = this.l.d();
        Address address = this.j;
        ConnectionUser connectionUser = this.l;
        boolean z2 = connectPlan != null && connectPlan.d();
        realConnectionPool.getClass();
        address.getClass();
        connectionUser.getClass();
        Iterator it = realConnectionPool.g.iterator();
        it.getClass();
        while (true) {
            if (!it.hasNext()) {
                realConnection = null;
                break;
            }
            realConnection = (RealConnection) it.next();
            realConnection.getClass();
            synchronized (realConnection) {
                if (z2) {
                    try {
                        if (!(realConnection.t != null)) {
                            z = false;
                        } else if (realConnection.e(address, list)) {
                            connectionUser.b(realConnection);
                            z = true;
                        } else {
                            z = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                } else if (realConnection.e(address, list)) {
                    z = false;
                } else {
                    connectionUser.b(realConnection);
                    z = true;
                }
            }
            if (z) {
                if (realConnection.g(zD)) {
                    break;
                }
                synchronized (realConnection) {
                    realConnection.x = true;
                    socketN = connectionUser.n();
                }
                if (socketN != null) {
                    _UtilJvmKt.c(socketN);
                }
            }
        }
        if (realConnection == null) {
            return null;
        }
        if (connectPlan != null) {
            this.o = connectPlan.r;
            Socket socket = connectPlan.K;
            if (socket != null) {
                _UtilJvmKt.c(socket);
            }
        }
        this.l.v(realConnection);
        this.l.e(realConnection);
        return new ReusePlan(realConnection);
    }
}
