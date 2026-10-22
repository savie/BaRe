package defpackage;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vv0 implements jk8 {
    public final NestedScrollView a;
    public final MaterialButton b;
    public final QuickRecyclerView c;

    public vv0(NestedScrollView nestedScrollView, MaterialButton materialButton, QuickRecyclerView quickRecyclerView) {
        this.a = nestedScrollView;
        this.b = materialButton;
        this.c = quickRecyclerView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
