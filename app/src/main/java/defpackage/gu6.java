package defpackage;

import java.util.EnumSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gu6 extends rt6 {
    public us6 e;
    public byte f;
    public long g;
    public byte[] h;
    public EnumSet i;

    @Override // defpackage.rt6
    public final void f(zu6 zu6Var) throws iw0 {
        byte[] bArr;
        zu6Var.r();
        vw2 vw2Var = zu6Var.b;
        this.i = sz8.i0(vw2Var.d(zu6Var), fu6.class);
        int iD = vw2Var.d(zu6Var);
        int iD2 = vw2Var.d(zu6Var);
        if (iD2 > 0) {
            zu6Var.c = iD;
            bArr = new byte[iD2];
            zu6Var.o(bArr, iD2);
        } else {
            bArr = new byte[0];
        }
        this.h = bArr;
    }

    @Override // defpackage.rt6
    public final void h(zu6 zu6Var) {
        zu6Var.k(this.c);
        this.e.getClass();
        zu6Var.f((byte) 0);
        zu6Var.f(this.f);
        zu6Var.l(this.g & 255);
        zu6Var.w();
        zu6Var.k(88);
        byte[] bArr = this.h;
        zu6Var.k(bArr != null ? bArr.length : 0);
        zu6Var.m(0L);
        byte[] bArr2 = this.h;
        if (bArr2 != null) {
            zu6Var.i(bArr2, bArr2.length);
        }
    }
}
