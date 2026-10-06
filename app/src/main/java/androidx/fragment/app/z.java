package androidx.fragment.app;

import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.z;
import defpackage.bs3;
import defpackage.c6;
import defpackage.dj7;
import defpackage.dr3;
import defpackage.ds3;
import defpackage.e6;
import defpackage.eq3;
import defpackage.go1;
import defpackage.h15;
import defpackage.hr3;
import defpackage.ir3;
import defpackage.jr3;
import defpackage.k9;
import defpackage.ke;
import defpackage.km5;
import defpackage.kr3;
import defpackage.l0;
import defpackage.lj3;
import defpackage.ln5;
import defpackage.lv1;
import defpackage.m22;
import defpackage.m9;
import defpackage.ms8;
import defpackage.n81;
import defpackage.nr3;
import defpackage.or3;
import defpackage.ot9;
import defpackage.ph6;
import defpackage.pr3;
import defpackage.qr3;
import defpackage.sr3;
import defpackage.st4;
import defpackage.u9;
import defpackage.ux6;
import defpackage.vr3;
import defpackage.w00;
import defpackage.w8;
import defpackage.xs1;
import defpackage.y5;
import defpackage.yl8;
import defpackage.yt1;
import defpackage.z5;
import defpackage.zj0;
import defpackage.zs5;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.swiftapps.swiftbackup.R;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z {
    public final or3 A;
    public final lv1 B;
    public u9 C;
    public u9 D;
    public u9 E;
    public ArrayDeque F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public ArrayList L;
    public ArrayList M;
    public ArrayList N;
    public a0 O;
    public final w8 P;
    public boolean b;
    public ArrayList e;
    public zs5 g;
    public final ArrayList n;
    public final w00 o;
    public final CopyOnWriteArrayList p;
    public final hr3 q;
    public final ir3 r;
    public final jr3 s;
    public final kr3 t;
    public final nr3 u;
    public int v;
    public t w;
    public ms8 x;
    public o y;
    public o z;
    public final ArrayList a = new ArrayList();
    public final e0 c = new e0();
    public ArrayList d = new ArrayList();
    public final w f = new w(this);
    public a h = null;
    public boolean i = false;
    public final x j = new x(this);
    public final AtomicInteger k = new AtomicInteger();
    public final Map l = Collections.synchronizedMap(new HashMap());
    public final Map m = Collections.synchronizedMap(new HashMap());

    /* JADX WARN: Type inference failed for: r0v16, types: [hr3] */
    /* JADX WARN: Type inference failed for: r0v17, types: [ir3] */
    /* JADX WARN: Type inference failed for: r0v18, types: [jr3] */
    /* JADX WARN: Type inference failed for: r0v19, types: [kr3] */
    public z() {
        Collections.synchronizedMap(new HashMap());
        this.n = new ArrayList();
        this.o = new w00(this);
        this.p = new CopyOnWriteArrayList();
        this.q = new yt1() { // from class: hr3
            @Override // defpackage.yt1
            public final void accept(Object obj) {
                z zVar = this.a;
                if (zVar.M()) {
                    zVar.i(false);
                }
            }
        };
        this.r = new yt1() { // from class: ir3
            @Override // defpackage.yt1
            public final void accept(Object obj) {
                Integer num = (Integer) obj;
                z zVar = this.a;
                if (zVar.M() && num.intValue() == 80) {
                    zVar.m(false);
                }
            }
        };
        this.s = new yt1() { // from class: jr3
            @Override // defpackage.yt1
            public final void accept(Object obj) {
                pi5 pi5Var = (pi5) obj;
                z zVar = this.a;
                if (zVar.M()) {
                    boolean z = pi5Var.a;
                    zVar.n(false);
                }
            }
        };
        this.t = new yt1() { // from class: kr3
            @Override // defpackage.yt1
            public final void accept(Object obj) {
                j06 j06Var = (j06) obj;
                z zVar = this.a;
                if (zVar.M()) {
                    boolean z = j06Var.a;
                    zVar.s(false);
                }
            }
        };
        this.u = new nr3(this);
        this.v = -1;
        this.A = new or3(this);
        this.B = new lv1(15);
        this.F = new ArrayDeque();
        this.P = new w8(this, 1);
    }

    public static HashSet F(a aVar) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < aVar.a.size(); i++) {
            o oVar = ((ds3) aVar.a.get(i)).b;
            if (oVar != null && aVar.g) {
                hashSet.add(oVar);
            }
        }
        return hashSet;
    }

    public static boolean K(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    public static boolean L(o oVar) {
        oVar.getClass();
        boolean zL = false;
        for (o oVar2 : oVar.mChildFragmentManager.c.e()) {
            if (oVar2 != null) {
                zL = L(oVar2);
            }
            if (zL) {
                return true;
            }
        }
        return false;
    }

    public static boolean N(o oVar) {
        if (oVar == null) {
            return true;
        }
        if (oVar.mMenuVisible) {
            return oVar.mFragmentManager == null || N(oVar.mParentFragment);
        }
        return false;
    }

    public static boolean O(o oVar) {
        if (oVar == null) {
            return true;
        }
        z zVar = oVar.mFragmentManager;
        return oVar == zVar.z && O(zVar.y);
    }

    public static void e0(o oVar) {
        if (K(2)) {
            Log.v("FragmentManager", "show: " + oVar);
        }
        if (oVar.mHidden) {
            oVar.mHidden = false;
            oVar.mHiddenChanged = !oVar.mHiddenChanged;
        }
    }

    public final void A(a aVar, boolean z) {
        if (z && (this.w == null || this.J)) {
            return;
        }
        y(z);
        a aVar2 = this.h;
        if (aVar2 != null) {
            aVar2.s = false;
            aVar2.d();
            if (K(3)) {
                Log.d("FragmentManager", "Reversing mTransitioningOp " + this.h + " as part of execSingleAction for action " + aVar);
            }
            this.h.f(false, false);
            this.h.a(this.L, this.M);
            Iterator it = this.h.a.iterator();
            while (it.hasNext()) {
                o oVar = ((ds3) it.next()).b;
                if (oVar != null) {
                    oVar.mTransitioning = false;
                }
            }
            this.h = null;
        }
        aVar.a(this.L, this.M);
        this.b = true;
        try {
            W(this.L, this.M);
            d();
            g0();
            boolean z2 = this.K;
            e0 e0Var = this.c;
            if (z2) {
                this.K = false;
                for (d0 d0Var : e0Var.d()) {
                    o oVar2 = d0Var.c;
                    if (oVar2.mDeferStart) {
                        if (this.b) {
                            this.K = true;
                        } else {
                            oVar2.mDeferStart = false;
                            d0Var.k();
                        }
                    }
                }
            }
            e0Var.b.values().removeAll(Collections.singleton(null));
        } catch (Throwable th) {
            d();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:113:0x023d A[PHI: r10
      0x023d: PHI (r10v43 int) = (r10v39 int), (r10v44 int) binds: [B:105:0x022a, B:107:0x0230] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:229:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:64:0x0183  */
    public final void B(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        Object objPrevious;
        boolean z;
        ArrayList arrayList3;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        int i5 = i;
        e0 e0Var = this.c;
        ArrayList arrayList4 = this.n;
        boolean z4 = ((a) arrayList.get(i5)).p;
        ArrayList arrayList5 = this.N;
        if (arrayList5 == null) {
            this.N = new ArrayList();
        } else {
            arrayList5.clear();
        }
        this.N.addAll(e0Var.f());
        o oVar = this.z;
        int i6 = i5;
        boolean z5 = false;
        while (i6 < i2) {
            a aVar = (a) arrayList.get(i6);
            boolean zBooleanValue = ((Boolean) arrayList2.get(i6)).booleanValue();
            ArrayList arrayList6 = this.N;
            if (zBooleanValue) {
                arrayList3 = arrayList4;
                z2 = z4;
                i3 = i6;
                z3 = z5;
                int i7 = 1;
                ArrayList arrayList7 = aVar.a;
                int size = arrayList7.size() - 1;
                while (size >= 0) {
                    ds3 ds3Var = (ds3) arrayList7.get(size);
                    int i8 = ds3Var.a;
                    if (i8 != i7) {
                        if (i8 != 3) {
                            switch (i8) {
                                case 6:
                                    arrayList6.add(ds3Var.b);
                                    break;
                                case 8:
                                    oVar = null;
                                    break;
                                case XmlPullParser.COMMENT /* 9 */:
                                    oVar = ds3Var.b;
                                    break;
                                case 10:
                                    ds3Var.i = ds3Var.h;
                                    break;
                            }
                        } else {
                            arrayList6.add(ds3Var.b);
                        }
                        size--;
                        i7 = 1;
                    }
                    arrayList6.remove(ds3Var.b);
                    size--;
                    i7 = 1;
                }
            } else {
                ArrayList arrayList8 = aVar.a;
                int i9 = 0;
                while (i9 < arrayList8.size()) {
                    ds3 ds3Var2 = (ds3) arrayList8.get(i9);
                    boolean z6 = z4;
                    int i10 = ds3Var2.a;
                    int i11 = i6;
                    int i12 = 1;
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 == 3 || i10 == 6) {
                                z5 = z5;
                                arrayList6.remove(ds3Var2.b);
                                o oVar2 = ds3Var2.b;
                                if (oVar2 == oVar) {
                                    arrayList8.add(i9, new ds3(9, oVar2));
                                    i9++;
                                    oVar = null;
                                }
                            } else if (i10 == 7) {
                                i12 = 1;
                            } else if (i10 != 8) {
                                z5 = z5;
                            } else {
                                z5 = z5;
                                arrayList8.add(i9, new ds3(9, oVar, 0));
                                ds3Var2.c = true;
                                i9++;
                                oVar = ds3Var2.b;
                            }
                            i12 = 1;
                        } else {
                            z5 = z5;
                            o oVar3 = ds3Var2.b;
                            int i13 = oVar3.mContainerId;
                            int size2 = arrayList6.size() - 1;
                            boolean z7 = false;
                            while (size2 >= 0) {
                                int i14 = size2;
                                o oVar4 = (o) arrayList6.get(size2);
                                ArrayList arrayList9 = arrayList4;
                                if (oVar4.mContainerId != i13) {
                                    i13 = i13;
                                } else if (oVar4 == oVar3) {
                                    i13 = i13;
                                    z7 = true;
                                } else {
                                    if (oVar4 == oVar) {
                                        arrayList8.add(i9, new ds3(9, oVar4, 0));
                                        i9++;
                                        i4 = 0;
                                        oVar = null;
                                    } else {
                                        i4 = 0;
                                    }
                                    ds3 ds3Var3 = new ds3(3, oVar4, i4);
                                    ds3Var3.d = ds3Var2.d;
                                    ds3Var3.f = ds3Var2.f;
                                    ds3Var3.e = ds3Var2.e;
                                    ds3Var3.g = ds3Var2.g;
                                    arrayList8.add(i9, ds3Var3);
                                    arrayList6.remove(oVar4);
                                    i9++;
                                    oVar = oVar;
                                }
                                size2 = i14 - 1;
                                i13 = i13;
                                arrayList4 = arrayList9;
                            }
                            arrayList4 = arrayList4;
                            i12 = 1;
                            if (z7) {
                                arrayList8.remove(i9);
                                i9--;
                            } else {
                                ds3Var2.a = 1;
                                ds3Var2.c = true;
                                arrayList6.add(oVar3);
                            }
                        }
                        i9 += i12;
                        z4 = z6;
                        i6 = i11;
                        z5 = z5;
                        arrayList4 = arrayList4;
                    }
                    arrayList6.add(ds3Var2.b);
                    i9 += i12;
                    z4 = z6;
                    i6 = i11;
                    z5 = z5;
                    arrayList4 = arrayList4;
                }
                arrayList3 = arrayList4;
                z2 = z4;
                i3 = i6;
                z3 = z5;
            }
            z5 = z3 || aVar.g;
            i6 = i3 + 1;
            z4 = z2;
            arrayList4 = arrayList3;
        }
        ArrayList arrayList10 = arrayList4;
        boolean z8 = z4;
        boolean z9 = z5;
        this.N.clear();
        if (!z8 && this.v >= 1) {
            for (int i15 = i5; i15 < i2; i15++) {
                Iterator it = ((a) arrayList.get(i15)).a.iterator();
                while (it.hasNext()) {
                    o oVar5 = ((ds3) it.next()).b;
                    if (oVar5 != null && oVar5.mFragmentManager != null) {
                        e0Var.g(g(oVar5));
                    }
                }
            }
        }
        String str = "Unknown cmd: ";
        int i16 = i5;
        while (i16 < i2) {
            a aVar2 = (a) arrayList.get(i16);
            if (((Boolean) arrayList2.get(i16)).booleanValue()) {
                aVar2.c(-1);
                z zVar = aVar2.r;
                ArrayList arrayList11 = aVar2.a;
                boolean z10 = true;
                int size3 = arrayList11.size() - 1;
                while (size3 >= 0) {
                    ds3 ds3Var4 = (ds3) arrayList11.get(size3);
                    o oVar6 = ds3Var4.b;
                    if (oVar6 != null) {
                        if (oVar6.mAnimationInfo != null) {
                            oVar6.e().a = z10;
                        }
                        int i17 = aVar2.f;
                        int i18 = 8194;
                        int i19 = 4097;
                        if (i17 != 4097) {
                            if (i17 != 8194) {
                                i19 = 4100;
                                if (i17 != 8197) {
                                    i18 = 4099;
                                    if (i17 != 4099) {
                                        i18 = i17 != 4100 ? 0 : 8197;
                                    }
                                } else {
                                    i18 = i19;
                                }
                            } else {
                                i18 = i19;
                            }
                        }
                        if (oVar6.mAnimationInfo != null || i18 != 0) {
                            oVar6.e();
                            oVar6.mAnimationInfo.f = i18;
                        }
                        oVar6.e();
                        oVar6.mAnimationInfo.getClass();
                    }
                    switch (ds3Var4.a) {
                        case 1:
                            oVar6.setAnimations(ds3Var4.d, ds3Var4.e, ds3Var4.f, ds3Var4.g);
                            z = true;
                            zVar.a0(oVar6, true);
                            zVar.V(oVar6);
                            size3--;
                            z10 = z;
                            break;
                        case 2:
                        default:
                            z5.c(ds3Var4.a, str);
                            return;
                        case 3:
                            oVar6.setAnimations(ds3Var4.d, ds3Var4.e, ds3Var4.f, ds3Var4.g);
                            zVar.a(oVar6);
                            z = true;
                            size3--;
                            z10 = z;
                            break;
                        case 4:
                            oVar6.setAnimations(ds3Var4.d, ds3Var4.e, ds3Var4.f, ds3Var4.g);
                            zVar.getClass();
                            e0(oVar6);
                            z = true;
                            size3--;
                            z10 = z;
                            break;
                        case 5:
                            oVar6.setAnimations(ds3Var4.d, ds3Var4.e, ds3Var4.f, ds3Var4.g);
                            zVar.a0(oVar6, true);
                            zVar.J(oVar6);
                            z = true;
                            size3--;
                            z10 = z;
                            break;
                        case 6:
                            oVar6.setAnimations(ds3Var4.d, ds3Var4.e, ds3Var4.f, ds3Var4.g);
                            zVar.c(oVar6);
                            z = true;
                            size3--;
                            z10 = z;
                            break;
                        case 7:
                            oVar6.setAnimations(ds3Var4.d, ds3Var4.e, ds3Var4.f, ds3Var4.g);
                            zVar.a0(oVar6, true);
                            zVar.h(oVar6);
                            z = true;
                            size3--;
                            z10 = z;
                            break;
                        case 8:
                            zVar.c0(null);
                            z = true;
                            size3--;
                            z10 = z;
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            zVar.c0(oVar6);
                            z = true;
                            size3--;
                            z10 = z;
                            break;
                        case 10:
                            ds3Var4.i = oVar6.mMaxState;
                            zVar.b0(oVar6, ds3Var4.h);
                            z = true;
                            size3--;
                            z10 = z;
                            break;
                    }
                }
            } else {
                aVar2.c(1);
                z zVar2 = aVar2.r;
                ArrayList arrayList12 = aVar2.a;
                int size4 = arrayList12.size();
                int i20 = 0;
                while (i20 < size4) {
                    ds3 ds3Var5 = (ds3) arrayList12.get(i20);
                    o oVar7 = ds3Var5.b;
                    if (oVar7 != null) {
                        if (oVar7.mAnimationInfo != null) {
                            oVar7.e().a = false;
                        }
                        int i21 = aVar2.f;
                        if (oVar7.mAnimationInfo != null || i21 != 0) {
                            oVar7.e();
                            oVar7.mAnimationInfo.f = i21;
                        }
                        oVar7.e();
                        oVar7.mAnimationInfo.getClass();
                    }
                    switch (ds3Var5.a) {
                        case 1:
                            oVar7.setAnimations(ds3Var5.d, ds3Var5.e, ds3Var5.f, ds3Var5.g);
                            zVar2.a0(oVar7, false);
                            zVar2.a(oVar7);
                            i20++;
                            str = str;
                            break;
                        case 2:
                        default:
                            z5.c(ds3Var5.a, str);
                            return;
                        case 3:
                            oVar7.setAnimations(ds3Var5.d, ds3Var5.e, ds3Var5.f, ds3Var5.g);
                            zVar2.V(oVar7);
                            i20++;
                            str = str;
                            break;
                        case 4:
                            oVar7.setAnimations(ds3Var5.d, ds3Var5.e, ds3Var5.f, ds3Var5.g);
                            zVar2.J(oVar7);
                            i20++;
                            str = str;
                            break;
                        case 5:
                            oVar7.setAnimations(ds3Var5.d, ds3Var5.e, ds3Var5.f, ds3Var5.g);
                            zVar2.a0(oVar7, false);
                            e0(oVar7);
                            i20++;
                            str = str;
                            break;
                        case 6:
                            oVar7.setAnimations(ds3Var5.d, ds3Var5.e, ds3Var5.f, ds3Var5.g);
                            zVar2.h(oVar7);
                            i20++;
                            str = str;
                            break;
                        case 7:
                            oVar7.setAnimations(ds3Var5.d, ds3Var5.e, ds3Var5.f, ds3Var5.g);
                            zVar2.a0(oVar7, false);
                            zVar2.c(oVar7);
                            i20++;
                            str = str;
                            break;
                        case 8:
                            zVar2.c0(oVar7);
                            i20++;
                            str = str;
                            break;
                        case XmlPullParser.COMMENT /* 9 */:
                            zVar2.c0(null);
                            i20++;
                            str = str;
                            break;
                        case 10:
                            ds3Var5.h = oVar7.mMaxState;
                            zVar2.b0(oVar7, ds3Var5.i);
                            i20++;
                            str = str;
                            break;
                    }
                }
            }
            i16++;
            str = str;
        }
        boolean zBooleanValue2 = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
        if (z9 && !arrayList10.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                linkedHashSet.addAll(F((a) it2.next()));
            }
            if (this.h == null) {
                Iterator it3 = arrayList10.iterator();
                while (it3.hasNext()) {
                    if (it3.next() != null) {
                        e6.d();
                        return;
                    }
                    Iterator it4 = linkedHashSet.iterator();
                    if (it4.hasNext()) {
                        throw null;
                    }
                }
                Iterator it5 = arrayList10.iterator();
                while (it5.hasNext()) {
                    if (it5.next() != null) {
                        e6.d();
                        return;
                    }
                    Iterator it6 = linkedHashSet.iterator();
                    if (it6.hasNext()) {
                        throw null;
                    }
                }
            }
        }
        for (int i22 = i5; i22 < i2; i22++) {
            a aVar3 = (a) arrayList.get(i22);
            if (zBooleanValue2) {
                for (int size5 = aVar3.a.size() - 1; size5 >= 0; size5--) {
                    o oVar8 = ((ds3) aVar3.a.get(size5)).b;
                    if (oVar8 != null) {
                        g(oVar8).k();
                    }
                }
            } else {
                Iterator it7 = aVar3.a.iterator();
                while (it7.hasNext()) {
                    o oVar9 = ((ds3) it7.next()).b;
                    if (oVar9 != null) {
                        g(oVar9).k();
                    }
                }
            }
        }
        P(this.v, true);
        for (g gVar : f(arrayList, i5, i2)) {
            gVar.e = zBooleanValue2;
            synchronized (gVar.b) {
                try {
                    gVar.l();
                    ArrayList arrayList13 = gVar.b;
                    ListIterator listIterator = arrayList13.listIterator(arrayList13.size());
                    while (true) {
                        if (listIterator.hasPrevious()) {
                            objPrevious = listIterator.previous();
                            h0 h0Var = (h0) objPrevious;
                            View view = h0Var.c.mView;
                            view.getClass();
                            char c = 4;
                            if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                                int visibility = view.getVisibility();
                                if (visibility == 0) {
                                    c = 2;
                                } else if (visibility != 4) {
                                    if (visibility != 8) {
                                        throw new IllegalArgumentException("Unknown visibility " + visibility);
                                    }
                                    c = 3;
                                }
                            }
                            if (h0Var.a != 2 || c == 2) {
                            }
                        } else {
                            objPrevious = null;
                        }
                    }
                    gVar.f = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
            gVar.e();
        }
        while (i5 < i2) {
            a aVar4 = (a) arrayList.get(i5);
            if (((Boolean) arrayList2.get(i5)).booleanValue() && aVar4.t >= 0) {
                aVar4.t = -1;
            }
            if (aVar4.q != null) {
                for (int i23 = 0; i23 < aVar4.q.size(); i23++) {
                    ((Runnable) aVar4.q.get(i23)).run();
                }
                aVar4.q = null;
            }
            i5++;
        }
        if (!z9 || arrayList10.size() <= 0) {
            return;
        }
        arrayList10.get(0).getClass();
        e6.d();
    }

    public final o C(int i) {
        e0 e0Var = this.c;
        ArrayList arrayList = e0Var.a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            o oVar = (o) arrayList.get(size);
            if (oVar != null && oVar.mFragmentId == i) {
                return oVar;
            }
        }
        for (d0 d0Var : e0Var.b.values()) {
            if (d0Var != null) {
                o oVar2 = d0Var.c;
                if (oVar2.mFragmentId == i) {
                    return oVar2;
                }
            }
        }
        return null;
    }

    public final o D(String str) {
        e0 e0Var = this.c;
        ArrayList arrayList = e0Var.a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            o oVar = (o) arrayList.get(size);
            if (oVar != null && str.equals(oVar.mTag)) {
                return oVar;
            }
        }
        for (d0 d0Var : e0Var.b.values()) {
            if (d0Var != null) {
                o oVar2 = d0Var.c;
                if (str.equals(oVar2.mTag)) {
                    return oVar2;
                }
            }
        }
        return null;
    }

    public final void E() {
        for (g gVar : e()) {
            if (gVar.f) {
                if (K(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                gVar.f = false;
                gVar.e();
            }
        }
    }

    public final ViewGroup G(o oVar) {
        ViewGroup viewGroup = oVar.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (oVar.mContainerId <= 0 || !this.x.D()) {
            return null;
        }
        View viewC = this.x.C(oVar.mContainerId);
        if (viewC instanceof ViewGroup) {
            return (ViewGroup) viewC;
        }
        return null;
    }

    public final or3 H() {
        o oVar = this.y;
        return oVar != null ? oVar.mFragmentManager.H() : this.A;
    }

    public final lv1 I() {
        o oVar = this.y;
        return oVar != null ? oVar.mFragmentManager.I() : this.B;
    }

    public final void J(o oVar) {
        if (K(2)) {
            Log.v("FragmentManager", "hide: " + oVar);
        }
        if (oVar.mHidden) {
            return;
        }
        oVar.mHidden = true;
        oVar.mHiddenChanged = true ^ oVar.mHiddenChanged;
        d0(oVar);
    }

    public final boolean M() {
        o oVar = this.y;
        if (oVar == null) {
            return true;
        }
        return oVar.isAdded() && this.y.getParentFragmentManager().M();
    }

    public final void P(int i, boolean z) {
        t tVar;
        if (this.w == null && i != -1) {
            l0.e("No activity");
            return;
        }
        if (z || i != this.v) {
            this.v = i;
            e0 e0Var = this.c;
            HashMap map = e0Var.b;
            Iterator it = e0Var.a.iterator();
            while (it.hasNext()) {
                d0 d0Var = (d0) map.get(((o) it.next()).mWho);
                if (d0Var != null) {
                    d0Var.k();
                }
            }
            for (d0 d0Var2 : map.values()) {
                if (d0Var2 != null) {
                    d0Var2.k();
                    o oVar = d0Var2.c;
                    if (oVar.mRemoving && !oVar.isInBackStack()) {
                        e0Var.h(d0Var2);
                    }
                }
            }
            for (d0 d0Var3 : e0Var.d()) {
                o oVar2 = d0Var3.c;
                if (oVar2.mDeferStart) {
                    if (this.b) {
                        this.K = true;
                    } else {
                        oVar2.mDeferStart = false;
                        d0Var3.k();
                    }
                }
            }
            if (this.G && (tVar = this.w) != null && this.v == 7) {
                tVar.n.invalidateOptionsMenu();
                this.G = false;
            }
        }
    }

    public final void Q() {
        if (this.w == null) {
            return;
        }
        this.H = false;
        this.I = false;
        this.O.g = false;
        for (o oVar : this.c.f()) {
            if (oVar != null) {
                oVar.mChildFragmentManager.Q();
            }
        }
    }

    public final boolean R() {
        return S(-1, 0);
    }

    public final boolean S(int i, int i2) {
        z(false);
        y(true);
        o oVar = this.z;
        if (oVar != null && i < 0 && oVar.getChildFragmentManager().R()) {
            return true;
        }
        boolean zT = T(this.L, this.M, i, i2);
        if (zT) {
            this.b = true;
            try {
                W(this.L, this.M);
                d();
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
        g0();
        boolean z = this.K;
        e0 e0Var = this.c;
        if (z) {
            this.K = false;
            for (d0 d0Var : e0Var.d()) {
                o oVar2 = d0Var.c;
                if (oVar2.mDeferStart) {
                    if (this.b) {
                        this.K = true;
                    } else {
                        oVar2.mDeferStart = false;
                        d0Var.k();
                    }
                }
            }
        }
        e0Var.b.values().removeAll(Collections.singleton(null));
        return zT;
    }

    public final boolean T(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        boolean z = (i2 & 1) != 0;
        int size = -1;
        if (!this.d.isEmpty()) {
            if (i < 0) {
                size = z ? 0 : this.d.size() - 1;
            } else {
                int size2 = this.d.size() - 1;
                while (size2 >= 0) {
                    a aVar = (a) this.d.get(size2);
                    if (i >= 0 && i == aVar.t) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    size = size2;
                } else if (z) {
                    size = size2;
                    while (size > 0) {
                        a aVar2 = (a) this.d.get(size - 1);
                        if (i < 0 || i != aVar2.t) {
                            break;
                        }
                        size--;
                    }
                } else if (size2 != this.d.size() - 1) {
                    size = size2 + 1;
                }
            }
        }
        if (size < 0) {
            return false;
        }
        for (int size3 = this.d.size() - 1; size3 >= size; size3--) {
            arrayList.add((a) this.d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void U(Bundle bundle, o oVar) {
        if (oVar.mFragmentManager == this) {
            bundle.putString("saved_fragment", oVar.mWho);
        } else {
            f0(new IllegalStateException(eq3.i("Fragment ", oVar, " is not currently in the FragmentManager")));
            throw null;
        }
    }

    public final void V(o oVar) {
        if (K(2)) {
            Log.v("FragmentManager", "remove: " + oVar + " nesting=" + oVar.mBackStackNesting);
        }
        boolean zIsInBackStack = oVar.isInBackStack();
        if (oVar.mDetached && zIsInBackStack) {
            return;
        }
        e0 e0Var = this.c;
        synchronized (e0Var.a) {
            e0Var.a.remove(oVar);
        }
        oVar.mAdded = false;
        if (L(oVar)) {
            this.G = true;
        }
        oVar.mRemoving = true;
        d0(oVar);
    }

    public final void W(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            l0.e("Internal error with the back stack records");
            return;
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((a) arrayList.get(i)).p) {
                if (i2 != i) {
                    B(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(i)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((a) arrayList.get(i2)).p) {
                        i2++;
                    }
                }
                B(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            B(arrayList, arrayList2, i2, size);
        }
    }

    public final void X(Bundle bundle) {
        w00 w00Var;
        int i;
        boolean z;
        int i2;
        d0 d0Var;
        Bundle bundle2;
        Bundle bundle3;
        for (String str : bundle.keySet()) {
            if (str.startsWith("result_") && (bundle3 = bundle.getBundle(str)) != null) {
                bundle3.setClassLoader(this.w.e.getClassLoader());
                this.m.put(str.substring(7), bundle3);
            }
        }
        HashMap map = new HashMap();
        for (String str2 : bundle.keySet()) {
            if (str2.startsWith("fragment_") && (bundle2 = bundle.getBundle(str2)) != null) {
                bundle2.setClassLoader(this.w.e.getClassLoader());
                map.put(str2.substring(9), bundle2);
            }
        }
        e0 e0Var = this.c;
        HashMap map2 = e0Var.c;
        HashMap map3 = e0Var.b;
        map2.clear();
        map2.putAll(map);
        vr3 vr3Var = (vr3) bundle.getParcelable("state");
        if (vr3Var == null) {
            return;
        }
        map3.clear();
        Iterator it = vr3Var.a.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            w00Var = this.o;
            i = 2;
            if (!zHasNext) {
                break;
            }
            Bundle bundleI = e0Var.i(null, (String) it.next());
            if (bundleI != null) {
                o oVar = (o) this.O.b.get(((c0) bundleI.getParcelable("state")).b);
                if (oVar != null) {
                    if (K(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + oVar);
                    }
                    d0Var = new d0(w00Var, e0Var, oVar, bundleI);
                } else {
                    d0Var = new d0(this.o, this.c, this.w.e.getClassLoader(), H(), bundleI);
                }
                o oVar2 = d0Var.c;
                oVar2.mSavedFragmentState = bundleI;
                oVar2.mFragmentManager = this;
                if (K(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + oVar2.mWho + "): " + oVar2);
                }
                d0Var.l(this.w.e.getClassLoader());
                e0Var.g(d0Var);
                d0Var.e = this.v;
            }
        }
        a0 a0Var = this.O;
        a0Var.getClass();
        Iterator it2 = new ArrayList(a0Var.b.values()).iterator();
        while (true) {
            z = true;
            if (!it2.hasNext()) {
                break;
            }
            o oVar3 = (o) it2.next();
            if (map3.get(oVar3.mWho) == null) {
                if (K(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + oVar3 + " that was not found in the set of active Fragments " + vr3Var.a);
                }
                this.O.f(oVar3);
                oVar3.mFragmentManager = this;
                d0 d0Var2 = new d0(w00Var, e0Var, oVar3);
                d0Var2.e = 1;
                d0Var2.k();
                oVar3.mRemoving = true;
                d0Var2.k();
            }
        }
        ArrayList<String> arrayList = vr3Var.b;
        e0Var.a.clear();
        if (arrayList != null) {
            for (String str3 : arrayList) {
                o oVarB = e0Var.b(str3);
                if (oVarB == null) {
                    l0.e(eq3.k("No instantiated fragment for (", str3, ")"));
                    return;
                }
                if (K(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + oVarB);
                }
                e0Var.a(oVarB);
            }
        }
        if (vr3Var.c != null) {
            this.d = new ArrayList(vr3Var.c.length);
            int i3 = 0;
            while (true) {
                b[] bVarArr = vr3Var.c;
                if (i3 >= bVarArr.length) {
                    break;
                }
                b bVar = bVarArr[i3];
                ArrayList arrayList2 = bVar.b;
                a aVar = new a(this);
                int[] iArr = bVar.a;
                int i4 = 0;
                int i5 = 0;
                while (i4 < iArr.length) {
                    ds3 ds3Var = new ds3();
                    int i6 = i4 + 1;
                    int i7 = i;
                    ds3Var.a = iArr[i4];
                    if (K(i7)) {
                        Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i5 + " base fragment #" + iArr[i6]);
                    }
                    ds3Var.h = st4.values()[bVar.c[i5]];
                    ds3Var.i = st4.values()[bVar.d[i5]];
                    int i8 = i4 + 2;
                    ds3Var.c = iArr[i6] != 0 ? z : false;
                    int i9 = iArr[i8];
                    ds3Var.d = i9;
                    int i10 = iArr[i4 + 3];
                    ds3Var.e = i10;
                    int i11 = i4 + 5;
                    int i12 = iArr[i4 + 4];
                    ds3Var.f = i12;
                    i4 += 6;
                    int[] iArr2 = iArr;
                    int i13 = iArr2[i11];
                    ds3Var.g = i13;
                    aVar.b = i9;
                    aVar.c = i10;
                    aVar.d = i12;
                    aVar.e = i13;
                    aVar.b(ds3Var);
                    i5++;
                    i = i7;
                    iArr = iArr2;
                    z = true;
                }
                int i14 = i;
                aVar.f = bVar.e;
                aVar.i = bVar.f;
                aVar.g = true;
                aVar.j = bVar.n;
                aVar.k = bVar.p;
                aVar.l = bVar.q;
                aVar.m = bVar.r;
                aVar.n = bVar.t;
                aVar.o = bVar.x;
                aVar.p = bVar.y;
                aVar.t = bVar.k;
                for (int i15 = 0; i15 < arrayList2.size(); i15++) {
                    String str4 = (String) arrayList2.get(i15);
                    if (str4 != null) {
                        ((ds3) aVar.a.get(i15)).b = e0Var.b(str4);
                    }
                }
                aVar.c(1);
                if (K(i14)) {
                    StringBuilder sbR = dj7.r(i3, "restoreAllState: back stack #", " (index ");
                    sbR.append(aVar.t);
                    sbR.append("): ");
                    sbR.append(aVar);
                    Log.v("FragmentManager", sbR.toString());
                    PrintWriter printWriter = new PrintWriter(new h15());
                    aVar.h("  ", printWriter, false);
                    printWriter.close();
                }
                this.d.add(aVar);
                i3++;
                i = i14;
                z = true;
            }
            i2 = 0;
        } else {
            i2 = 0;
            this.d = new ArrayList();
        }
        this.k.set(vr3Var.d);
        String str5 = vr3Var.e;
        if (str5 != null) {
            o oVarB2 = e0Var.b(str5);
            this.z = oVarB2;
            r(oVarB2);
        }
        ArrayList arrayList3 = vr3Var.f;
        if (arrayList3 != null) {
            for (int i16 = i2; i16 < arrayList3.size(); i16++) {
                this.l.put((String) arrayList3.get(i16), (zj0) vr3Var.k.get(i16));
            }
        }
        this.F = new ArrayDeque(vr3Var.n);
    }

    public final Bundle Y() {
        int i;
        ArrayList arrayList;
        b[] bVarArr;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        E();
        w();
        z(true);
        this.H = true;
        this.O.g = true;
        e0 e0Var = this.c;
        e0Var.getClass();
        HashMap map = e0Var.b;
        ArrayList arrayList2 = new ArrayList(map.size());
        Iterator it = map.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            d0 d0Var = (d0) it.next();
            if (d0Var != null) {
                o oVar = d0Var.c;
                String str = oVar.mWho;
                Bundle bundle3 = new Bundle();
                o oVar2 = d0Var.c;
                if (oVar2.mState == -1 && (bundle = oVar2.mSavedFragmentState) != null) {
                    bundle3.putAll(bundle);
                }
                bundle3.putParcelable("state", new c0(oVar2));
                if (oVar2.mState > 0) {
                    Bundle bundle4 = new Bundle();
                    oVar2.onSaveInstanceState(bundle4);
                    if (!bundle4.isEmpty()) {
                        bundle3.putBundle("savedInstanceState", bundle4);
                    }
                    d0Var.a.m(oVar2, bundle4, false);
                    Bundle bundle5 = new Bundle();
                    oVar2.mSavedStateRegistryController.v(bundle5);
                    if (!bundle5.isEmpty()) {
                        bundle3.putBundle("registryState", bundle5);
                    }
                    Bundle bundleY = oVar2.mChildFragmentManager.Y();
                    if (!bundleY.isEmpty()) {
                        bundle3.putBundle("childFragmentManager", bundleY);
                    }
                    if (oVar2.mView != null) {
                        d0Var.n();
                    }
                    SparseArray<Parcelable> sparseArray = oVar2.mSavedViewState;
                    if (sparseArray != null) {
                        bundle3.putSparseParcelableArray("viewState", sparseArray);
                    }
                    Bundle bundle6 = oVar2.mSavedViewRegistryState;
                    if (bundle6 != null) {
                        bundle3.putBundle("viewRegistryState", bundle6);
                    }
                }
                Bundle bundle7 = oVar2.mArguments;
                if (bundle7 != null) {
                    bundle3.putBundle("arguments", bundle7);
                }
                e0Var.i(bundle3, str);
                arrayList2.add(oVar.mWho);
                if (K(2)) {
                    Log.v("FragmentManager", "Saved state of " + oVar + ": " + oVar.mSavedFragmentState);
                }
            }
        }
        HashMap map2 = this.c.c;
        if (!map2.isEmpty()) {
            e0 e0Var2 = this.c;
            synchronized (e0Var2.a) {
                try {
                    if (e0Var2.a.isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(e0Var2.a.size());
                        for (o oVar3 : e0Var2.a) {
                            arrayList.add(oVar3.mWho);
                            if (K(2)) {
                                Log.v("FragmentManager", "saveAllState: adding fragment (" + oVar3.mWho + "): " + oVar3);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int size = this.d.size();
            if (size > 0) {
                bVarArr = new b[size];
                for (i = 0; i < size; i++) {
                    bVarArr[i] = new b((a) this.d.get(i));
                    if (K(2)) {
                        StringBuilder sbR = dj7.r(i, "saveAllState: adding back stack #", ": ");
                        sbR.append(this.d.get(i));
                        Log.v("FragmentManager", sbR.toString());
                    }
                }
            } else {
                bVarArr = null;
            }
            vr3 vr3Var = new vr3();
            vr3Var.e = null;
            ArrayList arrayList3 = new ArrayList();
            vr3Var.f = arrayList3;
            ArrayList arrayList4 = new ArrayList();
            vr3Var.k = arrayList4;
            vr3Var.a = arrayList2;
            vr3Var.b = arrayList;
            vr3Var.c = bVarArr;
            vr3Var.d = this.k.get();
            o oVar4 = this.z;
            if (oVar4 != null) {
                vr3Var.e = oVar4.mWho;
            }
            arrayList3.addAll(this.l.keySet());
            arrayList4.addAll(this.l.values());
            vr3Var.n = new ArrayList(this.F);
            bundle2.putParcelable("state", vr3Var);
            for (String str2 : this.m.keySet()) {
                bundle2.putBundle(xs1.j("result_", str2), (Bundle) this.m.get(str2));
            }
            for (String str3 : map2.keySet()) {
                bundle2.putBundle(xs1.j("fragment_", str3), (Bundle) map2.get(str3));
            }
        } else if (K(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return bundle2;
        }
        return bundle2;
    }

    public final void Z() {
        synchronized (this.a) {
            try {
                if (this.a.size() == 1) {
                    this.w.f.removeCallbacks(this.P);
                    this.w.f.post(this.P);
                    g0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final d0 a(o oVar) {
        String str = oVar.mPreviousWho;
        if (str != null) {
            bs3.c(oVar, str);
        }
        if (K(2)) {
            Log.v("FragmentManager", "add: " + oVar);
        }
        d0 d0VarG = g(oVar);
        oVar.mFragmentManager = this;
        e0 e0Var = this.c;
        e0Var.g(d0VarG);
        if (!oVar.mDetached) {
            e0Var.a(oVar);
            oVar.mRemoving = false;
            if (oVar.mView == null) {
                oVar.mHiddenChanged = false;
            }
            if (L(oVar)) {
                this.G = true;
            }
        }
        return d0VarG;
    }

    public final void a0(o oVar, boolean z) {
        ViewGroup viewGroupG = G(oVar);
        if (viewGroupG == null || !(viewGroupG instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) viewGroupG).setDrawDisappearingViewsLast(!z);
    }

    public final void b(t tVar, ms8 ms8Var, o oVar) {
        if (this.w != null) {
            l0.e("Already attached");
            return;
        }
        this.w = tVar;
        this.x = ms8Var;
        this.y = oVar;
        CopyOnWriteArrayList copyOnWriteArrayList = this.p;
        if (oVar != null) {
            copyOnWriteArrayList.add(new pr3(oVar));
        } else if (tVar != null) {
            copyOnWriteArrayList.add(tVar);
        }
        if (this.y != null) {
            g0();
        }
        if (tVar != null) {
            zs5 onBackPressedDispatcher = tVar.n.getOnBackPressedDispatcher();
            this.g = onBackPressedDispatcher;
            onBackPressedDispatcher.a(oVar != null ? oVar : tVar, this.j);
        }
        int i = 0;
        if (oVar != null) {
            a0 a0Var = oVar.mFragmentManager.O;
            HashMap map = a0Var.c;
            a0 a0Var2 = (a0) map.get(oVar.mWho);
            if (a0Var2 == null) {
                a0Var2 = new a0(a0Var.e);
                map.put(oVar.mWho, a0Var2);
            }
            this.O = a0Var2;
        } else if (tVar != null) {
            yl8 viewModelStore = tVar.n.getViewModelStore();
            m22 m22Var = m22.b;
            m22Var.getClass();
            lj3 lj3Var = new lj3(viewModelStore, a0.h, m22Var);
            n81 n81VarA = ph6.a(a0.class);
            String strB = n81VarA.b();
            if (strB == null) {
                c6.f("Local and anonymous classes can not be ViewModels");
                return;
            }
            this.O = (a0) lj3Var.b(n81VarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strB));
        } else {
            this.O = new a0(false);
        }
        a0 a0Var3 = this.O;
        a0Var3.g = this.H || this.I;
        this.c.d = a0Var3;
        t tVar2 = this.w;
        if (tVar2 != null && oVar == null) {
            ot9 savedStateRegistry = tVar2.n.getSavedStateRegistry();
            savedStateRegistry.h("android:support:fragments", new ux6() { // from class: lr3
                @Override // defpackage.ux6
                public final Bundle a() {
                    return this.a.Y();
                }
            });
            Bundle bundleC = savedStateRegistry.c("android:support:fragments");
            if (bundleC != null) {
                X(bundleC);
            }
        }
        t tVar3 = this.w;
        if (tVar3 != null) {
            go1 activityResultRegistry = tVar3.n.getActivityResultRegistry();
            String strConcat = "FragmentManager:".concat(oVar != null ? dj7.n(new StringBuilder(), oVar.mWho, ":") : "");
            int i2 = 8;
            this.C = activityResultRegistry.d(strConcat.concat("StartActivityForResult"), new m9(i), new ke(this, i2));
            this.D = activityResultRegistry.d(strConcat.concat("StartIntentSenderForResult"), new qr3(), new ln5(this, i2));
            this.E = activityResultRegistry.d(strConcat.concat("RequestPermissions"), new k9(i), new km5(this, 11));
        }
        t tVar4 = this.w;
        if (tVar4 != null) {
            tVar4.n.addOnConfigurationChangedListener(this.q);
        }
        t tVar5 = this.w;
        if (tVar5 != null) {
            tVar5.n.addOnTrimMemoryListener(this.r);
        }
        t tVar6 = this.w;
        if (tVar6 != null) {
            tVar6.n.addOnMultiWindowModeChangedListener(this.s);
        }
        t tVar7 = this.w;
        if (tVar7 != null) {
            tVar7.n.addOnPictureInPictureModeChangedListener(this.t);
        }
        t tVar8 = this.w;
        if (tVar8 == null || oVar != null) {
            return;
        }
        tVar8.n.addMenuProvider(this.u);
    }

    public final void b0(o oVar, st4 st4Var) {
        if (oVar == this.c.b(oVar.mWho) && (oVar.mHost == null || oVar.mFragmentManager == this)) {
            oVar.mMaxState = st4Var;
        } else {
            y5.i("Fragment ", oVar, " is not an active fragment of FragmentManager ", this);
        }
    }

    public final void c(o oVar) {
        if (K(2)) {
            Log.v("FragmentManager", "attach: " + oVar);
        }
        if (oVar.mDetached) {
            oVar.mDetached = false;
            if (oVar.mAdded) {
                return;
            }
            this.c.a(oVar);
            if (K(2)) {
                Log.v("FragmentManager", "add from attach: " + oVar);
            }
            if (L(oVar)) {
                this.G = true;
            }
        }
    }

    public final void c0(o oVar) {
        if (oVar != null) {
            if (oVar != this.c.b(oVar.mWho) || (oVar.mHost != null && oVar.mFragmentManager != this)) {
                y5.i("Fragment ", oVar, " is not an active fragment of FragmentManager ", this);
                return;
            }
        }
        o oVar2 = this.z;
        this.z = oVar;
        r(oVar2);
        r(this.z);
    }

    public final void d() {
        this.b = false;
        this.M.clear();
        this.L.clear();
    }

    public final void d0(o oVar) {
        ViewGroup viewGroupG = G(oVar);
        if (viewGroupG != null) {
            dr3 dr3Var = oVar.mAnimationInfo;
            if ((dr3Var == null ? 0 : dr3Var.e) + (dr3Var == null ? 0 : dr3Var.d) + (dr3Var == null ? 0 : dr3Var.c) + (dr3Var == null ? 0 : dr3Var.b) > 0) {
                if (viewGroupG.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupG.setTag(R.id.visible_removing_fragment_view_tag, oVar);
                }
                o oVar2 = (o) viewGroupG.getTag(R.id.visible_removing_fragment_view_tag);
                dr3 dr3Var2 = oVar.mAnimationInfo;
                boolean z = dr3Var2 != null ? dr3Var2.a : false;
                if (oVar2.mAnimationInfo == null) {
                    return;
                }
                oVar2.e().a = z;
            }
        }
    }

    public final HashSet e() {
        g gVar;
        HashSet hashSet = new HashSet();
        Iterator it = this.c.d().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((d0) it.next()).c.mContainer;
            if (viewGroup != null) {
                I().getClass();
                Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
                if (tag instanceof g) {
                    gVar = (g) tag;
                } else {
                    gVar = new g(viewGroup);
                    viewGroup.setTag(R.id.special_effects_controller_view_tag, gVar);
                }
                hashSet.add(gVar);
            }
        }
        return hashSet;
    }

    public final HashSet f(ArrayList arrayList, int i, int i2) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i < i2) {
            Iterator it = ((a) arrayList.get(i)).a.iterator();
            while (it.hasNext()) {
                o oVar = ((ds3) it.next()).b;
                if (oVar != null && (viewGroup = oVar.mContainer) != null) {
                    hashSet.add(g.i(viewGroup, this));
                }
            }
            i++;
        }
        return hashSet;
    }

    public final void f0(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new h15());
        t tVar = this.w;
        if (tVar == null) {
            try {
                v("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
                throw illegalStateException;
            }
        }
        try {
            tVar.n.dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw illegalStateException;
        }
    }

    public final d0 g(o oVar) {
        String str = oVar.mWho;
        e0 e0Var = this.c;
        d0 d0Var = (d0) e0Var.b.get(str);
        if (d0Var != null) {
            return d0Var;
        }
        d0 d0Var2 = new d0(this.o, e0Var, oVar);
        d0Var2.l(this.w.e.getClassLoader());
        d0Var2.e = this.v;
        return d0Var2;
    }

    public final void g0() {
        synchronized (this.a) {
            try {
                if (!this.a.isEmpty()) {
                    this.j.setEnabled(true);
                    if (K(3)) {
                        Log.d("FragmentManager", "FragmentManager " + this + " enabling OnBackPressedCallback, caused by non-empty pending actions");
                    }
                    return;
                }
                boolean z = this.d.size() + (this.h != null ? 1 : 0) > 0 && O(this.y);
                if (K(3)) {
                    Log.d("FragmentManager", "OnBackPressedCallback for FragmentManager " + this + " enabled state is " + z);
                }
                this.j.setEnabled(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(o oVar) {
        if (K(2)) {
            Log.v("FragmentManager", "detach: " + oVar);
        }
        if (oVar.mDetached) {
            return;
        }
        oVar.mDetached = true;
        if (oVar.mAdded) {
            if (K(2)) {
                Log.v("FragmentManager", "remove from detach: " + oVar);
            }
            e0 e0Var = this.c;
            synchronized (e0Var.a) {
                e0Var.a.remove(oVar);
            }
            oVar.mAdded = false;
            if (L(oVar)) {
                this.G = true;
            }
            d0(oVar);
        }
    }

    public final void i(boolean z) {
        if (z && this.w != null) {
            f0(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (o oVar : this.c.f()) {
            if (oVar != null) {
                oVar.performConfigurationChanged();
                if (z) {
                    oVar.mChildFragmentManager.i(true);
                }
            }
        }
    }

    public final boolean j() {
        if (this.v >= 1) {
            for (o oVar : this.c.f()) {
                if (oVar != null) {
                    if (!oVar.mHidden ? oVar.mChildFragmentManager.j() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean k() {
        if (this.v < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (o oVar : this.c.f()) {
            if (oVar != null && N(oVar)) {
                if (!oVar.mHidden ? oVar.mChildFragmentManager.k() : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(oVar);
                    z = true;
                }
            }
        }
        if (this.e != null) {
            for (int i = 0; i < this.e.size(); i++) {
                o oVar2 = (o) this.e.get(i);
                if (arrayList == null || !arrayList.contains(oVar2)) {
                    oVar2.getClass();
                }
            }
        }
        this.e = arrayList;
        return z;
    }

    public final void l() {
        boolean zIsChangingConfigurations = true;
        this.J = true;
        z(true);
        w();
        t tVar = this.w;
        e0 e0Var = this.c;
        if (tVar != null) {
            zIsChangingConfigurations = e0Var.d.f;
        } else {
            u uVar = tVar.e;
            if (uVar != null) {
                zIsChangingConfigurations = true ^ uVar.isChangingConfigurations();
            }
        }
        if (zIsChangingConfigurations) {
            Iterator it = this.l.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((zj0) it.next()).a.iterator();
                while (it2.hasNext()) {
                    e0Var.d.d((String) it2.next(), false);
                }
            }
        }
        u(-1);
        t tVar2 = this.w;
        if (tVar2 != null) {
            tVar2.n.removeOnTrimMemoryListener(this.r);
        }
        t tVar3 = this.w;
        if (tVar3 != null) {
            tVar3.n.removeOnConfigurationChangedListener(this.q);
        }
        t tVar4 = this.w;
        if (tVar4 != null) {
            tVar4.n.removeOnMultiWindowModeChangedListener(this.s);
        }
        t tVar5 = this.w;
        if (tVar5 != null) {
            tVar5.n.removeOnPictureInPictureModeChangedListener(this.t);
        }
        t tVar6 = this.w;
        if (tVar6 != null && this.y == null) {
            tVar6.n.removeMenuProvider(this.u);
        }
        this.w = null;
        this.x = null;
        this.y = null;
        if (this.g != null) {
            this.j.remove();
            this.g = null;
        }
        u9 u9Var = this.C;
        if (u9Var != null) {
            u9Var.b();
            this.D.b();
            this.E.b();
        }
    }

    public final void m(boolean z) {
        if (z && this.w != null) {
            f0(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (o oVar : this.c.f()) {
            if (oVar != null) {
                oVar.performLowMemory();
                if (z) {
                    oVar.mChildFragmentManager.m(true);
                }
            }
        }
    }

    public final void n(boolean z) {
        if (z && this.w != null) {
            f0(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (o oVar : this.c.f()) {
            if (oVar != null && z) {
                oVar.mChildFragmentManager.n(true);
            }
        }
    }

    public final void o() {
        for (o oVar : this.c.e()) {
            if (oVar != null) {
                oVar.isHidden();
                oVar.mChildFragmentManager.o();
            }
        }
    }

    public final boolean p() {
        if (this.v >= 1) {
            for (o oVar : this.c.f()) {
                if (oVar != null) {
                    if (!oVar.mHidden ? oVar.mChildFragmentManager.p() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void q() {
        if (this.v < 1) {
            return;
        }
        for (o oVar : this.c.f()) {
            if (oVar != null && !oVar.mHidden) {
                oVar.mChildFragmentManager.q();
            }
        }
    }

    public final void r(o oVar) {
        if (oVar != null) {
            if (oVar != this.c.b(oVar.mWho)) {
                return;
            }
            oVar.performPrimaryNavigationFragmentChanged();
        }
    }

    public final void s(boolean z) {
        if (z && this.w != null) {
            f0(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (o oVar : this.c.f()) {
            if (oVar != null && z) {
                oVar.mChildFragmentManager.s(true);
            }
        }
    }

    public final boolean t() {
        if (this.v < 1) {
            return false;
        }
        boolean z = false;
        for (o oVar : this.c.f()) {
            if (oVar != null && N(oVar)) {
                if (!oVar.mHidden ? oVar.mChildFragmentManager.t() : false) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        o oVar = this.y;
        if (oVar != null) {
            sb.append(oVar.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.y)));
            sb.append("}");
        } else {
            t tVar = this.w;
            if (tVar != null) {
                sb.append(tVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.w)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(int i) {
        try {
            this.b = true;
            for (d0 d0Var : this.c.b.values()) {
                if (d0Var != null) {
                    d0Var.e = i;
                }
            }
            P(i, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((g) it.next()).h();
            }
            this.b = false;
            z(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public final void v(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        String strJ = eq3.j(str, "    ");
        e0 e0Var = this.c;
        ArrayList arrayList = e0Var.a;
        String strJ2 = eq3.j(str, "    ");
        HashMap map = e0Var.b;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (d0 d0Var : map.values()) {
                printWriter.print(str);
                if (d0Var != null) {
                    o oVar = d0Var.c;
                    printWriter.println(oVar);
                    oVar.dump(strJ2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size2 = arrayList.size();
        if (size2 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size2; i++) {
                o oVar2 = (o) arrayList.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(oVar2.toString());
            }
        }
        ArrayList arrayList2 = this.e;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size; i2++) {
                o oVar3 = (o) this.e.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(oVar3.toString());
            }
        }
        int size3 = this.d.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size3; i3++) {
                a aVar = (a) this.d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.h(strJ, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.k.get());
        synchronized (this.a) {
            try {
                int size4 = this.a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i4 = 0; i4 < size4; i4++) {
                        Object obj = (sr3) this.a.get(i4);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i4);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.w);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.x);
        if (this.y != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.y);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.v);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.H);
        printWriter.print(" mStopped=");
        printWriter.print(this.I);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.J);
        if (this.G) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.G);
        }
    }

    public final void w() {
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((g) it.next()).h();
        }
    }

    public final void x(sr3 sr3Var, boolean z) {
        if (!z) {
            if (this.w == null) {
                if (this.J) {
                    l0.e("FragmentManager has been destroyed");
                    return;
                } else {
                    l0.e("FragmentManager has not been attached to a host.");
                    return;
                }
            }
            if (this.H || this.I) {
                l0.e("Can not perform this action after onSaveInstanceState");
                return;
            }
        }
        synchronized (this.a) {
            try {
                if (this.w == null) {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.a.add(sr3Var);
                    Z();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void y(boolean z) {
        if (this.b) {
            l0.e("FragmentManager is already executing transactions");
            return;
        }
        if (this.w == null) {
            if (this.J) {
                l0.e("FragmentManager has been destroyed");
                return;
            } else {
                l0.e("FragmentManager has not been attached to a host.");
                return;
            }
        }
        if (Looper.myLooper() != this.w.f.getLooper()) {
            l0.e("Must be called from main thread of fragment host");
            return;
        }
        if (!z && (this.H || this.I)) {
            l0.e("Can not perform this action after onSaveInstanceState");
        } else if (this.L == null) {
            this.L = new ArrayList();
            this.M = new ArrayList();
        }
    }

    public final boolean z(boolean z) {
        boolean zA;
        ArrayList arrayList;
        a aVar;
        y(z);
        if (!this.i && (aVar = this.h) != null) {
            aVar.s = false;
            aVar.d();
            if (K(3)) {
                Log.d("FragmentManager", "Reversing mTransitioningOp " + this.h + " as part of execPendingActions for actions " + this.a);
            }
            this.h.f(false, false);
            this.a.add(0, this.h);
            Iterator it = this.h.a.iterator();
            while (it.hasNext()) {
                o oVar = ((ds3) it.next()).b;
                if (oVar != null) {
                    oVar.mTransitioning = false;
                }
            }
            this.h = null;
        }
        boolean z2 = false;
        while (true) {
            ArrayList arrayList2 = this.L;
            ArrayList arrayList3 = this.M;
            synchronized (this.a) {
                if (this.a.isEmpty()) {
                    zA = false;
                } else {
                    try {
                        int size = this.a.size();
                        int i = 0;
                        zA = false;
                        while (true) {
                            arrayList = this.a;
                            if (i >= size) {
                                break;
                            }
                            zA |= ((sr3) arrayList.get(i)).a(arrayList2, arrayList3);
                            i++;
                            throw th;
                        }
                        arrayList.clear();
                        this.w.f.removeCallbacks(this.P);
                    } catch (Throwable th) {
                        this.a.clear();
                        this.w.f.removeCallbacks(this.P);
                        throw th;
                    }
                }
            }
            if (!zA) {
                break;
            }
            this.b = true;
            try {
                W(this.L, this.M);
                d();
                z2 = true;
            } catch (Throwable th2) {
                d();
                throw th2;
            }
        }
        g0();
        if (this.K) {
            this.K = false;
            for (d0 d0Var : this.c.d()) {
                o oVar2 = d0Var.c;
                if (oVar2.mDeferStart) {
                    if (this.b) {
                        this.K = true;
                    } else {
                        oVar2.mDeferStart = false;
                        d0Var.k();
                    }
                }
            }
        }
        this.c.b.values().removeAll(Collections.singleton(null));
        return z2;
    }
}
