package defpackage;

import android.database.Observable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ig6 extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public final void b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            RecyclerView recyclerView = ((xg6) ((Observable) this).mObservers.get(size)).a;
            recyclerView.j(null);
            recyclerView.x0.f = true;
            recyclerView.X(true);
            if (!recyclerView.e.g()) {
                recyclerView.requestLayout();
            }
        }
    }

    public final void c(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            xg6 xg6Var = (xg6) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = xg6Var.a;
            recyclerView.j(null);
            x9 x9Var = recyclerView.e;
            ArrayList arrayList = x9Var.b;
            if (i != i2) {
                arrayList.add(x9Var.h(null, 8, i, i2));
                x9Var.f |= 8;
                if (arrayList.size() == 1) {
                    xg6Var.a();
                }
            }
        }
    }

    public final void d(Object obj, int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            xg6 xg6Var = (xg6) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = xg6Var.a;
            recyclerView.j(null);
            x9 x9Var = recyclerView.e;
            ArrayList arrayList = x9Var.b;
            if (i2 >= 1) {
                arrayList.add(x9Var.h(obj, 4, i, i2));
                x9Var.f = 4 | x9Var.f;
                if (arrayList.size() == 1) {
                    xg6Var.a();
                }
            }
        }
    }

    public final void e(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            xg6 xg6Var = (xg6) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = xg6Var.a;
            recyclerView.j(null);
            x9 x9Var = recyclerView.e;
            ArrayList arrayList = x9Var.b;
            if (i2 >= 1) {
                arrayList.add(x9Var.h(null, 1, i, i2));
                x9Var.f |= 1;
                if (arrayList.size() == 1) {
                    xg6Var.a();
                }
            }
        }
    }

    public final void f(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            xg6 xg6Var = (xg6) ((Observable) this).mObservers.get(size);
            RecyclerView recyclerView = xg6Var.a;
            recyclerView.j(null);
            x9 x9Var = recyclerView.e;
            ArrayList arrayList = x9Var.b;
            if (i2 >= 1) {
                arrayList.add(x9Var.h(null, 2, i, i2));
                x9Var.f |= 2;
                if (arrayList.size() == 1) {
                    xg6Var.a();
                }
            }
        }
    }
}
