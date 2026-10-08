package defpackage;

import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nl8 implements f77 {
    public final /* synthetic */ ViewGroup a;

    public nl8(LinearLayout linearLayout) {
        this.a = linearLayout;
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        return new ol8(this.a);
    }
}
