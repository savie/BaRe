package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class Packet {
    public static Random c;
    public final Buffer a;
    public final byte[] b = new byte[4];

    public Packet(Buffer buffer) {
        this.a = buffer;
    }

    public static void b(Random random) {
        c = random;
    }

    public final void a() {
        this.a.c = 5;
    }
}
