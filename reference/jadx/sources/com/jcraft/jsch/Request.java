package com.jcraft.jsch;

import defpackage.e6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class Request {
    public boolean a = false;
    public Session b = null;
    public Channel c = null;

    public final void a(Packet packet) throws JSchException {
        if (this.a) {
            this.c.q = -1;
        }
        this.b.z(packet);
        if (this.a) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = this.c.r;
            while (this.c.isConnected() && this.c.q == -1) {
                try {
                    Thread.sleep(10L);
                } catch (Exception unused) {
                }
                if (j > 0 && System.currentTimeMillis() - jCurrentTimeMillis > j) {
                    this.c.q = 0;
                    e6.h("channel request: timeout");
                    return;
                }
            }
            if (this.c.q != 0) {
                return;
            }
            e6.h("failed to send channel request");
        }
    }

    public void request(Session session, Channel channel) {
        this.b = session;
        this.c = channel;
        if (channel.r > 0) {
            this.a = true;
        }
    }
}
