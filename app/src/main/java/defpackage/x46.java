package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x46 extends LinkedHashMap implements Iterable {
    public final ev5 a;

    public x46(ev5 ev5Var) {
        this.a = ev5Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String d(String str) {
        String str2;
        return (size() <= 0 || (str2 = (String) get(str)) == null) ? f(str) : str2;
    }

    public final String e(String str) {
        if (containsValue(str)) {
            Iterator it = iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                String str3 = (String) get(str2);
                if (str3 != null && str3.equals(str)) {
                    return str2;
                }
            }
        }
        x46 x46VarC = this.a.c();
        if (x46VarC != null) {
            return x46VarC.e(str);
        }
        return null;
    }

    public final String f(String str) {
        x46 x46VarC = this.a.c();
        if (x46VarC == null) {
            return null;
        }
        String strD = x46VarC.d(str);
        if (containsValue(strD)) {
            return null;
        }
        return strD;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return keySet().iterator();
    }
}
