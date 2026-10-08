package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kh9 extends oe9 {
    public final mh9 d;
    public final d2a e;
    public final Integer f;

    public kh9(mh9 mh9Var, d2a d2aVar, Integer num) {
        this.d = mh9Var;
        this.e = d2aVar;
        this.f = num;
    }

    public static kh9 K(mh9 mh9Var, Integer num) throws GeneralSecurityException {
        d2a d2aVarA;
        lh9 lh9Var = mh9Var.b;
        if (lh9Var == lh9.c) {
            if (num == null) {
                m0.h("For given Variant TINK the value of idRequirement must be non-null");
                return null;
            }
            d2aVarA = d2a.a(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
        } else {
            if (lh9Var != lh9.d) {
                throw new GeneralSecurityException("Unknown Variant: ".concat(String.valueOf(lh9Var)));
            }
            if (num != null) {
                m0.h("For given Variant NO_PREFIX the value of idRequirement must be null");
                return null;
            }
            d2aVarA = d2a.a(new byte[0]);
        }
        return new kh9(mh9Var, d2aVarA, num);
    }

    @Override // defpackage.vm4
    public final /* synthetic */ bd9 G() {
        return this.d;
    }

    @Override // defpackage.vm4
    public final Integer H() {
        return this.f;
    }

    @Override // defpackage.oe9
    public final d2a J() {
        return this.e;
    }
}
