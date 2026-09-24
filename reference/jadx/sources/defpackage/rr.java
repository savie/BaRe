package defpackage;

import android.content.res.ColorStateList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rr {
    public final ColorStateList a;
    public final ColorStateList b;
    public final ColorStateList c;

    public rr(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3) {
        this.a = colorStateList;
        this.b = colorStateList2;
        this.c = colorStateList3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rr)) {
            return false;
        }
        rr rrVar = (rr) obj;
        return this.a.equals(rrVar.a) && this.b.equals(rrVar.b) && this.c.equals(rrVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "SwipeActionColors(backgroundTint=" + this.a + ", iconTint=" + this.b + ", rippleColor=" + this.c + ")";
    }
}
