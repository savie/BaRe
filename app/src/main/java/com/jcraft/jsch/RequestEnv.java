package com.jcraft.jsch;

import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class RequestEnv extends Request {
    public byte[] d = new byte[0];
    public byte[] e = new byte[0];

    @Override // com.jcraft.jsch.Request
    public final void request(Session session, Channel channel) throws Exception {
        super.request(session, channel);
        this.a = false;
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 98);
        buffer.putInt(channel.b);
        byte[] bArr = Util.a;
        buffer.putString("env".getBytes(StandardCharsets.UTF_8));
        buffer.putByte((byte) 0);
        buffer.putString(this.d);
        buffer.putString(this.e);
        a(packet);
    }
}
