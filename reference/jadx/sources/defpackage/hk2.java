package defpackage;

import android.view.View;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hk2 implements yv7 {
    public final /* synthetic */ ArrayList a;
    public final /* synthetic */ qt3 b;
    public final /* synthetic */ gm1 c;
    public final /* synthetic */ mt3 d;

    public hk2(ArrayList arrayList, qt3 qt3Var, gm1 gm1Var, mt3 mt3Var) {
        this.a = arrayList;
        this.b = qt3Var;
        this.c = gm1Var;
        this.d = mt3Var;
    }

    @Override // defpackage.xv7
    public final void a(cw7 cw7Var) {
        cw7Var.getClass();
    }

    @Override // defpackage.xv7
    public final void b(cw7 cw7Var) {
        cw7Var.getClass();
        for (Object obj : el1.Q0(this.a)) {
            if (pe4.d(((gk2) obj).d, cw7Var.a)) {
                if (obj == null) {
                    y5.l(cw7Var.a, "Unable to find TabData with tag: ");
                    return;
                }
                this.b.invoke(cw7Var, (gk2) obj);
                this.c.e = cw7Var.a;
                return;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @Override // defpackage.xv7
    public final void c(cw7 cw7Var) {
        View view;
        cw7Var.getClass();
        this.d.invoke(cw7Var);
        gm1 gm1Var = this.c;
        TabLayout tabLayout = (TabLayout) gm1Var.a;
        if (tabLayout.getTabCount() != 0) {
            int tabCount = tabLayout.getTabCount();
            for (int i = 0; i < tabCount; i++) {
                cw7 cw7VarG = tabLayout.g(i);
                if (cw7VarG != null && (view = cw7VarG.d) != null) {
                    TabLayout tabLayout2 = cw7VarG.e;
                    if (tabLayout2 == null) {
                        c6.f("Tab not attached to a TabLayout");
                        return;
                    } else {
                        int selectedTabPosition = tabLayout2.getSelectedTabPosition();
                        view.setAlpha((selectedTabPosition == -1 || selectedTabPosition != cw7VarG.c) ? 0.7f : 1.0f);
                    }
                }
            }
        }
        gm1Var.e = cw7Var.a;
    }
}
