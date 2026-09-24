package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wv4 implements do4 {
    public final do4 a;
    public final vv4 b;

    public wv4(do4 do4Var) {
        hq7 hq7Var = hq7.a;
        this.a = do4Var;
        this.b = new vv4(hq7.b, do4Var.d());
    }

    @Override // defpackage.do4
    public Object a(np7 np7Var) {
        np7Var.getClass();
        np7Var.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = linkedHashMap.size() * 2;
        np7 np7VarA = np7Var.a(d());
        while (true) {
            int iB = np7VarA.b(d());
            if (iB == -1) {
                np7VarA.m(d());
                return linkedHashMap;
            }
            int i = iB + size;
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            hq7 hq7Var = hq7.a;
            vv4 vv4Var = this.b;
            Object objI = np7VarA.i(vv4Var, i, hq7Var, null);
            int iB2 = np7VarA.b(vv4Var);
            if (iB2 == i + 1) {
                boolean zContainsKey = linkedHashMap2.containsKey(objI);
                do4 do4Var = this.a;
                linkedHashMap2.put(objI, (!zContainsKey || (do4Var.d().e() instanceof y56)) ? np7VarA.i(vv4Var, iB2, do4Var, null) : np7VarA.i(vv4Var, iB2, do4Var, x65.p0(linkedHashMap2, objI)));
            } else {
                f6.g(dj7.i("Value must follow key in a map, index for key: ", i, iB2, ", returned index for value: "));
            }
        }
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        Map map = (Map) obj;
        map.getClass();
        map.size();
        vv4 vv4Var = this.b;
        vv4Var.getClass();
        op7 op7VarA = op7Var.a(vv4Var);
        Map map2 = (Map) obj;
        map2.getClass();
        int i = 0;
        for (Map.Entry entry : map2.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i2 = i + 1;
            op7VarA.h(vv4Var, i, hq7.a, key);
            i += 2;
            op7VarA.h(vv4Var, i2, this.a, value);
        }
        op7VarA.k(vv4Var);
    }

    @Override // defpackage.do4
    public final p77 d() {
        return this.b;
    }
}
