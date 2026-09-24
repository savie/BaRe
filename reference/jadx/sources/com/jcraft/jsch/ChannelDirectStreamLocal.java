package com.jcraft.jsch;

import defpackage.g84;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ChannelDirectStreamLocal extends ChannelDirectTCPIP {
    public static final byte[] B;
    public String A;

    static {
        byte[] bArr = Util.a;
        B = Util.p("direct-streamlocal@openssh.com", StandardCharsets.UTF_8);
    }

    public ChannelDirectStreamLocal() {
        this.c = B;
        this.d = 131072;
        this.e = 131072;
        this.f = 16384;
    }

    @Override // com.jcraft.jsch.ChannelDirectTCPIP, com.jcraft.jsch.Channel
    public final Packet e() {
        String str = this.A;
        Session session = this.s;
        if (str == null) {
            session.getLogger().log(4, "socketPath must be set");
            g84.h("socketPath must be set");
            return null;
        }
        Buffer buffer = new Buffer(session.k() + str.length() + 50);
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.putByte((byte) 90);
        buffer.putString(this.c);
        buffer.putInt(this.a);
        buffer.putInt(this.e);
        buffer.putInt(this.f);
        String str2 = this.A;
        Charset charset = StandardCharsets.UTF_8;
        buffer.putString(Util.p(str2, charset));
        buffer.putString(Util.p(this.x, charset));
        buffer.putInt(this.y);
        return packet;
    }

    public final String getSocketPath() {
        return this.A;
    }

    public final void setSocketPath(String str) {
        this.A = str;
    }
}
