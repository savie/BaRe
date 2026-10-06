package defpackage;

import android.view.View;
import androidx.fragment.app.u;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hh3 implements es3 {
    public final Set a = Collections.newSetFromMap(new WeakHashMap());
    public volatile boolean b;

    @Override // defpackage.es3
    public final void c(u uVar) {
        if (!this.b && this.a.add(uVar)) {
            View decorView = uVar.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new gh3(this, decorView));
        }
    }
}
