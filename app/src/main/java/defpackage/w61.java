package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import com.google.android.material.timepicker.ChipTextInputComboView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w61 extends w5 {
    public final /* synthetic */ ChipTextInputComboView d;

    public w61(ChipTextInputComboView chipTextInputComboView) {
        this.d = chipTextInputComboView;
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        m6Var.p(((EditText) view).getText());
        accessibilityNodeInfo.setHintText(this.d.f.getText());
        accessibilityNodeInfo.setMaxTextLength(2);
    }
}
