package defpackage;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.Window;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o88 extends nc8 {
    public final r88 e;
    public final Window.Callback f;
    public final tr9 g;
    public boolean h;
    public boolean i;
    public boolean j;
    public final ArrayList k = new ArrayList();
    public final ib0 l = new ib0(this, 10);

    public o88(Toolbar toolbar, CharSequence charSequence, xn xnVar) {
        vk9 vk9Var = new vk9(this, 18);
        toolbar.getClass();
        r88 r88Var = new r88(toolbar, false);
        this.e = r88Var;
        xnVar.getClass();
        this.f = xnVar;
        r88Var.k = xnVar;
        toolbar.setOnMenuItemClickListener(vk9Var);
        if (!r88Var.g) {
            r88Var.h = charSequence;
            if ((r88Var.b & 8) != 0) {
                toolbar.setTitle(charSequence);
                if (r88Var.g) {
                    dl8.o(toolbar.getRootView(), charSequence);
                }
            }
        }
        this.g = new tr9(this, 19);
    }

    @Override // defpackage.nc8
    public final int B() {
        return this.e.b;
    }

    @Override // defpackage.nc8
    public final Context C() {
        return this.e.a.getContext();
    }

    @Override // defpackage.nc8
    public final boolean F() {
        r88 r88Var = this.e;
        Toolbar toolbar = r88Var.a;
        ib0 ib0Var = this.l;
        toolbar.removeCallbacks(ib0Var);
        Toolbar toolbar2 = r88Var.a;
        WeakHashMap weakHashMap = dl8.a;
        toolbar2.postOnAnimation(ib0Var);
        return true;
    }

    @Override // defpackage.nc8
    public final void O() {
        this.e.a.removeCallbacks(this.l);
    }

    @Override // defpackage.nc8
    public final boolean Q(int i, KeyEvent keyEvent) {
        Menu menuX0 = x0();
        if (menuX0 == null) {
            return false;
        }
        menuX0.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
        return menuX0.performShortcut(i, keyEvent, 0);
    }

    @Override // defpackage.nc8
    public final boolean S(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            U();
        }
        return true;
    }

    @Override // defpackage.nc8
    public final boolean U() {
        return this.e.a.u();
    }

    @Override // defpackage.nc8
    public final void Z(boolean z) {
        y0(4, 4);
    }

    @Override // defpackage.nc8
    public final void a0() {
        y0(2, 2);
    }

    @Override // defpackage.nc8
    public final void b0(boolean z) {
        y0(z ? 8 : 0, 8);
    }

    @Override // defpackage.nc8
    public final void d0(CharSequence charSequence) {
        this.e.b(charSequence);
    }

    @Override // defpackage.nc8
    public final void e0(int i) {
        r88 r88Var = this.e;
        CharSequence text = i != 0 ? r88Var.a.getContext().getText(i) : null;
        r88Var.g = true;
        Toolbar toolbar = r88Var.a;
        r88Var.h = text;
        if ((r88Var.b & 8) != 0) {
            toolbar.setTitle(text);
            if (r88Var.g) {
                dl8.o(toolbar.getRootView(), text);
            }
        }
    }

    @Override // defpackage.nc8
    public final void f0(CharSequence charSequence) {
        r88 r88Var = this.e;
        r88Var.g = true;
        Toolbar toolbar = r88Var.a;
        r88Var.h = charSequence;
        if ((r88Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (r88Var.g) {
                dl8.o(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // defpackage.nc8
    public final void g0(CharSequence charSequence) {
        r88 r88Var = this.e;
        if (r88Var.g) {
            return;
        }
        Toolbar toolbar = r88Var.a;
        r88Var.h = charSequence;
        if ((r88Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (r88Var.g) {
                dl8.o(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // defpackage.nc8
    public final boolean i() {
        o8 o8Var;
        ActionMenuView actionMenuView = this.e.a.a;
        return (actionMenuView == null || (o8Var = actionMenuView.L) == null || !o8Var.b()) ? false : true;
    }

    @Override // defpackage.nc8
    public final boolean l() {
        ic5 ic5Var;
        k88 k88Var = this.e.a.h0;
        if (k88Var == null || (ic5Var = k88Var.b) == null) {
            return false;
        }
        if (k88Var == null) {
            ic5Var = null;
        }
        if (ic5Var == null) {
            return true;
        }
        ic5Var.collapseActionView();
        return true;
    }

    @Override // defpackage.nc8
    public final void v(boolean z) {
        if (z == this.j) {
            return;
        }
        this.j = z;
        ArrayList arrayList = this.k;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        e6.d();
    }

    public final Menu x0() {
        boolean z = this.i;
        r88 r88Var = this.e;
        if (!z) {
            rc6 rc6Var = new rc6(this);
            nh nhVar = new nh(this, 17);
            Toolbar toolbar = r88Var.a;
            toolbar.i0 = rc6Var;
            toolbar.j0 = nhVar;
            ActionMenuView actionMenuView = toolbar.a;
            if (actionMenuView != null) {
                actionMenuView.M = rc6Var;
                actionMenuView.N = nhVar;
            }
            this.i = true;
        }
        return r88Var.a.getMenu();
    }

    public final void y0(int i, int i2) {
        r88 r88Var = this.e;
        r88Var.a((i & i2) | ((~i2) & r88Var.b));
    }

    @Override // defpackage.nc8
    public final void N() {
    }

    @Override // defpackage.nc8
    public final void Y(boolean z) {
    }

    @Override // defpackage.nc8
    public final void c0(boolean z) {
    }
}
