package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class hj6 extends vr5 {
    private boolean h;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends vr5.a<a, hj6> {
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public a G(boolean z) {
            this.a.add(new cr5(2, z));
            return this;
        }
    }

    public static /* synthetic */ boolean j(hj6 hj6Var, boolean z) {
        hj6Var.h = z;
        return z;
    }

    public static a k() {
        return new a();
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hj6) && super.equals(obj) && this.h == ((hj6) obj).h;
    }

    @Override // defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Boolean.valueOf(this.h));
    }

    public boolean l() {
        return this.h;
    }
}
