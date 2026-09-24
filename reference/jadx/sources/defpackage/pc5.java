package defpackage;

import android.view.View;
import android.widget.PopupWindow;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pc5 implements PopupWindow.OnDismissListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ pc5(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((qc5) obj).c();
                break;
            default:
                bb bbVar = (bb) ((l90) obj).f;
                if (bbVar != null) {
                    View view = (View) bbVar.b;
                    MaterialButton materialButton = view instanceof MaterialButton ? (MaterialButton) view : null;
                    if (materialButton != null) {
                        materialButton.setChecked(false);
                    }
                }
                break;
        }
    }
}
