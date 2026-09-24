package androidx.fragment.app;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
import defpackage.ds3;
import defpackage.f6;
import defpackage.ow5;
import defpackage.ur3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b0 extends ow5 {
    public final ur3 b;
    public boolean f;
    public a d = null;
    public o e = null;
    public final int c = 1;

    public b0(ur3 ur3Var) {
        this.b = ur3Var;
    }

    @Override // defpackage.ow5
    public final void a(Object obj) {
        o oVar = (o) obj;
        if (this.d == null) {
            ur3 ur3Var = this.b;
            ur3Var.getClass();
            this.d = new a(ur3Var);
        }
        a aVar = this.d;
        aVar.getClass();
        z zVar = oVar.mFragmentManager;
        if (zVar != null && zVar != aVar.r) {
            throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + oVar.toString() + " is already attached to a FragmentManager.");
        }
        aVar.b(new ds3(6, oVar));
        if (oVar != this.e) {
            return;
        }
        this.e = null;
    }

    @Override // defpackage.ow5
    public final void b() {
        a aVar = this.d;
        if (aVar != null) {
            if (!this.f) {
                try {
                    this.f = true;
                    if (aVar.g) {
                        throw new IllegalStateException("This transaction is already being added to the back stack");
                    }
                    aVar.h = false;
                    aVar.r.A(aVar, true);
                    this.f = false;
                } catch (Throwable th) {
                    this.f = false;
                    throw th;
                }
            }
            this.d = null;
        }
    }

    @Override // defpackage.ow5
    public final boolean e(View view, Object obj) {
        return ((o) obj).mView == view;
    }

    @Override // defpackage.ow5
    public final void f(ViewPager viewPager) {
        if (viewPager.getId() != -1) {
            return;
        }
        f6.o(this, " requires a view id", "ViewPager with adapter ");
    }

    public abstract o g(int i);
}
