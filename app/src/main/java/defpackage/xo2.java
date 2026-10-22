package defpackage;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class xo2 implements ll6, dc4 {
    public final Drawable a;

    public xo2(Drawable drawable) {
        ms8.j(drawable, "Argument must not be null");
        this.a = drawable;
    }

    public void a() {
        Drawable drawable = this.a;
        if (drawable instanceof BitmapDrawable) {
            ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
        } else if (drawable instanceof fx3) {
            ((fx3) drawable).a.a.l.prepareToDraw();
        }
    }

    @Override // defpackage.ll6
    public final Object get() {
        Drawable drawable = this.a;
        Drawable.ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }
}
