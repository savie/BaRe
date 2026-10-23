package defpackage;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y98 implements Cloneable {
    public static final Animator[] S = new Animator[0];
    public static final int[] T = {2, 1, 3, 4};
    public static final b05 U = new b05();
    public static final ThreadLocal V = new ThreadLocal();
    public v98[] G;
    public long Q;
    public long R;
    public ArrayList x;
    public ArrayList y;
    public final String a = getClass().getName();
    public long b = -1;
    public long c = -1;
    public TimeInterpolator d = null;
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public ArrayList k = null;
    public ArrayList n = null;
    public ai5 p = new ai5(7);
    public ai5 q = new ai5(7);
    public ia8 r = null;
    public final int[] t = T;
    public final ArrayList H = new ArrayList();
    public Animator[] I = S;
    public int J = 0;
    public boolean K = false;
    public boolean L = false;
    public y98 M = null;
    public ArrayList N = null;
    public ArrayList O = new ArrayList();
    public b05 P = U;

    public static void c(ai5 ai5Var, View view, la8 la8Var) {
        k50 k50Var = (k50) ai5Var.b;
        k50 k50Var2 = (k50) ai5Var.e;
        SparseArray sparseArray = (SparseArray) ai5Var.c;
        v15 v15Var = (v15) ai5Var.d;
        k50Var.put(view, la8Var);
        int id = view.getId();
        if (id >= 0) {
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap weakHashMap = dl8.a;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            if (k50Var2.containsKey(transitionName)) {
                k50Var2.put(transitionName, null);
            } else {
                k50Var2.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (v15Var.c(itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    v15Var.e(view, itemIdAtPosition);
                    return;
                }
                View view2 = (View) v15Var.b(itemIdAtPosition);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    v15Var.e(null, itemIdAtPosition);
                }
            }
        }
    }

    public static k50 s() {
        ThreadLocal threadLocal = V;
        k50 k50Var = (k50) threadLocal.get();
        if (k50Var != null) {
            return k50Var;
        }
        k50 k50Var2 = new k50(0);
        threadLocal.set(k50Var2);
        return k50Var2;
    }

    public static boolean y(la8 la8Var, la8 la8Var2, String str) {
        Object obj = la8Var.a.get(str);
        Object obj2 = la8Var2.a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public void A(View view) {
        if (this.L) {
            return;
        }
        ArrayList arrayList = this.H;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.I);
        this.I = S;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.pause();
        }
        this.I = animatorArr;
        z(this, w98.C, false);
        this.K = true;
    }

    public void B() {
        k50 k50VarS = s();
        this.Q = 0L;
        int i = 0;
        while (true) {
            int size = this.O.size();
            ArrayList arrayList = this.O;
            if (i >= size) {
                arrayList.clear();
                return;
            }
            Animator animator = (Animator) arrayList.get(i);
            s98 s98Var = (s98) k50VarS.get(animator);
            if (animator != null && s98Var != null) {
                Animator animator2 = s98Var.f;
                long j = this.c;
                if (j >= 0) {
                    animator2.setDuration(j);
                }
                long j2 = this.b;
                if (j2 >= 0) {
                    animator2.setStartDelay(animator2.getStartDelay() + j2);
                }
                TimeInterpolator timeInterpolator = this.d;
                if (timeInterpolator != null) {
                    animator2.setInterpolator(timeInterpolator);
                }
                this.H.add(animator);
                this.Q = Math.max(this.Q, t98.a(animator));
            }
            i++;
        }
    }

    public y98 C(v98 v98Var) {
        y98 y98Var;
        ArrayList arrayList = this.N;
        if (arrayList != null) {
            if (!arrayList.remove(v98Var) && (y98Var = this.M) != null) {
                y98Var.C(v98Var);
            }
            if (this.N.size() == 0) {
                this.N = null;
            }
        }
        return this;
    }

    public void D(View view) {
        if (this.K) {
            if (!this.L) {
                ArrayList arrayList = this.H;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.I);
                this.I = S;
                for (int i = size - 1; i >= 0; i--) {
                    Animator animator = animatorArr[i];
                    animatorArr[i] = null;
                    animator.resume();
                }
                this.I = animatorArr;
                z(this, w98.D, false);
            }
            this.K = false;
        }
    }

    public void E() {
        M();
        k50 k50VarS = s();
        for (Animator animator : this.O) {
            if (k50VarS.containsKey(animator)) {
                M();
                if (animator != null) {
                    int i = 1;
                    animator.addListener(new k44(i, this, k50VarS));
                    long j = this.c;
                    if (j >= 0) {
                        animator.setDuration(j);
                    }
                    long j2 = this.b;
                    if (j2 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.d;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new p71(this, i));
                    animator.start();
                }
            }
        }
        this.O.clear();
        n();
    }

    public void F(long j, long j2) {
        long j3 = this.Q;
        int i = 0;
        boolean z = j < j2;
        if ((j2 < 0 && j >= 0) || (j2 > j3 && j <= j3)) {
            this.L = false;
            z(this, w98.z, z);
        }
        ArrayList arrayList = this.H;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.I);
        this.I = S;
        while (i < size) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            t98.b(animator, Math.min(Math.max(0L, j), t98.a(animator)));
            i++;
            j3 = j3;
        }
        long j4 = j3;
        this.I = animatorArr;
        if ((j <= j4 || j2 > j4) && (j >= 0 || j2 < 0)) {
            return;
        }
        if (j > j4) {
            this.L = true;
        }
        z(this, w98.A, z);
    }

    public void G(long j) {
        this.c = j;
    }

    public void I(TimeInterpolator timeInterpolator) {
        this.d = timeInterpolator;
    }

    public void J(b05 b05Var) {
        if (b05Var == null) {
            this.P = U;
        } else {
            this.P = b05Var;
        }
    }

    public void L(long j) {
        this.b = j;
    }

    public final void M() {
        if (this.J == 0) {
            z(this, w98.z, false);
            this.L = false;
        }
        this.J++;
    }

    public String N(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.c != -1) {
            sb.append("dur(");
            sb.append(this.c);
            sb.append(") ");
        }
        if (this.b != -1) {
            sb.append("dly(");
            sb.append(this.b);
            sb.append(") ");
        }
        if (this.d != null) {
            sb.append("interp(");
            sb.append(this.d);
            sb.append(") ");
        }
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i2));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    public void a(v98 v98Var) {
        if (this.N == null) {
            this.N = new ArrayList();
        }
        this.N.add(v98Var);
    }

    public void b(View view) {
        this.f.add(view);
    }

    public void cancel() {
        ArrayList arrayList = this.H;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.I);
        this.I = S;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.cancel();
        }
        this.I = animatorArr;
        z(this, w98.B, false);
    }

    public abstract void d(la8 la8Var);

    public final void e(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        ArrayList arrayList = this.k;
        if (arrayList == null || !arrayList.contains(view)) {
            ArrayList arrayList2 = this.n;
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    if (((Class) this.n.get(i)).isInstance(view)) {
                        return;
                    }
                }
            }
            if (view.getParent() instanceof ViewGroup) {
                la8 la8Var = new la8(view);
                if (z) {
                    h(la8Var);
                } else {
                    d(la8Var);
                }
                la8Var.c.add(this);
                f(la8Var);
                if (z) {
                    c(this.p, view, la8Var);
                } else {
                    c(this.q, view, la8Var);
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    e(viewGroup.getChildAt(i2), z);
                }
            }
        }
    }

    public abstract void h(la8 la8Var);

    public final void i(ViewGroup viewGroup, boolean z) {
        j(z);
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        if (size <= 0 && arrayList2.size() <= 0) {
            e(viewGroup, z);
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            View viewFindViewById = viewGroup.findViewById(((Integer) arrayList.get(i)).intValue());
            if (viewFindViewById != null) {
                la8 la8Var = new la8(viewFindViewById);
                if (z) {
                    h(la8Var);
                } else {
                    d(la8Var);
                }
                la8Var.c.add(this);
                f(la8Var);
                if (z) {
                    c(this.p, viewFindViewById, la8Var);
                } else {
                    c(this.q, viewFindViewById, la8Var);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = (View) arrayList2.get(i2);
            la8 la8Var2 = new la8(view);
            if (z) {
                h(la8Var2);
            } else {
                d(la8Var2);
            }
            la8Var2.c.add(this);
            f(la8Var2);
            if (z) {
                c(this.p, view, la8Var2);
            } else {
                c(this.q, view, la8Var2);
            }
        }
    }

    public final void j(boolean z) {
        if (z) {
            ((k50) this.p.b).clear();
            ((SparseArray) this.p.c).clear();
            ((v15) this.p.d).a();
        } else {
            ((k50) this.q.b).clear();
            ((SparseArray) this.q.c).clear();
            ((v15) this.q.d).a();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public y98 clone() {
        try {
            y98 y98Var = (y98) super.clone();
            y98Var.O = new ArrayList();
            y98Var.p = new ai5(7);
            y98Var.q = new ai5(7);
            y98Var.x = null;
            y98Var.y = null;
            y98Var.M = this;
            y98Var.N = null;
            return y98Var;
        } catch (CloneNotSupportedException e) {
            y5.k(e);
            return null;
        }
    }

    public Animator l(ViewGroup viewGroup, la8 la8Var, la8 la8Var2) {
        return null;
    }

    public void m(ViewGroup viewGroup, ai5 ai5Var, ai5 ai5Var2, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        int i2;
        View view;
        la8 la8Var;
        Animator animator;
        la8 la8Var2;
        k50 k50VarS = s();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        r().getClass();
        int i3 = 0;
        while (i3 < size) {
            la8 la8Var3 = (la8) arrayList.get(i3);
            la8 la8Var4 = (la8) arrayList2.get(i3);
            if (la8Var3 != null && !la8Var3.c.contains(this)) {
                la8Var3 = null;
            }
            if (la8Var4 != null && !la8Var4.c.contains(this)) {
                la8Var4 = null;
            }
            if ((la8Var3 != null || la8Var4 != null) && (la8Var3 == null || la8Var4 == null || w(la8Var3, la8Var4))) {
                Animator animatorL = l(viewGroup, la8Var3, la8Var4);
                if (animatorL != null) {
                    String str = this.a;
                    if (la8Var4 != null) {
                        view = la8Var4.b;
                        String[] strArrT = t();
                        if (strArrT != null && strArrT.length > 0) {
                            la8Var2 = new la8(view);
                            la8 la8Var5 = (la8) ((k50) ai5Var2.b).get(view);
                            i = size;
                            if (la8Var5 != null) {
                                int i4 = 0;
                                while (i4 < strArrT.length) {
                                    String str2 = strArrT[i4];
                                    int i5 = i3;
                                    la8Var2.a.put(str2, la8Var5.a.get(str2));
                                    i4++;
                                    i3 = i5;
                                    la8Var5 = la8Var5;
                                }
                            }
                            i2 = i3;
                            int i6 = k50VarS.c;
                            int i7 = 0;
                            while (true) {
                                if (i7 >= i6) {
                                    animator = animatorL;
                                    break;
                                }
                                s98 s98Var = (s98) k50VarS.get((Animator) k50VarS.g(i7));
                                if (s98Var.c != null && s98Var.a == view && s98Var.b.equals(str) && s98Var.c.equals(la8Var2)) {
                                    animator = null;
                                    break;
                                }
                                i7++;
                            }
                        } else {
                            i = size;
                            i2 = i3;
                            animator = animatorL;
                            la8Var2 = null;
                        }
                        animatorL = animator;
                        la8Var = la8Var2;
                    } else {
                        i = size;
                        i2 = i3;
                        view = la8Var3.b;
                        la8Var = null;
                    }
                    if (animatorL != null) {
                        WindowId windowId = viewGroup.getWindowId();
                        s98 s98Var2 = new s98();
                        s98Var2.a = view;
                        s98Var2.b = str;
                        s98Var2.c = la8Var;
                        s98Var2.d = windowId;
                        s98Var2.e = this;
                        s98Var2.f = animatorL;
                        k50VarS.put(animatorL, s98Var2);
                        this.O.add(animatorL);
                    }
                }
                i3 = i2 + 1;
                size = i;
            }
            i = size;
            i2 = i3;
            i3 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i8 = 0; i8 < sparseIntArray.size(); i8++) {
                s98 s98Var3 = (s98) k50VarS.get((Animator) this.O.get(sparseIntArray.keyAt(i8)));
                s98Var3.f.setStartDelay(s98Var3.f.getStartDelay() + (((long) sparseIntArray.valueAt(i8)) - Long.MAX_VALUE));
            }
        }
    }

    public final void n() {
        int i = this.J - 1;
        this.J = i;
        if (i == 0) {
            z(this, w98.A, false);
            for (int i2 = 0; i2 < ((v15) this.p.d).f(); i2++) {
                View view = (View) ((v15) this.p.d).h(i2);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i3 = 0; i3 < ((v15) this.q.d).f(); i3++) {
                View view2 = (View) ((v15) this.q.d).h(i3);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.L = true;
        }
    }

    public y98 o(View view) {
        ArrayList arrayList = this.k;
        if (view != null) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (!arrayList.contains(view)) {
                arrayList.add(view);
            }
        }
        this.k = arrayList;
        return this;
    }

    public void p() {
        ArrayList arrayList = this.n;
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        if (!arrayList.contains(TextView.class)) {
            arrayList.add(TextView.class);
        }
        this.n = arrayList;
    }

    public final la8 q(View view, boolean z) {
        ia8 ia8Var = this.r;
        if (ia8Var != null) {
            return ia8Var.q(view, z);
        }
        ArrayList arrayList = z ? this.x : this.y;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            la8 la8Var = (la8) arrayList.get(i);
            if (la8Var == null) {
                return null;
            }
            if (la8Var.b == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return (la8) (z ? this.y : this.x).get(i);
        }
        return null;
    }

    public final y98 r() {
        ia8 ia8Var = this.r;
        return ia8Var != null ? ia8Var.r() : this;
    }

    public String[] t() {
        return null;
    }

    public final String toString() {
        return N("");
    }

    public final la8 u(View view, boolean z) {
        ia8 ia8Var = this.r;
        if (ia8Var != null) {
            return ia8Var.u(view, z);
        }
        return (la8) ((k50) (z ? this.p : this.q).b).get(view);
    }

    public boolean v() {
        return !this.H.isEmpty();
    }

    public boolean w(la8 la8Var, la8 la8Var2) {
        if (la8Var != null && la8Var2 != null) {
            String[] strArrT = t();
            if (strArrT != null) {
                for (String str : strArrT) {
                    if (y(la8Var, la8Var2, str)) {
                        return true;
                    }
                }
            } else {
                Iterator it = la8Var.a.keySet().iterator();
                while (it.hasNext()) {
                    if (y(la8Var, la8Var2, (String) it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean x(View view) {
        int id = view.getId();
        ArrayList arrayList = this.k;
        if (arrayList != null && arrayList.contains(view)) {
            return false;
        }
        ArrayList arrayList2 = this.n;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                if (((Class) this.n.get(i)).isInstance(view)) {
                    return false;
                }
            }
        }
        ArrayList arrayList3 = this.e;
        int size2 = arrayList3.size();
        ArrayList arrayList4 = this.f;
        return (size2 == 0 && arrayList4.size() == 0) || arrayList3.contains(Integer.valueOf(id)) || arrayList4.contains(view);
    }

    public final void z(y98 y98Var, w98 w98Var, boolean z) {
        y98 y98Var2 = this.M;
        if (y98Var2 != null) {
            y98Var2.z(y98Var, w98Var, z);
        }
        ArrayList arrayList = this.N;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.N.size();
        v98[] v98VarArr = this.G;
        if (v98VarArr == null) {
            v98VarArr = new v98[size];
        }
        this.G = null;
        v98[] v98VarArr2 = (v98[]) this.N.toArray(v98VarArr);
        for (int i = 0; i < size; i++) {
            w98Var.a(v98VarArr2[i], y98Var, z);
            v98VarArr2[i] = null;
        }
        this.G = v98VarArr2;
    }

    public void K() {
    }

    public void H(w13 w13Var) {
    }

    public void f(la8 la8Var) {
    }
}
