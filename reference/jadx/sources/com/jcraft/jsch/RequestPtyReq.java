package com.jcraft.jsch;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class RequestPtyReq extends Request {
    public String d = "vt100";
    public int e = 80;
    public int f = 24;
    public int g = 640;
    public int h = 480;
    public byte[] i = Util.c;

    @Override // com.jcraft.jsch.Request
    public final void request(Session session, Channel channel) throws Exception {
        super.request(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 98);
        buffer.putInt(channel.b);
        byte[] bArr = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        buffer.putString("pty-req".getBytes(charset));
        buffer.putByte(this.a ? (byte) 1 : (byte) 0);
        buffer.putString(Util.p(this.d, charset));
        buffer.putInt(this.e);
        buffer.putInt(this.f);
        buffer.putInt(this.g);
        buffer.putInt(this.h);
        buffer.putString(this.i);
        a(packet);
    }
}
