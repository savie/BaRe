package defpackage;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class vk8 {
    public static tv8 a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        tv8 tv8VarH = tv8.h(rootWindowInsets, null);
        qv8 qv8Var = tv8VarH.a;
        qv8Var.v(tv8VarH);
        View rootView = view.getRootView();
        qv8Var.d(rootView);
        qv8Var.o(rootView);
        qv8Var.p();
        return tv8VarH;
    }
}
