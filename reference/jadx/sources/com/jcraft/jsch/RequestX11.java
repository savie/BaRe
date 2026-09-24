package com.jcraft.jsch;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Hashtable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class RequestX11 extends Request {
    @Override // com.jcraft.jsch.Request
    public final void request(Session session, Channel channel) throws Exception {
        byte[] bArr;
        super.request(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 98);
        buffer.putInt(channel.b);
        byte[] bArr2 = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        buffer.putString("x11-req".getBytes(charset));
        buffer.putByte(this.a ? (byte) 1 : (byte) 0);
        buffer.putByte((byte) 0);
        buffer.putString("MIT-MAGIC-COOKIE-1".getBytes(charset));
        Hashtable hashtable = ChannelX11.D;
        synchronized (hashtable) {
            try {
                bArr = (byte[]) hashtable.get(session);
                if (bArr == null) {
                    Random random = Session.A0;
                    byte[] bArr3 = new byte[16];
                    synchronized (random) {
                        random.fill(bArr3, 0, 16);
                    }
                    ChannelX11.C.put(session, bArr3);
                    bArr = new byte[32];
                    for (int i = 0; i < 16; i++) {
                        int i2 = i * 2;
                        byte[] bArr4 = ChannelX11.E;
                        bArr[i2] = bArr4[(bArr3[i] >>> 4) & 15];
                        bArr[i2 + 1] = bArr4[bArr3[i] & 15];
                    }
                    ChannelX11.D.put(session, bArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        buffer.putString(bArr, 0, bArr.length);
        buffer.putInt(0);
        a(packet);
        session.K = true;
    }

    public final void setCookie(String str) {
        byte[] bArr = Util.a;
        ChannelX11.A = Util.p(str, StandardCharsets.UTF_8);
    }
}
