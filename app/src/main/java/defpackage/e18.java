package defpackage;

import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e18 extends w5 {
    public final TextInputLayout d;

    public e18(TextInputLayout textInputLayout) {
        this.d = textInputLayout;
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        CharSequence charSequence;
        CharSequence charSequence2;
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        TextInputLayout textInputLayout = this.d;
        EditText editText = textInputLayout.getEditText();
        CharSequence text = editText != null ? editText.getText() : null;
        CharSequence hint = textInputLayout.getHint();
        CharSequence helperText = textInputLayout.getHelperText();
        CharSequence error = textInputLayout.getError();
        CharSequence placeholderText = textInputLayout.getPlaceholderText();
        int counterMaxLength = textInputLayout.getCounterMaxLength();
        CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
        boolean zIsEmpty = TextUtils.isEmpty(text);
        boolean zIsEmpty2 = TextUtils.isEmpty(hint);
        boolean z = textInputLayout.N0;
        boolean zIsEmpty3 = TextUtils.isEmpty(error);
        boolean z2 = (zIsEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
        String string = !zIsEmpty2 ? hint.toString() : "";
        if (TextUtils.isEmpty(helperText)) {
            charSequence = error;
            charSequence2 = counterOverflowDescription;
        } else {
            yb4 yb4Var = textInputLayout.r;
            charSequence = error;
            charSequence2 = counterOverflowDescription;
            if (yb4Var.o == 2 && yb4Var.y != null && !TextUtils.isEmpty(yb4Var.w)) {
                if (TextUtils.isEmpty(string)) {
                    string = helperText.toString();
                } else {
                    string = string + ", " + ((Object) helperText);
                }
            }
        }
        wl7 wl7Var = textInputLayout.b;
        tp tpVar = wl7Var.b;
        if (tpVar.getVisibility() == 0) {
            accessibilityNodeInfo.setLabelFor(tpVar);
            accessibilityNodeInfo.setTraversalAfter(tpVar);
        } else {
            accessibilityNodeInfo.setTraversalAfter(wl7Var.d);
        }
        if (!zIsEmpty) {
            m6Var.p(text);
        } else if (!TextUtils.isEmpty(string)) {
            m6Var.p(string);
            if (!z && placeholderText != null) {
                m6Var.p(string + ", " + ((Object) placeholderText));
            }
        } else if (placeholderText != null) {
            m6Var.p(placeholderText);
        }
        if (!TextUtils.isEmpty(string)) {
            accessibilityNodeInfo.setHintText(string);
            accessibilityNodeInfo.setShowingHintText(zIsEmpty);
        }
        if (text == null || text.length() != counterMaxLength) {
            counterMaxLength = -1;
        }
        accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
        if (z2) {
            accessibilityNodeInfo.setError(!zIsEmpty3 ? charSequence : charSequence2);
        }
        textInputLayout.c.a().m(m6Var);
    }

    @Override // defpackage.w5
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        super.e(view, accessibilityEvent);
        this.d.c.a().n(accessibilityEvent);
    }
}
