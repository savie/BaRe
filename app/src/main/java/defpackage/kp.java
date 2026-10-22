package defpackage;

import android.graphics.Typeface;
import android.os.Build;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kp extends g67 {
    public final /* synthetic */ int k;
    public final /* synthetic */ int n;
    public final /* synthetic */ WeakReference p;
    public final /* synthetic */ pp q;

    public kp(pp ppVar, int i, int i2, WeakReference weakReference) {
        this.q = ppVar;
        this.k = i;
        this.n = i2;
        this.p = weakReference;
    }

    @Override // defpackage.g67
    public final void y(Typeface typeface) {
        int i;
        if (Build.VERSION.SDK_INT >= 28 && (i = this.k) != -1) {
            typeface = op.a(typeface, i, (this.n & 2) != 0);
        }
        pp ppVar = this.q;
        if (ppVar.m) {
            ppVar.l = typeface;
            TextView textView = (TextView) this.p.get();
            if (textView != null) {
                boolean zIsAttachedToWindow = textView.isAttachedToWindow();
                int i2 = ppVar.j;
                if (zIsAttachedToWindow) {
                    textView.post(new lp(textView, typeface, i2));
                } else {
                    textView.setTypeface(typeface, i2);
                }
            }
        }
    }

    @Override // defpackage.g67
    public final void x(int i) {
    }
}
