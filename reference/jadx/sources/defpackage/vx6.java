package defpackage;

import android.os.Bundle;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vx6 {
    public final wx6 a;
    public final as4 b;
    public boolean e;
    public Bundle f;
    public boolean g;
    public final fo8 c = new fo8(17);
    public final LinkedHashMap d = new LinkedHashMap();
    public boolean h = true;

    public vx6(wx6 wx6Var, as4 as4Var) {
        this.a = wx6Var;
        this.b = as4Var;
    }

    public final void a() {
        wx6 wx6Var = this.a;
        if (wx6Var.getLifecycle().d != st4.b) {
            l0.e("Restarter must be created only during owner's initialization stage");
        } else {
            if (this.e) {
                l0.e("SavedStateRegistry was already attached.");
                return;
            }
            this.b.invoke();
            wx6Var.getLifecycle().a(new xn1(this, 1));
            this.e = true;
        }
    }
}
