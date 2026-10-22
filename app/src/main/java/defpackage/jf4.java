package defpackage;

import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.intro.IntroPermissionCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jf4 implements jk8 {
    public final LinearLayoutCompat a;
    public final MaterialButton b;
    public final IntroPermissionCardView c;
    public final LinearLayoutCompat d;
    public final IntroPermissionCardView e;
    public final IntroPermissionCardView f;

    public jf4(LinearLayoutCompat linearLayoutCompat, MaterialButton materialButton, IntroPermissionCardView introPermissionCardView, LinearLayoutCompat linearLayoutCompat2, IntroPermissionCardView introPermissionCardView2, IntroPermissionCardView introPermissionCardView3) {
        this.a = linearLayoutCompat;
        this.b = materialButton;
        this.c = introPermissionCardView;
        this.d = linearLayoutCompat2;
        this.e = introPermissionCardView2;
        this.f = introPermissionCardView3;
    }

    @Override // defpackage.jk8
    public final View getRoot() {
        return this.a;
    }
}
