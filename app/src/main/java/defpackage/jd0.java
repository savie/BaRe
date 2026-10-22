package defpackage;

import android.view.View;
import com.google.android.material.listitem.ListItemLayout;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jd0 implements jk8 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public Object k;
    public Object n;
    public Object p;
    public Object q;

    public jd0(q63 q63Var, q63 q63Var2, String str, iu iuVar, f27 f27Var, char[] cArr, List list, iz6 iz6Var, bt3 bt3Var, h07 h07Var) {
        q63Var.getClass();
        f27Var.getClass();
        iz6Var.getClass();
        bt3Var.getClass();
        this.b = q63Var;
        this.c = q63Var2;
        this.a = str;
        this.d = iuVar;
        this.e = f27Var;
        this.f = cArr;
        this.k = list;
        this.n = iz6Var;
        this.p = bt3Var;
        this.q = h07Var;
    }

    public void a(String str, String str2) {
        HashMap map = (HashMap) this.n;
        if (map != null) {
            map.put(str, str2);
        } else {
            l0.e("Property \"autoMetadata\" has not been set");
        }
    }

    public kd0 b() {
        String strConcat = ((String) this.a) == null ? " transportName" : "";
        if (((xv2) this.e) == null) {
            strConcat = strConcat.concat(" encodedPayload");
        }
        if (((Long) this.f) == null) {
            strConcat = strConcat.concat(" eventMillis");
        }
        if (((Long) this.k) == null) {
            strConcat = strConcat.concat(" uptimeMillis");
        }
        if (((HashMap) this.n) == null) {
            strConcat = strConcat.concat(" autoMetadata");
        }
        if (strConcat.isEmpty()) {
            return new kd0((String) this.a, (Integer) this.c, (xv2) this.e, ((Long) this.f).longValue(), ((Long) this.k).longValue(), (HashMap) this.n, (Integer) this.d, (String) this.b, (byte[]) this.p, (byte[]) this.q);
        }
        l0.e("Missing required properties:".concat(strConcat));
        return null;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (ListItemLayout) this.a;
    }

    public /* synthetic */ jd0(q63 q63Var, q63 q63Var2, String str, iu iuVar, f27 f27Var, char[] cArr, List list, iz6 iz6Var, bt3 bt3Var, qo6 qo6Var, int i) {
        this(q63Var, q63Var2, str, iuVar, f27Var, cArr, (i & 64) != 0 ? null : list, iz6Var, (i & 256) != 0 ? new b7(3) : bt3Var, (i & 512) != 0 ? null : qo6Var);
    }
}
