package defpackage;

import java.util.AbstractMap;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cw2 implements ta4 {
    public final ArrayList a;

    public cw2() {
        this.a = new ArrayList();
    }

    @Override // defpackage.ta4
    public Object g(gy5 gy5Var, Object obj, Object obj2) {
        this.a.add(new AbstractMap.SimpleImmutableEntry(gy5Var, obj));
        return null;
    }

    public cw2(ArrayList arrayList) {
        this.a = arrayList;
    }
}
