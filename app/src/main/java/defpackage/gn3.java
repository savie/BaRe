package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.u;
import java.util.LinkedHashMap;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.detail.ShortcutPinnedReceiver;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gn3 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ gn3(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                in3 in3Var = (in3) obj3;
                q63 q63Var = (q63) obj2;
                bt3 bt3Var = (bt3) obj;
                LinkedHashMap linkedHashMap = in3Var.g;
                ex6 ex6Var = in3Var.h;
                ex6 ex6Var2 = in3Var.i;
                String strV = q63Var != null ? q63Var.v() : null;
                if (strV == null) {
                    strV = "";
                }
                hn3 hn3Var = (hn3) linkedHashMap.get(strV);
                if (hn3Var != null) {
                    ex6Var2.k(hn3Var);
                } else {
                    ex6Var.k(Boolean.TRUE);
                }
                hn3 hn3Var2 = (hn3) bt3Var.invoke();
                if (!pe4.d(hn3Var, hn3Var2)) {
                    linkedHashMap.put(hn3Var2.c.v(), hn3Var2);
                    ex6Var2.k(hn3Var2);
                }
                ex6Var.l(Boolean.FALSE);
                break;
            case 1:
                zc6 zc6Var = (zc6) obj2;
                sa1 sa1Var = (sa1) obj;
                u activity = ((nd6) obj3).getActivity();
                if (activity == null || !activity.isDestroyed()) {
                    if (zc6Var.c() && !V.INSTANCE.getA()) {
                        int i2 = PremiumActivity.V;
                        rs9.u(sa1Var);
                    } else {
                        sa1Var.G().g(zc6Var);
                    }
                }
                break;
            case 2:
                SLogActivity sLogActivity = (SLogActivity) obj3;
                d7 d7Var = (d7) obj2;
                String str = (String) obj;
                if (!sLogActivity.isFinishing()) {
                    sLogActivity.H();
                    d7Var.invoke(str);
                }
                break;
            default:
                Context context = (Context) obj2;
                ShortcutPinnedReceiver shortcutPinnedReceiver = (ShortcutPinnedReceiver) obj;
                int i3 = ShortcutPinnedReceiver.b;
                ji jiVar = (ji) ((Intent) obj3).getParcelableExtra(ji.PARCEL_KEY);
                if (jiVar != null) {
                    vr6.i$default(vr6.INSTANCE, shortcutPinnedReceiver.a, xs1.j("Detail screen shortcut added for ", jiVar.asString()), null, 4, null);
                }
                Const.x(context);
                break;
        }
        return be8Var;
    }
}
