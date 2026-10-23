package defpackage;

import java.util.ArrayList;
import java.util.Set;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zr4 extends qo0 {
    public boolean e;
    public Integer f;
    public String g;
    public Set h = sv2.a;
    public final ex6 i = new ex6();
    public final u95 j = new u95();

    public final ArrayList j() {
        Set<String> set = this.h;
        ArrayList arrayList = new ArrayList();
        for (String str : set) {
            lr4 lr4Var = lr4.a;
            LabelParams labelParamsC = lr4.c(str);
            if (labelParamsC != null) {
                arrayList.add(labelParamsC);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0086  */
    public final void k(LabelsData labelsData) {
        Integer num;
        ArrayList arrayListG = w13.g(labelsData);
        Integer num2 = this.f;
        if ((num2 != null && num2.intValue() == 1) || ((num = this.f) != null && num.intValue() == 2)) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : arrayListG) {
                if (!el1.M0(this.h, ((vq4) obj).a.getId())) {
                    arrayList.add(obj);
                }
            }
            String str = this.g;
            if (str != null) {
                this.g = null;
                if (this.h.size() >= 5) {
                    arrayListG = arrayList;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : arrayList) {
                        if (!pe4.d(((vq4) obj2).a.getId(), str)) {
                            arrayList2.add(obj2);
                        }
                    }
                    this.h = sz8.S(this.h, str);
                    arrayListG = arrayList2;
                }
            } else {
                arrayListG = arrayList;
            }
        }
        cl7 cl7Var = new cl7(7);
        String.CASE_INSENSITIVE_ORDER.getClass();
        this.j.k(new fm7(el1.n1(arrayListG, new m54(cl7Var, 1)), (Set) null, false, (String) null, 30));
    }
}
