package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lx4 extends BaseAdapter {
    public int a = -1;
    public final /* synthetic */ mx4 b;

    public lx4(mx4 mx4Var) {
        this.b = mx4Var;
        a();
    }

    public final void a() {
        fc5 fc5Var = this.b.c;
        ic5 ic5Var = fc5Var.O;
        if (ic5Var != null) {
            fc5Var.i();
            ArrayList arrayList = fc5Var.q;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((ic5) arrayList.get(i)) == ic5Var) {
                    this.a = i;
                    return;
                }
            }
        }
        this.a = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ic5 getItem(int i) {
        mx4 mx4Var = this.b;
        fc5 fc5Var = mx4Var.c;
        fc5Var.i();
        ArrayList arrayList = fc5Var.q;
        mx4Var.getClass();
        int i2 = this.a;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return (ic5) arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        mx4 mx4Var = this.b;
        fc5 fc5Var = mx4Var.c;
        fc5Var.i();
        int size = fc5Var.q.size();
        mx4Var.getClass();
        return this.a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.b.b.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((yc5) view).a(getItem(i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
