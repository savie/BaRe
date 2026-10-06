package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fn extends CheckedTextView {
    public final gn a;
    public final bn b;
    public final pp c;
    public mo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fn(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        super(context, attributeSet, R.attr.checkedTextViewStyle);
        m48.a(context);
        i28.a(getContext(), this);
        pp ppVar = new pp(this);
        this.c = ppVar;
        ppVar.f(attributeSet, R.attr.checkedTextViewStyle);
        ppVar.b();
        bn bnVar = new bn(this);
        this.b = bnVar;
        bnVar.d(attributeSet, R.attr.checkedTextViewStyle);
        this.a = new gn(this);
        Context context2 = getContext();
        int[] iArr = ge6.l;
        u94 u94VarE = u94.e(R.attr.checkedTextViewStyle, 0, context2, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) u94VarE.b;
        dl8.m(this, getContext(), iArr, attributeSet, (TypedArray) u94VarE.b, R.attr.checkedTextViewStyle);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    setCheckMarkDrawable(iz1.m(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        setCheckMarkDrawable(iz1.m(getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                setCheckMarkDrawable(iz1.m(getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                setCheckMarkTintList(u94VarE.a(2));
            }
            if (typedArray.hasValue(3)) {
                setCheckMarkTintMode(fp2.c(typedArray.getInt(3, -1), null));
            }
            u94VarE.f();
            getEmojiTextViewHelper().b(attributeSet, R.attr.checkedTextViewStyle);
        } catch (Throwable th) {
            u94VarE.f();
            throw th;
        }
    }

    private mo getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new mo(this);
        }
        return this.d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        pp ppVar = this.c;
        if (ppVar != null) {
            ppVar.b();
        }
        bn bnVar = this.b;
        if (bnVar != null) {
            bnVar.a();
        }
        gn gnVar = this.a;
        if (gnVar != null) {
            gnVar.a();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return k55.H(super.getCustomSelectionActionModeCallback());
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

    public ColorStateList getSupportCheckMarkTintList() {
        gn gnVar = this.a;
        if (gnVar != null) {
            return gnVar.b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        gn gnVar = this.a;
        if (gnVar != null) {
            return gnVar.c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.c.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        zv1.m(editorInfo, inputConnectionOnCreateInputConnection, this);
        return inputConnectionOnCreateInputConnection;
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

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        gn gnVar = this.a;
        if (gnVar != null) {
            if (gnVar.f) {
                gnVar.f = false;
            } else {
                gnVar.f = true;
                gnVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        pp ppVar = this.c;
        if (ppVar != null) {
            ppVar.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        pp ppVar = this.c;
        if (ppVar != null) {
            ppVar.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(k55.K(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
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

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        gn gnVar = this.a;
        if (gnVar != null) {
            gnVar.b = colorStateList;
            gnVar.d = true;
            gnVar.a();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        gn gnVar = this.a;
        if (gnVar != null) {
            gnVar.c = mode;
            gnVar.e = true;
            gnVar.a();
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

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        pp ppVar = this.c;
        if (ppVar != null) {
            ppVar.g(context, i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(iz1.m(getContext(), i));
    }
}
