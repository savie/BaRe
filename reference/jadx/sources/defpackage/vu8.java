package defpackage;

import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vu8 extends WindowInsetsAnimation$Callback {
    public final ol1 a;
    public List b;
    public ArrayList c;
    public final HashMap d;

    public vu8(ol1 ol1Var) {
        super(0);
        this.d = new HashMap();
        this.a = ol1Var;
    }

    public final yu8 a(WindowInsetsAnimation windowInsetsAnimation) {
        HashMap map = this.d;
        yu8 yu8Var = (yu8) map.get(windowInsetsAnimation);
        if (yu8Var != null) {
            return yu8Var;
        }
        yu8 yu8Var2 = new yu8(0, null, 0L);
        yu8Var2.a = new wu8(windowInsetsAnimation);
        map.put(windowInsetsAnimation, yu8Var2);
        return yu8Var2;
    }

    public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
        this.a.x(a(windowInsetsAnimation));
        this.d.remove(windowInsetsAnimation);
    }

    public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
        this.a.z(a(windowInsetsAnimation));
    }

    public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
        ArrayList arrayList = this.c;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList(list.size());
            this.c = arrayList2;
            this.b = Collections.unmodifiableList(arrayList2);
        } else {
            arrayList.clear();
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            WindowInsetsAnimation windowInsetsAnimation = (WindowInsetsAnimation) list.get(size);
            yu8 yu8VarA = a(windowInsetsAnimation);
            yu8VarA.a.e(windowInsetsAnimation.getFraction());
            this.c.add(yu8VarA);
        }
        return this.a.A(tv8.h(windowInsets, null), this.b).g();
    }

    public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
        l39 l39VarB = this.a.B(a(windowInsetsAnimation), new l39(bounds));
        l39VarB.getClass();
        uu8.c();
        return uu8.a(((vc4) l39VarB.b).e(), ((vc4) l39VarB.c).e());
    }
}
