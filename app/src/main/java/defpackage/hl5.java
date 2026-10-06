package defpackage;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MenuItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hl5 implements wc5 {
    public fl5 a;
    public boolean b;
    public int c;

    @Override // defpackage.wc5
    public final void c(boolean z) {
        cl5 cl5Var;
        pb0 pb0Var;
        if (this.b) {
            return;
        }
        fl5 fl5Var = this.a;
        if (z) {
            fl5Var.a();
            return;
        }
        cl5 cl5Var2 = fl5Var.h0;
        if (cl5Var2 == null || fl5Var.k == null) {
            return;
        }
        fl5Var.g0.b = true;
        cl5Var2.b();
        fl5Var.g0.b = false;
        if (fl5Var.k != null && (cl5Var = fl5Var.h0) != null && cl5Var.b.size() == fl5Var.k.length) {
            for (int i = 0; i < fl5Var.k.length; i++) {
                if (!(fl5Var.h0.a(i) instanceof nn2) || (fl5Var.k[i] instanceof wk5)) {
                    boolean z2 = fl5Var.h0.a(i).hasSubMenu() && !(fl5Var.k[i] instanceof jl5);
                    boolean z3 = (fl5Var.h0.a(i).hasSubMenu() || (fl5Var.k[i] instanceof al5)) ? false : true;
                    if ((fl5Var.h0.a(i) instanceof nn2) || (!z2 && !z3)) {
                    }
                }
            }
            int i2 = fl5Var.n;
            int size = fl5Var.h0.b.size();
            for (int i3 = 0; i3 < size; i3++) {
                MenuItem menuItemA = fl5Var.h0.a(i3);
                if (menuItemA.isChecked()) {
                    fl5Var.setCheckedItem(menuItemA);
                    fl5Var.n = menuItemA.getItemId();
                    fl5Var.p = i3;
                }
            }
            if (i2 != fl5Var.n && (pb0Var = fl5Var.a) != null) {
                da8.a(fl5Var, pb0Var);
            }
            boolean zG = fl5.g(fl5Var.e, fl5Var.getCurrentVisibleContentItemCount());
            for (int i4 = 0; i4 < size; i4++) {
                fl5Var.g0.b = true;
                fl5Var.k[i4].setExpanded(fl5Var.m0);
                dl5 dl5Var = fl5Var.k[i4];
                if (dl5Var instanceof al5) {
                    al5 al5Var = (al5) dl5Var;
                    al5Var.setLabelVisibilityMode(fl5Var.e);
                    al5Var.setItemIconGravity(fl5Var.f);
                    al5Var.setItemGravity(fl5Var.c0);
                    al5Var.setShifting(zG);
                }
                if (fl5Var.h0.a(i4) instanceof ic5) {
                    fl5Var.k[i4].a((ic5) fl5Var.h0.a(i4));
                }
                fl5Var.g0.b = false;
            }
            return;
        }
        fl5Var.a();
    }

    @Override // defpackage.wc5
    public final boolean e(lr7 lr7Var) {
        return false;
    }

    @Override // defpackage.wc5
    public final boolean f() {
        return false;
    }

    @Override // defpackage.wc5
    public final boolean g(ic5 ic5Var) {
        return false;
    }

    @Override // defpackage.wc5
    public final int getId() {
        return this.c;
    }

    @Override // defpackage.wc5
    public final void h(Parcelable parcelable) {
        if (parcelable instanceof gl5) {
            fl5 fl5Var = this.a;
            gl5 gl5Var = (gl5) parcelable;
            int i = gl5Var.a;
            int size = fl5Var.h0.b.size();
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem menuItemA = fl5Var.h0.a(i2);
                if (i == menuItemA.getItemId()) {
                    fl5Var.n = i;
                    fl5Var.p = i2;
                    fl5Var.setCheckedItem(menuItemA);
                    break;
                }
            }
            Context context = this.a.getContext();
            yw5 yw5Var = gl5Var.b;
            SparseArray sparseArray = new SparseArray(yw5Var.size());
            for (int i3 = 0; i3 < yw5Var.size(); i3++) {
                int iKeyAt = yw5Var.keyAt(i3);
                xk0 xk0Var = (xk0) yw5Var.valueAt(i3);
                sparseArray.put(iKeyAt, xk0Var != null ? new wk0(context, xk0Var) : null);
            }
            fl5 fl5Var2 = this.a;
            SparseArray sparseArray2 = fl5Var2.N;
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                int iKeyAt2 = sparseArray.keyAt(i4);
                if (sparseArray2.indexOfKey(iKeyAt2) < 0) {
                    sparseArray2.append(iKeyAt2, (wk0) sparseArray.get(iKeyAt2));
                }
            }
            dl5[] dl5VarArr = fl5Var2.k;
            if (dl5VarArr != null) {
                for (dl5 dl5Var : dl5VarArr) {
                    if (dl5Var instanceof al5) {
                        al5 al5Var = (al5) dl5Var;
                        wk0 wk0Var = (wk0) sparseArray2.get(al5Var.getId());
                        if (wk0Var != null) {
                            al5Var.setBadge(wk0Var);
                        }
                    }
                }
            }
        }
    }

    @Override // defpackage.wc5
    public final boolean j(ic5 ic5Var) {
        return false;
    }

    @Override // defpackage.wc5
    public final void l(Context context, fc5 fc5Var) {
        this.a.b(fc5Var);
    }

    @Override // defpackage.wc5
    public final Parcelable m() {
        gl5 gl5Var = new gl5();
        gl5Var.a = this.a.getSelectedItemId();
        SparseArray<wk0> badgeDrawables = this.a.getBadgeDrawables();
        yw5 yw5Var = new yw5();
        for (int i = 0; i < badgeDrawables.size(); i++) {
            int iKeyAt = badgeDrawables.keyAt(i);
            wk0 wk0VarValueAt = badgeDrawables.valueAt(i);
            yw5Var.put(iKeyAt, wk0VarValueAt != null ? wk0VarValueAt.e.a : null);
        }
        gl5Var.b = yw5Var;
        return gl5Var;
    }

    @Override // defpackage.wc5
    public final void d(fc5 fc5Var, boolean z) {
    }
}
