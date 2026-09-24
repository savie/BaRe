package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wi extends r35 {
    public final k28 f;
    public hj g;
    public final int h;

    public wi(k28 k28Var) {
        k28Var.getClass();
        this.f = k28Var;
        this.h = 1;
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        pi piVar = (pi) this.d.get(i);
        if (piVar instanceof ki) {
            return this.h;
        }
        if (piVar instanceof oi) {
            return 0;
        }
        q.j();
        return 0;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ((vi) fh6Var).r((pi) this.d.get(i), i);
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return i == 0 ? R.layout.app_action_item_normal : R.layout.app_action_item_advanced;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        return i == 0 ? new ui(this, view) : new si(this, view);
    }
}
