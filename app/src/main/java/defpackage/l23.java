package defpackage;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLServerSocket;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l23 extends ServerSocketFactory {
    public final SSLContext a;

    public l23(SSLContext sSLContext) {
        this.a = sSLContext;
    }

    @Override // javax.net.ServerSocketFactory
    public final ServerSocket createServerSocket() throws IOException {
        ServerSocket serverSocketCreateServerSocket = this.a.getServerSocketFactory().createServerSocket();
        ((SSLServerSocket) serverSocketCreateServerSocket).setUseClientMode(true);
        return serverSocketCreateServerSocket;
    }

    @Override // javax.net.ServerSocketFactory
    public final ServerSocket createServerSocket(int i) throws IOException {
        ServerSocket serverSocketCreateServerSocket = this.a.getServerSocketFactory().createServerSocket(i);
        ((SSLServerSocket) serverSocketCreateServerSocket).setUseClientMode(true);
        return serverSocketCreateServerSocket;
    }

    @Override // javax.net.ServerSocketFactory
    public final ServerSocket createServerSocket(int i, int i2) throws IOException {
        ServerSocket serverSocketCreateServerSocket = this.a.getServerSocketFactory().createServerSocket(i, i2);
        ((SSLServerSocket) serverSocketCreateServerSocket).setUseClientMode(true);
        return serverSocketCreateServerSocket;
    }

    @Override // javax.net.ServerSocketFactory
    public final ServerSocket createServerSocket(int i, int i2, InetAddress inetAddress) throws IOException {
        ServerSocket serverSocketCreateServerSocket = this.a.getServerSocketFactory().createServerSocket(i, i2, inetAddress);
        ((SSLServerSocket) serverSocketCreateServerSocket).setUseClientMode(true);
        return serverSocketCreateServerSocket;
    }
}
