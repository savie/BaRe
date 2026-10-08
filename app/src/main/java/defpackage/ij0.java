package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ij0 extends r35 {
    public kj0 f;

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, final int i) {
        hj0 hj0Var = (hj0) fh6Var;
        jj0 jj0Var = (jj0) this.d.get(i);
        oi0 oi0Var = hj0Var.x;
        jj0Var.getClass();
        List<li0> list = jj0Var.c;
        hj0Var.u.setText(jj0Var.b);
        ImageView imageView = hj0Var.v;
        final ij0 ij0Var = hj0Var.z;
        String str = jj0Var.a;
        if ((!pe4.d(str, "user_app_parts") && !pe4.d(str, "system_app_parts")) || (list != null && list.isEmpty())) {
            sz8.W(imageView);
            imageView.setOnClickListener(null);
            break;
        }
        Iterator it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                if (!((li0) it.next()).b()) {
                    sz8.c0(imageView);
                    imageView.setImageResource(jj0Var.b() ? R.drawable.ic_check_circle_outline : R.drawable.ic_check_circle_full);
                    Context context = imageView.getContext();
                    context.getClass();
                    imageView.setImageTintList(jj0Var.b() ? sz8.h0(context.getColor(sz8.y(context, android.R.attr.textColorSecondary))) : sz8.h0(sz8.x(context)));
                    imageView.setContentDescription(imageView.getContext().getString(jj0Var.b() ? R.string.select_all : R.string.clear_all));
                    imageView.setOnClickListener(new ti(jj0Var, i, 1, ij0Var));
                    break;
                }
            } else {
                sz8.W(imageView);
                imageView.setOnClickListener(null);
                break;
            }
        }
        ImageView imageView2 = hj0Var.w;
        if (jj0Var.e != null) {
            sz8.c0(imageView2);
            imageView2.setOnClickListener(new h7(jj0Var, 4));
        } else {
            sz8.W(imageView2);
            imageView2.setOnClickListener(null);
        }
        r35.m(oi0Var, list);
        oi0Var.g = new at5() { // from class: gj0
            @Override // defpackage.at5
            public final void d(Object obj) {
                ij0 ij0Var2 = this.a;
                ij0Var2.f(i);
                kj0 kj0Var = ij0Var2.f;
                if (kj0Var != null) {
                    lj0 lj0Var = (lj0) kj0Var.a;
                    pj0 pj0Var = (pj0) kj0Var.b;
                    boolean z = pj0Var.d || pj0Var.b();
                    MaterialButton materialButton = lj0Var.S;
                    materialButton.setEnabled(z);
                    materialButton.setAlpha(z ? 1.0f : 0.5f);
                }
            }
        };
        fj0 fj0Var = hj0Var.y;
        ArrayList arrayList = new ArrayList();
        for (li0 li0Var : list) {
            if (!li0Var.n.isEmpty()) {
                arrayList.addAll(li0Var.n);
            }
        }
        r35.m(fj0Var, arrayList);
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return R.layout.bre_section;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        int i2 = R.id.iv_section_help;
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_section_help);
        if (imageView != null) {
            i2 = R.id.iv_section_select_toggle;
            ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_section_select_toggle);
            if (imageView2 != null) {
                i2 = R.id.rv_bre_buttons;
                QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(view, R.id.rv_bre_buttons);
                if (quickRecyclerView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i2 = R.id.tv_title;
                    TextView textView = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView != null) {
                        return new hj0(this, new wv0(constraintLayout, imageView, imageView2, quickRecyclerView, textView));
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
