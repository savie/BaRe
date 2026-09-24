package defpackage;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ly3 extends k72 {
    public final p60 d;
    public final /* synthetic */ my3 e;

    public ly3(my3 my3Var, p60 p60Var) {
        this.e = my3Var;
        this.d = p60Var;
    }

    @Override // defpackage.px7
    public final void b(Object obj, x98 x98Var) {
        Drawable drawable = (Drawable) obj;
        HashMap map = this.e.N;
        p60 p60Var = this.d;
        if (map.remove(p60Var) == null || p60Var.getCallback() == null) {
            return;
        }
        if (drawable.getBounds().isEmpty()) {
            drawable.setBounds(new Rect(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()));
        }
        p60Var.d(drawable);
    }

    @Override // defpackage.k72, defpackage.px7
    public final void g(Drawable drawable) {
        HashMap map = this.e.N;
        p60 p60Var = this.d;
        if (map.remove(p60Var) == null || drawable == null || p60Var.getCallback() == null) {
            return;
        }
        if (drawable.getBounds().isEmpty()) {
            drawable.setBounds(new Rect(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()));
        }
        p60Var.d(drawable);
    }

    @Override // defpackage.k72, defpackage.px7
    public final void j(Drawable drawable) {
        if (drawable != null) {
            p60 p60Var = this.d;
            if (p60Var.getCallback() != null) {
                if (drawable.getBounds().isEmpty()) {
                    drawable.setBounds(new Rect(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight()));
                }
                p60Var.d(drawable);
            }
        }
    }

    @Override // defpackage.px7
    public final void l(Drawable drawable) {
        Drawable drawable2;
        p60 p60Var = this.d;
        if (p60Var.getCallback() == null || (drawable2 = p60Var.f) == null) {
            return;
        }
        drawable2.setCallback(null);
        p60Var.f = null;
        p60Var.setBounds(0, 0, 0, 0);
    }
}
