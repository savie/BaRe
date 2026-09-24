package com.jcraft.jsch;

import defpackage.yr5;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.Hashtable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class ChannelX11 extends Channel {
    public static byte[] A = null;
    public static byte[] B = null;
    public static final Hashtable C = new Hashtable();
    public static final Hashtable D = new Hashtable();
    public static final byte[] E = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    public static String y = "127.0.0.1";
    public static int z = 6000;
    public boolean v = true;
    public Socket w = null;
    public byte[] x = new byte[0];

    public ChannelX11() {
        this.d = 131072;
        this.e = 131072;
        this.f = 16384;
        this.c = Util.p("x11", StandardCharsets.UTF_8);
        this.n = true;
    }

    public static void m(Session session) {
        Hashtable hashtable = D;
        synchronized (hashtable) {
            hashtable.remove(session);
            C.remove(session);
        }
    }

    @Override // com.jcraft.jsch.Channel
    public final void l(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2;
        if (!this.v) {
            IO io = this.i;
            io.b.write(bArr, i, i2);
            io.b.flush();
            return;
        }
        try {
            Session session = getSession();
            byte[] bArr3 = this.x;
            int length = bArr3.length + i2;
            byte[] bArr4 = new byte[length];
            System.arraycopy(bArr, i, bArr4, bArr3.length, i2);
            byte[] bArr5 = this.x;
            if (bArr5.length > 0) {
                System.arraycopy(bArr5, 0, bArr4, 0, bArr5.length);
            }
            this.x = bArr4;
            if (length < 9) {
                return;
            }
            int i3 = ((bArr4[6] & 255) * 256) + (bArr4[7] & 255);
            int i4 = ((bArr4[8] & 255) * 256) + (bArr4[9] & 255);
            int i5 = bArr4[0] & 255;
            if (i5 != 66 && i5 == 108) {
                i3 = ((i3 << 8) & 65280) | ((i3 >>> 8) & 255);
                i4 = ((i4 << 8) & 65280) | ((i4 >>> 8) & 255);
            }
            int i6 = i3 + 12 + ((-i3) & 3);
            if (length < i6 + i4) {
                return;
            }
            byte[] bArr6 = new byte[i4];
            System.arraycopy(bArr4, i6, bArr6, 0, i4);
            Hashtable hashtable = C;
            synchronized (hashtable) {
                bArr2 = (byte[]) hashtable.get(session);
            }
            if (i4 != bArr2.length) {
                this.j = null;
                c();
                this.i.a();
                disconnect();
                break;
            }
            int i7 = 0;
            while (true) {
                if (i7 >= i4) {
                    byte[] bArr7 = A;
                    if (bArr7 == null) {
                        break;
                    }
                    System.arraycopy(bArr7, 0, bArr4, i6, i4);
                    break;
                }
                if (bArr6[i7] != bArr2[i7]) {
                    this.j = null;
                    c();
                    this.i.a();
                    disconnect();
                    break;
                }
                i7++;
            }
            this.v = false;
            IO io2 = this.i;
            io2.b.write(bArr4, 0, length);
            io2.b.flush();
            this.x = null;
        } catch (JSchException e) {
            throw new IOException(e.toString(), e);
        }
    }

    @Override // com.jcraft.jsch.Channel
    public final void run() {
        IO io;
        InputStream inputStream;
        try {
            Socket socketG = Util.g(z, yr5.p, y);
            this.w = socketG;
            socketG.setTcpNoDelay(true);
            IO io2 = new IO();
            this.i = io2;
            io2.a = this.w.getInputStream();
            this.i.b = this.w.getOutputStream();
            i();
            this.j = Thread.currentThread();
            Buffer buffer = new Buffer(this.h);
            Packet packet = new Packet(buffer);
            try {
                Session session = getSession();
                while (this.j != null && (io = this.i) != null && (inputStream = io.a) != null) {
                    byte[] bArr = buffer.b;
                    int i = inputStream.read(bArr, 14, (bArr.length - 14) - session.k());
                    if (i <= 0) {
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
