package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mj2 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ mj2(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                pj2 pj2Var = (pj2) obj3;
                String str = (String) obj2;
                wj2 wj2Var = (wj2) obj;
                DetailActivity detailActivity = pj2Var.a;
                if (Const.d(detailActivity)) {
                    tu0.y(detailActivity, str, new ev(1, pj2Var, wj2Var));
                }
                break;
            default:
                y37 y37Var = (y37) obj2;
                z37 z37Var = (z37) obj;
                qt3 qt3Var = ((ee5) obj3).j;
                if (qt3Var != null) {
                    qt3Var.invoke(y37Var, Integer.valueOf(z37Var.b()));
                }
                break;
        }
    }
}
