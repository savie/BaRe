package defpackage;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a75 implements vk6 {
    @Override // defpackage.vk6
    public final void f(fy3 fy3Var, px7 px7Var) {
        px7Var.getClass();
    }

    @Override // defpackage.vk6
    public final void i(Object obj, Object obj2, px7 px7Var, int i) {
        Object obj3 = (Drawable) obj;
        obj2.getClass();
        if (i == 0) {
            throw null;
        }
        if (obj3 instanceof Animatable) {
            ((Animatable) obj3).start();
        }
    }
}
