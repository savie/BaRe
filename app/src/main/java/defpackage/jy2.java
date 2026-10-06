package defpackage;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import com.yubico.yubikit.android.ui.YubiKeyPromptActivity;
import java.util.Map;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jy2 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ jy2(Map.Entry entry, gy2 gy2Var) {
        this.a = 0;
        this.b = entry;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((Map.Entry) obj).getKey().getClass();
                throw new ClassCastException();
            case 1:
                hf7 hf7Var = (hf7) obj;
                hf7Var.b = false;
                SideSheetBehavior sideSheetBehavior = hf7Var.d;
                gl8 gl8Var = sideSheetBehavior.i;
                if (gl8Var != null && gl8Var.g()) {
                    hf7Var.a(hf7Var.a);
                    return;
                } else {
                    if (sideSheetBehavior.h == 2) {
                        sideSheetBehavior.x(hf7Var.a);
                        return;
                    }
                    return;
                }
            case 2:
                int[] iArr = SwipeRefreshLayout.f0;
                ((SwipeRefreshLayout) obj).l();
                return;
            case 3:
                ((TextInputLayout) obj).e.requestLayout();
                return;
            case 4:
                View view = (View) obj;
                ((InputMethodManager) view.getContext().getSystemService(InputMethodManager.class)).showSoftInput(view, 1);
                return;
            default:
                ((YubiKeyPromptActivity) obj).k.setText(R.string.yubikit_prompt_wait);
                return;
        }
    }

    public /* synthetic */ jy2(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
