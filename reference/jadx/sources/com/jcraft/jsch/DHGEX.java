package com.jcraft.jsch;

import defpackage.a6;
import java.math.BigInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class DHGEX extends KeyExchange {
    public int j;
    public int k;
    public int l;
    public int m;
    public DH n;
    public byte[] o;
    public byte[] p;
    public byte[] q;
    public byte[] r;
    public Buffer s;
    public Packet t;
    public byte[] u;
    public byte[] v;
    public byte[] w;
    public String x;

    @Override // com.jcraft.jsch.KeyExchange
    public final int getState() {
        return this.m;
    }

    @Override // com.jcraft.jsch.KeyExchange
    public final void init(Session session, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws Exception {
        int i;
        this.o = bArr;
        this.p = bArr2;
        this.q = bArr3;
        this.r = bArr4;
        try {
            HASH hash = (HASH) Class.forName(session.getConfig(this.x)).asSubclass(HASH.class).getDeclaredConstructor(null).newInstance(null);
            this.b = hash;
            hash.init();
            Buffer buffer = new Buffer();
            this.s = buffer;
            this.t = new Packet(buffer);
            try {
                Class<? extends U> clsAsSubclass = Class.forName(session.getConfig("dh")).asSubclass(DH.class);
                this.j = Integer.parseInt(session.getConfig("dhgex_min"));
                this.l = Integer.parseInt(session.getConfig("dhgex_max"));
                int i2 = Integer.parseInt(session.getConfig("dhgex_preferred"));
                this.k = i2;
                int i3 = this.j;
                if (i3 <= 0 || (i = this.l) <= 0 || i2 <= 0 || i2 < i3 || i2 > i) {
                    throw new JSchException("Invalid DHGEX sizes: min=" + this.j + " max=" + this.l + " preferred=" + this.k);
                }
                DH dh = (DH) clsAsSubclass.getDeclaredConstructor(null).newInstance(null);
                this.n = dh;
                dh.init();
                this.t.a();
                this.s.putByte((byte) 34);
                this.s.putInt(this.j);
                this.s.putInt(this.k);
                this.s.putInt(this.l);
                session.z(this.t);
                if (session.getLogger().isEnabled(1)) {
                    session.getLogger().log(1, "SSH_MSG_KEX_DH_GEX_REQUEST(" + this.j + "<" + this.k + "<" + this.l + ") sent");
                    session.getLogger().log(1, "expecting SSH_MSG_KEX_DH_GEX_GROUP");
                }
                this.m = 31;
            } catch (Exception e) {
                a6.f(e);
            }
        } catch (Exception e2) {
            a6.f(e2);
        }
    }

    @Override // com.jcraft.jsch.KeyExchange
    public final boolean next(Buffer buffer) throws Exception {
        int i = this.m;
        if (i == 31) {
            buffer.getInt();
            buffer.getByte();
            int i2 = buffer.getByte();
            if (i2 == 31) {
                this.u = buffer.getMPInt();
                this.v = buffer.getMPInt();
                int iBitLength = new BigInteger(1, this.u).bitLength();
                if (iBitLength >= this.j && iBitLength <= this.l) {
                    this.n.setP(this.u);
                    this.n.setG(this.v);
                    this.w = this.n.getE();
                    this.t.a();
                    this.s.putByte((byte) 32);
                    this.s.putMPInt(this.w);
                    this.a.z(this.t);
                    if (this.a.getLogger().isEnabled(1)) {
                        this.a.getLogger().log(1, "SSH_MSG_KEX_DH_GEX_INIT sent");
                        this.a.getLogger().log(1, "expecting SSH_MSG_KEX_DH_GEX_REPLY");
                    }
                    this.m = 33;
                    return true;
                }
            } else if (this.a.getLogger().isEnabled(3)) {
                this.a.getLogger().log(3, "type: must be SSH_MSG_KEX_DH_GEX_GROUP " + i2);
                return false;
            }
        } else if (i == 33) {
            buffer.getInt();
            buffer.getByte();
            int i3 = buffer.getByte();
            if (i3 == 33) {
                this.e = buffer.getString();
                byte[] mPInt = buffer.getMPInt();
                byte[] string = buffer.getString();
                this.n.setF(mPInt);
                this.n.getClass();
                this.c = KeyExchange.a(KeyExchange.d(this.n.getK()), true);
                byte[] bArrB = KeyExchange.b(this.p, false);
                this.b.update(bArrB, 0, bArrB.length);
                byte[] bArrB2 = KeyExchange.b(this.o, false);
                this.b.update(bArrB2, 0, bArrB2.length);
                byte[] bArrB3 = KeyExchange.b(this.r, false);
                this.b.update(bArrB3, 0, bArrB3.length);
                byte[] bArrB4 = KeyExchange.b(this.q, false);
                this.b.update(bArrB4, 0, bArrB4.length);
                byte[] bArrB5 = KeyExchange.b(this.e, false);
                this.b.update(bArrB5, 0, bArrB5.length);
                this.b.update(KeyExchange.c(this.j), 0, 4);
                this.b.update(KeyExchange.c(this.k), 0, 4);
                this.b.update(KeyExchange.c(this.l), 0, 4);
                byte[] bArrA = KeyExchange.a(this.u, false);
                this.b.update(bArrA, 0, bArrA.length);
                byte[] bArrA2 = KeyExchange.a(this.v, false);
                this.b.update(bArrA2, 0, bArrA2.length);
                byte[] bArrA3 = KeyExchange.a(this.w, false);
                this.b.update(bArrA3, 0, bArrA3.length);
                byte[] bArrA4 = KeyExchange.a(mPInt, false);
                this.b.update(bArrA4, 0, bArrA4.length);
                HASH hash = this.b;
                byte[] bArr = this.c;
                hash.update(bArr, 0, bArr.length);
                this.d = this.b.digest();
                byte[] bArr2 = this.e;
                int i4 = ((bArr2[0] << 24) & (-16777216)) | ((bArr2[1] << 16) & 16711680) | ((bArr2[2] << 8) & 65280) | (bArr2[3] & 255);
                boolean zE = e(Util.d(bArr2, 4, i4), this.e, 4 + i4, string);
                this.m = 0;
                return zE;
            }
            if (this.a.getLogger().isEnabled(3)) {
                this.a.getLogger().log(3, "type: must be SSH_MSG_KEX_DH_GEX_REPLY " + i3);
                return false;
            }
        }
        return false;
    }
}
