package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class km implements jk8 {
    public final LinearLayout a;
    public final QuickRecyclerView b;

    public km(LinearLayout linearLayout, QuickRecyclerView quickRecyclerView) {
        this.a = linearLayout;
        this.b = quickRecyclerView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
