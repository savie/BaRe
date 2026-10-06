package defpackage;

import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class st7 {
    public final View a;
    public final Drawable b;
    public final nt7 c;
    public final ot7 d;
    public final pt7 e;

    public st7(View view, Drawable drawable, nt7 nt7Var, ot7 ot7Var, pt7 pt7Var) {
        this.a = view;
        this.b = drawable;
        this.c = nt7Var;
        this.d = ot7Var;
        this.e = pt7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof st7) {
            st7 st7Var = (st7) obj;
            return this.a.equals(st7Var.a) && pe4.d(this.b, st7Var.b) && this.c == st7Var.c && this.d == st7Var.d && this.e == st7Var.e;
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Drawable drawable = this.b;
        return hashCode() + ((hashCode() + ((hashCode() + ((iHashCode + (drawable == null ? 0 : drawable.hashCode())) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "SegmentRippleRegistration(rippleHost=" + this.a + ", originalForeground=" + this.b + ", hostLayoutListener=" + this.c + ", contentLayoutListener=" + this.d + ", touchListener=" + this.e + ")";
    }
}
