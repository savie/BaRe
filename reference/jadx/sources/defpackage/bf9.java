package defpackage;

import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bf9 implements as9 {
    public final /* synthetic */ int a;

    @Override // defpackage.as9
    public final vm4 a(bd9 bd9Var, Integer num) throws GeneralSecurityException {
        switch (this.a) {
            case 0:
                gf9 gf9Var = (gf9) bd9Var;
                int i = gf9Var.a;
                if (i != 16 && i != 32) {
                    m0.h("AES key size must be 16 or 32 bytes");
                    return null;
                }
                ai5 ai5Var = new ai5(8);
                ai5Var.c = null;
                ai5Var.d = null;
                ai5Var.b = gf9Var;
                ai5Var.e = num;
                ai5Var.c = km8.n(i);
                ai5Var.d = km8.n(gf9Var.b);
                return ai5Var.B();
            default:
                mz9 mz9Var = (mz9) ((qs9) bd9Var).a.b;
                bs9 bs9Var = bs9.d;
                gs9 gs9VarA = bs9Var.a(mz9Var.B());
                if (!((Boolean) bs9Var.b.get(mz9Var.B())).booleanValue()) {
                    m0.h("Creating new keys is not allowed.");
                    return null;
                }
                t69 t69VarA = mz9Var.A();
                gs9VarA.getClass();
                lz9 lz9VarT = mz9.t();
                lz9VarT.f(gs9VarA.a);
                lz9VarT.h(t69VarA);
                lz9VarT.e(r0a.RAW);
                mz9 mz9Var2 = (mz9) lz9VarT.b();
                ot9 ot9Var = new ot9(mz9Var2, au9.a(mz9Var2.B()));
                xs9 xs9Var = xs9.b;
                pt9 pt9Var = (pt9) xs9Var.c(ts9.b.a(xs9Var.b(ot9Var), null));
                iz9 iz9VarT = jz9.t();
                String str = pt9Var.a;
                iz9VarT.c();
                jz9.v((jz9) iz9VarT.b, str);
                t69 t69Var = pt9Var.c;
                iz9VarT.c();
                jz9.w((jz9) iz9VarT.b, t69Var);
                int i2 = pt9Var.d;
                iz9VarT.c();
                jz9.u((jz9) iz9VarT.b, i2);
                jz9 jz9Var = (jz9) iz9VarT.b();
                return new ns9(pt9.a(jz9Var.A(), jz9Var.z(), jz9Var.x(), mz9Var.z(), num));
        }
    }
}
