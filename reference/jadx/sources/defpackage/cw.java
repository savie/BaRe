package defpackage;

import android.view.View;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cw implements qt3 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ cw(nw nwVar, xw xwVar, bx bxVar, kh6 kh6Var) {
        this.b = nwVar;
        this.c = kh6Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        et8 et8Var;
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj3 = this.c;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                long jLongValue = ((Long) obj).longValue();
                ((Long) obj2).getClass();
                ((nw) obj4).invoke(Long.valueOf(((kh6) obj3).a + jLongValue));
                break;
            default:
                cs8 cs8Var = (cs8) obj4;
                View view = (View) obj;
                int iIntValue = ((Integer) obj2).intValue();
                view.getClass();
                List list = ((fu8) ((gu8) obj3)).a;
                if (list != null && !list.isEmpty() && (et8Var = (et8) list.get(iIntValue)) != null) {
                    u45 u45Var = new u45(cs8Var.a, view, 12);
                    u45Var.f(R.menu.menu_popup_wifi_item_system);
                    u45Var.e = new jq0(3, cs8Var, et8Var);
                    u45Var.j();
                }
                break;
        }
        return be8Var;
    }

    public /* synthetic */ cw(cs8 cs8Var, gu8 gu8Var) {
        this.b = cs8Var;
        this.c = gu8Var;
    }
}
