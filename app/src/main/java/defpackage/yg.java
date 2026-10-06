package defpackage;

import java.text.Collator;
import java.util.Comparator;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yg implements Comparator {
    public final /* synthetic */ int a;
    public final /* synthetic */ Comparator b;

    public /* synthetic */ yg(Comparator comparator, int i) {
        this.a = i;
        this.b = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i;
        int i2 = this.a;
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        Comparator comparator2 = this.b;
        switch (i2) {
            case 0:
                int iCompare = ((xg) comparator2).compare(obj, obj2);
                return iCompare != 0 ? iCompare : ms8.n(((q63) obj).p(), ((q63) obj2).p());
            case 1:
                return ((Collator) comparator2).compare(((ji) obj).getName(), ((ji) obj2).getName());
            case 2:
                int iCompare2 = ((xg) comparator2).compare(obj, obj2);
                return iCompare2 != 0 ? iCompare2 : comparator.compare(((r00) obj).b, ((r00) obj2).b);
            case 3:
                int iCompare3 = ((yx) comparator2).compare(obj, obj2);
                if (iCompare3 != 0) {
                    return iCompare3;
                }
                ai6 ai6Var = o54.a;
                s54 s54Var = (s54) ((pw5) obj).b;
                u54 u54Var = s54Var.b;
                u54 u54Var2 = u54.APPS;
                int i3 = 0;
                if (u54Var != u54Var2) {
                    i = 0;
                } else {
                    ji jiVar = s54Var.n;
                    i = ((jiVar == null || !jiVar.isLaunchable()) ? 0 : 1) ^ 1;
                }
                Integer numValueOf = Integer.valueOf(i);
                s54 s54Var2 = (s54) ((pw5) obj2).b;
                if (s54Var2.b == u54Var2) {
                    ji jiVar2 = s54Var2.n;
                    if (jiVar2 != null && jiVar2.isLaunchable()) {
                        i3 = 1;
                    }
                    i3 ^= 1;
                }
                return ms8.n(numValueOf, Integer.valueOf(i3));
            default:
                int iCompare4 = ((xg) comparator2).compare(obj, obj2);
                if (iCompare4 != 0) {
                    return iCompare4;
                }
                LabelParams labelParams = (LabelParams) obj;
                String name = labelParams.getName();
                if (name == null && (name = labelParams.getId()) == null) {
                    name = "";
                }
                LabelParams labelParams2 = (LabelParams) obj2;
                String name2 = labelParams2.getName();
                return comparator.compare(name, (name2 == null && (name2 = labelParams2.getId()) == null) ? "" : name2);
        }
    }
}
