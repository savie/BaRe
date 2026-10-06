package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;
import com.google.android.material.card.MaterialCardView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lt7 extends f46 {
    public final boolean j;
    public final float k;
    public final float l;
    public final int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lt7(PreferenceScreen preferenceScreen, boolean z) {
        super(preferenceScreen);
        preferenceScreen.getClass();
        this.j = z;
        Resources resources = preferenceScreen.a.getResources();
        this.k = resources.getDimension(R.dimen.card_corner_radius);
        this.l = resources.getDimension(R.dimen.corner_radius_small);
        this.m = resources.getDimensionPixelSize(R.dimen.segmented_card_gap);
    }

    /* JADX WARN: Code duplicated, block: B:131:0x0277  */
    /* JADX WARN: Code duplicated, block: B:132:0x0289  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059  */
    @Override // defpackage.f46, defpackage.hg6
    /* JADX INFO: renamed from: n */
    public final void h(k46 k46Var, int i) {
        int i2;
        jt7 jt7Var;
        ht7 ht7Var;
        int i3;
        it7 it7Var;
        ImageView imageView;
        int i4;
        super.h(k46Var, i);
        View view = k46Var.a;
        TextView textView = (TextView) view.findViewById(android.R.id.title);
        if (textView != null) {
            textView.setSingleLine(false);
            textView.setMaxLines(4);
        }
        TextView textView2 = (TextView) view.findViewById(android.R.id.summary);
        if (textView2 != null) {
            textView2.setMaxLines(6);
        }
        Preference preferenceM = m(i);
        if (preferenceM == null) {
            return;
        }
        View viewFindViewById = view.findViewById(R.id.icon_frame);
        if (viewFindViewById == null) {
            i2 = 0;
        } else {
            if (this.j) {
                if (preferenceM.r == null && (i4 = preferenceM.q) != 0) {
                    preferenceM.r = iz1.m(preferenceM.a, i4);
                }
                if (preferenceM.r != null) {
                    i3 = 0;
                } else {
                    i3 = 8;
                }
            } else {
                i3 = 8;
            }
            viewFindViewById.setVisibility(i3);
            if (viewFindViewById.getVisibility() == 0) {
                String str = preferenceM.t;
                if (str == null) {
                    str = "";
                }
                if (nq7.Z(str, "blacklist", true)) {
                    it7Var = new it7(R.color.red, R.color.red30);
                } else {
                    if (nq7.Z(str, "config", true)) {
                        it7Var = new it7(R.color.ppl, R.color.ppl30);
                    } else {
                        i2 = 0;
                        if (nq7.Z(str, "label", true)) {
                            it7Var = new it7(R.color.ambr, R.color.ambr30);
                        } else if (nq7.Z(str, "app", true)) {
                            it7Var = new it7(R.color.apps, R.color.apps30);
                        } else if (nq7.Z(str, "sms", true) || nq7.Z(str, "message", true)) {
                            it7Var = new it7(R.color.messages, R.color.msgs30);
                        } else if (nq7.Z(str, "call", true)) {
                            it7Var = new it7(R.color.calls, R.color.calls30);
                        } else if (nq7.Z(str, "folder", true)) {
                            it7Var = new it7(R.color.folders, R.color.folders30);
                        } else if (nq7.Z(str, "cloud", true) || nq7.Z(str, "download", true) || nq7.Z(str, "onedrive", true) || nq7.Z(str, "dropbox", true) || nq7.Z(str, "nextcloud", true) || nq7.Z(str, "s3", true) || nq7.Z(str, "email", true) || nq7.Z(str, "telegram", true)) {
                            it7Var = new it7(R.color.blu, R.color.blu30);
                        } else if (nq7.Z(str, "notification", true) || nq7.Z(str, "sound", true)) {
                            it7Var = new it7(R.color.ambr, R.color.ambr30);
                        } else if (nq7.Z(str, "theme", true) || nq7.Z(str, "dynamic", true) || nq7.Z(str, "amoled", true)) {
                            it7Var = new it7(R.color.ppl, R.color.ppl30);
                        } else if (nq7.Z(str, "labs", true) || nq7.Z(str, "logger", true) || nq7.Z(str, "bug", true) || nq7.Z(str, "restart", true)) {
                            it7Var = new it7(R.color.red, R.color.red30);
                        } else if (nq7.Z(str, "language", true) || nq7.Z(str, "translation", true)) {
                            it7Var = new it7(R.color.cyn, R.color.cyn30);
                        } else if (nq7.Z(str, "storage", true) || nq7.Z(str, "space", true) || nq7.Z(str, "backup", true) || nq7.Z(str, "compression", true)) {
                            it7Var = new it7(R.color.grn, R.color.grn30);
                        } else if (nq7.Z(str, "password", true) || nq7.Z(str, "encrypt", true)) {
                            it7Var = new it7(R.color.ambr, R.color.ambr30);
                        } else {
                            it7Var = (nq7.Z(str, "contact", true) || nq7.Z(str, "help", true) || nq7.Z(str, "about", true)) ? new it7(R.color.org, R.color.org30) : new it7(R.color.acnt, R.color.grn30);
                        }
                    }
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setShape(1);
                    gradientDrawable.setColor(sz8.U(viewFindViewById.getContext().getColor(it7Var.b), 20));
                    viewFindViewById.setBackground(gradientDrawable);
                    imageView = (ImageView) viewFindViewById.findViewById(android.R.id.icon);
                    if (imageView != null) {
                        imageView.setImageTintList(ColorStateList.valueOf(viewFindViewById.getContext().getColor(it7Var.a)));
                    }
                }
                i2 = 0;
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(1);
                gradientDrawable2.setColor(sz8.U(viewFindViewById.getContext().getColor(it7Var.b), 20));
                viewFindViewById.setBackground(gradientDrawable2);
                imageView = (ImageView) viewFindViewById.findViewById(android.R.id.icon);
                if (imageView != null) {
                    imageView.setImageTintList(ColorStateList.valueOf(viewFindViewById.getContext().getColor(it7Var.a)));
                }
            } else {
                i2 = 0;
            }
        }
        MaterialCardView materialCardView = view instanceof MaterialCardView ? (MaterialCardView) view : null;
        if (materialCardView == null && (materialCardView = (MaterialCardView) view.findViewById(R.id.preference_card)) == null) {
            return;
        }
        boolean zP = p(i, preferenceM, -1);
        boolean zP2 = p(i, preferenceM, 1);
        if (!zP && !zP2) {
            jt7Var = jt7.Single;
        } else if (zP) {
            jt7Var = !zP2 ? jt7.Bottom : jt7.Middle;
        } else {
            jt7Var = jt7.Top;
        }
        int i5 = kt7.a[jt7Var.ordinal()];
        float f = this.k;
        if (i5 != 1) {
            float f2 = this.l;
            if (i5 == 2) {
                ht7Var = new ht7(f, f, f2, f2);
            } else if (i5 == 3) {
                ht7Var = new ht7(f2, f2, f2, f2);
            } else {
                if (i5 != 4) {
                    q.j();
                    return;
                }
                ht7Var = new ht7(f2, f2, f, f);
            }
        } else {
            ht7Var = new ht7(f, f, f, f);
        }
        sb7 sb7VarM = materialCardView.getShapeAppearanceModel().m();
        sb7VarM.a = xh8.e(i2);
        sb7VarM.e = new f3(ht7Var.a);
        sb7VarM.b = xh8.e(i2);
        sb7VarM.f = new f3(ht7Var.b);
        sb7VarM.c = xh8.e(i2);
        sb7VarM.g = new f3(ht7Var.c);
        sb7VarM.d = xh8.e(i2);
        sb7VarM.h = new f3(ht7Var.d);
        materialCardView.setShapeAppearanceModel(sb7VarM.a());
        int i6 = (jt7Var == jt7.Bottom || jt7Var == jt7.Single) ? i2 : this.m;
        ViewGroup.LayoutParams layoutParams = materialCardView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null && marginLayoutParams.bottomMargin != i6) {
            marginLayoutParams.bottomMargin = i6;
            materialCardView.setLayoutParams(marginLayoutParams);
        }
        ViewGroup viewGroup = (ViewGroup) view.findViewById(android.R.id.widget_frame);
        View viewFindViewById2 = view.findViewById(R.id.preference_widget_divider);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility((viewGroup == null || viewGroup.getVisibility() != 0 || viewGroup.getChildCount() <= 0) ? 8 : i2);
        }
    }

    public final boolean p(int i, Preference preference, int i2) {
        Preference preferenceM;
        int i3 = i + i2;
        if (i3 < 0 || i3 >= this.f.size() || (preferenceM = m(i3)) == null || (preferenceM instanceof PreferenceCategory)) {
            return false;
        }
        return pe4.d(preferenceM.a0, preference.a0);
    }
}
