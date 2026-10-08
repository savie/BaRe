package defpackage;

import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d05 implements mt3 {
    public final /* synthetic */ LocaleActivity a;
    public final /* synthetic */ boolean b;

    public /* synthetic */ d05(LocaleActivity localeActivity, boolean z) {
        this.a = localeActivity;
        this.b = z;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        String str;
        LocaleActivity localeActivity = this.a;
        gv7 gv7Var = localeActivity.M;
        fm7 fm7Var = (fm7) obj;
        int i = LocaleActivity.P;
        fm7Var.getClass();
        List list = fm7Var.a;
        g05 g05Var = localeActivity.N;
        int i2 = 0;
        g05Var.w(fm7Var, false);
        if (localeActivity.U().f) {
            localeActivity.U().f = false;
            ((QuickRecyclerView) gv7Var.getValue()).i0(g05Var.b() - 1);
        } else if (this.b && !list.isEmpty() && (str = (String) el1.T0(fm7Var.b)) != null && str.length() != 0) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    i2 = -1;
                    break;
                }
                if (((is4) it.next()).toString().equals(str)) {
                    break;
                }
                i2++;
            }
            if (i2 != -1) {
                ((QuickRecyclerView) gv7Var.getValue()).f0(i2);
            }
        }
        return be8.a;
    }
}
