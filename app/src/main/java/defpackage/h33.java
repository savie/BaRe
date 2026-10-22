package defpackage;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h33 extends q34 {
    @Override // defpackage.q34
    public final void s(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        if (f >= 0.5f) {
            view = view2;
        }
        RectF rectFQ = q34.q(tabLayout, view);
        float fB = f < 0.5f ? ed.b(1.0f, 0.0f, 0.0f, 0.5f, f) : ed.b(0.0f, 1.0f, 0.5f, 1.0f, f);
        drawable.setBounds((int) rectFQ.left, drawable.getBounds().top, (int) rectFQ.right, drawable.getBounds().bottom);
        drawable.setAlpha((int) (fB * 255.0f));
    }
}
