package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ns6 implements dv6 {
    public static final byte[] c = {-4, 83, 77, 66};
    public int a;
    public int b;

    @Override // defpackage.dv6
    public final void a(zu6 zu6Var) throws iw0 {
        this.a = zu6Var.c;
        byte[] bArr = new byte[4];
        zu6Var.o(bArr, 4);
        if (!Arrays.equals(bArr, c)) {
            c6.f("Could not find SMB2 Packet header");
            return;
        }
        zu6Var.s();
        tu6 tu6Var = (tu6) sz8.k0(zu6Var.b.d(zu6Var), tu6.class, null);
        if (!((tu6Var == null || tu6Var == tu6.NONE) ? false : true)) {
            l0.e("The CompressionAlgorithm field of the SMB2_COMPRESSION_TRANSFORM_HEADER should contain a valid value.");
            return;
        }
        zu6Var.t(2);
        zu6Var.s();
        this.b = zu6Var.d;
    }

    @Override // defpackage.dv6
    public final int b() {
        return this.a;
    }

    @Override // defpackage.dv6
    public final int c() {
        return this.b;
    }
}
