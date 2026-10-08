package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cc5 extends BaseAdapter {
    public final fc5 a;
    public int b = -1;
    public boolean c;
    public final boolean d;
    public final LayoutInflater e;
    public final int f;

    public cc5(fc5 fc5Var, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.a = fc5Var;
        this.f = i;
        a();
    }

    public final void a() {
        fc5 fc5Var = this.a;
        ic5 ic5Var = fc5Var.O;
        if (ic5Var != null) {
            fc5Var.i();
            ArrayList arrayList = fc5Var.q;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((ic5) arrayList.get(i)) == ic5Var) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ic5 getItem(int i) {
        ArrayList arrayListL;
        boolean z = this.d;
        fc5 fc5Var = this.a;
        if (z) {
            fc5Var.i();
            arrayListL = fc5Var.q;
        } else {
            arrayListL = fc5Var.l();
        }
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (ic5) arrayListL.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        boolean z = this.d;
        fc5 fc5Var = this.a;
        if (z) {
            fc5Var.i();
            arrayListL = fc5Var.q;
        } else {
            arrayListL = fc5Var.l();
        }
        return this.b < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        boolean z = false;
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int i2 = getItem(i).b;
        int i3 = i - 1;
        int i4 = i3 >= 0 ? getItem(i3).b : i2;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.a.m() && i2 != i4) {
            z = true;
        }
        listMenuItemView.setGroupDividerEnabled(z);
        yc5 yc5Var = (yc5) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        yc5Var.a(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
