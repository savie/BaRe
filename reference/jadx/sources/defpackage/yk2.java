package defpackage;

import android.app.Dialog;
import android.view.View;
import androidx.fragment.app.h;
import androidx.fragment.app.l;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yk2 extends ms8 {
    public final /* synthetic */ l d;
    public final /* synthetic */ h e;

    public yk2(h hVar, l lVar) {
        this.e = hVar;
        this.d = lVar;
    }

    @Override // defpackage.ms8
    public final View C(int i) {
        l lVar = this.d;
        if (lVar.D()) {
            return lVar.C(i);
        }
        Dialog dialog = this.e.t;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    @Override // defpackage.ms8
    public final boolean D() {
        return this.d.D() || this.e.H;
    }
}
