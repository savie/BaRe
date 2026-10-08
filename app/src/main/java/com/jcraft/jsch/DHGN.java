package com.jcraft.jsch;

import defpackage.a6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class DHGN extends KeyExchange {
    public int j;
    public DH k;
    public byte[] l;
    public byte[] m;
    public byte[] n;
    public byte[] o;
    public byte[] p;
    public Buffer q;
    public Packet r;

    public abstract byte[] f();

    public abstract byte[] g();

    @Override // com.jcraft.jsch.KeyExchange
    public final int getState() {
        return this.j;
    }

    public abstract String h();

    @Override // com.jcraft.jsch.KeyExchange
    public final void init(Session session, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws Exception {
        this.l = bArr;
        this.m = bArr2;
        this.n = bArr3;
        this.o = bArr4;
        try {
            HASH hash = (HASH) Class.forName(session.getConfig(h())).asSubclass(HASH.class).getDeclaredConstructor(null).newInstance(null);
            this.b = hash;
            hash.init();
            Buffer buffer = new Buffer();
            this.q = buffer;
            this.r = new Packet(buffer);
            try {
                DH dh = (DH) Class.forName(session.getConfig("dh")).asSubclass(DH.class).getDeclaredConstructor(null).newInstance(null);
                this.k = dh;
                dh.init();
                this.k.setP(g());
                this.k.setG(f());
                this.p = this.k.getE();
                this.r.a();
                this.q.putByte((byte) 30);
                this.q.putMPInt(this.p);
                if (bArr == null) {
                    return;
                }
                session.z(this.r);
                if (session.getLogger().isEnabled(1)) {
                    session.getLogger().log(1, "SSH_MSG_KEXDH_INIT sent");
                    session.getLogger().log(1, "expecting SSH_MSG_KEXDH_REPLY");
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
                byte[] mPInt = buffer.getMPInt();
                byte[] string = buffer.getString();
                this.k.setF(mPInt);
                this.k.getClass();
                this.c = KeyExchange.a(KeyExchange.d(this.k.getK()), true);
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
                byte[] bArrA = KeyExchange.a(this.p, false);
                this.b.update(bArrA, 0, bArrA.length);
                byte[] bArrA2 = KeyExchange.a(mPInt, false);
                this.b.update(bArrA2, 0, bArrA2.length);
                HASH hash = this.b;
                byte[] bArr = this.c;
                hash.update(bArr, 0, bArr.length);
                this.d = this.b.digest();
                byte[] bArr2 = this.e;
                int i2 = ((bArr2[0] << 24) & (-16777216)) | ((bArr2[1] << 16) & 16711680) | ((bArr2[2] << 8) & 65280) | (bArr2[3] & 255);
                boolean zE = e(Util.d(bArr2, 4, i2), this.e, 4 + i2, string);
                this.j = 0;
                return zE;
            }
            if (this.a.getLogger().isEnabled(3)) {
                this.a.getLogger().log(3, "type: must be SSH_MSG_KEXDH_REPLY " + i);
            }
        }
        return false;
    }
}
