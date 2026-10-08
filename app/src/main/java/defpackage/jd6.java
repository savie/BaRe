package defpackage;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jd6 implements jk8 {
    public final /* synthetic */ int a = 1;
    public final NestedScrollView b;

    public jd6(NestedScrollView nestedScrollView, MaterialButton materialButton, QuickRecyclerView quickRecyclerView) {
        this.b = nestedScrollView;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        switch (this.a) {
            case 0:
                break;
        }
        return this.b;
    }

    public jd6(NestedScrollView nestedScrollView, MaterialButton materialButton, MaterialButton materialButton2, ka kaVar) {
        this.b = nestedScrollView;
    }
}
