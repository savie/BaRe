package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xz {
    public String a;
    public boolean b;
    public String c;
    public String d;

    public final boolean a() {
        List<String> listA0 = fl1.A0(this.a, this.d);
        if (!listA0.isEmpty()) {
            for (String str : listA0) {
                if (str != null && str.length() != 0) {
                    return false;
                }
            }
        }
        String str2 = this.c;
        return (str2 == null || str2.length() == 0) ? false : true;
    }
}
