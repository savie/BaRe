package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.Objects;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class og2 extends Socket {
    public final Socket a;

    public og2(Socket socket) {
        Objects.requireNonNull(socket, "delegate");
        this.a = socket;
    }

    @Override // java.net.Socket
    public final void bind(SocketAddress socketAddress) throws IOException {
        this.a.bind(socketAddress);
    }

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.a.close();
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress) throws IOException {
        this.a.connect(socketAddress);
    }

    @Override // java.net.Socket
    public final SocketChannel getChannel() {
        return this.a.getChannel();
    }

    @Override // java.net.Socket
    public final InetAddress getInetAddress() {
        return this.a.getInetAddress();
    }

    @Override // java.net.Socket
    public final InputStream getInputStream() {
        return new InflaterInputStream(this.a.getInputStream());
    }

    @Override // java.net.Socket
    public final boolean getKeepAlive() {
        return this.a.getKeepAlive();
    }

    @Override // java.net.Socket
    public final InetAddress getLocalAddress() {
        return this.a.getLocalAddress();
    }

    @Override // java.net.Socket
    public final int getLocalPort() {
        return this.a.getLocalPort();
    }

    @Override // java.net.Socket
    public final SocketAddress getLocalSocketAddress() {
        return this.a.getLocalSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getOOBInline() {
        return this.a.getOOBInline();
    }

    @Override // java.net.Socket
    public final OutputStream getOutputStream() {
        return new DeflaterOutputStream(this.a.getOutputStream());
    }

    @Override // java.net.Socket
    public final int getPort() {
        return this.a.getPort();
    }

    @Override // java.net.Socket
    public final synchronized int getReceiveBufferSize() {
        return this.a.getReceiveBufferSize();
    }

    @Override // java.net.Socket
    public final SocketAddress getRemoteSocketAddress() {
        return this.a.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public final boolean getReuseAddress() {
        return this.a.getReuseAddress();
    }

    @Override // java.net.Socket
    public final synchronized int getSendBufferSize() {
        return this.a.getSendBufferSize();
    }

    @Override // java.net.Socket
    public final int getSoLinger() {
        return this.a.getSoLinger();
    }

    @Override // java.net.Socket
    public final synchronized int getSoTimeout() {
        return this.a.getSoTimeout();
    }

    @Override // java.net.Socket
    public final boolean getTcpNoDelay() {
        return this.a.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public final int getTrafficClass() {
        return this.a.getTrafficClass();
    }

    @Override // java.net.Socket
    public final boolean isBound() {
        return this.a.isBound();
    }

    @Override // java.net.Socket
    public final boolean isClosed() {
        return this.a.isClosed();
    }

    @Override // java.net.Socket
    public final boolean isConnected() {
        return this.a.isConnected();
    }

    @Override // java.net.Socket
    public final boolean isInputShutdown() {
        return this.a.isInputShutdown();
    }

    @Override // java.net.Socket
    public final boolean isOutputShutdown() {
        return this.a.isOutputShutdown();
    }

    @Override // java.net.Socket
    public final void sendUrgentData(int i) throws IOException {
        this.a.sendUrgentData(i);
    }

    @Override // java.net.Socket
    public final void setKeepAlive(boolean z) throws SocketException {
        this.a.setKeepAlive(z);
    }

    @Override // java.net.Socket
    public final void setOOBInline(boolean z) throws SocketException {
        this.a.setOOBInline(z);
    }

    @Override // java.net.Socket
    public final void setPerformancePreferences(int i, int i2, int i3) {
        this.a.setPerformancePreferences(i, i2, i3);
    }

    @Override // java.net.Socket
    public final synchronized void setReceiveBufferSize(int i) {
        this.a.setReceiveBufferSize(i);
    }

    @Override // java.net.Socket
    public final void setReuseAddress(boolean z) throws SocketException {
        this.a.setReuseAddress(z);
    }

    @Override // java.net.Socket
    public final synchronized void setSendBufferSize(int i) {
        this.a.setSendBufferSize(i);
    }

    @Override // java.net.Socket
    public final void setSoLinger(boolean z, int i) throws SocketException {
        this.a.setSoLinger(z, i);
    }

    @Override // java.net.Socket
    public final synchronized void setSoTimeout(int i) {
        this.a.setSoTimeout(i);
    }

    @Override // java.net.Socket
    public final void setTcpNoDelay(boolean z) throws SocketException {
        this.a.setTcpNoDelay(z);
    }

    @Override // java.net.Socket
    public final void setTrafficClass(int i) throws SocketException {
        this.a.setTrafficClass(i);
    }

    @Override // java.net.Socket
    public final void shutdownInput() throws IOException {
        this.a.shutdownInput();
    }

    @Override // java.net.Socket
    public final void shutdownOutput() throws IOException {
        this.a.shutdownOutput();
    }

    @Override // java.net.Socket
    public final String toString() {
        return this.a.toString();
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress, int i) throws IOException {
        this.a.connect(socketAddress, i);
    }
}
