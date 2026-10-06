package defpackage;

import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gz3 extends qo0 {
    public boolean e;
    public final gv7 f = new gv7(new fl(8));
    public final ix6 g = new ix6();
    public final ix6 h = new ix6();
    public final ix6 i = new ix6();
    public final ix6 j = new ix6();
    public final ix6 k = new ix6();
    public final ix6 l = new ix6();

    /* JADX WARN: Code duplicated, block: B:14:0x0022  */
    public final void j(String str, boolean z) {
        String str2;
        if (z) {
            this.h.k(Boolean.TRUE);
            return;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String strG = dj7.g(R.string.auth_failed);
        if (str == null) {
            str2 = strG;
        } else {
            if (nq7.j0(str)) {
                str = null;
            }
            if (str == null) {
                str2 = strG;
            } else {
                str2 = str;
            }
        }
        vr6.e$default(vr6.INSTANCE, this.b, str2, null, 4, null);
        this.i.k(str2);
    }
}
