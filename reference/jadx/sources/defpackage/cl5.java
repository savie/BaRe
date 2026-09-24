package defpackage;

import android.view.MenuItem;
import android.view.SubMenu;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cl5 {
    public final fc5 a;
    public int c = 0;
    public int d = 0;
    public int e = 0;
    public final ArrayList b = new ArrayList();

    public cl5(fc5 fc5Var) {
        this.a = fc5Var;
        b();
    }

    public final MenuItem a(int i) {
        return (MenuItem) this.b.get(i);
    }

    public final void b() {
        ArrayList arrayList = this.b;
        arrayList.clear();
        this.c = 0;
        this.d = 0;
        this.e = 0;
        int i = 0;
        while (true) {
            fc5 fc5Var = this.a;
            if (i >= fc5Var.f.size()) {
                break;
            }
            MenuItem item = fc5Var.getItem(i);
            if (item.hasSubMenu()) {
                if (!arrayList.isEmpty() && !(dj7.e(arrayList, 1) instanceof nn2) && item.isVisible()) {
                    arrayList.add(new nn2());
                }
                arrayList.add(item);
                SubMenu subMenu = item.getSubMenu();
                for (int i2 = 0; i2 < subMenu.size(); i2++) {
                    MenuItem item2 = subMenu.getItem(i2);
                    if (!item.isVisible()) {
                        item2.setVisible(false);
                    }
                    arrayList.add(item2);
                    this.c++;
                    if (item2.isVisible()) {
                        this.d++;
                    }
                }
                arrayList.add(new nn2());
            } else {
                arrayList.add(item);
                this.c++;
                if (item.isVisible()) {
                    this.d++;
                    this.e++;
                }
            }
            i++;
        }
        if (arrayList.isEmpty() || !(dj7.e(arrayList, 1) instanceof nn2)) {
            return;
        }
        arrayList.remove(arrayList.size() - 1);
    }
}
