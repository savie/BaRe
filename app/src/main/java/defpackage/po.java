package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import android.widget.MultiAutoCompleteTextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class po extends MultiAutoCompleteTextView {
    public static final int[] d = {R.attr.popupBackground};
    public final bn a;
    public final pp b;
    public final ib c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public po(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, org.swiftapps.swiftbackup.R.attr.autoCompleteTextViewStyle);
        m48.a(context);
        i28.a(getContext(), this);
        u94 u94VarE = u94.e(org.swiftapps.swiftbackup.R.attr.autoCompleteTextViewStyle, 0, getContext(), attributeSet, d);
        if (((TypedArray) u94VarE.b).hasValue(0)) {
            setDropDownBackgroundDrawable(u94VarE.b(0));
        }
        u94VarE.f();
        bn bnVar = new bn(this);
        this.a = bnVar;
        bnVar.d(attributeSet, org.swiftapps.swiftbackup.R.attr.autoCompleteTextViewStyle);
        pp ppVar = new pp(this);
        this.b = ppVar;
        ppVar.f(attributeSet, org.swiftapps.swiftbackup.R.attr.autoCompleteTextViewStyle);
        ppVar.b();
        ib ibVar = new ib((EditText) this);
        this.c = ibVar;
        ibVar.j(attributeSet, org.swiftapps.swiftbackup.R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = isFocusable();
        boolean zIsClickable = isClickable();
        boolean zIsLongClickable = isLongClickable();
        int inputType = getInputType();
        KeyListener keyListenerI = ibVar.i(keyListener);
        if (keyListenerI == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerI);
        setRawInputType(inputType);
        setFocusable(zIsFocusable);
        setClickable(zIsClickable);
        setLongClickable(zIsLongClickable);
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

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        zv1.m(editorInfo, inputConnectionOnCreateInputConnection, this);
        return this.c.l(inputConnectionOnCreateInputConnection, editorInfo);
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
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        pp ppVar = this.b;
        if (ppVar != null) {
            ppVar.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        pp ppVar = this.b;
        if (ppVar != null) {
            ppVar.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(iz1.m(getContext(), i));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.c.n(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.c.i(keyListener));
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
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        pp ppVar = this.b;
        if (ppVar != null) {
            ppVar.g(context, i);
        }
    }
}
