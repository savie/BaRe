package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zv3 {
    public final List a;
    public final boolean b;

    public zv3(List list, boolean z) {
        this.a = list;
        this.b = z;
        if (list.isEmpty()) {
            c6.f("credentialOptions should not be empty");
            throw null;
        }
        if (list.size() > 1) {
            if (!list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                }
            }
            for (w22 w22Var : this.a) {
            }
        }
    }

    public /* synthetic */ zv3(int i, List list, boolean z) {
        this(list, (i & 16) != 0 ? false : z);
    }
}
