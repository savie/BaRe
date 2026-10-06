package com.jcraft.jsch;

import defpackage.i41;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ChannelDirectTCPIP extends Channel {
    public static final byte[] z;
    public String v;
    public int w;
    public String x = "127.0.0.1";
    public int y = 0;

    static {
        byte[] bArr = Util.a;
        z = Util.p("direct-tcpip", StandardCharsets.UTF_8);
    }

    public ChannelDirectTCPIP() {
        this.c = z;
        this.d = 131072;
        this.e = 131072;
        this.f = 16384;
    }

    @Override // com.jcraft.jsch.Channel
    public final void connect(int i) throws JSchException {
        this.r = i;
        try {
            Session session = getSession();
            if (!session.z) {
                throw new JSchException("session is down");
            }
            if (this.i.a == null) {
                h();
                return;
            }
            Thread threadNewThread = session.m0.newThread(new i41(this, 0));
            this.j = threadNewThread;
            threadNewThread.setName("DirectTCPIP thread " + session.f0);
            boolean z2 = session.b0;
            if (z2) {
                this.j.setDaemon(z2);
            }
            this.j.start();
        } catch (Exception e) {
            this.i.a();
            this.i = null;
            Session session2 = this.s;
            if (session2 != null) {
                session2.g(this);
            }
            if (e instanceof JSchException) {
                throw ((JSchException) e);
            }
        }
    }

    @Override // com.jcraft.jsch.Channel
    public Packet e() {
        Buffer buffer = new Buffer(this.s.k() + this.x.length() + this.v.length() + 50);
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 90);
        buffer.putString(this.c);
        buffer.putInt(this.a);
        buffer.putInt(this.e);
        buffer.putInt(this.f);
        String str = this.v;
        Charset charset = StandardCharsets.UTF_8;
        buffer.putString(Util.p(str, charset));
        buffer.putInt(this.w);
        buffer.putString(Util.p(this.x, charset));
        buffer.putInt(this.y);
        return packet;
    }

    @Override // com.jcraft.jsch.Channel
    public final void g() {
        this.i = new IO();
    }

    @Override // com.jcraft.jsch.Channel
    public final void run() {
        IO io;
        InputStream inputStream;
        try {
            h();
            Buffer buffer = new Buffer(this.h);
            Packet packet = new Packet(buffer);
            Session session = getSession();
            while (isConnected() && this.j != null && (io = this.i) != null && (inputStream = io.a) != null) {
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
            c();
            disconnect();
        } catch (Exception unused) {
            if (!this.n) {
                this.n = true;
            }
            disconnect();
        }
    }

    public final void setHost(String str) {
        this.v = str;
    }

    @Override // com.jcraft.jsch.Channel
    public final void setInputStream(InputStream inputStream) {
        this.i.a = inputStream;
    }

    public final void setOrgIPAddress(String str) {
        this.x = str;
    }

    public final void setOrgPort(int i) {
        this.y = i;
    }

    @Override // com.jcraft.jsch.Channel
    public final void setOutputStream(OutputStream outputStream) {
        this.i.b = outputStream;
    }

    public final void setPort(int i) {
        this.w = i;
    }
}
