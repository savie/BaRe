package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ty2 implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ty2(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.a;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                k31 k31Var = (k31) obj;
                k31 k31Var2 = (k31) obj2;
                zm5.s((k31Var.d == null || k31Var2.d == null) ? false : true);
                return ((nb4) ((h80) obj3).c).compare(new hk5(k31Var.d, k31Var.b.a), new hk5(k31Var2.d, k31Var2.b.a));
            default:
                ux5 ux5Var = (ux5) obj3;
                return ms8.n(Boolean.valueOf(((ux5) obj) != ux5Var), Boolean.valueOf(((ux5) obj2) != ux5Var));
        }
    }
}
