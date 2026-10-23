package defpackage;

import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class da8 {
    public static final pb0 a = new pb0();
    public static final ThreadLocal b = new ThreadLocal();
    public static final ArrayList c = new ArrayList();

    public static void a(ViewGroup viewGroup, y98 y98Var) {
        ArrayList arrayList = c;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        arrayList.add(viewGroup);
        if (y98Var == null) {
            y98Var = a;
        }
        y98 y98VarClone = y98Var.clone();
        ArrayList arrayList2 = (ArrayList) b().get(viewGroup);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((y98) it.next()).A(viewGroup);
            }
        }
        y98VarClone.i(viewGroup, true);
        if (viewGroup.getTag(R.id.transition_current_scene) != null) {
            e6.d();
            return;
        }
        viewGroup.setTag(R.id.transition_current_scene, null);
        ca8 ca8Var = new ca8();
        ca8Var.a = y98VarClone;
        ca8Var.b = viewGroup;
        viewGroup.addOnAttachStateChangeListener(ca8Var);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(ca8Var);
    }

    public static k50 b() {
        k50 k50Var;
        ThreadLocal threadLocal = b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (k50Var = (k50) weakReference.get()) != null) {
            return k50Var;
        }
        k50 k50Var2 = new k50(0);
        threadLocal.set(new WeakReference(k50Var2));
        return k50Var2;
    }
}
