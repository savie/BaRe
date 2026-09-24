package defpackage;

import android.content.Context;
import android.os.Parcelable;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class kd6 implements mt3 {
    public final /* synthetic */ dd6 a;
    public final /* synthetic */ bt3 b;
    public final /* synthetic */ dd6 c;
    public final /* synthetic */ xc6 d;

    public /* synthetic */ kd6(dd6 dd6Var, bt3 bt3Var, dd6 dd6Var2, xc6 xc6Var) {
        this.a = dd6Var;
        this.b = bt3Var;
        this.c = dd6Var2;
        this.d = xc6Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        zc6 zc6Var = (zc6) obj;
        zc6Var.getClass();
        boolean z = zc6Var.t;
        List list = this.a.e.a;
        ArrayList<zc6> arrayList = new ArrayList();
        for (Object obj2 : list) {
            Parcelable.Creator<zc6> creator = zc6.CREATOR;
            if (!pe4.d(((zc6) obj2).a, "ID_MORE_QUICK_ACTIONS")) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        for (zc6 zc6VarQ : arrayList) {
            if (pe4.d(zc6Var.a, zc6VarQ.a)) {
                zc6VarQ = zc6.q(zc6Var, false, !z, 2047);
            }
            arrayList2.add(zc6VarQ);
        }
        Parcelable.Creator<zc6> creator2 = zc6.CREATOR;
        int i = zc6Var.b;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        Toast toast = zc6.G;
        if (toast != null) {
            toast.cancel();
        }
        Toast toastMakeText = Toast.makeText(contextC.getApplicationContext(), !z ? R.string.pinned_to_home_page : R.string.unpinned_from_home_page, 0);
        zc6.G = toastMakeText;
        if (toastMakeText != null) {
            toastMakeText.show();
        }
        Const.T();
        yc6.k(!z ? sz8.S(yc6.g(), Integer.valueOf(i)) : sz8.K(yc6.g(), Integer.valueOf(i)));
        ha7.a.c(AppSettings.Companion.withSavedSettings());
        nd6.k(this.b, this.c, this.d, arrayList2);
        return be8.a;
    }
}
