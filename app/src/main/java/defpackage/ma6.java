package defpackage;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import javax.net.SocketFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ma6 extends SocketFactory {
    public static final l15 c = o15.b(ma6.class);
    public final Proxy a = Proxy.NO_PROXY;
    public final int b = 5000;

    public final Socket a(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2) throws IOException {
        Socket socket = new Socket(this.a);
        if (inetSocketAddress2 != null) {
            socket.bind(inetSocketAddress2);
        }
        c.D(inetSocketAddress, "Connecting to {}");
        socket.connect(inetSocketAddress, this.b);
        return socket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return a(new InetSocketAddress(str, i), new InetSocketAddress(inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return a(new InetSocketAddress(str, i), null);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return new Socket(this.a);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return a(new InetSocketAddress(inetAddress, i), null);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return a(new InetSocketAddress(inetAddress, i), new InetSocketAddress(inetAddress2, i2));
    }
}
