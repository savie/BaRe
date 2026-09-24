package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jl5 extends FrameLayout implements dl5 {
    public final TextView a;
    public boolean b;
    public boolean c;
    public ic5 d;
    public ColorStateList e;

    public jl5(Context context) {
        super(context);
        LayoutInflater.from(context).inflate(R.layout.m3_navigation_menu_subheader, (ViewGroup) this, true);
        this.a = (TextView) findViewById(R.id.navigation_menu_subheader_label);
    }

    @Override // defpackage.yc5
    public final void a(ic5 ic5Var) {
        this.d = ic5Var;
        ic5Var.setCheckable(false);
        this.a.setText(ic5Var.e);
        b();
    }

    public final void b() {
        ic5 ic5Var = this.d;
        if (ic5Var != null) {
            setVisibility((!ic5Var.isVisible() || (!this.b && this.c)) ? 8 : 0);
        }
    }

    @Override // defpackage.yc5
    public ic5 getItemData() {
        return this.d;
    }

    @Override // defpackage.dl5
    public void setExpanded(boolean z) {
        this.b = z;
        b();
    }

    @Override // defpackage.dl5
    public void setOnlyShowWhenExpanded(boolean z) {
        this.c = z;
        b();
    }

    public void setTextAppearance(int i) {
        TextView textView = this.a;
        textView.setTextAppearance(i);
        ColorStateList colorStateList = this.e;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.e = colorStateList;
        if (colorStateList != null) {
            this.a.setTextColor(colorStateList);
        }
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
    }

    public void setIcon(Drawable drawable) {
    }

    public void setTitle(CharSequence charSequence) {
    }
}
