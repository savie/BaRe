package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class pj0 {
    public final String a;
    public final Integer b;
    public final ArrayList c;
    public final boolean d;

    public pj0(String str, Integer num, ArrayList arrayList, int i) {
        boolean z = (i & 8) == 0;
        this.a = str;
        this.b = num;
        this.c = arrayList;
        this.d = z;
    }

    public List a() {
        return this.c;
    }

    public final boolean b() {
        List listA = a();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listA) {
            if (((jj0) obj).d) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            List list = ((jj0) it.next()).c;
            if (list != null && list.isEmpty()) {
                return false;
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (((li0) it2.next()).a()) {
                }
            }
            return false;
        }
        return true;
    }
}
