package defpackage;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bb4 extends gm7 {
    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        ab4 ab4Var = (ab4) fh6Var;
        xa4 xa4Var = (xa4) m(i);
        xa4Var.getClass();
        MaterialCardView materialCardView = ab4Var.v;
        Context context = materialCardView.getContext();
        bb4 bb4Var = ab4Var.B;
        boolean zQ = bb4Var.q(xa4Var);
        context.getClass();
        int iX = sz8.x(context);
        ab4Var.u.b.setAlpha(xa4Var.isEnabled() ? 1.0f : 0.65f);
        if (zQ) {
            materialCardView.setStrokeWidth(materialCardView.getResources().getDimensionPixelSize(R.dimen.card_stroke_width_selected));
            materialCardView.setStrokeColor(sz8.h0(iX));
        } else {
            materialCardView.setStrokeWidth(materialCardView.getResources().getDimensionPixelSize(R.dimen.card_stroke_width));
            materialCardView.setStrokeColor(sz8.h0(context.getColor(sz8.y(context, R.attr.cardStrokeColor))));
        }
        TextView textView = ab4Var.w;
        if (!zQ) {
            iX = sz8.z(context);
        }
        textView.setTextColor(iX);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) xa4Var.getDisplayTitleShort(context));
        if (xa4Var.isPending() || xa4Var.isPurchased()) {
            spannableStringBuilder.append((CharSequence) " (");
            spannableStringBuilder.append((CharSequence) context.getString(xa4Var.isPending() ? R.string.pending_payment : R.string.purchased));
            spannableStringBuilder.append((CharSequence) ")");
        }
        textView.setText(new SpannedString(spannableStringBuilder));
        ab4Var.x.setText(xa4Var.getSubtitleShort(context));
        int i2 = 0;
        ab4Var.A.setVisibility(xa4Var.isLifetime() ? 0 : 8);
        ab4Var.y.setText(xa4Var.getDisplayPrice(context));
        TextView textView2 = ab4Var.z;
        String monthlyEquivalentText = xa4Var.getMonthlyEquivalentText(context);
        textView2.setVisibility(monthlyEquivalentText != null ? 0 : 8);
        textView2.setText(monthlyEquivalentText);
        materialCardView.setOnClickListener(new za4(bb4Var, xa4Var, ab4Var, i2));
    }

    @Override // defpackage.gm7
    public final int n(int i) {
        return R.layout.in_app_item;
    }

    @Override // defpackage.gm7
    public final fh6 o(View view, int i) {
        MaterialCardView materialCardView = (MaterialCardView) view;
        int i2 = R.id.container_inner;
        if (((ConstraintLayout) ms8.u(view, R.id.container_inner)) != null) {
            i2 = R.id.price_column;
            if (((LinearLayout) ms8.u(view, R.id.price_column)) != null) {
                i2 = R.id.tv_badge;
                TextView textView = (TextView) ms8.u(view, R.id.tv_badge);
                if (textView != null) {
                    i2 = R.id.tv_monthly_equivalent;
                    TextView textView2 = (TextView) ms8.u(view, R.id.tv_monthly_equivalent);
                    if (textView2 != null) {
                        i2 = R.id.tv_price;
                        TextView textView3 = (TextView) ms8.u(view, R.id.tv_price);
                        if (textView3 != null) {
                            i2 = R.id.tv_subtitle;
                            TextView textView4 = (TextView) ms8.u(view, R.id.tv_subtitle);
                            if (textView4 != null) {
                                i2 = R.id.tv_title;
                                TextView textView5 = (TextView) ms8.u(view, R.id.tv_title);
                                if (textView5 != null) {
                                    return new ab4(this, new ya4(materialCardView, materialCardView, textView, textView2, textView3, textView4, textView5));
                                }
                            }
                        }
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }

    public final xa4 y() {
        Object next;
        xa4 xa4Var = (xa4) el1.U0(l());
        if (xa4Var != null) {
            return xa4Var;
        }
        Iterator it = this.e.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((xa4) next).isLifetime());
        xa4 xa4Var2 = (xa4) next;
        return xa4Var2 == null ? (xa4) el1.U0(this.e.a) : xa4Var2;
    }
}
