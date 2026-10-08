package defpackage;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rj2 {
    public final DetailActivity a;
    public final ij2 b;
    public final mk2 c;
    public final LinearLayout d;
    public final ConstraintLayout e;
    public final TextView f;
    public final tj2 g;
    public final MaterialButton h;
    public final gv7 i;
    public final AlphaAnimation j;

    public rj2(DetailActivity detailActivity, ij2 ij2Var, mk2 mk2Var) {
        mk2Var.getClass();
        this.a = detailActivity;
        this.b = ij2Var;
        this.c = mk2Var;
        this.d = (LinearLayout) ij2Var.d;
        this.e = (ConstraintLayout) ((ke) ij2Var.c).b;
        this.f = (TextView) ij2Var.f;
        this.g = DetailActivity.a0((QuickRecyclerView) ij2Var.e);
        this.h = (MaterialButton) ij2Var.b;
        this.i = new gv7(new ak(this, 13));
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setStartOffset(20L);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setRepeatCount(-1);
        this.j = alphaAnimation;
    }

    public final void a(boolean z) {
        for (View view : (List) this.i.getValue()) {
            if (z) {
                view.startAnimation(this.j);
            } else {
                view.clearAnimation();
            }
        }
    }

    public final void b(ek2 ek2Var) {
        FrameLayout frameLayout = (FrameLayout) this.b.a;
        ek2Var.getClass();
        int i = 8;
        if (ek2Var.equals(ck2.a)) {
            frameLayout.setVisibility(8);
            return;
        }
        boolean zEquals = ek2Var.equals(bk2.a);
        ConstraintLayout constraintLayout = this.e;
        LinearLayout linearLayout = this.d;
        if (zEquals) {
            frameLayout.setVisibility(0);
            sz8.W(linearLayout);
            sz8.c0(constraintLayout);
            a(true);
            return;
        }
        frameLayout.setVisibility(0);
        sz8.c0(linearLayout);
        sz8.W(constraintLayout);
        a(false);
        dk2 dk2Var = (dk2) ek2Var;
        ArrayList arrayList = new ArrayList();
        String str = dk2Var.a;
        if (str != null) {
            arrayList.add(new uj2(iu.APP.getIconRes(), (dk2Var.b || dk2Var.c) ? "APKs" : "APK", str, new ox(this, 11)));
        }
        String str2 = dk2Var.d;
        DetailActivity detailActivity = this.a;
        if (str2 != null) {
            int iconRes = iu.DATA.getIconRes();
            String string = detailActivity.getString(R.string.data);
            string.getClass();
            arrayList.add(new uj2(iconRes, string, str2, new cz(this, 7)));
        }
        String str3 = dk2Var.e;
        if (str3 != null) {
            int iconRes2 = iu.EXTDATA.getIconRes();
            String string2 = detailActivity.getString(R.string.external_data);
            string2.getClass();
            arrayList.add(new uj2(iconRes2, string2, str3, new u10(this, 7)));
        }
        String str4 = dk2Var.g;
        if (str4 != null) {
            int iconRes3 = iu.EXPANSION.getIconRes();
            String string3 = detailActivity.getString(R.string.expansion);
            string3.getClass();
            arrayList.add(new uj2(iconRes3, string3, str4, new v10(this, 9)));
        }
        String str5 = dk2Var.f;
        if (str5 != null) {
            int iconRes4 = iu.MEDIA.getIconRes();
            String string4 = detailActivity.getString(R.string.media);
            string4.getClass();
            arrayList.add(new uj2(iconRes4, string4, str5, new px(this, 6)));
        }
        this.g.w(new fm7((List) arrayList, (Set) null, false, (String) null, 30), true);
        this.f.setText(dk2Var.h);
        MaterialButton materialButton = this.h;
        materialButton.setIconResource(R.drawable.ic_plus);
        materialButton.setOnClickListener(new es(this, i));
    }
}
