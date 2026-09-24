package com.jcraft.jsch;

import defpackage.yr5;
import java.io.InputStream;
import java.io.PipedOutputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ChannelForwardedTCPIP extends Channel {
    public static final Vector y = new Vector();
    public Socket v = null;
    public ForwardedTCPIPDaemon w = null;
    public Config x = null;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class Config {
        public Session a;
        public int b;
        public int c;
        public String d;
        public String e;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class ConfigDaemon extends Config {
        public Object[] f;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class ConfigLHost extends Config {
        public int f;
        public SocketFactory g;
    }

    public ChannelForwardedTCPIP() {
        this.d = 131072;
        this.e = 131072;
        this.f = 16384;
        this.i = new IO();
        this.n = true;
    }

    public static void m(Session session, String str, int i, int i2, String str2, int i3, SocketFactory socketFactory) {
        String strP = p(str);
        Vector vector = y;
        synchronized (vector) {
            try {
                if (o(session, strP, i) != null) {
                    throw new JSchException("PortForwardingR: remote port " + i + " is already registered.");
                }
                ConfigLHost configLHost = new ConfigLHost();
                configLHost.a = session;
                configLHost.b = i;
                configLHost.c = i2;
                configLHost.e = str2;
                configLHost.f = i3;
                configLHost.d = strP;
                configLHost.g = socketFactory;
                vector.addElement(configLHost);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void n(Session session, String str, int i) {
        Vector vector = y;
        synchronized (vector) {
            try {
                Config configO = o(session, p(str), i);
                if (configO == null) {
                    configO = o(session, null, i);
                }
                if (configO == null) {
                    return;
                }
                vector.removeElement(configO);
                if (str == null) {
                    str = configO.d;
                }
                if (str == null) {
                    str = "0.0.0.0";
                }
                Buffer buffer = new Buffer(200);
                Packet packet = new Packet(buffer);
                try {
                    packet.a();
                    buffer.putByte((byte) 80);
                    byte[] bArr = Util.a;
                    Charset charset = StandardCharsets.UTF_8;
                    buffer.putString("cancel-tcpip-forward".getBytes(charset));
                    buffer.putByte((byte) 0);
                    buffer.putString(str.getBytes(charset));
                    buffer.putInt(i);
                    session.z(packet);
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Config o(Session session, String str, int i) {
        int i2;
        synchronized (y) {
            int i3 = 0;
            while (true) {
                try {
                    Vector vector = y;
                    if (i3 >= vector.size()) {
                        return null;
                    }
                    Config config = (Config) vector.elementAt(i3);
                    if (config.a == session && (((i2 = config.b) == i || (i2 == 0 && config.c == i)) && (str == null || config.d.equals(str)))) {
                        return config;
                    }
                    i3++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static String p(String str) {
        if (str == null) {
            return "localhost";
        }
        return (str.length() == 0 || str.equals("*")) ? "" : str;
    }

    @Override // com.jcraft.jsch.Channel
    public final void f(Buffer buffer) {
        Session session;
        k(buffer.getInt());
        long uInt = buffer.getUInt();
        synchronized (this) {
            this.g = uInt;
        }
        this.h = buffer.getInt();
        byte[] string = buffer.getString();
        int i = buffer.getInt();
        buffer.getString();
        buffer.getInt();
        try {
            session = getSession();
        } catch (JSchException unused) {
            session = null;
        }
        byte[] bArr = Util.a;
        int length = string.length;
        Charset charset = StandardCharsets.UTF_8;
        Config configO = o(session, new String(string, 0, length, charset), i);
        this.x = configO;
        if (configO == null) {
            this.x = o(session, null, i);
        }
        if (this.x == null && session.getLogger().isEnabled(3)) {
            session.getLogger().log(3, "ChannelForwardedTCPIP: " + new String(string, 0, string.length, charset) + ":" + i + " is not registered.");
        }
    }

    public final int getRemotePort() {
        Config config = this.x;
        if (config != null) {
            return config.b;
        }
        return 0;
    }

    @Override // com.jcraft.jsch.Channel
    public final void run() {
        IO io;
        InputStream inputStream;
        try {
            Config config = this.x;
            if (config instanceof ConfigDaemon) {
                ConfigDaemon configDaemon = (ConfigDaemon) config;
                this.w = (ForwardedTCPIPDaemon) Class.forName(configDaemon.e).asSubclass(ForwardedTCPIPDaemon.class).getDeclaredConstructor(null).newInstance(null);
                PipedOutputStream pipedOutputStream = new PipedOutputStream();
                IO io2 = this.i;
                Channel.PassiveInputStream passiveInputStream = new Channel.PassiveInputStream(pipedOutputStream, 32768);
                io2.d = false;
                io2.a = passiveInputStream;
                this.w.setChannel(this, getInputStream(), pipedOutputStream);
                this.w.setArg(configDaemon.f);
                getSession().m0.newThread(this.w).start();
            } else {
                ConfigLHost configLHost = (ConfigLHost) config;
                SocketFactory socketFactory = configLHost.g;
                String str = configLHost.e;
                Socket socketG = socketFactory == null ? Util.g(configLHost.f, yr5.p, str) : socketFactory.createSocket(str, configLHost.f);
                this.v = socketG;
                socketG.setTcpNoDelay(true);
                this.i.a = this.v.getInputStream();
                this.i.b = this.v.getOutputStream();
            }
            i();
            this.j = Thread.currentThread();
            Buffer buffer = new Buffer(this.h);
            Packet packet = new Packet(buffer);
            try {
                Session session = getSession();
                while (this.j != null && (io = this.i) != null && (inputStream = io.a) != null) {
                    byte[] bArr = buffer.b;
                    int i = inputStream.read(bArr, 14, (bArr.length - 14) - session.k());
                    if (i > 0) {
                        packet.a();
                        buffer.putByte((byte) 94);
                        buffer.putInt(this.b);
                        buffer.putInt(i);
                        buffer.h(i);
                        synchronized (this) {
                            try {
                                if (!this.m) {
                                    session.A(packet, this, i);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        break;
                    }
                    c();
                    break;
                }
            } catch (Exception unused) {
            }
            disconnect();
        } catch (Exception unused2) {
            j();
            this.m = true;
            disconnect();
        }
    }
}
