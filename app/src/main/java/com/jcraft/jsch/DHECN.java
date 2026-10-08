package com.jcraft.jsch;

import defpackage.a6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class DHECN extends KeyExchange {
    public int j;
    public byte[] k;
    public byte[] l;
    public byte[] m;
    public byte[] n;
    public byte[] o;
    public Buffer p;
    public Packet q;
    public ECDH r;
    public String s;
    public int t;

    @Override // com.jcraft.jsch.KeyExchange
    public final int getState() {
        return this.j;
    }

    @Override // com.jcraft.jsch.KeyExchange
    public final void init(Session session, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws Exception {
        this.l = bArr;
        this.m = bArr2;
        this.n = bArr3;
        this.o = bArr4;
        try {
            HASH hash = (HASH) Class.forName(session.getConfig(this.s)).asSubclass(HASH.class).getDeclaredConstructor(null).newInstance(null);
            this.b = hash;
            hash.init();
            Buffer buffer = new Buffer();
            this.p = buffer;
            Packet packet = new Packet(buffer);
            this.q = packet;
            packet.a();
            this.p.putByte((byte) 30);
            try {
                ECDH ecdh = (ECDH) Class.forName(session.getConfig("ecdh-sha2-nistp")).asSubclass(ECDH.class).getDeclaredConstructor(null).newInstance(null);
                this.r = ecdh;
                ecdh.init(this.t);
                byte[] q = this.r.getQ();
                this.k = q;
                this.p.putString(q);
                if (bArr == null) {
                    return;
                }
                session.z(this.q);
                if (session.getLogger().isEnabled(1)) {
                    session.getLogger().log(1, "SSH_MSG_KEX_ECDH_INIT sent");
                    session.getLogger().log(1, "expecting SSH_MSG_KEX_ECDH_REPLY");
                }
                this.j = 31;
            } catch (Exception e) {
                a6.f(e);
            }
        } catch (Exception e2) {
            a6.f(e2);
        }
    }

    @Override // com.jcraft.jsch.KeyExchange
    public final boolean next(Buffer buffer) throws Exception {
        if (this.j == 31) {
            buffer.getInt();
            buffer.getByte();
            int i = buffer.getByte();
            if (i == 31) {
                this.e = buffer.getString();
                byte[] string = buffer.getString();
                byte[][] bArrY = KeyPairECDSA.y(string);
                if (this.r.validate(bArrY[0], bArrY[1])) {
                    this.c = KeyExchange.a(KeyExchange.d(this.r.getSecret(bArrY[0], bArrY[1])), true);
                    byte[] string2 = buffer.getString();
                    byte[] bArrB = KeyExchange.b(this.m, false);
                    this.b.update(bArrB, 0, bArrB.length);
                    byte[] bArrB2 = KeyExchange.b(this.l, false);
                    this.b.update(bArrB2, 0, bArrB2.length);
                    byte[] bArrB3 = KeyExchange.b(this.o, false);
                    this.b.update(bArrB3, 0, bArrB3.length);
                    byte[] bArrB4 = KeyExchange.b(this.n, false);
                    this.b.update(bArrB4, 0, bArrB4.length);
                    byte[] bArrB5 = KeyExchange.b(this.e, false);
                    this.b.update(bArrB5, 0, bArrB5.length);
                    byte[] bArrB6 = KeyExchange.b(this.k, false);
                    this.b.update(bArrB6, 0, bArrB6.length);
                    byte[] bArrB7 = KeyExchange.b(string, false);
                    this.b.update(bArrB7, 0, bArrB7.length);
                    HASH hash = this.b;
                    byte[] bArr = this.c;
                    hash.update(bArr, 0, bArr.length);
                    this.d = this.b.digest();
                    byte[] bArr2 = this.e;
                    int i2 = ((bArr2[0] << 24) & (-16777216)) | ((bArr2[1] << 16) & 16711680) | ((bArr2[2] << 8) & 65280) | (bArr2[3] & 255);
                    boolean zE = e(Util.d(bArr2, 4, i2), this.e, 4 + i2, string2);
                    this.j = 0;
                    return zE;
                }
            } else if (this.a.getLogger().isEnabled(3)) {
                this.a.getLogger().log(3, "type: must be SSH_MSG_KEX_ECDH_REPLY " + i);
                return false;
            }
        }
        return false;
    }
}
