package defpackage;

import java.util.ArrayList;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fa4 extends ha4 implements zk0 {
    public static final fa4 b = new fa4(new ArrayList().toArray(), Comparator.naturalOrder());

    @Override // defpackage.zk0
    public final String getEntryValue(String str) {
        Object obj;
        if (str != null) {
            int i = 0;
            while (true) {
                Object[] objArr = this.a;
                if (i >= objArr.length) {
                    obj = null;
                    break;
                }
                if (str.equals(objArr[i])) {
                    obj = objArr[i + 1];
                    break;
                }
                i += 2;
            }
        } else {
            obj = null;
            break;
        }
        qd0 qd0Var = (qd0) obj;
        if (qd0Var != null) {
            return qd0Var.a;
        }
        return null;
    }
}
