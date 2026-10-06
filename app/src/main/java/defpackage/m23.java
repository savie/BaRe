package defpackage;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m23 extends SocketFactory {
    public final SSLContext a;

    public m23(SSLContext sSLContext) {
        this.a = sSLContext;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket() {
        return this.a.getSocketFactory().createSocket();
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        return this.a.getSocketFactory().createSocket(inetAddress, i);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return this.a.getSocketFactory().createSocket(inetAddress, i, inetAddress2, i2);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        return this.a.getSocketFactory().createSocket(str, i);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return this.a.getSocketFactory().createSocket(str, i, inetAddress, i2);
    }
}
