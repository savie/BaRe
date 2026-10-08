package defpackage;

import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class r14 {
    public final LinearLayout a;
    public final TextView b;
    public final LinearLayout c;

    public r14(LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2) {
        this.a = linearLayout;
        this.b = textView;
        this.c = linearLayout2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r14)) {
            return false;
        }
        r14 r14Var = (r14) obj;
        return this.a.equals(r14Var.a) && this.b.equals(r14Var.b) && this.c.equals(r14Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "GroupViews(row=" + this.a + ", title=" + this.b + ", icons=" + this.c + ")";
    }
}
