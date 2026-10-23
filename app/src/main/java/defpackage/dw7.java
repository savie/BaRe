package defpackage;

import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dw7 implements gm8 {
    public final WeakReference a;
    public int b;
    public int c;

    public dw7(TabLayout tabLayout) {
        this.a = new WeakReference(tabLayout);
    }

    @Override // defpackage.gm8
    public final void a(int i) {
        this.b = this.c;
        this.c = i;
        TabLayout tabLayout = (TabLayout) this.a.get();
        if (tabLayout != null) {
            tabLayout.p0 = this.c;
        }
    }

    @Override // defpackage.gm8
    public final void b(int i) {
        TabLayout tabLayout = (TabLayout) this.a.get();
        if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
            return;
        }
        int i2 = this.c;
        tabLayout.k(tabLayout.g(i), i2 == 0 || (i2 == 2 && this.b == 0));
    }

    @Override // defpackage.gm8
    public final void c(int i, float f) {
        TabLayout tabLayout = (TabLayout) this.a.get();
        if (tabLayout != null) {
            int i2 = this.c;
            boolean z = true;
            if (i2 == 2 && this.b != 1) {
                z = false;
            }
            if (i2 == 2 && this.b == 0) {
                z = false;
            }
            tabLayout.m(i, f, z, z, false);
        }
    }
}
