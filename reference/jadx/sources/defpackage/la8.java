package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class la8 {
    public final View b;
    public final HashMap a = new HashMap();
    public final ArrayList c = new ArrayList();

    public la8(View view) {
        this.b = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof la8)) {
            return false;
        }
        la8 la8Var = (la8) obj;
        return this.b == la8Var.b && this.a.equals(la8Var.a);
    }

    public final int hashCode() {
        return this.a.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbN = fz5.n("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        sbN.append(this.b);
        sbN.append("\n");
        String strConcat = sbN.toString().concat("    values:");
        HashMap map = this.a;
        for (String str : map.keySet()) {
            strConcat = strConcat + "    " + str + ": " + map.get(str) + "\n";
        }
        return strConcat;
    }
}
