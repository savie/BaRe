package defpackage;

import android.content.Context;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a18 {
    public float c;
    public float d;
    public final WeakReference f;
    public u08 g;
    public final TextPaint a = new TextPaint(1);
    public final y08 b = new y08(this);
    public boolean e = true;

    public a18(z08 z08Var) {
        this.f = new WeakReference(null);
        this.f = new WeakReference(z08Var);
    }

    public final float a(String str) {
        if (!this.e) {
            return this.c;
        }
        b(str);
        return this.c;
    }

    public final void b(String str) {
        TextPaint textPaint = this.a;
        this.c = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        this.d = str != null ? Math.abs(textPaint.getFontMetrics().ascent) : 0.0f;
        this.e = false;
    }

    public final void c(u08 u08Var, Context context) {
        if (this.g != u08Var) {
            this.g = u08Var;
            WeakReference weakReference = this.f;
            if (u08Var != null) {
                TextPaint textPaint = this.a;
                y08 y08Var = this.b;
                u08Var.e(context, textPaint, y08Var);
                z08 z08Var = (z08) weakReference.get();
                if (z08Var != null) {
                    textPaint.drawableState = z08Var.getState();
                }
                u08Var.d(context, textPaint, y08Var);
                this.e = true;
            }
            z08 z08Var2 = (z08) weakReference.get();
            if (z08Var2 != null) {
                z08Var2.a();
                z08Var2.onStateChange(z08Var2.getState());
            }
        }
    }
}
