package okhttp3;

import defpackage.nq7;
import defpackage.pe4;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import okhttp3.internal._HostnamesCommonKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Route {
    public final Address a;
    public final Proxy b;
    public final InetSocketAddress c;

    public Route(Address address, Proxy proxy, InetSocketAddress inetSocketAddress) {
        address.getClass();
        inetSocketAddress.getClass();
        this.a = address;
        this.b = proxy;
        this.c = inetSocketAddress;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Route)) {
            return false;
        }
        Route route = (Route) obj;
        return pe4.d(route.a, this.a) && route.b.equals(this.b) && pe4.d(route.c, this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + ((this.a.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        String hostAddress;
        StringBuilder sb = new StringBuilder();
        Address address = this.a;
        HttpUrl httpUrl = address.h;
        HttpUrl httpUrl2 = address.h;
        String str = httpUrl.d;
        InetSocketAddress inetSocketAddress = this.c;
        InetAddress address2 = inetSocketAddress.getAddress();
        String strB = (address2 == null || (hostAddress = address2.getHostAddress()) == null) ? null : _HostnamesCommonKt.b(hostAddress);
        if (nq7.a0(str, ':')) {
            sb.append("[");
            sb.append(str);
            sb.append("]");
        } else {
            sb.append(str);
        }
        if (httpUrl2.e != inetSocketAddress.getPort() || str.equals(strB)) {
            sb.append(":");
            sb.append(httpUrl2.e);
        }
        if (!str.equals(strB)) {
            if (this.b.equals(Proxy.NO_PROXY)) {
                sb.append(" at ");
            } else {
                sb.append(" via proxy ");
            }
            if (strB == null) {
                sb.append("<unresolved>");
            } else if (nq7.a0(strB, ':')) {
                sb.append("[");
                sb.append(strB);
                sb.append("]");
            } else {
                sb.append(strB);
            }
            sb.append(":");
            sb.append(inetSocketAddress.getPort());
        }
        return sb.toString();
    }
}
