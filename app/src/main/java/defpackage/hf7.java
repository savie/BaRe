package defpackage;

import android.view.View;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hf7 {
    public int a;
    public boolean b;
    public final jy2 c = new jy2(this, 1);
    public final /* synthetic */ SideSheetBehavior d;

    public hf7(SideSheetBehavior sideSheetBehavior) {
        this.d = sideSheetBehavior;
    }

    public final void a(int i) {
        SideSheetBehavior sideSheetBehavior = this.d;
        WeakReference weakReference = sideSheetBehavior.p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a = i;
        if (this.b) {
            return;
        }
        ((View) sideSheetBehavior.p.get()).postOnAnimation(this.c);
        this.b = true;
    }
}
