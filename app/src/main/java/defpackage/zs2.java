package defpackage;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zs2 extends q34 {
    @Override // defpackage.q34
    public final void s(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float fSin;
        float fCos;
        RectF rectFQ = q34.q(tabLayout, view);
        RectF rectFQ2 = q34.q(tabLayout, view2);
        if (rectFQ.left < rectFQ2.left) {
            double d = (((double) f) * 3.141592653589793d) / 2.0d;
            fSin = (float) (1.0d - Math.cos(d));
            fCos = (float) Math.sin(d);
        } else {
            double d2 = (((double) f) * 3.141592653589793d) / 2.0d;
            fSin = (float) Math.sin(d2);
            fCos = (float) (1.0d - Math.cos(d2));
        }
        drawable.setBounds(ed.c(fSin, (int) rectFQ.left, (int) rectFQ2.left), drawable.getBounds().top, ed.c(fCos, (int) rectFQ.right, (int) rectFQ2.right), drawable.getBounds().bottom);
    }
}
