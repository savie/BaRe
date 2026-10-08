package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l75 extends yc9 {
    public final Map q;

    public l75(Map map) {
        this.q = map;
    }

    @Override // defpackage.yc9
    public final void c0(bs2 bs2Var, k75 k75Var) {
        ix7 ix7VarI0;
        ix7 ix7VarI1;
        ArrayList arrayList = k75Var.c;
        if (arrayList.size() > 0) {
            for (p64 p64Var : Collections.unmodifiableList(arrayList)) {
                if (p64Var.d() && (ix7VarI1 = i0(p64Var.a)) != null) {
                    ix7VarI1.a(bs2Var, this, p64Var);
                }
            }
            arrayList.clear();
        } else {
            for (p64 p64Var2 : Collections.EMPTY_LIST) {
                if (p64Var2.d() && (ix7VarI0 = i0(p64Var2.a)) != null) {
                    ix7VarI0.a(bs2Var, this, p64Var2);
                }
            }
        }
        yf1 yf1Var = new yf1(this, bs2Var, 7, false);
        o64 o64Var = k75Var.d;
        while (true) {
            o64 o64Var2 = o64Var.e;
            if (o64Var2 == null) {
                break;
            } else {
                o64Var = o64Var2;
            }
        }
        ArrayList arrayList2 = o64Var.f;
        List listUnmodifiableList = arrayList2 == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(arrayList2);
        if (listUnmodifiableList.size() > 0) {
            yf1Var.k(listUnmodifiableList);
        } else {
            yf1Var.k(Collections.EMPTY_LIST);
        }
        Map map = Collections.EMPTY_MAP;
        k75Var.d = new o64("", 0, map, null);
        k75Var.c.clear();
        k75Var.d = new o64("", 0, map, null);
    }

    @Override // defpackage.yc9
    public final ix7 i0(String str) {
        return (ix7) this.q.get(str);
    }
}
