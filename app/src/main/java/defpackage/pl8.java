package defpackage;

import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class pl8 {
    public static int a(ViewGroup viewGroup, int i) {
        return viewGroup.getChildDrawingOrder(i);
    }

    public static void b(ViewGroup viewGroup, boolean z) {
        viewGroup.suppressLayout(z);
    }
}
