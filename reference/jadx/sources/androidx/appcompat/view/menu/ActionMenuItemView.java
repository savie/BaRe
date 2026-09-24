package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import defpackage.e8;
import defpackage.ec5;
import defpackage.f8;
import defpackage.fc5;
import defpackage.ge6;
import defpackage.ic5;
import defpackage.p8;
import defpackage.s88;
import defpackage.tp;
import defpackage.yc5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends tp implements yc5, View.OnClickListener, p8 {
    public boolean G;
    public final int H;
    public int I;
    public final int J;
    public ic5 n;
    public CharSequence p;
    public Drawable q;
    public ec5 r;
    public e8 t;
    public f8 x;
    public boolean y;

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.y = g();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ge6.c, i, 0);
        this.H = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.J = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.I = -1;
        setSaveEnabled(false);
    }

    @Override // defpackage.yc5
    public final void a(ic5 ic5Var) {
        this.n = ic5Var;
        setIcon(ic5Var.getIcon());
        setTitle(ic5Var.getTitleCondensed());
        setId(ic5Var.a);
        setVisibility(ic5Var.isVisible() ? 0 : 8);
        setEnabled(ic5Var.isEnabled());
        if (ic5Var.hasSubMenu() && this.t == null) {
            this.t = new e8(this);
        }
    }

    @Override // defpackage.p8
    public final boolean b() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // defpackage.p8
    public final boolean c() {
        return !TextUtils.isEmpty(getText()) && this.n.getIcon() == null;
    }

    public final boolean g() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i < 480) {
            return (i >= 640 && i2 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // defpackage.yc5
    public ic5 getItemData() {
        return this.n;
    }

    public final void h() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.p);
        if (this.q != null && ((this.n.Q & 4) != 4 || (!this.y && !this.G))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.p : null);
        CharSequence charSequence = this.n.I;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z3 ? null : this.n.e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.n.J;
        if (TextUtils.isEmpty(charSequence2)) {
            s88.a(this, z3 ? null : this.n.e);
        } else {
            s88.a(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ec5 ec5Var = this.r;
        if (ec5Var != null) {
            ec5Var.a(this.n);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.y = g();
        h();
    }

    @Override // defpackage.tp, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean zIsEmpty = TextUtils.isEmpty(getText());
        if (!zIsEmpty && (i3 = this.I) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int i4 = this.H;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i4) : i4;
        if (mode != 1073741824 && i4 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i2);
        }
        if (!zIsEmpty || this.q == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.q.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        e8 e8Var;
        if (this.n.hasSubMenu() && (e8Var = this.t) != null && e8Var.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setExpandedFormat(boolean z) {
        if (this.G != z) {
            this.G = z;
            ic5 ic5Var = this.n;
            if (ic5Var != null) {
                fc5 fc5Var = ic5Var.y;
                fc5Var.r = true;
                fc5Var.p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.q = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.J;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        h();
    }

    public void setItemInvoker(ec5 ec5Var) {
        this.r = ec5Var;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.I = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(f8 f8Var) {
        this.x = f8Var;
    }

    public void setTitle(CharSequence charSequence) {
        this.p = charSequence;
        h();
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }
}
