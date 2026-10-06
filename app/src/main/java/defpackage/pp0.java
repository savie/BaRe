package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Member;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pp0 implements jk8, jo1 {
    public static final mp0[] n = new mp0[0];
    public final Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public Object k;

    public pp0(un1 un1Var, jo1 jo1Var) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        Set<ji2> set = un1Var.c;
        Set set2 = un1Var.g;
        for (ji2 ji2Var : set) {
            int i = ji2Var.c;
            int i2 = ji2Var.b;
            boolean z = i == 0;
            nc6 nc6Var = ji2Var.a;
            if (z) {
                if (i2 == 2) {
                    hashSet4.add(nc6Var);
                } else {
                    hashSet.add(nc6Var);
                }
            } else if (i == 2) {
                hashSet3.add(nc6Var);
            } else if (i2 == 2) {
                hashSet5.add(nc6Var);
            } else {
                hashSet2.add(nc6Var);
            }
        }
        if (!set2.isEmpty()) {
            hashSet.add(nc6.a(rb6.class));
        }
        this.a = Collections.unmodifiableSet(hashSet);
        this.b = Collections.unmodifiableSet(hashSet2);
        this.c = Collections.unmodifiableSet(hashSet3);
        this.d = Collections.unmodifiableSet(hashSet4);
        this.e = Collections.unmodifiableSet(hashSet5);
        this.f = set2;
        this.k = jo1Var;
    }

    @Override // defpackage.jo1
    public Set a(nc6 nc6Var) {
        if (((Set) this.d).contains(nc6Var)) {
            return ((jo1) this.k).a(nc6Var);
        }
        e6.f(nc6Var, ">.", "Attempting to request an undeclared dependency Set<");
        return null;
    }

    @Override // defpackage.jo1
    public Object b(Class cls) {
        if (!((Set) this.a).contains(nc6.a(cls))) {
            throw new mn1(fz5.l(cls, "Attempting to request an undeclared dependency ", "."));
        }
        Object objB = ((jo1) this.k).b(cls);
        return !cls.equals(rb6.class) ? objB : new ym6((Set) this.f, (rb6) objB);
    }

    @Override // defpackage.jo1
    public ga6 c(Class cls) {
        return f(nc6.a(cls));
    }

    @Override // defpackage.jo1
    public ga6 d(nc6 nc6Var) {
        if (((Set) this.e).contains(nc6Var)) {
            return ((jo1) this.k).d(nc6Var);
        }
        e6.f(nc6Var, ">>.", "Attempting to request an undeclared dependency Provider<Set<");
        return null;
    }

    @Override // defpackage.jo1
    public lu5 e(nc6 nc6Var) {
        if (((Set) this.c).contains(nc6Var)) {
            return ((jo1) this.k).e(nc6Var);
        }
        e6.f(nc6Var, ">.", "Attempting to request an undeclared dependency Deferred<");
        return null;
    }

    @Override // defpackage.jo1
    public ga6 f(nc6 nc6Var) {
        if (((Set) this.b).contains(nc6Var)) {
            return ((jo1) this.k).f(nc6Var);
        }
        e6.f(nc6Var, ">.", "Attempting to request an undeclared dependency Provider<");
        return null;
    }

    @Override // defpackage.jo1
    public Object g(nc6 nc6Var) {
        if (((Set) this.a).contains(nc6Var)) {
            return ((jo1) this.k).g(nc6Var);
        }
        e6.f(nc6Var, ".", "Attempting to request an undeclared dependency ");
        return null;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (SwiftSegmentedCardGroup) this.a;
    }

    @Override // defpackage.jo1
    public lu5 h(Class cls) {
        return e(nc6.a(cls));
    }

    public np0 i() {
        mp0[] mp0VarArr;
        if (((od) this.f) != null && ((v77) this.b).i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            od odVar = (od) this.f;
            boolean zI = ((v77) this.b).i(u65.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
            Member memberR0 = odVar.r0();
            if (memberR0 != null) {
                u81.d(memberR0, zI);
            }
        }
        List list = (List) this.c;
        if (list == null || list.isEmpty()) {
            if (((lr5) this.k) == null) {
                return null;
            }
            mp0VarArr = n;
        } else {
            List list2 = (List) this.c;
            mp0VarArr = (mp0[]) list2.toArray(new mp0[list2.size()]);
            if (((v77) this.b).i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                for (mp0 mp0Var : mp0VarArr) {
                    mp0Var.h((v77) this.b);
                }
            }
        }
        mp0[] mp0VarArr2 = (mp0[]) this.d;
        if (mp0VarArr2 == null || mp0VarArr2.length == ((List) this.c).size()) {
            return new np0(((wo0) this.a).a, this, mp0VarArr, (mp0[]) this.d);
        }
        throw new IllegalStateException(String.format("Mismatch between `properties` size (%d), `filteredProperties` (%s): should have as many (or `null` for latter)", Integer.valueOf(((List) this.c).size()), Integer.valueOf(((mp0[]) this.d).length)));
    }

    public pp0(SwiftSegmentedCardGroup swiftSegmentedCardGroup, ImageView imageView, RecyclerView recyclerView, QuickRecyclerView quickRecyclerView, ca2 ca2Var, TextView textView, TextView textView2) {
        this.a = swiftSegmentedCardGroup;
        this.b = imageView;
        this.c = recyclerView;
        this.d = quickRecyclerView;
        this.e = ca2Var;
        this.f = textView;
        this.k = textView2;
    }

    public pp0(wo0 wo0Var) {
        this.c = Collections.EMPTY_LIST;
        this.a = wo0Var;
    }
}
