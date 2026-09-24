package okhttp3.internal.authenticator;

import defpackage.el1;
import defpackage.f51;
import defpackage.xs1;
import defpackage.y5;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import okhttp3.Address;
import okhttp3.Authenticator;
import okhttp3.Challenge;
import okhttp3.Credentials;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class JavaNetAuthenticator implements Authenticator {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public static InetAddress c(Proxy proxy, HttpUrl httpUrl, Dns dns) {
        Proxy.Type type = proxy.type();
        if ((type == null ? -1 : WhenMappings.a[type.ordinal()]) == 1) {
            return (InetAddress) el1.S0(dns.a(httpUrl.d));
        }
        SocketAddress socketAddressAddress = proxy.address();
        socketAddressAddress.getClass();
        InetAddress address = ((InetSocketAddress) socketAddressAddress).getAddress();
        address.getClass();
        return address;
    }

    @Override // okhttp3.Authenticator
    public final Request b(Route route, Response response) {
        Dns dns;
        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication;
        Charset charsetForName;
        Address address;
        List<Challenge> listA = response.a();
        Request request = response.a;
        HttpUrl httpUrl = request.a;
        boolean z = response.d == 407;
        Proxy proxy = route != null ? route.b : Proxy.NO_PROXY;
        for (Challenge challenge : listA) {
            String str = challenge.a;
            String str2 = challenge.a;
            Map map = challenge.b;
            if ("Basic".equalsIgnoreCase(str)) {
                if (route == null || (address = route.a) == null || (dns = address.a) == null) {
                    dns = null;
                }
                if (z) {
                    SocketAddress socketAddressAddress = proxy.address();
                    socketAddressAddress.getClass();
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                    try {
                        passwordAuthenticationRequestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(inetSocketAddress.getHostName(), c(proxy, httpUrl, dns), inetSocketAddress.getPort(), httpUrl.a, (String) map.get("realm"), str2, new URL(httpUrl.h), java.net.Authenticator.RequestorType.PROXY);
                    } catch (MalformedURLException e) {
                        y5.k(e);
                        return null;
                    }
                } else {
                    String str3 = httpUrl.d;
                    proxy.getClass();
                    try {
                        passwordAuthenticationRequestPasswordAuthentication = java.net.Authenticator.requestPasswordAuthentication(str3, c(proxy, httpUrl, dns), httpUrl.e, httpUrl.a, (String) map.get("realm"), str2, new URL(httpUrl.h), java.net.Authenticator.RequestorType.SERVER);
                    } catch (MalformedURLException e2) {
                        y5.k(e2);
                    }
                }
                if (passwordAuthenticationRequestPasswordAuthentication != null) {
                    String str4 = z ? "Proxy-Authorization" : "Authorization";
                    String userName = passwordAuthenticationRequestPasswordAuthentication.getUserName();
                    userName.getClass();
                    char[] password = passwordAuthenticationRequestPasswordAuthentication.getPassword();
                    password.getClass();
                    String str5 = new String(password);
                    String str6 = (String) map.get("charset");
                    if (str6 != null) {
                        try {
                            charsetForName = Charset.forName(str6);
                            charsetForName.getClass();
                        } catch (Exception unused) {
                            charsetForName = f51.e;
                        }
                    } else {
                        charsetForName = f51.e;
                    }
                    String strA = Credentials.a(userName, str5, charsetForName);
                    Request.Builder builderA = request.a();
                    return xs1.o(builderA.c, str4, strA, builderA);
                }
            }
        }
        return null;
    }
}
