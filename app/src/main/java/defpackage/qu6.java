package defpackage;

import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qu6 extends lt6 {
    public final nr6 f;
    public final a93 g;

    public qu6(us6 us6Var, nr6 nr6Var, long j, long j2, a93 a93Var, int i) {
        super(49, us6Var, it6.SMB2_WRITE, j, j2, Math.min(i, a93Var.a()));
        this.f = nr6Var;
        this.g = a93Var;
    }

    @Override // defpackage.rt6
    public final void h(zu6 zu6Var) {
        zu6Var.k(this.c);
        zu6Var.k(OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS);
        int i = ((ut6) this.a).b * 65536;
        int i2 = this.e;
        zu6Var.l(Math.min(i2, i));
        a93 a93Var = this.g;
        zu6Var.m(a93Var.a);
        this.f.a(zu6Var);
        zu6Var.l(0L);
        int iA = a93Var.a() - Math.min(i2, ((ut6) this.a).b * 65536);
        zu6Var.l(Math.max(0, iA));
        zu6Var.k(0);
        zu6Var.k(0);
        zu6Var.l(0L);
        int i3 = ((ut6) this.a).b;
        byte[] bArr = new byte[65536];
        for (int i4 = 0; i4 < i3; i4++) {
            try {
                int iB = a93Var.b(bArr);
                zu6Var.i(bArr, iB);
                a93Var.a += (long) iB;
            } catch (IOException e) {
                throw new gv6(e);
            }
        }
    }
}
