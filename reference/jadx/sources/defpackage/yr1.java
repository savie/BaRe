package defpackage;

import android.text.TextUtils;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yr1 implements n59 {
    public final String a;
    public final String b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public final Object k;

    public yr1(ke keVar, n59 n59Var, String str, String str2, Boolean bool, ua9 ua9Var, yf1 yf1Var, b69 b69Var) {
        this.c = n59Var;
        this.a = str;
        this.b = str2;
        this.d = bool;
        this.e = ua9Var;
        this.f = yf1Var;
        this.k = b69Var;
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        List list = (List) ((w59) f59Var).a.b;
        if (list == null || list.isEmpty()) {
            ((n59) this.c).zza("No users.");
            return;
        }
        x59 x59Var = (x59) list.get(0);
        nh nhVar = x59Var.f;
        List list2 = nhVar != null ? (List) nhVar.b : null;
        if (list2 != null && !list2.isEmpty()) {
            String str = this.a;
            boolean zIsEmpty = TextUtils.isEmpty(str);
            String str2 = this.b;
            if (zIsEmpty) {
                ((d69) list2.get(0)).e = str2;
            } else {
                for (int i = 0; i < list2.size(); i++) {
                    if (((d69) list2.get(i)).d.equals(str)) {
                        ((d69) list2.get(i)).e = str2;
                        break;
                    }
                }
            }
        }
        x59Var.j = ((Boolean) this.d).booleanValue();
        x59Var.k = (ua9) this.e;
        ((yf1) this.f).i((b69) this.k, x59Var);
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((n59) this.c).zza(str);
    }

    public yr1(ub ubVar, yu1 yu1Var, yu1 yu1Var2, lf2 lf2Var, String str, String str2, String str3) {
        this.f = ubVar;
        this.d = yu1Var;
        this.e = yu1Var2;
        this.c = lf2Var;
        this.a = str;
        this.b = str2;
        this.k = str3;
    }
}
