package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tk8 implements View.OnApplyWindowInsetsListener {
    public tv8 a = null;
    public final /* synthetic */ View b;
    public final /* synthetic */ ls5 c;

    public tk8(View view, ls5 ls5Var) {
        this.b = view;
        this.c = ls5Var;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        tv8 tv8VarH = tv8.h(windowInsets, view);
        int i = Build.VERSION.SDK_INT;
        ls5 ls5Var = this.c;
        if (i < 30) {
            uk8.a(windowInsets, this.b);
            if (tv8VarH.equals(this.a)) {
                return ls5Var.n(view, tv8VarH).g();
            }
        }
        this.a = tv8VarH;
        tv8 tv8VarN = ls5Var.n(view, tv8VarH);
        if (i >= 30) {
            return tv8VarN.g();
        }
        WeakHashMap weakHashMap = dl8.a;
        view.requestApplyInsets();
        return tv8VarN.g();
    }
}
