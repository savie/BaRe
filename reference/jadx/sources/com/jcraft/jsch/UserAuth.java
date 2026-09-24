package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class UserAuth {
    public UserInfo a;
    public Packet b;
    public Buffer c;
    public String d;

    public boolean start(Session session) throws Exception {
        this.a = session.T;
        Packet packet = session.P;
        this.b = packet;
        this.c = packet.a;
        this.d = session.i0;
        return true;
    }
}
