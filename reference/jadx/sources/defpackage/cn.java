package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class cn extends Button {
    public final bn a;
    public final pp b;
    public mo c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cn(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m48.a(context);
        i28.a(getContext(), this);
        bn bnVar = new bn(this);
        this.a = bnVar;
        bnVar.d(attributeSet, i);
        pp ppVar = new pp(this);
        this.b = ppVar;
        ppVar.f(attributeSet, i);
        ppVar.b();
        getEmojiTextViewHelper().b(attributeSet, i);
    }

    private mo getEmojiTextViewHelper() {
        if (this.c == null) {
            this.c = new mo(this);
        }
        return this.c;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.a();
        }
        pp ppVar = this.b;
        if (ppVar != null) {
            ppVar.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (xm8.c) {
            return super.getAutoSizeMaxTextSize();
        }
        pp ppVar = this.b;
        if (ppVar != null) {
            return Math.round(ppVar.i.e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (xm8.c) {
            return super.getAutoSizeMinTextSize();
        }
        pp ppVar = this.b;
        if (ppVar != null) {
            return Math.round(ppVar.i.d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (xm8.c) {
            return super.getAutoSizeStepGranularity();
        }
        pp ppVar = this.b;
        if (ppVar != null) {
            return Math.round(ppVar.i.c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (xm8.c) {
            return super.getAutoSizeTextAvailableSizes();
        }
        pp ppVar = this.b;
        return ppVar != null ? ppVar.i.f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (xm8.c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        pp ppVar = this.b;
        if (ppVar != null) {
            return ppVar.i.a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return k55.H(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        bn bnVar = this.a;
        if (bnVar != null) {
            return bnVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        bn bnVar = this.a;
        if (bnVar != null) {
            return bnVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.b.e();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        pp ppVar = this.b;
        if (ppVar == null || xm8.c) {
            return;
        }
        ppVar.i.a();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        pp ppVar = this.b;
        if (ppVar != null) {
            yp ypVar = ppVar.i;
            if (xm8.c || !ypVar.f()) {
                return;
            }
            ypVar.a();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (xm8.c) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        pp ppVar = this.b;
        if (ppVar != null) {
            ppVar.i(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (xm8.c) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        pp ppVar = this.b;
        if (ppVar != null) {
            ppVar.j(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (xm8.c) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        pp ppVar = this.b;
        if (ppVar != null) {
            ppVar.k(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(k55.K(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportAllCaps(boolean z) {
        pp ppVar = this.b;
        if (ppVar != null) {
            ppVar.a.setAllCaps(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        bn bnVar = this.a;
        if (bnVar != null) {
            bnVar.i(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        pp ppVar = this.b;
        ppVar.l(colorStateList);
        ppVar.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        pp ppVar = this.b;
        ppVar.m(mode);
        ppVar.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        pp ppVar = this.b;
        if (ppVar != null) {
            ppVar.g(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        boolean z = xm8.c;
        if (z) {
            super.setTextSize(i, f);
            return;
        }
        pp ppVar = this.b;
        if (ppVar != null) {
            yp ypVar = ppVar.i;
            if (z || ypVar.f()) {
                return;
            }
            ypVar.g(i, f);
        }
    }
}
