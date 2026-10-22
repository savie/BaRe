package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Objects;
import javax.net.ServerSocketFactory;
import javax.net.SocketFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yi7 {
    public static final SocketFactory i = SocketFactory.getDefault();
    public static final ServerSocketFactory j = ServerSocketFactory.getDefault();
    public int a;
    public Socket b;
    public String c;
    public InputStream d;
    public OutputStream e;
    public SocketFactory f;
    public ServerSocketFactory g;
    public int h;

    public abstract void b();

    public final void c(int i2, String str) throws IOException {
        this.c = str;
        InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i2);
        Socket socketCreateSocket = this.f.createSocket();
        this.b = socketCreateSocket;
        socketCreateSocket.connect(inetSocketAddress, this.h);
        b();
    }

    public final boolean d() {
        Socket socket = this.b;
        if (socket == null ? false : socket.isConnected()) {
            try {
                if (this.b.getInetAddress() != null && this.b.getPort() != 0 && this.b.getRemoteSocketAddress() != null && !this.b.isClosed() && !this.b.isInputShutdown() && !this.b.isOutputShutdown()) {
                    this.b.getInputStream();
                    this.b.getOutputStream();
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public final void e(z96 z96Var) {
        vy4 vy4Var = ((z13) this).p.b;
        if (z96Var != null) {
            vy4Var.a.remove(z96Var);
        } else {
            vy4Var.getClass();
        }
    }

    public final boolean f(Socket socket) {
        return socket != null && Objects.equals(socket.getInetAddress(), this.b.getInetAddress());
    }
}
