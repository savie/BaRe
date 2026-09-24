package defpackage;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fg2 {
    public final String a;
    public final ty3 b;

    public fg2(Set set, ty3 ty3Var) {
        this.a = a(set);
        this.b = ty3Var;
    }

    public static String a(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            wd0 wd0Var = (wd0) it.next();
            sb.append(wd0Var.a);
            sb.append('/');
            sb.append(wd0Var.b);
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }
}
