package defpackage;

import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iw5 extends rt6 {
    public final rt6 e;
    public final SecretKey f;
    public final /* synthetic */ jw5 g;

    public iw5(jw5 jw5Var, rt6 rt6Var, SecretKeySpec secretKeySpec) {
        this.g = jw5Var;
        this.e = rt6Var;
        this.f = secretKeySpec;
    }

    @Override // defpackage.ev6
    public final dv6 c() {
        return (ut6) this.e.c();
    }

    @Override // defpackage.rt6
    public final int d() {
        return this.e.d();
    }

    @Override // defpackage.rt6
    public final rt6 e() {
        return this.e.e();
    }

    @Override // defpackage.rt6, defpackage.hw5
    /* JADX INFO: renamed from: g */
    public final void a(zu6 zu6Var) {
        zu6 zu6Var2 = new zu6();
        rt6 rt6Var = this.e;
        rt6Var.a(zu6Var2);
        byte[] bArrC = zu6Var2.c();
        jw5 jw5Var = this.g;
        jw5Var.getClass();
        long jNanoTime = System.nanoTime();
        zu6 zu6Var3 = new zu6();
        zu6Var3.m(jNanoTime);
        zu6Var3.u(jw5Var.b.c - 8);
        byte[] bArrC2 = zu6Var3.c();
        GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(128, bArrC2);
        int length = bArrC.length;
        long j = ((ut6) rt6Var.c()).h;
        nu6 nu6Var = new nu6();
        nu6Var.b = new byte[16];
        nu6Var.c = bArrC2;
        nu6Var.d = length;
        nu6Var.f = j;
        zu6 zu6Var4 = new zu6();
        nu6Var.d(zu6Var4);
        zu6Var4.c = 20;
        byte[] bArrC3 = zu6Var4.c();
        try {
            lv1 lv1Var = jw5Var.a;
            String str = jw5Var.b.b;
            lv1Var.getClass();
            gf0 gf0VarF = lv1.f(str);
            d dVar = gf0VarF.a;
            dVar.a(true, gf0VarF.a(this.f.getEncoded(), gCMParameterSpec));
            dVar.d(bArrC3, bArrC3.length);
            int length2 = bArrC.length;
            int iE = dVar.e(length2);
            byte[] bArr = new byte[iE];
            try {
                dVar.doFinal(bArr, dVar.b(length2, bArrC, bArr));
                if (iE != bArrC.length + 16) {
                    l0.e("Invalid length for cipherText after encryption.");
                    return;
                }
                byte[] bArr2 = new byte[16];
                System.arraycopy(bArr, bArrC.length, bArr2, 0, 16);
                nu6Var.b = bArr2;
                nu6Var.d(zu6Var);
                zu6Var.i(bArr, bArrC.length);
            } catch (yf4 e) {
                throw new h67(e);
            }
        } catch (h67 e2) {
            jw5.d.t(rt6Var.c(), "Security exception while encrypting packet << {} >>");
            throw new gv6(e2);
        }
    }

    @Override // defpackage.rt6
    public final String toString() {
        return "Encrypted[" + this.e.toString() + "]";
    }
}
