package defpackage;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tr4 extends fh6 {
    public final MaterialCardView u;
    public final TextView v;
    public final ImageView w;
    public final ImageView x;
    public final /* synthetic */ ur4 y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tr4(ur4 ur4Var, View view) {
        super(view);
        this.y = ur4Var;
        MaterialCardView materialCardView = (MaterialCardView) view;
        int i = R.id.iv_add;
        ImageView imageView = (ImageView) ms8.u(view, R.id.iv_add);
        if (imageView != null) {
            i = R.id.iv_edit;
            ImageView imageView2 = (ImageView) ms8.u(view, R.id.iv_edit);
            if (imageView2 != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ms8.u(view, R.id.tv_title);
                if (textView != null) {
                    this.u = materialCardView;
                    this.v = textView;
                    this.w = imageView;
                    this.x = imageView2;
                    return;
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        throw null;
    }

    public final void r(final vq4 vq4Var) {
        float f;
        int iHSVToColor;
        vq4Var.getClass();
        LabelParams labelParams = vq4Var.a;
        boolean zIsBuiltInLabel = labelParams.isBuiltInLabel();
        final ur4 ur4Var = this.y;
        int i = ur4Var.l;
        int textColor = labelParams.getTextColor(ur4Var.m);
        int i2 = zIsBuiltInLabel ? textColor : 0;
        MaterialCardView materialCardView = this.u;
        materialCardView.setStrokeColor(i2);
        int colorInt = zIsBuiltInLabel ? 0 : labelParams.getColorInt();
        materialCardView.setCardBackgroundColor(colorInt);
        if (Build.VERSION.SDK_INT >= 28) {
            if (zIsBuiltInLabel) {
                f = 0.0f;
            } else {
                Context context = this.a.getContext();
                context.getClass();
                f = (context.getResources().getDisplayMetrics().densityDpi / 160.0f) * 4.0f;
            }
            materialCardView.setCardElevation(f);
            if (zIsBuiltInLabel) {
                iHSVToColor = 0;
            } else {
                float[] fArr = new float[3];
                Color.colorToHSV(colorInt, fArr);
                fArr[2] = fArr[2] * 0.85f;
                iHSVToColor = Color.HSVToColor(fArr);
            }
            materialCardView.setOutlineSpotShadowColor(iHSVToColor);
        }
        Context context2 = materialCardView.getContext();
        context2.getClass();
        materialCardView.setRippleColor(sz8.h0(labelParams.getRippleColor(context2, textColor)));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(textColor);
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) vq4Var.a());
        spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
        this.v.setText(spannableStringBuilder);
        boolean z = i == 2 || i == 1;
        ImageView imageView = this.w;
        sz8.d0(imageView, z);
        if (sz8.I(imageView)) {
            imageView.setImageTintList(sz8.h0(textColor));
        }
        boolean z2 = i == 0;
        ImageView imageView2 = this.x;
        sz8.d0(imageView2, z2);
        if (sz8.I(imageView2)) {
            imageView2.setImageTintList(sz8.h0(textColor));
        }
        materialCardView.setOnClickListener(new View.OnClickListener() { // from class: sr4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                qt3 qt3Var = ur4Var.j;
                if (qt3Var != null) {
                    qt3Var.invoke(vq4Var, Integer.valueOf(this.b()));
                }
            }
        });
    }
}
