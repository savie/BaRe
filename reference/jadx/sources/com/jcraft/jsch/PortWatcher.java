package com.jcraft.jsch;

import defpackage.eq3;
import defpackage.u48;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class PortWatcher {
    public static final Vector j = new Vector();
    public static final InetAddress k;
    public final Session a;
    public int b;
    public final int c;
    public final String d;
    public InetAddress e;
    public l f;
    public ServerSocket g;
    public int h = 0;
    public final String i;

    static {
        k = null;
        try {
            k = InetAddress.getByName("0.0.0.0");
        } catch (UnknownHostException unused) {
        }
    }

    public PortWatcher(Session session, String str, int i, String str2, int i2, ServerSocketFactory serverSocketFactory) throws JSchException {
        this.a = session;
        this.b = i;
        this.d = str2;
        this.c = i2;
        a(str, i, serverSocketFactory);
    }

    public static PortWatcher addSocket(Session session, String str, int i, String str2, ServerSocketFactory serverSocketFactory) throws JSchException {
        String strC = c(str);
        if (b(session, strC, i) != null) {
            throw new JSchException(u48.m("PortForwardingL: local port ", strC, ":", i, " is already registered."));
        }
        PortWatcher portWatcher = new PortWatcher(session, strC, i, str2, serverSocketFactory);
        j.addElement(portWatcher);
        return portWatcher;
    }

    public static PortWatcher b(Session session, String str, int i) {
        try {
            InetAddress byName = InetAddress.getByName(str);
            synchronized (j) {
                int i2 = 0;
                while (true) {
                    try {
                        Vector vector = j;
                        if (i2 >= vector.size()) {
                            return null;
                        }
                        PortWatcher portWatcher = (PortWatcher) vector.elementAt(i2);
                        if (portWatcher.a == session && portWatcher.b == i) {
                            InetAddress inetAddress = k;
                            if (inetAddress == null || !portWatcher.e.equals(inetAddress)) {
                                if (portWatcher.e.equals(byName)) {
                                }
                            }
                            return portWatcher;
                        }
                        i2++;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (UnknownHostException e) {
            throw new JSchException(eq3.k("PortForwardingL: invalid address ", str, " specified."), e);
        }
    }

    public static String c(String str) {
        if (str == null) {
            return str;
        }
        if (str.length() == 0 || str.equals("*")) {
            return "0.0.0.0";
        }
        return str.equals("localhost") ? "127.0.0.1" : str;
    }

    public final void a(String str, int i, ServerSocketFactory serverSocketFactory) throws JSchException {
        int localPort;
        try {
            InetAddress byName = InetAddress.getByName(str);
            this.e = byName;
            ServerSocket serverSocket = serverSocketFactory == null ? new ServerSocket(i, 0, this.e) : serverSocketFactory.createServerSocket(i, 0, byName);
            this.g = serverSocket;
            if (i != 0 || (localPort = serverSocket.getLocalPort()) == -1) {
                return;
            }
            this.b = localPort;
        } catch (Exception e) {
            throw new JSchException(u48.m("PortForwardingL: local port ", str, ":", i, " cannot be bound."), e);
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.jcraft.jsch.l] */
    public final void d() {
        Logger logger;
        StringBuilder sb;
        Logger logger2;
        StringBuilder sb2;
        this.f = new Runnable() { // from class: com.jcraft.jsch.l
            @Override // java.lang.Runnable
            public final void run() {
                this.a.d();
            }
        };
        while (this.f != null) {
            try {
                Socket socketAccept = this.g.accept();
                socketAccept.setTcpNoDelay(true);
                InputStream inputStream = socketAccept.getInputStream();
                OutputStream outputStream = socketAccept.getOutputStream();
                String str = this.i;
                Session session = this.a;
                if (str == null || str.length() <= 0) {
                    ChannelDirectTCPIP channelDirectTCPIP = (ChannelDirectTCPIP) session.openChannel("direct-tcpip");
                    int i = this.c;
                    String str2 = this.d;
                    if (channelDirectTCPIP != null) {
                        IO io = channelDirectTCPIP.i;
                        io.a = inputStream;
                        io.b = outputStream;
                        channelDirectTCPIP.v = str2;
                        channelDirectTCPIP.w = i;
                        channelDirectTCPIP.x = socketAccept.getInetAddress().getHostAddress();
                        channelDirectTCPIP.y = socketAccept.getPort();
                        channelDirectTCPIP.connect(this.h);
                    } else {
                        try {
                            socketAccept.close();
                            if (session.getLogger().isEnabled(0)) {
                                logger = session.getLogger();
                                sb = new StringBuilder();
                                sb.append("Failed to add DirectTCPIP channel to ");
                                sb.append(str2);
                                sb.append(":");
                                sb.append(i);
                                sb.append(" - session may be disconnecting");
                                logger.log(0, sb.toString());
                            }
                        } catch (Exception unused) {
                            if (session.getLogger().isEnabled(0)) {
                                logger = session.getLogger();
                                sb = new StringBuilder();
                                sb.append("Failed to add DirectTCPIP channel to ");
                                sb.append(str2);
                                sb.append(":");
                                sb.append(i);
                                sb.append(" - session may be disconnecting");
                            }
                        } catch (Throwable th) {
                            if (session.getLogger().isEnabled(0)) {
                                session.getLogger().log(0, "Failed to add DirectTCPIP channel to " + str2 + ":" + i + " - session may be disconnecting");
                            }
                            throw th;
                        }
                    }
                } else {
                    ChannelDirectStreamLocal channelDirectStreamLocal = (ChannelDirectStreamLocal) session.openChannel("direct-streamlocal@openssh.com");
                    if (channelDirectStreamLocal != null) {
                        IO io2 = channelDirectStreamLocal.i;
                        io2.a = inputStream;
                        io2.b = outputStream;
                        channelDirectStreamLocal.A = str;
                        channelDirectStreamLocal.x = socketAccept.getInetAddress().getHostAddress();
                        channelDirectStreamLocal.y = socketAccept.getPort();
                        channelDirectStreamLocal.connect(this.h);
                    } else {
                        try {
                            socketAccept.close();
                            if (session.getLogger().isEnabled(0)) {
                                logger2 = session.getLogger();
                                sb2 = new StringBuilder();
                                sb2.append("Failed to add DirectStreamLocal channel for socket path: ");
                                sb2.append(str);
                                sb2.append(" - session may be disconnecting");
                                logger2.log(0, sb2.toString());
                            }
                        } catch (Exception unused2) {
                            if (session.getLogger().isEnabled(0)) {
                                logger2 = session.getLogger();
                                sb2 = new StringBuilder();
                                sb2.append("Failed to add DirectStreamLocal channel for socket path: ");
                                sb2.append(str);
                                sb2.append(" - session may be disconnecting");
                                logger2.log(0, sb2.toString());
                            }
                        } catch (Throwable th2) {
                            if (session.getLogger().isEnabled(0)) {
                                session.getLogger().log(0, "Failed to add DirectStreamLocal channel for socket path: " + str + " - session may be disconnecting");
                            }
                            throw th2;
                        }
                    }
                }
            } catch (Exception unused3) {
            }
        }
        this.f = null;
        try {
            ServerSocket serverSocket = this.g;
            if (serverSocket != null) {
                serverSocket.close();
            }
            this.g = null;
        } catch (Exception unused4) {
        }
    }

    public PortWatcher(Session session, String str, int i, String str2, ServerSocketFactory serverSocketFactory) throws JSchException {
        this.a = session;
        this.b = i;
        this.i = str2;
        a(str, i, serverSocketFactory);
    }
}
