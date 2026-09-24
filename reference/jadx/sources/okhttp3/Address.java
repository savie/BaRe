package okhttp3;

import defpackage.fz5;
import defpackage.pe4;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Address {
    public final Dns a;
    public final SocketFactory b;
    public final SSLSocketFactory c;
    public final HostnameVerifier d;
    public final CertificatePinner e;
    public final Authenticator f;
    public final ProxySelector g;
    public final HttpUrl h;
    public final List i;
    public final List j;

    public Address(String str, int i, Dns dns, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, CertificatePinner certificatePinner, Authenticator authenticator, List list, List list2, ProxySelector proxySelector) {
        str.getClass();
        dns.getClass();
        socketFactory.getClass();
        authenticator.getClass();
        list.getClass();
        list2.getClass();
        proxySelector.getClass();
        this.a = dns;
        this.b = socketFactory;
        this.c = sSLSocketFactory;
        this.d = hostnameVerifier;
        this.e = certificatePinner;
        this.f = authenticator;
        this.g = proxySelector;
        HttpUrl.Builder builder = new HttpUrl.Builder();
        builder.l(sSLSocketFactory != null ? "https" : "http");
        builder.g(str);
        builder.i(i);
        this.h = builder.e();
        this.i = _UtilJvmKt.j(list);
        this.j = _UtilJvmKt.j(list2);
    }

    public final boolean a(Address address) {
        address.getClass();
        return pe4.d(this.a, address.a) && pe4.d(this.f, address.f) && pe4.d(this.i, address.i) && pe4.d(this.j, address.j) && pe4.d(this.g, address.g) && pe4.d(this.c, address.c) && pe4.d(this.d, address.d) && pe4.d(this.e, address.e) && this.h.e == address.h.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Address)) {
            return false;
        }
        Address address = (Address) obj;
        return pe4.d(this.h, address.h) && a(address);
    }

    public final int hashCode() {
        return Objects.hashCode(this.e) + ((Objects.hashCode(this.d) + ((Objects.hashCode(this.c) + ((this.g.hashCode() + fz5.i(this.j, fz5.i(this.i, (this.f.hashCode() + ((this.a.hashCode() + fz5.g(527, 31, this.h.h)) * 31)) * 31, 31), 31)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        HttpUrl httpUrl = this.h;
        sb.append(httpUrl.d);
        sb.append(':');
        sb.append(httpUrl.e);
        sb.append(", ");
        sb.append("proxySelector=" + this.g);
        sb.append('}');
        return sb.toString();
    }
}
