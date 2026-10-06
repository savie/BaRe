package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ho3 {
    public String a;
    public boolean b;
    public String c;

    public final boolean a() {
        List<String> listA0 = fl1.A0(this.a, this.c);
        if (listA0.isEmpty()) {
            return true;
        }
        for (String str : listA0) {
            if (str != null && str.length() != 0) {
                return false;
            }
        }
        return true;
    }
}
