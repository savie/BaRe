package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jo {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    public static jo c;
    public yl6 a;

    public static synchronized jo a() {
        try {
            if (c == null) {
                d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public static synchronized PorterDuffColorFilter c(int i, PorterDuff.Mode mode) {
        return yl6.f(i, mode);
    }

    public static synchronized void d() {
        if (c == null) {
            jo joVar = new jo();
            c = joVar;
            joVar.a = yl6.c();
            yl6 yl6Var = c.a;
            io ioVar = new io();
            synchronized (yl6Var) {
                yl6Var.e = ioVar;
            }
        }
    }

    public static void e(Drawable drawable, n48 n48Var, int[] iArr) {
        PorterDuff.Mode mode = yl6.f;
        int[] state = drawable.getState();
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z = n48Var.d;
        if (!z && !n48Var.c) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilterF = null;
        ColorStateList colorStateList = z ? n48Var.a : null;
        PorterDuff.Mode mode2 = n48Var.c ? n48Var.b : yl6.f;
        if (colorStateList != null && mode2 != null) {
            porterDuffColorFilterF = yl6.f(colorStateList.getColorForState(iArr, 0), mode2);
        }
        drawable.setColorFilter(porterDuffColorFilterF);
    }

    public final synchronized Drawable b(Context context, int i) {
        return this.a.d(context, i);
    }
}
