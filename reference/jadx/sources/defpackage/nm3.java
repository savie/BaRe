package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nm3 {
    public static ym1 a(nm3 nm3Var, mt3 mt3Var) {
        ox oxVar = new ox(mt3Var, 13);
        vk3 vk3Var = vk3.Asc;
        nm3Var.getClass();
        vk3Var.getClass();
        String.CASE_INSENSITIVE_ORDER.getClass();
        int i = 1;
        Comparator xxVar = new xx(i, mt3Var);
        vk3 vk3Var2 = vk3.Desc;
        if (vk3Var == vk3Var2) {
            xxVar = xxVar.reversed();
        }
        xxVar.getClass();
        Comparator yxVar = new yx(oxVar, i);
        if (vk3Var == vk3Var2) {
            yxVar = yxVar.reversed();
        }
        yxVar.getClass();
        return new ym1(yxVar, xxVar);
    }
}
