package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.premium.PremiumActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i56 extends r35 {
    public final PremiumActivity f;

    public i56(PremiumActivity premiumActivity) {
        this.f = premiumActivity;
    }

    @Override // defpackage.hg6
    public final void h(fh6 fh6Var, int i) {
        h56 h56Var = (h56) fh6Var;
        e56 e56Var = (e56) this.d.get(i);
        e56Var.getClass();
        int i2 = 0;
        for (Object obj : fl1.A0(h56Var.v, h56Var.w, h56Var.x, h56Var.y)) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                fl1.F0();
                throw null;
            }
            r14 r14Var = (r14) obj;
            f56 f56Var = (f56) el1.V0(i2, e56Var.a);
            if (f56Var == null) {
                LinearLayout linearLayout = r14Var.a;
                linearLayout.setOnClickListener(null);
                linearLayout.setClickable(false);
                linearLayout.setVisibility(8);
            } else {
                int i4 = f56Var.e;
                LinearLayout linearLayout2 = r14Var.a;
                LinearLayout linearLayout3 = r14Var.c;
                linearLayout2.setVisibility(0);
                linearLayout2.setClickable(true);
                linearLayout2.setFocusable(true);
                Context context = linearLayout2.getContext();
                context.getClass();
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(jm1.a(context, 21));
                gradientDrawable.setColor(sz8.U(sz8.A(context), 7));
                gradientDrawable.setStroke(jm1.a(context, 1), sz8.U(sz8.A(context), 16));
                linearLayout2.setBackground(gradientDrawable);
                linearLayout2.setOnClickListener(new nq1(2, h56Var, r14Var, f56Var));
                r14Var.b.setText(f56Var.a);
                linearLayout3.removeAllViews();
                Iterator it = f56Var.d.iterator();
                while (it.hasNext()) {
                    int iIntValue = ((Number) it.next()).intValue();
                    Context context2 = linearLayout3.getContext();
                    context2.getClass();
                    int iA = jm1.a(context2, 30);
                    ImageView imageView = new ImageView(linearLayout3.getContext());
                    y13.D(imageView, iIntValue, null, 3.0f);
                    Context context3 = linearLayout3.getContext();
                    context3.getClass();
                    int iA2 = jm1.a(context3, 0);
                    Integer num = linearLayout3.getChildCount() <= 0 ? null : -5;
                    if (num != null) {
                        int iIntValue2 = num.intValue();
                        Context context4 = linearLayout3.getContext();
                        context4.getClass();
                        iA2 = jm1.a(context4, iIntValue2);
                    }
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iA, iA);
                    layoutParams.setMarginStart(iA2);
                    linearLayout3.addView(imageView, layoutParams);
                }
                if (i4 > 0) {
                    Context context5 = linearLayout3.getContext();
                    context5.getClass();
                    TextView textView = new TextView(context5);
                    textView.setText(context5.getString(R.string.plus_more, fz5.j(i4, "+")));
                    textView.setTextColor(sz8.x(context5));
                    Typeface typefaceA = fm6.a(context5, R.font.main_medium);
                    if (typefaceA == null) {
                        typefaceA = Typeface.DEFAULT_BOLD;
                    }
                    textView.setTypeface(typefaceA);
                    textView.setGravity(17);
                    textView.setIncludeFontPadding(false);
                    textView.setTextSize(0, textView.getResources().getDimension(R.dimen.subtitle_smallest));
                    textView.setPadding(jm1.a(context5, 8), 0, jm1.a(context5, 8), 0);
                    textView.setMinWidth(jm1.a(context5, 44));
                    textView.setMinHeight(jm1.a(context5, 28));
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setShape(0);
                    gradientDrawable2.setCornerRadius(jm1.a(context5, 14));
                    gradientDrawable2.setColor(sz8.U(sz8.x(context5), 12));
                    gradientDrawable2.setStroke(jm1.a(context5, 1), sz8.U(sz8.x(context5), 26));
                    textView.setBackground(gradientDrawable2);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, jm1.a(context5, 28));
                    layoutParams2.setMarginStart(jm1.a(context5, 6));
                    textView.setLayoutParams(layoutParams2);
                    linearLayout3.addView(textView);
                }
            }
            i2 = i3;
        }
    }

    @Override // defpackage.r35
    public final int k(int i) {
        return R.layout.premium_features_demo_cloud_grouped_item;
    }

    @Override // defpackage.r35
    public final fh6 l(View view, int i) {
        return new h56(view, this.f);
    }
}
