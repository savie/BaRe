package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ny7 {
    public String toString() {
        if (this instanceof ly7) {
            return super.toString();
        }
        if (!(this instanceof my7)) {
            q.j();
            return null;
        }
        my7 my7Var = (my7) this;
        List list = my7Var.a;
        String strK = !list.isEmpty() ? eq3.k("[Local: ", el1.Y0(list, null, null, null, new rx(5), 31), "]") : null;
        List list2 = my7Var.b;
        return "DeleteType.SpecificBackups: ".concat(el1.Y0(x50.p0(new String[]{strK, list2.isEmpty() ? null : eq3.k("[Cloud: ", el1.Y0(list2, null, null, null, new sh(11), 31), "]")}), null, null, null, null, 63));
    }
}
