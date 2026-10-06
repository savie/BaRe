package defpackage;

import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hi2 extends ad3 {
    public int a;

    @Override // defpackage.ad3
    public final InputStream a(InputStream inputStream, v40 v40Var) {
        return new gi2(inputStream, this.a);
    }

    @Override // defpackage.ad3
    public final oe3 b(pe3 pe3Var, v40 v40Var) {
        return new ii2(pe3Var, this);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
