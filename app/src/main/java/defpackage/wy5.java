package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wy5 {
    public static final ArrayList d = new ArrayList();
    public Object a;
    public wr7 b;
    public wy5 c;

    public static wy5 a(wr7 wr7Var, Object obj) {
        ArrayList arrayList = d;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                if (size <= 0) {
                    wy5 wy5Var = new wy5();
                    wy5Var.a = obj;
                    wy5Var.b = wr7Var;
                    return wy5Var;
                }
                wy5 wy5Var2 = (wy5) arrayList.remove(size - 1);
                wy5Var2.a = obj;
                wy5Var2.b = wr7Var;
                wy5Var2.c = null;
                return wy5Var2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
