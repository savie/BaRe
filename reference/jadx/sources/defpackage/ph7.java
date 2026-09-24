package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ph7 implements s26 {
    public final qh7 a;
    public int b;
    public Bitmap.Config c;

    public ph7(qh7 qh7Var) {
        this.a = qh7Var;
    }

    @Override // defpackage.s26
    public final void a() {
        this.a.v(this);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ph7) {
            ph7 ph7Var = (ph7) obj;
            if (this.b == ph7Var.b && xh8.d(this.c, ph7Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.b * 31;
        Bitmap.Config config = this.c;
        return i + (config != null ? config.hashCode() : 0);
    }

    public final String toString() {
        return rh7.c(this.b, this.c);
    }
}
