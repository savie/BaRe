package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nk8 extends a65 {
    @Override // defpackage.a65
    public final Object d(View view) {
        return Boolean.valueOf(yk8.c(view));
    }

    @Override // defpackage.a65
    public final void e(View view, Object obj) {
        yk8.f(view, ((Boolean) obj).booleanValue());
    }

    @Override // defpackage.a65
    public final boolean h(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        Boolean bool2 = (Boolean) obj2;
        return !((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
    }
}
