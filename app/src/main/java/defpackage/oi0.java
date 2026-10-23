package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.material.card.MaterialCardView;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oi0 extends r35 {
    public final int f;
    public at5 g;
    public Toast h;

    public oi0(ArrayList arrayList) {
        super(arrayList);
        this.f = 1;
    }

    @Override // defpackage.hg6
    public final int d(int i) {
        if (((li0) this.d.get(i)).a()) {
            return this.f;
        }
        return 0;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        Integer numValueOf;
        ni0 ni0Var = (ni0) fh6Var;
        li0 li0Var = (li0) this.d.get(i);
        li0Var.getClass();
        CharSequence charSequence = li0Var.c;
        Context context = ni0Var.a.getContext();
        MaterialCardView materialCardView = ni0Var.u;
        materialCardView.setAlpha(li0Var.b() ? 0.8f : 1.0f);
        ImageView imageView = ni0Var.v;
        Integer num = li0Var.d;
        int i2 = 0;
        sz8.d0(imageView, num != null);
        if (num != null) {
            imageView.setImageResource(li0Var.a() ? R.drawable.ic_check : num.intValue());
            Integer num2 = li0Var.e;
            if (num2 != null) {
                int iIntValue = num2.intValue();
                context.getClass();
                numValueOf = Integer.valueOf(io4.c(context, context.getColor(iIntValue)));
            } else {
                numValueOf = null;
            }
            if (numValueOf != null) {
                imageView.setImageTintList(sz8.h0(numValueOf.intValue()));
            }
        }
        ni0Var.w.setText(li0Var.b);
        TextView textView = ni0Var.x;
        sz8.d0(textView, !(charSequence == null || charSequence.length() == 0));
        if (sz8.I(textView)) {
            textView.setText(charSequence);
        }
        materialCardView.setOnClickListener(new mi0(ni0Var.y, i, i2, li0Var));
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return i == this.f ? R.layout.bre_chip_selected : R.layout.bre_chip_normal;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        int i2 = this.f;
        int i3 = R.id.tv_title;
        if (i == i2) {
            ImageView imageView = (ImageView) ms8.u(view, R.id.iv_icon);
            if (imageView != null) {
                TextView textView = (TextView) ms8.u(view, R.id.tv_subtitle);
                if (textView != null) {
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_title);
                    if (textView2 != null) {
                        MaterialCardView materialCardView = (MaterialCardView) view;
                        return new ni0(this, new zq8(materialCardView, imageView, textView, textView2), materialCardView, imageView, textView2, textView);
                    }
                } else {
                    i3 = R.id.tv_subtitle;
                }
            } else {
                i3 = R.id.iv_icon;
            }
            f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i3)));
            return null;
        }
        ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_icon);
        if (imageView2 != null) {
            TextView textView3 = (TextView) ms8.u(view, R.id.tv_subtitle);
            if (textView3 != null) {
                TextView textView4 = (TextView) ms8.u(view, R.id.tv_title);
                if (textView4 != null) {
                    MaterialCardView materialCardView2 = (MaterialCardView) view;
                    return new ni0(this, new uv0(materialCardView2, imageView2, textView3, textView4, 0), materialCardView2, imageView2, textView4, textView3);
                }
            } else {
                i3 = R.id.tv_subtitle;
            }
        } else {
            i3 = R.id.iv_icon;
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i3)));
        return null;
    }
}
