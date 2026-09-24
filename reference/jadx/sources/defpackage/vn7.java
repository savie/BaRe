package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vn7 {
    public um4 a;
    public tm4 b;
    public String c;
    public mc8 d;

    public final sc8 a(v77 v77Var, gc8 gc8Var, ArrayList arrayList) {
        int iLastIndexOf;
        if (this.a == um4.NONE || gc8Var.f.isPrimitive()) {
            return null;
        }
        if (this.a == um4.DEDUCTION) {
            return a60.c;
        }
        en0 en0Var = v77Var.b;
        en0Var.getClass();
        v77Var.i(u65.BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES);
        mc8 m81Var = this.d;
        if (m81Var == null) {
            um4 um4Var = this.a;
            if (um4Var == null) {
                l0.e("Cannot build, 'init()' not yet called");
                return null;
            }
            int iOrdinal = um4Var.ordinal();
            if (iOrdinal == 0) {
                m81Var = null;
            } else if (iOrdinal == 1) {
                m81Var = new m81(gc8Var, en0Var.a, arrayList);
            } else if (iOrdinal == 2) {
                m81Var = new yf5(gc8Var, en0Var.a, arrayList);
            } else if (iOrdinal == 3) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                v77Var.i(u65.ACCEPT_CASE_INSENSITIVE_VALUES);
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ik5 ik5Var = (ik5) it.next();
                        Class cls = ik5Var.a;
                        String name = ik5Var.c;
                        if (name == null && (iLastIndexOf = (name = cls.getName()).lastIndexOf(46)) >= 0) {
                            name = name.substring(iLastIndexOf + 1);
                        }
                        concurrentHashMap.put(cls.getName(), name);
                    }
                }
                m81Var = new pc8(v77Var, gc8Var, concurrentHashMap, null);
            } else if (iOrdinal != 4) {
                if (iOrdinal != 5) {
                    m0.g(this.a, "Do not know how to construct standard type id resolver for idType: ");
                    return null;
                }
                m81Var = new m81(gc8Var, en0Var.a, arrayList);
            } else {
                ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
                v77Var.i(u65.ACCEPT_CASE_INSENSITIVE_VALUES);
                if (arrayList != null) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ik5 ik5Var2 = (ik5) it2.next();
                        Class cls2 = ik5Var2.a;
                        String name2 = ik5Var2.c;
                        if (name2 == null) {
                            name2 = cls2.getName();
                            int iMax = Math.max(name2.lastIndexOf(46), name2.lastIndexOf(36));
                            if (iMax >= 0) {
                                name2 = name2.substring(iMax + 1);
                            }
                        }
                        concurrentHashMap2.put(cls2.getName(), name2);
                    }
                }
                m81Var = new kg7(v77Var, gc8Var, concurrentHashMap2, null);
            }
        }
        int iOrdinal2 = this.b.ordinal();
        if (iOrdinal2 == 0) {
            return new d60(m81Var, null, this.c);
        }
        if (iOrdinal2 == 1) {
            return new e60(m81Var, null);
        }
        if (iOrdinal2 == 2) {
            return new z50(m81Var, null);
        }
        if (iOrdinal2 == 3) {
            return new c60(m81Var, null, this.c);
        }
        if (iOrdinal2 == 4) {
            return new b60(m81Var, null, this.c);
        }
        m0.g(this.b, "Do not know how to construct standard type serializer for inclusion type: ");
        return null;
    }

    public final void b(wm4 wm4Var) {
        um4 um4Var = wm4Var.a;
        Objects.requireNonNull(um4Var);
        this.a = um4Var;
        this.b = wm4Var.b;
        String str = wm4Var.c;
        if (str == null || str.isEmpty()) {
            str = um4Var.a;
        }
        this.c = str;
    }
}
