package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ls4 extends Socket {
    public final SSLSocket a;
    public final Socket b;

    public ls4(SSLSocket sSLSocket, Socket socket) {
        this.a = sSLSocket;
        this.b = socket;
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Socket socket = this.b;
        try {
            this.a.close();
        } finally {
            socket.close();
        }
    }

    @Override // java.net.Socket
    public final InetAddress getInetAddress() {
        return this.b.getInetAddress();
    }

    @Override // java.net.Socket
    public final InputStream getInputStream() throws IOException {
        InputStream inputStream = this.a.getInputStream();
        inputStream.getClass();
        return inputStream;
    }

    @Override // java.net.Socket
    public final boolean getKeepAlive() {
        return this.b.getKeepAlive();
    }

    @Override // java.net.Socket
    public final InetAddress getLocalAddress() {
        InetAddress localAddress = this.b.getLocalAddress();
        localAddress.getClass();
        return localAddress;
    }

    @Override // java.net.Socket
    public final int getLocalPort() {
        return this.b.getLocalPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getLocalSocketAddress() {
        return this.b.getLocalSocketAddress();
    }

    @Override // java.net.Socket
    public final OutputStream getOutputStream() throws IOException {
        OutputStream outputStream = this.a.getOutputStream();
        outputStream.getClass();
        return outputStream;
    }

    @Override // java.net.Socket
    public final int getPort() {
        return this.b.getPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getRemoteSocketAddress() {
        return this.b.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public final int getSoTimeout() {
        return this.a.getSoTimeout();
    }

    @Override // java.net.Socket
    public final boolean getTcpNoDelay() {
        return this.b.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public final boolean isBound() {
        return this.b.isBound();
    }

    @Override // java.net.Socket
    public final boolean isClosed() {
        return this.a.isClosed() || this.b.isClosed();
    }

    @Override // java.net.Socket
    public final boolean isConnected() {
        return this.b.isConnected();
    }

    @Override // java.net.Socket
    public final void setKeepAlive(boolean z) throws SocketException {
        this.b.setKeepAlive(z);
    }

    @Override // java.net.Socket
    public final void setSoTimeout(int i) throws SocketException {
        this.a.setSoTimeout(i);
        this.b.setSoTimeout(i);
    }

    @Override // java.net.Socket
    public final void setTcpNoDelay(boolean z) throws SocketException {
        this.b.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public final void shutdownInput() throws IOException {
        this.a.shutdownInput();
    }

    @Override // java.net.Socket
    public final void shutdownOutput() throws IOException {
        this.a.shutdownOutput();
    }
}
