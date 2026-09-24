package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class en extends CheckBox implements p48 {
    public final hn a;
    public final bn b;
    public final pp c;
    public mo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public en(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m48.a(context);
        i28.a(getContext(), this);
        hn hnVar = new hn(this);
        this.a = hnVar;
        hnVar.b(attributeSet, i);
        bn bnVar = new bn(this);
        this.b = bnVar;
        bnVar.d(attributeSet, i);
        pp ppVar = new pp(this);
        this.c = ppVar;
        ppVar.f(attributeSet, i);
        getEmojiTextViewHelper().b(attributeSet, i);
    }

    private mo getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new mo(this);
        }
        return this.d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        bn bnVar = this.b;
        if (bnVar != null) {
            bnVar.a();
        }
        pp ppVar = this.c;
        if (ppVar != null) {
            ppVar.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        bn bnVar = this.b;
        if (bnVar != null) {
            return bnVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        bn bnVar = this.b;
        if (bnVar != null) {
            return bnVar.c();
        }
        return null;
    }

    @Override // defpackage.p48
    public ColorStateList getSupportButtonTintList() {
        hn hnVar = this.a;
        if (hnVar != null) {
            return hnVar.b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        hn hnVar = this.a;
        if (hnVar != null) {
            return hnVar.c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.c.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        bn bnVar = this.b;
        if (bnVar != null) {
            bnVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        bn bnVar = this.b;
        if (bnVar != null) {
            bnVar.f(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        hn hnVar = this.a;
        if (hnVar != null) {
            if (hnVar.f) {
                hnVar.f = false;
            } else {
                hnVar.f = true;
                hnVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        pp ppVar = this.c;
        if (ppVar != null) {
            ppVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        pp ppVar = this.c;
        if (ppVar != null) {
            ppVar.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        bn bnVar = this.b;
        if (bnVar != null) {
            bnVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        bn bnVar = this.b;
        if (bnVar != null) {
            bnVar.i(mode);
        }
    }

    @Override // defpackage.p48
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        hn hnVar = this.a;
        if (hnVar != null) {
            hnVar.b = colorStateList;
            hnVar.d = true;
            hnVar.a();
        }
    }

    @Override // defpackage.p48
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        hn hnVar = this.a;
        if (hnVar != null) {
            hnVar.c = mode;
            hnVar.e = true;
            hnVar.a();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        pp ppVar = this.c;
        ppVar.l(colorStateList);
        ppVar.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        pp ppVar = this.c;
        ppVar.m(mode);
        ppVar.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(iz1.m(getContext(), i));
    }
}
