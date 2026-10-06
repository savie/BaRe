package defpackage;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class lo extends EditText implements gt5 {
    public final bn a;
    public final pp b;
    public final ro c;
    public final x18 d;
    public final ib e;
    public ko f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lo(Context context, AttributeSet attributeSet, int i) {
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
        ro roVar = new ro(2);
        roVar.b = this;
        this.c = roVar;
        this.d = new x18();
        ib ibVar = new ib((EditText) this);
        this.e = ibVar;
        ibVar.j(attributeSet, i);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = super.isFocusable();
        boolean zIsClickable = super.isClickable();
        boolean zIsLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener keyListenerI = ibVar.i(keyListener);
        if (keyListenerI == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerI);
        super.setRawInputType(inputType);
        super.setFocusable(zIsFocusable);
        super.setClickable(zIsClickable);
        super.setLongClickable(zIsLongClickable);
    }

    private ko getSuperCaller() {
        if (this.f == null) {
            this.f = new ko(this);
        }
        return this.f;
    }

    @Override // defpackage.gt5
    public final qu1 a(qu1 qu1Var) {
        this.d.getClass();
        return x18.a(this, qu1Var);
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

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        ro roVar;
        if (Build.VERSION.SDK_INT >= 28 || (roVar = this.c) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) roVar.c;
        return textClassifier == null ? jp.a((TextView) roVar.b) : textClassifier;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        String[] strArrG;
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.b.getClass();
        pp.h(editorInfo, inputConnectionOnCreateInputConnection, this);
        zv1.m(editorInfo, inputConnectionOnCreateInputConnection, this);
        if (inputConnectionOnCreateInputConnection != null && Build.VERSION.SDK_INT <= 30 && (strArrG = dl8.g(this)) != null) {
            editorInfo.contentMimeTypes = strArrG;
            inputConnectionOnCreateInputConnection = new kc4(inputConnectionOnCreateInputConnection, new er1(this));
        }
        return this.e.l(inputConnectionOnCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i < 30 || i >= 33) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        boolean zA = false;
        if (Build.VERSION.SDK_INT < 31 && dragEvent.getLocalState() == null && dl8.g(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                Log.i("ReceiveContent", "Can't handle drop: no activity: view=" + this);
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                zA = uo.a(dragEvent, this, activity);
            }
        }
        if (zA) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i) {
        mu1 mu1Var;
        lu1 lu1Var;
        int i2;
        ku1 ku1Var;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 31 || dl8.g(this) == null || !(i == 16908322 || i == 16908337)) {
            return super.onTextContextMenuItem(i);
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            if (i3 >= 31) {
                ku1Var = new ku1(primaryClip, 1);
            } else {
                mu1Var = new mu1();
                mu1Var.a = primaryClip;
                mu1Var.b = 1;
            }
            if (i == 16908322) {
                lu1Var = mu1Var;
                lu1Var = ku1Var;
                i2 = 0;
            } else {
                lu1Var = mu1Var;
                lu1Var = ku1Var;
                i2 = 1;
            }
            lu1Var.b(i2);
            dl8.j(this, lu1Var.build());
        }
        return true;
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

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(k55.K(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.e.n(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.e.i(keyListener));
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

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        ro roVar;
        if (Build.VERSION.SDK_INT >= 28 || (roVar = this.c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            roVar.c = textClassifier;
        }
    }
}
