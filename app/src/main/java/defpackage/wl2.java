package defpackage;

import android.content.Context;
import android.content.res.Resources;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wl2 implements ch5 {
    public final Context a;
    public final vl2 b;

    public wl2(Context context, vl2 vl2Var) {
        this.a = context.getApplicationContext();
        this.b = vl2Var;
    }

    @Override // defpackage.ch5
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // defpackage.ch5
    public final bh5 b(Object obj, int i, int i2, ou5 ou5Var) {
        Integer num = (Integer) obj;
        Resources.Theme theme = (Resources.Theme) ou5Var.c(sl6.b);
        return new bh5(new nr5(num), new ul2(theme, theme != null ? theme.getResources() : this.a.getResources(), this.b, num.intValue()));
    }
}
