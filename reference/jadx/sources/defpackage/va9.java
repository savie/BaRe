package defpackage;

import android.os.Bundle;
import android.os.Looper;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class va9 {
    public final Map a = Collections.synchronizedMap(new k50(0));
    public int b = 0;
    public Bundle c;

    public final void a(String str, vt4 vt4Var) {
        Map map = this.a;
        if (map.containsKey(str)) {
            c6.f(eq3.n(new StringBuilder(str.length() + 59), "LifecycleCallback with tag ", str, " already added to this fragment."));
            return;
        }
        map.put(str, vt4Var);
        if (this.b > 0) {
            new jj9(Looper.getMainLooper()).post(new i99(this, vt4Var, str));
        }
    }

    public final void b(Bundle bundle) {
        this.b = 1;
        this.c = bundle;
        for (Map.Entry entry : this.a.entrySet()) {
            ((vt4) entry.getValue()).onCreate(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    public final void c(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((vt4) entry.getValue()).onSaveInstanceState(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }
}
