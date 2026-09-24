package defpackage;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z31 extends r35 {
    public final int f;
    public final int g;
    public final gv7 h;
    public final bp0 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z31(sa1 sa1Var, List list) {
        super(list);
        list.getClass();
        this.f = 1;
        this.g = 2;
        this.h = new gv7(new u31(sa1Var, 0));
        this.i = new f75(sa1Var, 56).e;
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        d41 d41Var = (d41) this.d.get(i);
        if (d41Var.c) {
            return 0;
        }
        return d41Var.b ? this.f : this.g;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ((y31) fh6Var).r((d41) this.d.get(i));
    }

    @Override // defpackage.r35
    public final int k(int i) {
        if (i == 0) {
            return R.layout.changelog_version_header;
        }
        return i == this.f ? R.layout.changelog_header : R.layout.changelog_row;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003b A[PHI: r8
      0x003b: PHI (r8v4 int) = (r8v3 int), (r8v5 int) binds: [B:5:0x0013, B:7:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        int i2 = R.id.tv_title;
        if (i != 0) {
            if (i == this.f) {
                LinearLayout linearLayout = (LinearLayout) view;
                TextView textView = (TextView) ms8.u(view, R.id.tv_title);
                if (textView != null) {
                    return new w31(this, new cd(3, linearLayout, textView));
                }
                f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_title)));
                return null;
            }
            LinearLayout linearLayout2 = (LinearLayout) view;
            TextView textView2 = (TextView) ms8.u(view, R.id.tv_bullet_point);
            if (textView2 != null) {
                TextView textView3 = (TextView) ms8.u(view, R.id.tv_title);
                if (textView3 != null) {
                    return new v31(this, new e41(0, linearLayout2, textView2, textView3));
                }
            } else {
                i2 = R.id.tv_bullet_point;
            }
            f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
            return null;
        }
        int i3 = R.id.release_card;
        MaterialCardView materialCardView = (MaterialCardView) ms8.u(view, R.id.release_card);
        if (materialCardView != null) {
            i3 = R.id.tv_release_summary;
            TextView textView4 = (TextView) ms8.u(view, R.id.tv_release_summary);
            if (textView4 != null) {
                MaterialButton materialButton = (MaterialButton) ms8.u(view, R.id.tv_title);
                if (materialButton != null) {
                    f41 f41Var = new f41();
                    f41Var.a = (LinearLayout) view;
                    f41Var.b = materialCardView;
                    f41Var.c = textView4;
                    f41Var.d = materialButton;
                    return new x31(f41Var);
                }
            } else {
                i2 = i3;
            }
        } else {
            i2 = i3;
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
