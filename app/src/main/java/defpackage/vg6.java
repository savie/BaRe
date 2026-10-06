package defpackage;

import android.os.Trace;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vg6 {
    public int a;
    public int b;
    public final Object c;
    public Object d;
    public Object e;
    public Object f;
    public Object g;
    public Object h;

    public vg6(RecyclerView recyclerView) {
        this.h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        this.d = null;
        this.e = new ArrayList();
        this.f = Collections.unmodifiableList(arrayList);
        this.a = 2;
        this.b = 2;
    }

    public void a(fh6 fh6Var, boolean z) {
        RecyclerView.k(fh6Var);
        View view = fh6Var.a;
        RecyclerView recyclerView = (RecyclerView) this.h;
        hh6 hh6Var = recyclerView.E0;
        if (hh6Var != null) {
            w5 w5VarJ = hh6Var.j();
            dl8.n(view, w5VarJ instanceof gh6 ? (w5) ((gh6) w5VarJ).e.remove(view) : null);
        }
        if (z) {
            ArrayList arrayList = recyclerView.G;
            if (arrayList.size() > 0) {
                arrayList.get(0).getClass();
                e6.d();
                return;
            }
            if (recyclerView.x0 != null) {
                recyclerView.k.g(fh6Var);
            }
            if (RecyclerView.T0) {
                Log.d("RecyclerView", "dispatchViewRecycled: " + fh6Var);
            }
        }
        fh6Var.s = null;
        fh6Var.r = null;
        ug6 ug6VarC = c();
        ug6VarC.getClass();
        int i = fh6Var.f;
        ArrayList arrayList2 = ug6VarC.a(i).a;
        if (((tg6) ug6VarC.a.get(i)).b <= arrayList2.size()) {
            ji8.d(view);
        } else if (RecyclerView.S0 && arrayList2.contains(fh6Var)) {
            c6.f("this scrap item already exists");
        } else {
            fh6Var.n();
            arrayList2.add(fh6Var);
        }
    }

    public int b(int i) {
        RecyclerView recyclerView = (RecyclerView) this.h;
        bh6 bh6Var = recyclerView.x0;
        if (i >= 0 && i < bh6Var.b()) {
            return !bh6Var.g ? i : recyclerView.e.f(i, 0);
        }
        StringBuilder sbR = dj7.r(i, "invalid position ", ". State item count is ");
        sbR.append(bh6Var.b());
        sbR.append(recyclerView.A());
        throw new IndexOutOfBoundsException(sbR.toString());
    }

    public ug6 c() {
        if (((ug6) this.g) == null) {
            ug6 ug6Var = new ug6();
            ug6Var.a = new SparseArray();
            ug6Var.b = 0;
            ug6Var.c = Collections.newSetFromMap(new IdentityHashMap());
            this.g = ug6Var;
            e();
        }
        return (ug6) this.g;
    }

    public View d(int i) {
        return l(i, Long.MAX_VALUE).a;
    }

    public void e() {
        RecyclerView recyclerView;
        hg6 hg6Var;
        ug6 ug6Var = (ug6) this.g;
        if (ug6Var == null || (hg6Var = (recyclerView = (RecyclerView) this.h).x) == null || !recyclerView.K) {
            return;
        }
        ug6Var.c.add(hg6Var);
    }

    public void f(hg6 hg6Var, boolean z) {
        ug6 ug6Var = (ug6) this.g;
        if (ug6Var != null) {
            SparseArray sparseArray = ug6Var.a;
            Set set = ug6Var.c;
            set.remove(hg6Var);
            if (set.size() != 0 || z) {
                return;
            }
            for (int i = 0; i < sparseArray.size(); i++) {
                ArrayList arrayList = ((tg6) sparseArray.get(sparseArray.keyAt(i))).a;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ji8.d(((fh6) arrayList.get(i2)).a);
                }
            }
        }
    }

    public void g() {
        ArrayList arrayList = (ArrayList) this.e;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            h(size);
        }
        arrayList.clear();
        if (RecyclerView.X0) {
            ru3 ru3Var = ((RecyclerView) this.h).w0;
            int[] iArr = (int[]) ru3Var.e;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            ru3Var.d = 0;
        }
    }

    public void h(int i) {
        ArrayList arrayList = (ArrayList) this.e;
        if (RecyclerView.T0) {
            Log.d("RecyclerView", "Recycling cached view at index " + i);
        }
        fh6 fh6Var = (fh6) arrayList.get(i);
        if (RecyclerView.T0) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + fh6Var);
        }
        a(fh6Var, true);
        arrayList.remove(i);
    }

    public void i(View view) {
        RecyclerView recyclerView = (RecyclerView) this.h;
        fh6 fh6VarL = RecyclerView.L(view);
        if (fh6VarL.k()) {
            recyclerView.removeDetachedView(view, false);
        }
        if (fh6VarL.j()) {
            fh6VarL.n.m(fh6VarL);
        } else if (fh6VarL.q()) {
            fh6VarL.j &= -33;
        }
        j(fh6VarL);
        if (recyclerView.g0 == null || fh6VarL.h()) {
            return;
        }
        recyclerView.g0.d(fh6VarL);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0038  */
    /* JADX WARN: Code duplicated, block: B:48:0x009b  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:55:0x00bb A[LOOP:2: B:51:0x00ae->B:55:0x00bb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:84:0x00be A[EDGE_INSN: B:84:0x00be->B:56:0x00be BREAK  A[LOOP:1: B:47:0x0099->B:54:0x00b8], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00be A[EDGE_INSN: B:85:0x00be->B:56:0x00be BREAK  A[LOOP:1: B:47:0x0099->B:54:0x00b8, LOOP_LABEL: LOOP:1: B:47:0x0099->B:54:0x00b8], SYNTHETIC] */
    public void j(fh6 fh6Var) {
        boolean z;
        boolean z2;
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList = (ArrayList) this.e;
        RecyclerView recyclerView = (RecyclerView) this.h;
        ru3 ru3Var = recyclerView.w0;
        boolean zJ = fh6Var.j();
        View view = fh6Var.a;
        boolean z3 = false;
        boolean z4 = true;
        if (zJ || view.getParent() != null) {
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(fh6Var.j());
            sb.append(" isAttached:");
            sb.append(view.getParent() != null);
            sb.append(recyclerView.A());
            throw new IllegalArgumentException(sb.toString());
        }
        if (fh6Var.k()) {
            StringBuilder sb2 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
            sb2.append(fh6Var);
            m0.i(sb2, recyclerView.A());
            return;
        }
        if (fh6Var.p()) {
            c6.f("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.".concat(recyclerView.A()));
            return;
        }
        if ((fh6Var.j & 16) == 0) {
            WeakHashMap weakHashMap = dl8.a;
            if (view.hasTransientState()) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (RecyclerView.S0 && arrayList.contains(fh6Var)) {
            StringBuilder sb3 = new StringBuilder("cached view received recycle internal? ");
            sb3.append(fh6Var);
            m0.i(sb3, recyclerView.A());
            return;
        }
        if (fh6Var.h()) {
            if (this.b <= 0 || (fh6Var.j & 526) != 0) {
                z2 = false;
            } else {
                int size = arrayList.size();
                if (size >= this.b && size > 0) {
                    h(0);
                    size--;
                }
                if (RecyclerView.X0 && size > 0) {
                    int i5 = fh6Var.c;
                    if (((int[]) ru3Var.e) != null) {
                        int i6 = ru3Var.d * 2;
                        int i7 = 0;
                        while (true) {
                            if (i7 >= i6) {
                                i = size - 1;
                                loop1: while (i >= 0) {
                                    i2 = ((fh6) arrayList.get(i)).c;
                                    if (((int[]) ru3Var.e) != null) {
                                        break;
                                    }
                                    i3 = ru3Var.d * 2;
                                    i4 = 0;
                                    while (true) {
                                        if (i4 < i3) {
                                            break loop1;
                                        } else if (((int[]) ru3Var.e)[i4] == i2) {
                                            break;
                                        } else {
                                            i4 += 2;
                                        }
                                    }
                                    i--;
                                }
                                size = i + 1;
                            } else if (((int[]) ru3Var.e)[i7] != i5) {
                                i7 += 2;
                            }
                        }
                    } else {
                        i = size - 1;
                        loop1: while (i >= 0) {
                            i2 = ((fh6) arrayList.get(i)).c;
                            if (((int[]) ru3Var.e) != null) {
                                break;
                                break;
                            }
                            i3 = ru3Var.d * 2;
                            i4 = 0;
                            while (true) {
                                if (i4 < i3) {
                                    break loop1;
                                    break loop1;
                                } else if (((int[]) ru3Var.e)[i4] == i2) {
                                    break;
                                } else {
                                    i4 += 2;
                                }
                            }
                            i--;
                        }
                        size = i + 1;
                    }
                }
                arrayList.add(size, fh6Var);
                z2 = true;
            }
            if (z2) {
                z4 = false;
            } else {
                a(fh6Var, true);
            }
            z3 = z2;
        } else {
            if (RecyclerView.T0) {
                Log.d("RecyclerView", "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists".concat(recyclerView.A()));
            }
            z4 = false;
        }
        recyclerView.k.g(fh6Var);
        if (z3 || z4 || !z) {
            return;
        }
        ji8.d(view);
        fh6Var.s = null;
        fh6Var.r = null;
    }

    public void k(View view) {
        ng6 ng6Var;
        RecyclerView recyclerView = (RecyclerView) this.h;
        fh6 fh6VarL = RecyclerView.L(view);
        if ((fh6VarL.j & 12) == 0 && fh6VarL.l() && (ng6Var = recyclerView.g0) != null) {
            cf2 cf2Var = (cf2) ng6Var;
            if (fh6VarL.d().isEmpty() && cf2Var.g && !fh6VarL.g()) {
                if (((ArrayList) this.d) == null) {
                    this.d = new ArrayList();
                }
                fh6VarL.n = this;
                fh6VarL.o = true;
                ((ArrayList) this.d).add(fh6VarL);
                return;
            }
        }
        if (fh6VarL.g() && !fh6VarL.i() && !recyclerView.x.b) {
            c6.f("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.".concat(recyclerView.A()));
            return;
        }
        fh6VarL.n = this;
        fh6VarL.o = false;
        ((ArrayList) this.c).add(fh6VarL);
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0203  */
    /* JADX WARN: Code duplicated, block: B:195:0x0385 A[EDGE_INSN: B:195:0x0385->B:196:0x0386 BREAK  A[LOOP:3: B:190:0x036d->B:194:0x0382]] */
    /* JADX WARN: Code duplicated, block: B:276:0x04e8  */
    /* JADX WARN: Code duplicated, block: B:278:0x04ee  */
    /* JADX WARN: Code duplicated, block: B:279:0x04fc  */
    /* JADX WARN: Code duplicated, block: B:282:0x0506  */
    /* JADX WARN: Code duplicated, block: B:283:0x0509  */
    /* JADX WARN: Code duplicated, block: B:285:0x050c  */
    /* JADX WARN: Code duplicated, block: B:287:0x0514  */
    /* JADX WARN: Code duplicated, block: B:290:0x0528  */
    /* JADX WARN: Code duplicated, block: B:291:0x053c  */
    /* JADX WARN: Code duplicated, block: B:294:0x0544  */
    /* JADX WARN: Code duplicated, block: B:309:0x059f  */
    /* JADX WARN: Code duplicated, block: B:311:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:314:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:317:0x05bf  */
    /* JADX WARN: Code duplicated, block: B:321:0x05d9  */
    /* JADX WARN: Code duplicated, block: B:345:0x062a  */
    /* JADX WARN: Code duplicated, block: B:348:0x062f  */
    /* JADX WARN: Code duplicated, block: B:352:0x0638  */
    /* JADX WARN: Code duplicated, block: B:353:0x0642  */
    /* JADX WARN: Code duplicated, block: B:355:0x0648  */
    /* JADX WARN: Code duplicated, block: B:356:0x0652  */
    /* JADX WARN: Code duplicated, block: B:361:0x065c  */
    /* JADX WARN: Code duplicated, block: B:36:0x0095 A[EDGE_INSN: B:36:0x0095->B:37:0x0099 BREAK  A[LOOP:0: B:14:0x0030->B:20:0x004f]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public fh6 l(int i, long j) {
        View view;
        boolean z;
        boolean z2;
        fh6 fh6Var;
        fh6 fh6Var2;
        fh6 fh6VarJ;
        long j2;
        boolean z3;
        hg6 hg6Var;
        boolean z4;
        long j3;
        long nanoTime;
        long j4;
        AccessibilityManager accessibilityManager;
        boolean z5;
        boolean z6;
        ArrayList arrayList;
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        qg6 qg6Var;
        boolean z7;
        String str;
        fh6 fh6Var3;
        String str2;
        RecyclerView recyclerViewF;
        fh6 fh6Var4;
        fh6 fh6Var5;
        fh6 fh6Var6;
        fh6 fh6Var7;
        View view2;
        fh6 fh6Var8;
        fh6 fh6Var9;
        fh6 fh6Var10;
        boolean z8;
        View view3;
        fh6 fh6Var11;
        int size;
        int iF;
        ArrayList arrayList2 = (ArrayList) this.c;
        ArrayList arrayList3 = (ArrayList) this.e;
        RecyclerView recyclerView = (RecyclerView) this.h;
        bh6 bh6Var = recyclerView.x0;
        if (i < 0 || i >= bh6Var.b()) {
            StringBuilder sbN = xs1.n("Invalid item position ", i, "(", "). Item count:", i);
            sbN.append(bh6Var.b());
            sbN.append(recyclerView.A());
            throw new IndexOutOfBoundsException(sbN.toString());
        }
        if (bh6Var.g) {
            ArrayList arrayList4 = (ArrayList) this.d;
            if (arrayList4 != null && (size = arrayList4.size()) != 0) {
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        if (recyclerView.x.b && (iF = recyclerView.e.f(i, 0)) > 0 && iF < recyclerView.x.b()) {
                            long jC = recyclerView.x.c(iF);
                            int i3 = 0;
                            while (true) {
                                if (i3 >= size) {
                                    view3 = null;
                                    z = true;
                                    fh6Var11 = null;
                                    break;
                                }
                                fh6 fh6Var12 = (fh6) ((ArrayList) this.d).get(i3);
                                if (!fh6Var12.q()) {
                                    view3 = null;
                                    z = true;
                                    if (fh6Var12.e == jC) {
                                        fh6Var12.a(32);
                                        fh6Var11 = fh6Var12;
                                        break;
                                    }
                                }
                                i3++;
                            }
                        } else {
                            view3 = null;
                            z = true;
                            fh6Var11 = null;
                            break;
                        }
                    } else {
                        fh6 fh6Var13 = (fh6) ((ArrayList) this.d).get(i2);
                        if (!fh6Var13.q() && fh6Var13.c() == i) {
                            fh6Var13.a(32);
                            view3 = null;
                            z = true;
                            fh6Var11 = fh6Var13;
                            break;
                        }
                        i2++;
                    }
                }
            } else {
                view3 = null;
                z = true;
                fh6Var11 = null;
                break;
            }
            if (fh6Var11 != null) {
                z2 = z;
                fh6Var = fh6Var11;
                view = view3;
            } else {
                z2 = false;
                fh6Var = fh6Var11;
                view = view3;
            }
        } else {
            view = null;
            z = true;
            z2 = false;
            fh6Var = null;
        }
        String str3 = "RecyclerView";
        if (fh6Var == null) {
            int size2 = arrayList2.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size2) {
                    ArrayList arrayList5 = recyclerView.f.c;
                    int size3 = arrayList5.size();
                    int i5 = 0;
                    View view4 = view;
                    while (true) {
                        if (i5 >= size3) {
                            fh6Var7 = view4;
                            view2 = view4;
                            break;
                        }
                        View view5 = (View) arrayList5.get(i5);
                        fh6 fh6VarL = RecyclerView.L(view5);
                        View view6 = view4;
                        if (fh6VarL.c() == i && !fh6VarL.g() && !fh6VarL.i()) {
                            view2 = view5;
                            fh6Var7 = view6;
                            break;
                        }
                        i5++;
                        view4 = view6;
                    }
                    if (view2 == null) {
                        int size4 = arrayList3.size();
                        int i6 = 0;
                        while (true) {
                            if (i6 >= size4) {
                                fh6Var8 = fh6Var7;
                                fh6Var10 = fh6Var7;
                                break;
                            }
                            fh6Var9 = (fh6) arrayList3.get(i6);
                            if (!fh6Var9.g() && fh6Var9.c() == i && !fh6Var9.e()) {
                                arrayList3.remove(i6);
                                fh6Var8 = fh6Var9;
                                fh6Var10 = fh6Var7;
                                if (!RecyclerView.T0) {
                                    break;
                                }
                                Log.d("RecyclerView", "getScrapOrHiddenOrCachedHolderForPosition(" + i + ") found match in cache: " + fh6Var9);
                                break;
                            }
                            i6++;
                        }
                    } else {
                        fh6 fh6VarL2 = RecyclerView.L(view2);
                        j61 j61Var = recyclerView.f;
                        i61 i61Var = j61Var.b;
                        int iIndexOfChild = ((RecyclerView) j61Var.a.a).indexOfChild(view2);
                        if (iIndexOfChild < 0) {
                            g84.k(view2, "view is not a child, cannot hide ");
                            return fh6Var7;
                        }
                        if (!i61Var.d(iIndexOfChild)) {
                            c6.l(view2, "trying to unhide a view that was not hidden");
                            return fh6Var7;
                        }
                        i61Var.a(iIndexOfChild);
                        j61Var.k(view2);
                        j61 j61Var2 = recyclerView.f;
                        i61 i61Var2 = j61Var2.b;
                        int iIndexOfChild2 = ((RecyclerView) j61Var2.a.a).indexOfChild(view2);
                        int iB = (iIndexOfChild2 == -1 || i61Var2.d(iIndexOfChild2)) ? -1 : iIndexOfChild2 - i61Var2.b(iIndexOfChild2);
                        if (iB == -1) {
                            StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
                            sb.append(fh6VarL2);
                            f6.l(sb, recyclerView.A());
                            return fh6Var7;
                        }
                        recyclerView.f.c(iB);
                        k(view2);
                        fh6VarL2.a(8224);
                        fh6Var8 = fh6VarL2;
                        break;
                    }
                } else {
                    fh6 fh6Var14 = (fh6) arrayList2.get(i4);
                    if (!fh6Var14.q() && fh6Var14.c() == i && !fh6Var14.g() && (bh6Var.g || !fh6Var14.i())) {
                        fh6Var14.a(32);
                        fh6Var10 = view;
                        fh6Var8 = fh6Var14;
                        break;
                    }
                    i4++;
                }
            }
            if (fh6Var8 != null) {
                fh6Var8 = fh6Var9;
                fh6Var10 = fh6Var7;
                fh6Var10 = fh6Var7;
                if (!fh6Var8.i()) {
                    int i7 = fh6Var8.c;
                    if (i7 < 0 || i7 >= recyclerView.x.b()) {
                        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + fh6Var8 + recyclerView.A());
                    }
                    if (bh6Var.g || recyclerView.x.d(fh6Var8.c) == fh6Var8.f) {
                        hg6 hg6Var2 = recyclerView.x;
                        if (!hg6Var2.b || fh6Var8.e == hg6Var2.c(fh6Var8.c)) {
                            z8 = z;
                        } else {
                            z8 = false;
                        }
                    } else {
                        z8 = false;
                    }
                } else {
                    if (RecyclerView.S0 && !bh6Var.g) {
                        l0.e("should not receive a removed view unless it is pre layout".concat(recyclerView.A()));
                        return fh6Var10;
                    }
                    z8 = bh6Var.g;
                }
                if (z8) {
                    fh6VarJ = fh6Var8;
                    z2 = z;
                    fh6Var2 = fh6Var10;
                } else {
                    fh6Var8.a(4);
                    if (fh6Var8.j()) {
                        recyclerView.removeDetachedView(fh6Var8.a, false);
                        fh6Var8.n.m(fh6Var8);
                    } else if (fh6Var8.q()) {
                        fh6Var8.j &= -33;
                    }
                    j(fh6Var8);
                    fh6VarJ = fh6Var10;
                    fh6Var2 = fh6Var10;
                }
            } else {
                fh6Var8 = fh6Var9;
                fh6Var10 = fh6Var7;
                fh6Var10 = fh6Var7;
                fh6VarJ = fh6Var8;
                fh6Var2 = fh6Var10;
            }
        } else {
            fh6Var2 = view;
            fh6VarJ = fh6Var;
        }
        if (fh6VarJ == null) {
            int iF2 = recyclerView.e.f(i, 0);
            if (iF2 < 0 || iF2 >= recyclerView.x.b()) {
                StringBuilder sbN2 = xs1.n("Inconsistency detected. Invalid item position ", i, "(offset:", ").state:", iF2);
                sbN2.append(bh6Var.b());
                sbN2.append(recyclerView.A());
                throw new IndexOutOfBoundsException(sbN2.toString());
            }
            int iD = recyclerView.x.d(iF2);
            hg6 hg6Var3 = recyclerView.x;
            j2 = 3;
            if (hg6Var3.b) {
                long jC2 = hg6Var3.c(iF2);
                int size5 = arrayList2.size() - 1;
                while (true) {
                    if (size5 < 0) {
                        fh6Var5 = fh6Var2;
                        str = str3;
                        int size6 = arrayList3.size() - 1;
                        while (true) {
                            if (size6 >= 0) {
                                fh6Var6 = (fh6) arrayList3.get(size6);
                                long j5 = jC2;
                                if (fh6Var6.e != j5 || fh6Var6.e()) {
                                    size6--;
                                    jC2 = j5;
                                } else {
                                    if (iD == fh6Var6.f) {
                                        arrayList3.remove(size6);
                                        break;
                                    }
                                    h(size6);
                                }
                            }
                            fh6Var6 = null;
                            break;
                        }
                    }
                    fh6 fh6Var15 = (fh6) arrayList2.get(size5);
                    str = str3;
                    long j6 = fh6Var15.e;
                    View view7 = fh6Var15.a;
                    if (j6 != jC2 || fh6Var15.q()) {
                        fh6Var5 = fh6Var2;
                        fh6Var5 = fh6Var2;
                    } else {
                        if (iD == fh6Var15.f) {
                            fh6Var5 = fh6Var2;
                            fh6Var15.a(32);
                            if (fh6Var15.i() && !bh6Var.g) {
                                fh6Var15.j = (fh6Var15.j & (-15)) | 2;
                            }
                            fh6Var6 = fh6Var15;
                            break;
                        }
                        fh6Var5 = fh6Var2;
                        arrayList2.remove(size5);
                        recyclerView.removeDetachedView(view7, false);
                        fh6 fh6VarL3 = RecyclerView.L(view7);
                        fh6VarL3.n = fh6Var5;
                        fh6VarL3.o = false;
                        fh6VarL3.j &= -33;
                        j(fh6VarL3);
                    }
                    size5--;
                    str3 = str;
                    fh6Var5 = null;
                }
                if (fh6Var6 != null) {
                    fh6Var6.c = iF2;
                    fh6Var3 = fh6Var6;
                    z2 = z;
                } else {
                    fh6Var3 = fh6Var6;
                }
            } else {
                str = "RecyclerView";
            }
            if (fh6Var3 == null) {
                fh6Var3 = fh6VarJ;
                if (RecyclerView.T0) {
                    str2 = str;
                    Log.d(str2, "tryGetViewHolderForPositionByDeadline(" + i + ") fetching from shared pool");
                } else {
                    str2 = str;
                }
                tg6 tg6Var = (tg6) c().a.get(iD);
                if (tg6Var == null) {
                    fh6Var4 = null;
                    break;
                }
                ArrayList arrayList6 = tg6Var.a;
                if (!arrayList6.isEmpty()) {
                    int size7 = arrayList6.size() - 1;
                    while (true) {
                        if (size7 < 0) {
                            fh6Var4 = null;
                            break;
                        }
                        if (!((fh6) arrayList6.get(size7)).e()) {
                            fh6Var4 = (fh6) arrayList6.remove(size7);
                            break;
                        }
                        size7--;
                    }
                } else {
                    fh6Var4 = null;
                    break;
                }
                if (fh6Var4 != null) {
                    fh6Var4.n();
                    boolean z9 = RecyclerView.S0;
                }
                fh6VarJ = fh6Var4;
            } else {
                fh6Var3 = fh6VarJ;
                str2 = str;
            }
            if (fh6VarJ == null) {
                fh6VarJ = fh6Var3;
                long nanoTime2 = recyclerView.getNanoTime();
                if (j != Long.MAX_VALUE) {
                    long j7 = ((ug6) this.g).a(iD).c;
                    if (j7 != 0 && j7 + nanoTime2 >= j) {
                        return null;
                    }
                }
                hg6 hg6Var4 = recyclerView.x;
                hg6Var4.getClass();
                try {
                    if (y88.a()) {
                        Trace.beginSection(String.format("RV onCreateViewHolder type=0x%X", Integer.valueOf(iD)));
                    }
                    fh6VarJ = hg6Var4.j(recyclerView, iD);
                    if (fh6VarJ.a.getParent() != null) {
                        throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                    }
                    fh6VarJ.f = iD;
                    Trace.endSection();
                    if (RecyclerView.X0 && (recyclerViewF = RecyclerView.F(fh6VarJ.a)) != null) {
                        fh6VarJ.b = new WeakReference(recyclerViewF);
                    }
                    long nanoTime3 = recyclerView.getNanoTime() - nanoTime2;
                    tg6 tg6VarA = ((ug6) this.g).a(iD);
                    long j8 = tg6VarA.c;
                    if (j8 != 0) {
                        nanoTime3 = (nanoTime3 / 4) + ((j8 / 4) * 3);
                    }
                    tg6VarA.c = nanoTime3;
                    if (RecyclerView.T0) {
                        Log.d(str2, "tryGetViewHolderForPositionByDeadline created new ViewHolder");
                    }
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
        } else {
            j2 = 3;
        }
        fh6VarJ = fh6Var3;
        View view8 = fh6VarJ.a;
        if (z2 && !bh6Var.g) {
            int i8 = fh6VarJ.j;
            if ((i8 & 8192) != 0) {
                fh6VarJ.j = i8 & (-8193);
                if (bh6Var.j) {
                    ng6.b(fh6VarJ);
                    ng6 ng6Var = recyclerView.g0;
                    fh6VarJ.d();
                    ng6Var.getClass();
                    mg6 mg6Var = new mg6();
                    mg6Var.a(fh6VarJ);
                    recyclerView.Y(fh6VarJ, mg6Var);
                }
            }
        }
        if (!bh6Var.g || !fh6VarJ.f()) {
            if (!fh6VarJ.f() || (fh6VarJ.j & 2) != 0 || fh6VarJ.g()) {
                if (RecyclerView.S0 && fh6VarJ.i()) {
                    StringBuilder sb2 = new StringBuilder("Removed holder should be bound and it should come here only in pre-layout. Holder: ");
                    sb2.append(fh6VarJ);
                    f6.l(sb2, recyclerView.A());
                    return null;
                }
                int iF3 = recyclerView.e.f(i, 0);
                fh6VarJ.s = null;
                fh6VarJ.r = recyclerView;
                int i9 = fh6VarJ.f;
                long nanoTime4 = recyclerView.getNanoTime();
                if (j != Long.MAX_VALUE) {
                    long j9 = ((ug6) this.g).a(i9).d;
                    if (j9 == 0 || j9 + nanoTime4 < j) {
                        if (fh6VarJ.k()) {
                            recyclerView.attachViewToParent(view8, recyclerView.getChildCount(), view8.getLayoutParams());
                            z3 = z;
                        } else {
                            z3 = false;
                        }
                        hg6Var = recyclerView.x;
                        hg6Var.getClass();
                        if (fh6VarJ.s == null) {
                            z4 = z;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            fh6VarJ.c = iF3;
                            j3 = nanoTime4;
                            if (hg6Var.b) {
                                fh6VarJ.e = hg6Var.c(iF3);
                            }
                            fh6VarJ.j = (fh6VarJ.j & (-520)) | 1;
                            if (y88.a()) {
                                Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(fh6VarJ.f)));
                            }
                        } else {
                            j3 = nanoTime4;
                        }
                        fh6VarJ.s = hg6Var;
                        if (RecyclerView.S0) {
                            if (view8.getParent() != null && view8.isAttachedToWindow() != fh6VarJ.k()) {
                                throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + fh6VarJ.k() + ", attached to window: " + view8.isAttachedToWindow() + ", holder: " + fh6VarJ);
                            }
                            if (view8.getParent() == null && view8.isAttachedToWindow()) {
                                y5.g(fh6VarJ, "Attempting to bind attached holder with no parent (AKA temp detached): ");
                                return null;
                            }
                        }
                        w5 w5Var = null;
                        hg6Var.i(fh6VarJ, iF3, fh6VarJ.d());
                        if (z4) {
                            arrayList = fh6VarJ.k;
                            if (arrayList != null) {
                                arrayList.clear();
                            }
                            fh6VarJ.j &= -1025;
                            layoutParams = view8.getLayoutParams();
                            if (layoutParams instanceof qg6) {
                                ((qg6) layoutParams).c = z;
                            }
                            Trace.endSection();
                        }
                        if (z3) {
                            recyclerView.detachViewFromParent(view8);
                        }
                        nanoTime = recyclerView.getNanoTime() - j3;
                        tg6 tg6VarA2 = ((ug6) this.g).a(fh6VarJ.f);
                        j4 = tg6VarA2.d;
                        if (j4 != 0) {
                            nanoTime = (nanoTime / 4) + ((j4 / 4) * j2);
                        }
                        tg6VarA2.d = nanoTime;
                        accessibilityManager = recyclerView.T;
                        if (accessibilityManager == null && accessibilityManager.isEnabled()) {
                            z5 = true;
                            if (view8.getImportantForAccessibility() == 0) {
                                view8.setImportantForAccessibility(1);
                            }
                            hh6 hh6Var = recyclerView.E0;
                            if (hh6Var != null) {
                                w5 w5VarJ = hh6Var.j();
                                if (w5VarJ instanceof gh6) {
                                    gh6 gh6Var = (gh6) w5VarJ;
                                    View.AccessibilityDelegate accessibilityDelegateD = dl8.d(view8);
                                    if (accessibilityDelegateD != null) {
                                        w5Var = accessibilityDelegateD instanceof v5 ? ((v5) accessibilityDelegateD).a : new w5(accessibilityDelegateD);
                                    }
                                    if (w5Var != null && w5Var != gh6Var) {
                                        gh6Var.e.put(view8, w5Var);
                                    }
                                }
                                dl8.n(view8, w5VarJ);
                            }
                        } else {
                            z5 = true;
                        }
                        if (bh6Var.g) {
                            fh6VarJ.g = i;
                        }
                        z6 = z5;
                    } else {
                        z6 = false;
                        z5 = z;
                    }
                } else {
                    if (fh6VarJ.k()) {
                        recyclerView.attachViewToParent(view8, recyclerView.getChildCount(), view8.getLayoutParams());
                        z3 = z;
                    } else {
                        z3 = false;
                    }
                    hg6Var = recyclerView.x;
                    hg6Var.getClass();
                    if (fh6VarJ.s == null) {
                        z4 = z;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        fh6VarJ.c = iF3;
                        j3 = nanoTime4;
                        if (hg6Var.b) {
                            fh6VarJ.e = hg6Var.c(iF3);
                        }
                        fh6VarJ.j = (fh6VarJ.j & (-520)) | 1;
                        if (y88.a()) {
                            Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(fh6VarJ.f)));
                        }
                    } else {
                        j3 = nanoTime4;
                    }
                    fh6VarJ.s = hg6Var;
                    if (RecyclerView.S0) {
                        if (view8.getParent() != null) {
                        }
                        if (view8.getParent() == null) {
                            y5.g(fh6VarJ, "Attempting to bind attached holder with no parent (AKA temp detached): ");
                            return null;
                        }
                    }
                    w5 w5Var2 = null;
                    hg6Var.i(fh6VarJ, iF3, fh6VarJ.d());
                    if (z4) {
                        arrayList = fh6VarJ.k;
                        if (arrayList != null) {
                            arrayList.clear();
                        }
                        fh6VarJ.j &= -1025;
                        layoutParams = view8.getLayoutParams();
                        if (layoutParams instanceof qg6) {
                            ((qg6) layoutParams).c = z;
                        }
                        Trace.endSection();
                    }
                    if (z3) {
                        recyclerView.detachViewFromParent(view8);
                    }
                    nanoTime = recyclerView.getNanoTime() - j3;
                    tg6 tg6VarA3 = ((ug6) this.g).a(fh6VarJ.f);
                    j4 = tg6VarA3.d;
                    if (j4 != 0) {
                        nanoTime = (nanoTime / 4) + ((j4 / 4) * j2);
                    }
                    tg6VarA3.d = nanoTime;
                    accessibilityManager = recyclerView.T;
                    if (accessibilityManager == null) {
                        z5 = true;
                    } else {
                        z5 = true;
                    }
                    if (bh6Var.g) {
                        fh6VarJ.g = i;
                    }
                    z6 = z5;
                }
            }
            layoutParams2 = view8.getLayoutParams();
            if (layoutParams2 == null) {
                qg6Var = (qg6) recyclerView.generateDefaultLayoutParams();
                view8.setLayoutParams(qg6Var);
            } else if (recyclerView.checkLayoutParams(layoutParams2)) {
                qg6Var = (qg6) layoutParams2;
            } else {
                qg6Var = (qg6) recyclerView.generateLayoutParams(layoutParams2);
                view8.setLayoutParams(qg6Var);
            }
            qg6Var.a = fh6VarJ;
            if (z2 || !z6) {
                z7 = false;
            } else {
                z7 = z5;
            }
            qg6Var.d = z7;
            return fh6VarJ;
        }
        fh6VarJ.g = i;
        z5 = z;
        z6 = false;
        layoutParams2 = view8.getLayoutParams();
        if (layoutParams2 == null) {
            qg6Var = (qg6) recyclerView.generateDefaultLayoutParams();
            view8.setLayoutParams(qg6Var);
        } else if (recyclerView.checkLayoutParams(layoutParams2)) {
            qg6Var = (qg6) recyclerView.generateLayoutParams(layoutParams2);
            view8.setLayoutParams(qg6Var);
        } else {
            qg6Var = (qg6) layoutParams2;
        }
        qg6Var.a = fh6VarJ;
        if (z2) {
            z7 = false;
        } else {
            z7 = false;
        }
        qg6Var.d = z7;
        return fh6VarJ;
    }

    public void m(fh6 fh6Var) {
        if (fh6Var.o) {
            ((ArrayList) this.d).remove(fh6Var);
        } else {
            ((ArrayList) this.c).remove(fh6Var);
        }
        fh6Var.n = null;
        fh6Var.o = false;
        fh6Var.j &= -33;
    }

    public void n() {
        ArrayList arrayList = (ArrayList) this.e;
        a aVar = ((RecyclerView) this.h).y;
        this.b = this.a + (aVar != null ? aVar.q : 0);
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.b; size--) {
            h(size);
        }
    }

    public vg6(rx8 rx8Var) {
        this.a = 0;
        this.b = -1;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.c = rx8Var;
    }
}
