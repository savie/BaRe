package defpackage;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hu4 {
    public fu a = new fu();
    public final boolean b = true;
    public j53 c = new j53();
    public st4 d;
    public final WeakReference e;
    public int f;
    public boolean g;
    public boolean h;
    public final ArrayList i;
    public final km7 j;

    public hu4(fu4 fu4Var) {
        st4 st4Var = st4.b;
        this.d = st4Var;
        this.i = new ArrayList();
        this.e = new WeakReference(fu4Var);
        this.j = new km7(st4Var);
    }

    public final void a(eu4 eu4Var) {
        au4 vh6Var;
        Object obj;
        fu4 fu4Var;
        rt4 rt4Var;
        c("addObserver");
        st4 st4Var = this.d;
        st4 st4Var2 = st4.a;
        if (st4Var != st4Var2) {
            st4Var2 = st4.b;
        }
        gu4 gu4Var = new gu4();
        HashMap map = ju4.a;
        boolean z = eu4Var instanceof au4;
        boolean z2 = eu4Var instanceof lu2;
        int i = 1;
        if (z && z2) {
            vh6Var = new ef2((lu2) eu4Var, (au4) eu4Var);
        } else if (z2) {
            vh6Var = new ef2((lu2) eu4Var, null);
        } else if (z) {
            vh6Var = (au4) eu4Var;
        } else {
            Class<?> cls = eu4Var.getClass();
            if (ju4.b(cls) == 2) {
                Object obj2 = ju4.b.get(cls);
                obj2.getClass();
                List list = (List) obj2;
                if (list.size() == 1) {
                    ju4.a((Constructor) list.get(0), eu4Var);
                    throw null;
                }
                int size = list.size();
                wu3[] wu3VarArr = new wu3[size];
                if (size > 0) {
                    ju4.a((Constructor) list.get(0), eu4Var);
                    throw null;
                }
                vh6Var = new bo1(wu3VarArr, i);
            } else {
                vh6Var = new vh6(eu4Var);
            }
        }
        gu4Var.b = vh6Var;
        gu4Var.a = st4Var2;
        j53 j53Var = this.c;
        xw6 xw6VarC = j53Var.c(eu4Var);
        if (xw6VarC != null) {
            obj = xw6VarC.b;
        } else {
            HashMap map2 = j53Var.e;
            xw6 xw6Var = new xw6(eu4Var, gu4Var);
            j53Var.d++;
            xw6 xw6Var2 = j53Var.b;
            if (xw6Var2 == null) {
                j53Var.a = xw6Var;
                j53Var.b = xw6Var;
            } else {
                xw6Var2.c = xw6Var;
                xw6Var.d = xw6Var2;
                j53Var.b = xw6Var;
            }
            map2.put(eu4Var, xw6Var);
            obj = null;
        }
        if (((gu4) obj) == null && (fu4Var = (fu4) this.e.get()) != null) {
            boolean z3 = this.f != 0 || this.g;
            st4 st4VarB = b(eu4Var);
            this.f++;
            while (gu4Var.a.compareTo(st4VarB) < 0 && this.c.e.containsKey(eu4Var)) {
                st4 st4Var3 = gu4Var.a;
                ArrayList arrayList = this.i;
                arrayList.add(st4Var3);
                pt4 pt4Var = rt4.Companion;
                st4 st4Var4 = gu4Var.a;
                pt4Var.getClass();
                st4Var4.getClass();
                int iOrdinal = st4Var4.ordinal();
                if (iOrdinal == 1) {
                    rt4Var = rt4.ON_CREATE;
                } else if (iOrdinal != 2) {
                    rt4Var = iOrdinal != 3 ? null : rt4.ON_RESUME;
                } else {
                    rt4Var = rt4.ON_START;
                }
                if (rt4Var == null) {
                    m0.g(gu4Var.a, "no event up from ");
                    return;
                } else {
                    gu4Var.a(fu4Var, rt4Var);
                    arrayList.remove(arrayList.size() - 1);
                    st4VarB = b(eu4Var);
                }
            }
            if (!z3) {
                g();
            }
            this.f--;
        }
    }

    public final st4 b(eu4 eu4Var) {
        HashMap map = this.c.e;
        xw6 xw6Var = map.containsKey(eu4Var) ? ((xw6) map.get(eu4Var)).d : null;
        st4 st4Var = xw6Var != null ? ((gu4) xw6Var.b).a : null;
        ArrayList arrayList = this.i;
        st4 st4Var2 = arrayList.isEmpty() ? null : (st4) dj7.e(arrayList, 1);
        st4 st4Var3 = this.d;
        st4Var3.getClass();
        if (st4Var == null || st4Var.compareTo(st4Var3) >= 0) {
            st4Var = st4Var3;
        }
        return (st4Var2 == null || st4Var2.compareTo(st4Var) >= 0) ? st4Var : st4Var2;
    }

    public final void c(String str) {
        if (this.b) {
            f40.W().d.getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return;
            }
            g84.f(eq3.k("Method ", str, " must be called on the main thread"));
        }
    }

    public final void d(rt4 rt4Var) {
        rt4Var.getClass();
        c("handleLifecycleEvent");
        e(rt4Var.a());
    }

    public final void e(st4 st4Var) {
        if (this.d == st4Var) {
            return;
        }
        fu4 fu4Var = (fu4) this.e.get();
        st4 st4Var2 = this.d;
        st4Var2.getClass();
        st4 st4Var3 = st4.b;
        st4 st4Var4 = st4.a;
        if (st4Var2 == st4Var3 && st4Var == st4Var4) {
            throw new IllegalStateException(("State must be at least '" + st4.c + "' to be moved to '" + st4Var + "' in component " + fu4Var).toString());
        }
        if (st4Var2 == st4Var4 && st4Var2 != st4Var) {
            throw new IllegalStateException(("State is '" + st4Var4 + "' and cannot be moved to `" + st4Var + "` in component " + fu4Var).toString());
        }
        this.d = st4Var;
        if (this.g || this.f != 0) {
            this.h = true;
            return;
        }
        this.g = true;
        g();
        this.g = false;
        if (this.d == st4Var4) {
            this.c = new j53();
        }
    }

    public final void f(eu4 eu4Var) {
        eu4Var.getClass();
        c("removeObserver");
        this.c.d(eu4Var);
    }

    public final void g() {
        rt4 rt4Var;
        rt4 rt4Var2;
        fu4 fu4Var = (fu4) this.e.get();
        if (fu4Var == null) {
            l0.e("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
            return;
        }
        while (true) {
            j53 j53Var = this.c;
            if (j53Var.d != 0) {
                xw6 xw6Var = j53Var.a;
                xw6Var.getClass();
                st4 st4Var = ((gu4) xw6Var.b).a;
                xw6 xw6Var2 = this.c.b;
                xw6Var2.getClass();
                st4 st4Var2 = ((gu4) xw6Var2.b).a;
                if (st4Var == st4Var2 && this.d == st4Var2) {
                    break;
                }
                this.h = false;
                st4 st4Var3 = this.d;
                xw6 xw6Var3 = this.c.a;
                xw6Var3.getClass();
                int iCompareTo = st4Var3.compareTo(((gu4) xw6Var3.b).a);
                ArrayList arrayList = this.i;
                if (iCompareTo < 0) {
                    j53 j53Var2 = this.c;
                    ww6 ww6Var = new ww6(j53Var2.b, j53Var2.a);
                    j53Var2.c.put(ww6Var, Boolean.FALSE);
                    while (ww6Var.hasNext() && !this.h) {
                        Map.Entry entry = (Map.Entry) ww6Var.next();
                        entry.getClass();
                        eu4 eu4Var = (eu4) entry.getKey();
                        gu4 gu4Var = (gu4) entry.getValue();
                        while (gu4Var.a.compareTo(this.d) > 0 && !this.h && this.c.e.containsKey(eu4Var)) {
                            pt4 pt4Var = rt4.Companion;
                            st4 st4Var4 = gu4Var.a;
                            pt4Var.getClass();
                            st4Var4.getClass();
                            int iOrdinal = st4Var4.ordinal();
                            if (iOrdinal == 2) {
                                rt4Var2 = rt4.ON_DESTROY;
                            } else if (iOrdinal != 3) {
                                rt4Var2 = iOrdinal != 4 ? null : rt4.ON_PAUSE;
                            } else {
                                rt4Var2 = rt4.ON_STOP;
                            }
                            if (rt4Var2 == null) {
                                m0.g(gu4Var.a, "no event down from ");
                                return;
                            } else {
                                arrayList.add(rt4Var2.a());
                                gu4Var.a(fu4Var, rt4Var2);
                                arrayList.remove(arrayList.size() - 1);
                            }
                        }
                    }
                }
                xw6 xw6Var4 = this.c.b;
                if (!this.h && xw6Var4 != null && this.d.compareTo(((gu4) xw6Var4.b).a) > 0) {
                    j53 j53Var3 = this.c;
                    j53Var3.getClass();
                    yw6 yw6Var = new yw6(j53Var3);
                    j53Var3.c.put(yw6Var, Boolean.FALSE);
                    while (yw6Var.hasNext() && !this.h) {
                        Map.Entry entry2 = (Map.Entry) yw6Var.next();
                        eu4 eu4Var2 = (eu4) entry2.getKey();
                        gu4 gu4Var2 = (gu4) entry2.getValue();
                        while (gu4Var2.a.compareTo(this.d) < 0 && !this.h && this.c.e.containsKey(eu4Var2)) {
                            arrayList.add(gu4Var2.a);
                            pt4 pt4Var2 = rt4.Companion;
                            st4 st4Var5 = gu4Var2.a;
                            pt4Var2.getClass();
                            st4Var5.getClass();
                            int iOrdinal2 = st4Var5.ordinal();
                            if (iOrdinal2 == 1) {
                                rt4Var = rt4.ON_CREATE;
                            } else if (iOrdinal2 != 2) {
                                rt4Var = iOrdinal2 != 3 ? null : rt4.ON_RESUME;
                            } else {
                                rt4Var = rt4.ON_START;
                            }
                            if (rt4Var == null) {
                                m0.g(gu4Var2.a, "no event up from ");
                                return;
                            } else {
                                gu4Var2.a(fu4Var, rt4Var);
                                arrayList.remove(arrayList.size() - 1);
                            }
                        }
                    }
                }
            } else {
                break;
            }
        }
        this.h = false;
        Object obj = this.d;
        km7 km7Var = this.j;
        km7Var.getClass();
        if (obj == null) {
            obj = ly8.c;
        }
        km7Var.e(null, obj);
    }
}
