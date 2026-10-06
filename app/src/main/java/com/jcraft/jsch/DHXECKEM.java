package com.jcraft.jsch;

import defpackage.a6;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class DHXECKEM extends KeyExchange {
    public int j;
    public byte[] k;
    public byte[] l;
    public byte[] m;
    public byte[] n;
    public byte[] o;
    public Buffer p;
    public Packet q;
    public KEM r;
    public XDH s;
    public String t;
    public String u;
    public String v;
    public int w;
    public int x;
    public int y;

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
            HASH hash = (HASH) Class.forName(session.getConfig(this.u)).asSubclass(HASH.class).getDeclaredConstructor(null).newInstance(null);
            this.b = hash;
            hash.init();
            Buffer buffer = new Buffer();
            this.p = buffer;
            Packet packet = new Packet(buffer);
            this.q = packet;
            packet.a();
            this.p.a(this.w + 5 + this.y);
            this.p.putByte((byte) 30);
            try {
                KEM kem = (KEM) Class.forName(session.getConfig(this.t)).asSubclass(KEM.class).getDeclaredConstructor(null).newInstance(null);
                this.r = kem;
                kem.init();
                XDH xdh = (XDH) Class.forName(session.getConfig("xdh")).asSubclass(XDH.class).getDeclaredConstructor(null).newInstance(null);
                this.s = xdh;
                xdh.init(this.v, this.y);
                byte[] publicKey = this.r.getPublicKey();
                byte[] q = this.s.getQ();
                int i = this.w;
                byte[] bArr5 = new byte[this.y + i];
                this.k = bArr5;
                System.arraycopy(publicKey, 0, bArr5, 0, i);
                System.arraycopy(q, 0, this.k, this.w, this.y);
                this.p.putString(this.k);
                if (bArr == null) {
                    return;
                }
                session.z(this.q);
                if (session.getLogger().isEnabled(1)) {
                    session.getLogger().log(1, "SSH_MSG_KEX_ECDH_INIT sent");
                    session.getLogger().log(1, "expecting SSH_MSG_KEX_ECDH_REPLY");
                }
                this.j = 31;
            } catch (Exception | LinkageError e) {
                throw new JSchException(e.toString(), e);
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
                int length = string.length;
                int i2 = this.x;
                int i3 = this.y;
                if (length == i2 + i3) {
                    byte[] bArr = new byte[i2];
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(string, 0, bArr, 0, i2);
                    System.arraycopy(string, this.x, bArr2, 0, this.y);
                    if (this.s.validate(bArr2)) {
                        byte[] bArrDecapsulate = null;
                        try {
                            bArrDecapsulate = this.r.decapsulate(bArr);
                            this.b.update(bArrDecapsulate, 0, bArrDecapsulate.length);
                            Util.e(bArrDecapsulate);
                            try {
                                bArrDecapsulate = this.s.getSecret(bArr2);
                                this.b.update(bArrDecapsulate, 0, bArrDecapsulate.length);
                                Util.e(bArrDecapsulate);
                                this.c = KeyExchange.b(this.b.digest(), true);
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
                                byte[] bArr3 = this.c;
                                hash.update(bArr3, 0, bArr3.length);
                                this.d = this.b.digest();
                                byte[] bArr4 = this.e;
                                int i4 = ((bArr4[0] << 24) & (-16777216)) | ((bArr4[1] << 16) & 16711680) | ((bArr4[2] << 8) & 65280) | (bArr4[3] & 255);
                                boolean zE = e(Util.d(bArr4, 4, i4), this.e, 4 + i4, string2);
                                this.j = 0;
                                return zE;
                            } catch (Throwable th) {
                                Util.e(bArrDecapsulate);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            Util.e(bArrDecapsulate);
                            throw th2;
                        }
                    }
                }
            } else if (this.a.getLogger().isEnabled(3)) {
                this.a.getLogger().log(3, "type: must be SSH_MSG_KEX_ECDH_REPLY " + i);
                return false;
            }
        }
        return false;
    }
}
