package defpackage;

import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wk5 extends FrameLayout implements dl5 {
    public boolean a;
    public boolean b;
    public boolean c;

    @Override // defpackage.yc5
    public final void a(ic5 ic5Var) {
        b();
    }

    public final void b() {
        setVisibility((!this.c || (!this.a && this.b)) ? 8 : 0);
    }

    @Override // defpackage.yc5
    public ic5 getItemData() {
        return null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setDividersEnabled(boolean z) {
        this.c = z;
        b();
    }

    @Override // defpackage.dl5
    public void setExpanded(boolean z) {
        this.a = z;
        b();
    }

    @Override // defpackage.dl5
    public void setOnlyShowWhenExpanded(boolean z) {
        this.b = z;
        b();
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
