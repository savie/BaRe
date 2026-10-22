package defpackage;

import android.os.Bundle;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rx6 implements ux6 {
    public final ot9 a;
    public boolean b;
    public Bundle c;
    public final gv7 d;

    public rx6(ot9 ot9Var, zl8 zl8Var) {
        ot9Var.getClass();
        this.a = ot9Var;
        this.d = new gv7(new mo3(zl8Var, 12));
    }

    @Override // defpackage.ux6
    public final Bundle a() {
        Bundle bundleB = jd4.b((pw5[]) Arrays.copyOf(new pw5[0], 0));
        Bundle bundle = this.c;
        if (bundle != null) {
            bundleB.putAll(bundle);
        }
        for (Map.Entry entry : ((sx6) this.d.getValue()).b.entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleA = ((px6) ((mx6) entry.getValue()).a.f).a();
            if (!bundleA.isEmpty()) {
                str.getClass();
                bundleB.putBundle(str, bundleA);
            }
        }
        this.b = false;
        return bundleB;
    }

    public final void b() {
        if (this.b) {
            return;
        }
        Bundle bundleC = this.a.c("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundleB = jd4.b((pw5[]) Arrays.copyOf(new pw5[0], 0));
        Bundle bundle = this.c;
        if (bundle != null) {
            bundleB.putAll(bundle);
        }
        if (bundleC != null) {
            bundleB.putAll(bundleC);
        }
        this.c = bundleB;
        this.b = true;
    }
}
