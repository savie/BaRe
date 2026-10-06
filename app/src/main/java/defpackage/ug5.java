package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ug5 extends w77 {
    public final List a;

    /* JADX WARN: Illegal instructions before constructor call */
    public ug5(String str, ArrayList arrayList) {
        String strO;
        str.getClass();
        if (arrayList.size() == 1) {
            strO = eq3.o(new StringBuilder("Field '"), (String) arrayList.get(0), "' is required for type with serial name '", str, "', but it was missing");
        } else {
            strO = "Fields " + arrayList + " are required for type with serial name '" + str + "', but they were missing";
        }
        super(strO, null);
        this.a = arrayList;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ug5(List list, String str, ug5 ug5Var) {
        super(str, ug5Var);
        list.getClass();
        this.a = list;
    }
}
