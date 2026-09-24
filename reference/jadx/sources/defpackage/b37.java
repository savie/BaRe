package defpackage;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b37 {
    public final ViewGroup a;
    public final MaterialButton b;
    public final View c;

    public b37(ViewGroup viewGroup, MaterialButton materialButton, View view) {
        this.a = viewGroup;
        this.b = materialButton;
        this.c = view;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b37)) {
            return false;
        }
        b37 b37Var = (b37) obj;
        return this.a.equals(b37Var.a) && this.b.equals(b37Var.b) && this.c.equals(b37Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "MenuButton(root=" + this.a + ", button=" + this.b + ", submenuIndicator=" + this.c + ")";
    }
}
