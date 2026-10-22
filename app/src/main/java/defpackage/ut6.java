package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ut6 implements dv6 {
    public static final byte[] p = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    public static final byte[] q = {-2, 83, 77, 66};
    public us6 a;
    public int b = 1;
    public int c;
    public int d;
    public it6 e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public int l;
    public byte[] m;
    public int n;
    public int o;

    @Override // defpackage.dv6
    public final void a(zu6 zu6Var) throws iw0 {
        this.n = zu6Var.c;
        byte[] bArr = new byte[4];
        zu6Var.o(bArr, 4);
        if (!Arrays.equals(bArr, q)) {
            c6.f("Could not find SMB2 Packet header");
            return;
        }
        zu6Var.t(2);
        zu6Var.r();
        vw2 vw2Var = zu6Var.b;
        this.j = vw2Var.e(zu6Var);
        this.e = it6.H[vw2Var.d(zu6Var)];
        this.d = vw2Var.d(zu6Var);
        this.k = vw2Var.e(zu6Var);
        this.l = zu6Var.s();
        this.f = vw2Var.a(zu6Var);
        if (sz8.H(this.k, kt6.SMB2_FLAGS_ASYNC_COMMAND)) {
            this.g = vw2Var.a(zu6Var);
        } else {
            zu6Var.t(4);
            this.i = vw2Var.e(zu6Var);
        }
        this.h = vw2Var.a(zu6Var);
        byte[] bArr2 = new byte[16];
        zu6Var.o(bArr2, 16);
        this.m = bArr2;
        int i = this.l;
        if (i != 0) {
            this.o = this.n + i;
        } else {
            this.o = zu6Var.d;
        }
    }

    @Override // defpackage.dv6
    public final int b() {
        return this.n;
    }

    @Override // defpackage.dv6
    public final int c() {
        return this.o;
    }

    public final String toString() {
        return String.format("dialect=%s, creditCharge=%s, creditRequest=%s, creditResponse=%s, message=%s, messageId=%s, asyncId=%s, sessionId=%s, treeId=%s, status=0x%08x, flags=%s, nextCommandOffset=%s", this.a, Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.d), this.e, Long.valueOf(this.f), Long.valueOf(this.g), Long.valueOf(this.h), Long.valueOf(this.i), Long.valueOf(this.j), Long.valueOf(this.k), Integer.valueOf(this.l));
    }
}
