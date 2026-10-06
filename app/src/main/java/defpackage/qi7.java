package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Button;
import com.google.android.material.snackbar.SnackbarContentLayout;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qi7 extends fo0 {
    public static final int[] B = {R.attr.snackbarButtonStyle, R.attr.snackbarTextViewStyle};
    public boolean A;
    public final AccessibilityManager z;

    public qi7(Context context, ViewGroup viewGroup, SnackbarContentLayout snackbarContentLayout, SnackbarContentLayout snackbarContentLayout2) {
        super(context, viewGroup, snackbarContentLayout, snackbarContentLayout2);
        this.z = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    public final void h(View.OnClickListener onClickListener) {
        CharSequence text = this.h.getText(R.string.ok);
        Button actionView = ((SnackbarContentLayout) this.i.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(text)) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            this.A = false;
        } else {
            this.A = true;
            actionView.setVisibility(0);
            actionView.setText(text);
            actionView.setOnClickListener(new qi(3, this, onClickListener));
        }
    }

    public final void i() {
        int recommendedTimeoutMillis;
        e38 e38VarD = e38.d();
        AccessibilityManager accessibilityManager = this.z;
        int i = Build.VERSION.SDK_INT;
        boolean z = this.A;
        boolean z2 = false;
        if (i >= 29) {
            recommendedTimeoutMillis = accessibilityManager.getRecommendedTimeoutMillis(0, (z ? 4 : 0) | 3);
        } else {
            recommendedTimeoutMillis = (z && accessibilityManager.isTouchExplorationEnabled()) ? -2 : 0;
        }
        ao0 ao0Var = this.s;
        synchronized (e38VarD.b) {
            try {
                if (e38VarD.e(ao0Var)) {
                    ri7 ri7Var = (ri7) e38VarD.d;
                    ri7Var.b = recommendedTimeoutMillis;
                    ((Handler) e38VarD.c).removeCallbacksAndMessages(ri7Var);
                    e38VarD.h((ri7) e38VarD.d);
                    return;
                }
                ri7 ri7Var2 = (ri7) e38VarD.e;
                if (ri7Var2 != null && ri7Var2.a.get() == ao0Var) {
                    z2 = true;
                }
                if (z2) {
                    ((ri7) e38VarD.e).b = recommendedTimeoutMillis;
                } else {
                    e38VarD.e = new ri7(recommendedTimeoutMillis, ao0Var);
                }
                ri7 ri7Var3 = (ri7) e38VarD.d;
                if (ri7Var3 == null || !e38VarD.b(ri7Var3, 4)) {
                    e38VarD.d = null;
                    e38VarD.i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
