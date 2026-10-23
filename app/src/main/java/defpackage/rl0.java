package defpackage;

import androidx.fragment.app.o;
import defpackage.jk8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class rl0<Binding extends jk8> extends o {
    public String a;
    public jk8 b;

    public rl0(int i) {
        this.a = getClass().getSimpleName();
    }

    @Override // androidx.fragment.app.o
    public final void onDestroyView() {
        hx0.b.l(this);
        super.onDestroyView();
        this.b = null;
    }

    public rl0() {
        this(0);
    }
}
