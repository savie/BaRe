package defpackage;

import android.view.animation.Animation;
import android.widget.FrameLayout;
import org.swiftapps.swiftbackup.home.HomeActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u44 extends jm8 {
    public final /* synthetic */ HomeActivity a;

    public u44(HomeActivity homeActivity) {
        this.a = homeActivity;
    }

    @Override // defpackage.gm8
    public final void b(int i) {
        HomeActivity homeActivity = this.a;
        FrameLayout frameLayout = homeActivity.Z().b;
        sz8.d0(frameLayout, i == 2);
        if (i != 2) {
            homeActivity.Z().e.o(false, false);
        }
        if (sz8.I(frameLayout)) {
            frameLayout.startAnimation((Animation) homeActivity.a0.getValue());
        }
    }
}
