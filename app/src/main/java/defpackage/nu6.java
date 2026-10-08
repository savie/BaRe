package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nu6 implements dv6 {
    public static final byte[] h = {-3, 83, 77, 66};
    public int a;
    public byte[] b;
    public byte[] c;
    public int d;
    public int e;
    public long f;
    public int g;

    @Override // defpackage.dv6
    public final void a(zu6 zu6Var) throws iw0 {
        this.a = zu6Var.c;
        byte[] bArr = new byte[4];
        zu6Var.o(bArr, 4);
        if (!Arrays.equals(bArr, h)) {
            c6.f("Could not find SMB2 Packet header");
            return;
        }
        byte[] bArr2 = new byte[16];
        zu6Var.o(bArr2, 16);
        this.b = bArr2;
        byte[] bArr3 = new byte[16];
        zu6Var.o(bArr3, 16);
        this.c = bArr3;
        this.d = zu6Var.s();
        zu6Var.t(2);
        vw2 vw2Var = zu6Var.b;
        this.e = vw2Var.d(zu6Var);
        this.f = vw2Var.a(zu6Var);
        this.g = zu6Var.d;
    }

    @Override // defpackage.dv6
    public final int b() {
        return this.a;
    }

    @Override // defpackage.dv6
    public final int c() {
        return this.g;
    }

    public final void d(zu6 zu6Var) {
        this.a = zu6Var.c;
        zu6Var.i(h, 4);
        byte[] bArr = this.b;
        zu6Var.i(bArr, bArr.length);
        byte[] bArr2 = this.c;
        zu6Var.i(bArr2, bArr2.length);
        zu6Var.u(16 - this.c.length);
        zu6Var.l(this.d);
        zu6Var.v();
        zu6Var.k(1);
        zu6Var.g(this.f);
    }
}
