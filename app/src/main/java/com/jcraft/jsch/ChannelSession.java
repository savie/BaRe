package com.jcraft.jsch;

import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;
import java.util.Hashtable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class ChannelSession extends Channel {
    public static final byte[] F;
    public boolean v = false;
    public boolean w = false;
    public Hashtable x = null;
    public boolean y = false;
    public String z = "vt100";
    public int A = 80;
    public int B = 24;
    public int C = 640;
    public int D = 480;
    public byte[] E = null;

    static {
        byte[] bArr = Util.a;
        F = Util.p("session", StandardCharsets.UTF_8);
    }

    public ChannelSession() {
        this.c = F;
        this.i = new IO();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void m() {
        byte[] bytes;
        Session session = getSession();
        if (this.v) {
            new RequestAgentForwarding().request(session, this);
        }
        if (this.w) {
            new RequestX11().request(session, this);
        }
        if (this.y) {
            RequestPtyReq requestPtyReq = new RequestPtyReq();
            requestPtyReq.d = this.z;
            int i = this.A;
            int i2 = this.B;
            int i3 = this.C;
            int i4 = this.D;
            requestPtyReq.e = i;
            requestPtyReq.f = i2;
            requestPtyReq.g = i3;
            requestPtyReq.h = i4;
            byte[] bArr = this.E;
            if (bArr != null) {
                requestPtyReq.i = bArr;
            }
            requestPtyReq.request(session, this);
        }
        Hashtable hashtable = this.x;
        if (hashtable != null) {
            Enumeration enumerationKeys = hashtable.keys();
            while (enumerationKeys.hasMoreElements()) {
                Object obj = (byte[]) enumerationKeys.nextElement();
                byte[] bytes2 = (byte[]) this.x.get(obj);
                RequestEnv requestEnv = new RequestEnv();
                if (obj instanceof String) {
                    bytes = obj;
                    byte[] bArr2 = Util.a;
                    bytes = ((String) obj).getBytes(StandardCharsets.UTF_8);
                }
                bytes = obj;
                if (bytes2 instanceof String) {
                    byte[] bArr3 = Util.a;
                    bytes2 = ((String) bytes2).getBytes(StandardCharsets.UTF_8);
                }
                requestEnv.d = bytes;
                requestEnv.e = bytes2;
                requestEnv.request(session, this);
            }
        }
    }

    @Override // com.jcraft.jsch.Channel
    public final void run() {
        IO io;
        InputStream inputStream;
        Buffer buffer = new Buffer(this.h);
        Packet packet = new Packet(buffer);
        try {
            Session session = getSession();
            while (isConnected() && this.j != null && (io = this.i) != null && (inputStream = io.a) != null) {
                byte[] bArr = buffer.b;
                int i = inputStream.read(bArr, 14, (bArr.length - 14) - session.k());
                if (i != 0) {
                    if (i == -1) {
                        c();
                        break;
                    }
                    if (this.m) {
                        break;
                    }
                    packet.a();
                    buffer.putByte((byte) 94);
                    buffer.putInt(this.b);
                    buffer.putInt(i);
                    buffer.h(i);
                    session.A(packet, this, i);
                }
            }
        } catch (Exception unused) {
        }
        Thread thread = this.j;
        if (thread != null) {
            synchronized (thread) {
                thread.notifyAll();
            }
        }
        this.j = null;
    }

    public void setAgentForwarding(boolean z) {
        this.v = z;
    }

    public void setEnv(byte[] bArr, byte[] bArr2) {
        synchronized (this) {
            if (this.x == null) {
                this.x = new Hashtable();
            }
            this.x.put(bArr, bArr2);
        }
    }

    public void setPty(boolean z) {
        this.y = z;
    }

    public void setPtySize(int i, int i2, int i3, int i4) {
        setPtyType(this.z, i, i2, i3, i4);
        if (this.y && isConnected()) {
            try {
                RequestWindowChange requestWindowChange = new RequestWindowChange();
                requestWindowChange.d = i;
                requestWindowChange.e = i2;
                requestWindowChange.f = i3;
                requestWindowChange.g = i4;
                requestWindowChange.request(getSession(), this);
            } catch (Exception unused) {
            }
        }
    }

    public void setPtyType(String str) {
        setPtyType(str, 80, 24, 640, 480);
    }

    public void setTerminalMode(byte[] bArr) {
        this.E = bArr;
    }

    @Override // com.jcraft.jsch.Channel
    public void setXForwarding(boolean z) {
        this.w = z;
    }

    public void setPtyType(String str, int i, int i2, int i3, int i4) {
        this.z = str;
        this.A = i;
        this.B = i2;
        this.C = i3;
        this.D = i4;
    }

    public void setEnv(String str, String str2) {
        byte[] bArr = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        setEnv(Util.p(str, charset), Util.p(str2, charset));
    }

    @Deprecated
    public void setEnv(Hashtable<byte[], byte[]> hashtable) {
        synchronized (this) {
            this.x = hashtable;
        }
    }
}
