package defpackage;

import android.animation.Animator;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowId;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ca8 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    public y98 a;
    public ViewGroup b;

    /* JADX WARN: Code duplicated, block: B:100:0x0209  */
    /* JADX WARN: Code duplicated, block: B:102:0x0217  */
    /* JADX WARN: Code duplicated, block: B:103:0x0223  */
    /* JADX WARN: Code duplicated, block: B:107:0x0235  */
    /* JADX WARN: Code duplicated, block: B:134:0x01e1 A[EDGE_INSN: B:134:0x01e1->B:90:0x01e1 BREAK  A[LOOP:1: B:19:0x0085->B:89:0x01da], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x004c  */
    /* JADX WARN: Code duplicated, block: B:164:0x0201 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x0056 A[LOOP:0: B:15:0x0050->B:17:0x0056, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x008a  */
    /* JADX WARN: Code duplicated, block: B:23:0x008e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0091  */
    /* JADX WARN: Code duplicated, block: B:27:0x0094  */
    /* JADX WARN: Code duplicated, block: B:30:0x009b  */
    /* JADX WARN: Code duplicated, block: B:32:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:49:0x010c  */
    /* JADX WARN: Code duplicated, block: B:62:0x014f  */
    /* JADX WARN: Code duplicated, block: B:64:0x015e  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:79:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:93:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:95:0x01f6  */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ArrayList arrayList;
        int i;
        ai5 ai5Var;
        ai5 ai5Var2;
        k50 k50Var;
        k50 k50Var2;
        int i2;
        int[] iArr;
        boolean z;
        int i3;
        int i4;
        k50 k50VarS;
        int i5;
        Animator animator;
        s98 s98Var;
        la8 la8Var;
        la8 la8Var2;
        int i6;
        boolean z2;
        int i7;
        View view;
        la8 la8Var3;
        k50 k50Var3;
        int i8;
        int i9;
        View view2;
        View view3;
        SparseArray sparseArray;
        int size;
        int i10;
        View view4;
        View view5;
        v15 v15Var;
        int iF;
        int i11;
        View view6;
        boolean z3;
        Iterator it;
        y98 y98Var = this.a;
        ViewGroup viewGroup = this.b;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        boolean z4 = true;
        if (!da8.c.remove(viewGroup)) {
            return true;
        }
        k50 k50VarB = da8.b();
        ArrayList arrayList2 = (ArrayList) k50VarB.get(viewGroup);
        if (arrayList2 != null) {
            arrayList = arrayList2.size() > 0 ? new ArrayList(arrayList2) : null;
            arrayList2.add(y98Var);
            y98Var.a(new ba8(this, k50VarB));
            i = 0;
            y98Var.i(viewGroup, false);
            if (arrayList != null) {
                it = arrayList.iterator();
                while (it.hasNext()) {
                    ((y98) it.next()).D(viewGroup);
                }
            }
            y98Var.x = new ArrayList();
            y98Var.y = new ArrayList();
            ai5Var = y98Var.p;
            ai5Var2 = y98Var.q;
            k50Var = new k50((k50) ai5Var.b);
            k50Var2 = new k50((k50) ai5Var2.b);
            i2 = 0;
            while (true) {
                iArr = y98Var.t;
                if (i2 < iArr.length) {
                    break;
                }
                i6 = iArr[i2];
                if (i6 != z4) {
                    z2 = z4;
                    for (i7 = k50Var.c - 1; i7 >= 0; i7--) {
                        view = (View) k50Var.g(i7);
                        if (view == null && y98Var.x(view) && (la8Var3 = (la8) k50Var2.remove(view)) != null && y98Var.x(la8Var3.b)) {
                            y98Var.x.add((la8) k50Var.i(i7));
                            y98Var.y.add(la8Var3);
                        }
                    }
                } else if (i6 != 2) {
                    z2 = z4;
                    k50Var3 = (k50) ai5Var.e;
                    k50 k50Var4 = (k50) ai5Var2.e;
                    i8 = k50Var3.c;
                    for (i9 = 0; i9 < i8; i9++) {
                        view2 = (View) k50Var3.k(i9);
                        if (view2 == null && y98Var.x(view2) && (view3 = (View) k50Var4.get(k50Var3.g(i9))) != null && y98Var.x(view3)) {
                            la8 la8Var4 = (la8) k50Var.get(view2);
                            la8 la8Var5 = (la8) k50Var2.get(view3);
                            if (la8Var4 != null && la8Var5 != null) {
                                y98Var.x.add(la8Var4);
                                y98Var.y.add(la8Var5);
                                k50Var.remove(view2);
                                k50Var2.remove(view3);
                            }
                        }
                    }
                } else if (i6 != 3) {
                    if (i6 == 4) {
                        v15Var = (v15) ai5Var.d;
                        v15 v15Var2 = (v15) ai5Var2.d;
                        iF = v15Var.f();
                        i11 = i;
                        while (i11 < iF) {
                            view6 = (View) v15Var.h(i11);
                            if (view6 == null && y98Var.x(view6)) {
                                boolean z5 = z4;
                                View view7 = (View) v15Var2.b(v15Var.d(i11));
                                if (view7 == null || !y98Var.x(view7)) {
                                    z3 = z5;
                                } else {
                                    la8 la8Var6 = (la8) k50Var.get(view6);
                                    la8 la8Var7 = (la8) k50Var2.get(view7);
                                    if (la8Var6 == null || la8Var7 == null) {
                                        z3 = z5;
                                    } else {
                                        z3 = z5;
                                        y98Var.x.add(la8Var6);
                                        y98Var.y.add(la8Var7);
                                        k50Var.remove(view6);
                                        k50Var2.remove(view7);
                                    }
                                }
                            } else {
                                z3 = z4;
                            }
                            i11++;
                            z4 = z3;
                        }
                    }
                    z2 = z4;
                } else {
                    z2 = z4;
                    sparseArray = (SparseArray) ai5Var.c;
                    SparseArray sparseArray2 = (SparseArray) ai5Var2.c;
                    size = sparseArray.size();
                    for (i10 = 0; i10 < size; i10++) {
                        view4 = (View) sparseArray.valueAt(i10);
                        if (view4 == null && y98Var.x(view4) && (view5 = (View) sparseArray2.get(sparseArray.keyAt(i10))) != null && y98Var.x(view5)) {
                            la8 la8Var8 = (la8) k50Var.get(view4);
                            la8 la8Var9 = (la8) k50Var2.get(view5);
                            if (la8Var8 != null && la8Var9 != null) {
                                y98Var.x.add(la8Var8);
                                y98Var.y.add(la8Var9);
                                k50Var.remove(view4);
                                k50Var2.remove(view5);
                            }
                        }
                    }
                }
                i2++;
                z4 = z2;
                i = 0;
            }
            z = z4;
            for (i3 = 0; i3 < k50Var.c; i3++) {
                la8Var2 = (la8) k50Var.k(i3);
                if (y98Var.x(la8Var2.b)) {
                    y98Var.x.add(la8Var2);
                    y98Var.y.add(null);
                }
            }
            for (i4 = 0; i4 < k50Var2.c; i4++) {
                la8Var = (la8) k50Var2.k(i4);
                if (y98Var.x(la8Var.b)) {
                    y98Var.y.add(la8Var);
                    y98Var.x.add(null);
                }
            }
            k50VarS = y98.s();
            int i12 = k50VarS.c;
            WindowId windowId = viewGroup.getWindowId();
            i5 = i12 - 1;
            while (i5 >= 0) {
                animator = (Animator) k50VarS.g(i5);
                if (animator == null && (s98Var = (s98) k50VarS.get(animator)) != null) {
                    y98 y98Var2 = s98Var.e;
                    View view8 = s98Var.a;
                    if (view8 != null && windowId.equals(s98Var.d)) {
                        la8 la8Var10 = s98Var.c;
                        boolean z6 = z;
                        la8 la8VarU = y98Var.u(view8, z6);
                        la8 la8VarQ = y98Var.q(view8, z6);
                        if (la8VarU == null && la8VarQ == null) {
                            la8VarQ = (la8) ((k50) y98Var.q.b).get(view8);
                        }
                        if ((la8VarU != null || la8VarQ != null) && y98Var2.w(la8Var10, la8VarQ)) {
                            y98Var2.r().getClass();
                            if (animator.isRunning() || animator.isStarted()) {
                                animator.cancel();
                            } else {
                                k50VarS.remove(animator);
                            }
                        }
                    }
                }
                i5--;
                z = true;
            }
            y98Var.m(viewGroup, y98Var.p, y98Var.q, y98Var.x, y98Var.y);
            y98Var.E();
            return true;
        }
        arrayList2 = new ArrayList();
        k50VarB.put(viewGroup, arrayList2);
        arrayList2.add(y98Var);
        y98Var.a(new ba8(this, k50VarB));
        i = 0;
        y98Var.i(viewGroup, false);
        if (arrayList != null) {
            it = arrayList.iterator();
            while (it.hasNext()) {
                ((y98) it.next()).D(viewGroup);
            }
        }
        y98Var.x = new ArrayList();
        y98Var.y = new ArrayList();
        ai5Var = y98Var.p;
        ai5Var2 = y98Var.q;
        k50Var = new k50((k50) ai5Var.b);
        k50Var2 = new k50((k50) ai5Var2.b);
        i2 = 0;
        while (true) {
            iArr = y98Var.t;
            if (i2 < iArr.length) {
                break;
                break;
            }
            i6 = iArr[i2];
            if (i6 != z4) {
                z2 = z4;
                while (i7 >= 0) {
                    view = (View) k50Var.g(i7);
                    if (view == null) {
                    }
                }
            } else if (i6 != 2) {
                z2 = z4;
                k50Var3 = (k50) ai5Var.e;
                k50 k50Var5 = (k50) ai5Var2.e;
                i8 = k50Var3.c;
                while (i9 < i8) {
                    view2 = (View) k50Var3.k(i9);
                    if (view2 == null) {
                    }
                }
            } else if (i6 != 3) {
                if (i6 == 4) {
                    v15Var = (v15) ai5Var.d;
                    v15 v15Var3 = (v15) ai5Var2.d;
                    iF = v15Var.f();
                    i11 = i;
                    while (i11 < iF) {
                        view6 = (View) v15Var.h(i11);
                        if (view6 == null) {
                            z3 = z4;
                        } else {
                            z3 = z4;
                        }
                        i11++;
                        z4 = z3;
                    }
                }
                z2 = z4;
            } else {
                z2 = z4;
                sparseArray = (SparseArray) ai5Var.c;
                SparseArray sparseArray3 = (SparseArray) ai5Var2.c;
                size = sparseArray.size();
                while (i10 < size) {
                    view4 = (View) sparseArray.valueAt(i10);
                    if (view4 == null) {
                    }
                }
            }
            i2++;
            z4 = z2;
            i = 0;
        }
        z = z4;
        while (i3 < k50Var.c) {
            la8Var2 = (la8) k50Var.k(i3);
            if (y98Var.x(la8Var2.b)) {
                y98Var.x.add(la8Var2);
                y98Var.y.add(null);
            }
        }
        while (i4 < k50Var2.c) {
            la8Var = (la8) k50Var2.k(i4);
            if (y98Var.x(la8Var.b)) {
                y98Var.y.add(la8Var);
                y98Var.x.add(null);
            }
        }
        k50VarS = y98.s();
        int i13 = k50VarS.c;
        WindowId windowId2 = viewGroup.getWindowId();
        i5 = i13 - 1;
        while (i5 >= 0) {
            animator = (Animator) k50VarS.g(i5);
            if (animator == null) {
            }
            i5--;
            z = true;
        }
        y98Var.m(viewGroup, y98Var.p, y98Var.q, y98Var.x, y98Var.y);
        y98Var.E();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewGroup viewGroup = this.b;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        da8.c.remove(viewGroup);
        ArrayList arrayList = (ArrayList) da8.b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((y98) it.next()).D(viewGroup);
            }
        }
        this.a.j(true);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
