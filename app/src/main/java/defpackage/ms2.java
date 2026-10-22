package defpackage;

import android.content.res.Resources;
import android.view.View;
import android.view.Window;
import com.microsoft.identity.common.internal.ui.DualScreenActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ms2 implements Runnable {
    public final /* synthetic */ ps2 a;
    public final /* synthetic */ mv7 b;
    public final /* synthetic */ mv7 c;
    public final /* synthetic */ DualScreenActivity d;
    public final /* synthetic */ View e;

    public /* synthetic */ ms2(ps2 ps2Var, mv7 mv7Var, mv7 mv7Var2, DualScreenActivity dualScreenActivity, View view) {
        this.a = ps2Var;
        this.b = mv7Var;
        this.c = mv7Var2;
        this.d = dualScreenActivity;
        this.e = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Window window = this.d.getWindow();
        window.getClass();
        mv7 mv7Var = this.b;
        mt3 mt3Var = mv7Var.d;
        View view = this.e;
        Resources resources = view.getResources();
        resources.getClass();
        boolean zBooleanValue = ((Boolean) mt3Var.invoke(resources)).booleanValue();
        mv7 mv7Var2 = this.c;
        mt3 mt3Var2 = mv7Var2.d;
        Resources resources2 = view.getResources();
        resources2.getClass();
        this.a.b(mv7Var, mv7Var2, window, view, zBooleanValue, ((Boolean) mt3Var2.invoke(resources2)).booleanValue());
    }
}
