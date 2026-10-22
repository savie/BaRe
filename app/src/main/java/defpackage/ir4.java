package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ir4 implements bt3 {
    public final /* synthetic */ ji a;
    public final /* synthetic */ Set b;
    public final /* synthetic */ boolean c;

    public /* synthetic */ ir4(ji jiVar, Set set, boolean z) {
        this.a = jiVar;
        this.b = set;
        this.c = z;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        lr4 lr4Var = lr4.a;
        Set setZ1 = el1.z1(el1.p1(this.b, 5));
        lr4.k(nc8.I(new pw5(this.a, setZ1)));
        if (this.c && !setZ1.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = setZ1.iterator();
            while (it.hasNext()) {
                String id = ((LabelParams) it.next()).getId();
                if (id != null) {
                    arrayList.add(id);
                }
            }
            lr4.h = el1.z1(arrayList);
        }
        return be8.a;
    }
}
