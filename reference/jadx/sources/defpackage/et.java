package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class et extends qo0 {
    public boolean e;
    public final ex6 f = new ex6();

    public final void j(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        cd3 cd3VarE = dd3.e();
        if (cd3VarE.isApplied()) {
            String displayString = cd3VarE.getDisplayString();
            if (cd3VarE.hasSystem()) {
                displayString = u48.n(displayString, " (", ge3.e().getDisplayString(), ")");
            }
            arrayList2.add(new l10(displayString, cd3VarE));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            nd3 nd3Var = (nd3) it.next();
            if (!(nd3Var instanceof cd3) && !(nd3Var instanceof fe3)) {
                arrayList2.add(new l10(nd3Var.getDisplayString(), nd3Var));
            }
        }
        this.f.k(arrayList2);
    }
}
