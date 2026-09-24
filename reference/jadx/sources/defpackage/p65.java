package defpackage;

import java.io.IOException;
import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p65 extends fu1 implements iv1 {
    public static final yg7 J = lc8.K;
    public static final pk4 K = pk4.c;
    public final boolean G;
    public final rx2 H;
    public final boolean I;
    public final kp0 c;
    public final boolean d;
    public final gc8 e;
    public final gc8 f;
    public final em4 k;
    public final em4 n;
    public final rc8 p;
    public od2 q;
    public final Set r;
    public final Set t;
    public final Object x;
    public final Object y;

    public p65(p65 p65Var, kp0 kp0Var, em4 em4Var, em4 em4Var2, Set set, Set set2) {
        super(0, Map.class);
        rx2 rx2Var = null;
        set = (set == null || set.isEmpty()) ? null : set;
        this.r = set;
        this.t = set2;
        this.e = p65Var.e;
        this.f = p65Var.f;
        this.d = p65Var.d;
        this.p = p65Var.p;
        this.k = em4Var;
        this.n = em4Var2;
        this.q = f96.i;
        this.c = kp0Var;
        this.x = p65Var.x;
        this.I = p65Var.I;
        this.y = p65Var.y;
        this.G = p65Var.G;
        if (set2 != null || (set != null && !set.isEmpty())) {
            rx2Var = new rx2(set, set2);
        }
        this.H = rx2Var;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004a  */
    /* JADX WARN: Code duplicated, block: B:25:0x0057 A[RETURN] */
    public static p65 q(Set set, Set set2, gc8 gc8Var, boolean z, sc8 sc8Var, em4 em4Var, em4 em4Var2, Object obj) {
        gc8 gc8VarO0;
        gc8 gc8Var2;
        boolean z2;
        p65 p65Var;
        if (gc8Var == null) {
            gc8Var2 = J;
            gc8VarO0 = gc8Var2;
        } else {
            gc8 gc8VarR0 = gc8Var.r0();
            gc8VarO0 = gc8Var.w0(Properties.class) ? lc8.K : gc8Var.o0();
            gc8Var2 = gc8VarR0;
        }
        if (z) {
            if (gc8VarO0.f == Object.class) {
                z2 = false;
            }
            p65Var = new p65(set, set2, gc8Var2, gc8VarO0, z2, sc8Var, em4Var, em4Var2);
            if (obj != null) {
                return p65Var;
            }
            u81.w(p65.class, p65Var, "withFilterId");
            return new p65(p65Var, obj, false);
        }
        z = gc8VarO0 != null && Modifier.isFinal(gc8VarO0.f.getModifiers());
        z2 = z;
        p65Var = new p65(set, set2, gc8Var2, gc8VarO0, z2, sc8Var, em4Var, em4Var2);
        if (obj != null) {
            return p65Var;
        }
        u81.w(p65.class, p65Var, "withFilterId");
        return new p65(p65Var, obj, false);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:27:0x004f  */
    /* JADX WARN: Code duplicated, block: B:29:0x0053  */
    /* JADX WARN: Code duplicated, block: B:31:0x005b  */
    /* JADX WARN: Code duplicated, block: B:34:0x0067  */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0072  */
    /* JADX WARN: Code duplicated, block: B:42:0x007e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0084  */
    /* JADX WARN: Code duplicated, block: B:47:0x0094 A[LOOP:0: B:45:0x008e->B:47:0x0094, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:56:0x00be A[LOOP:1: B:54:0x00b8->B:56:0x00be, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:66:0x0101  */
    /* JADX WARN: Code duplicated, block: B:75:0x0125  */
    /* JADX WARN: Code duplicated, block: B:76:0x012a  */
    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        em4 em4VarE;
        em4 em4VarE2;
        em4 em4VarJ;
        gc8 gc8Var;
        em4 em4VarW;
        Set hashSet;
        Set hashSet2;
        Set set;
        Set set2;
        boolean zBooleanValue;
        bk4 bk4VarK;
        boolean z;
        p65 p65Var;
        qk4 qk4VarC;
        pk4 pk4Var;
        Object objL;
        Object objG;
        Boolean boolA;
        mk4 mk4VarX;
        Set set3;
        Set set4;
        Iterator it;
        Iterator it2;
        v77 v77Var = c87Var.a;
        as5 as5VarD = v77Var.d();
        od odVarA = kp0Var == null ? null : kp0Var.a();
        if (odVarA != null) {
            Object objK = as5VarD.k(odVarA);
            em4VarE = objK != null ? c87Var.E(odVarA, objK) : null;
            Object objC = as5VarD.c(odVarA);
            em4VarE2 = objC != null ? c87Var.E(odVarA, objC) : null;
            if (em4VarE2 == null) {
                em4VarE2 = this.n;
            }
            em4VarJ = tn7.j(c87Var, kp0Var, em4VarE2);
            gc8Var = this.f;
            if (em4VarJ == null && this.d && !gc8Var.z0()) {
                em4VarJ = c87Var.i(gc8Var, kp0Var);
            }
            em4 em4Var = em4VarJ;
            if (em4VarE == null) {
                em4VarE = this.k;
            }
            if (em4VarE == null) {
                em4VarW = c87Var.k(this.e, kp0Var);
            } else {
                em4VarW = c87Var.w(em4VarE, kp0Var);
            }
            em4 em4Var2 = em4VarW;
            boolean zY = false;
            hashSet = this.r;
            hashSet2 = this.t;
            if (odVarA != null) {
                mk4VarX = as5VarD.x(odVarA);
                if (mk4VarX.c) {
                    set3 = Collections.EMPTY_SET;
                } else {
                    set3 = mk4VarX.a;
                }
                if (set3 != null && !set3.isEmpty()) {
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    } else {
                        hashSet = new HashSet(hashSet);
                    }
                    it2 = set3.iterator();
                    while (it2.hasNext()) {
                        hashSet.add((String) it2.next());
                    }
                }
                set4 = as5VarD.A(odVarA).a;
                if (set4 != null) {
                    if (hashSet2 == null) {
                        hashSet2 = new HashSet();
                    } else {
                        hashSet2 = new HashSet(hashSet2);
                    }
                    it = set4.iterator();
                    while (it.hasNext()) {
                        hashSet2.add((String) it.next());
                    }
                }
                Set set5 = hashSet2;
                set2 = hashSet;
                zBooleanValue = Boolean.TRUE.equals(as5VarD.I(odVarA));
                set = set5;
            } else {
                set = hashSet2;
                set2 = hashSet;
                zBooleanValue = false;
            }
            bk4VarK = tn7.k(c87Var, kp0Var, Map.class);
            if (bk4VarK != null && (boolA = bk4VarK.a(yj4.b)) != null) {
                zBooleanValue = boolA.booleanValue();
            }
            z = zBooleanValue;
            u81.w(p65.class, this, "withResolved");
            p65Var = new p65(this, kp0Var, em4Var2, em4Var, set2, set);
            if (z != p65Var.I) {
                p65Var = new p65(p65Var, this.x, z);
            }
            if (odVarA != null && (objG = as5VarD.g(odVarA)) != null && p65Var.x != objG) {
                u81.w(p65.class, p65Var, "withFilterId");
                p65Var = new p65(p65Var, objG, p65Var.I);
            }
            if (kp0Var != null) {
                qk4VarC = kp0Var.c(v77Var, Map.class);
            } else {
                v77Var.e(Map.class);
                v77Var.k.getClass();
                qk4VarC = qk4.e;
            }
            if (qk4VarC == null && (pk4Var = qk4VarC.b) != pk4.e) {
                int iOrdinal = pk4Var.ordinal();
                if (iOrdinal != 1) {
                    pk4 pk4Var2 = K;
                    if (iOrdinal != 2) {
                        if (iOrdinal == 3) {
                            zY = true;
                            objL = pk4Var2;
                        } else if (iOrdinal == 4) {
                            objL = iz1.l(gc8Var);
                            if (objL != null && objL.getClass().isArray()) {
                                objL = zh8.p(objL);
                            }
                        } else if (iOrdinal == 5) {
                            objL = c87Var.x(qk4VarC.d);
                            if (objL != null) {
                                zY = c87Var.y(objL);
                            }
                        }
                        return p65Var.t(objL, zY);
                    }
                    objL = gc8Var.C() ? pk4Var2 : null;
                    zY = true;
                    return p65Var.t(objL, zY);
                }
                zY = true;
                objL = null;
                return p65Var.t(objL, zY);
            }
        }
        em4VarE = null;
        if (em4VarE2 == null) {
            em4VarE2 = this.n;
        }
        em4VarJ = tn7.j(c87Var, kp0Var, em4VarE2);
        gc8Var = this.f;
        if (em4VarJ == null) {
            em4VarJ = c87Var.i(gc8Var, kp0Var);
        }
        em4 em4Var3 = em4VarJ;
        if (em4VarE == null) {
            em4VarE = this.k;
        }
        if (em4VarE == null) {
            em4VarW = c87Var.k(this.e, kp0Var);
        } else {
            em4VarW = c87Var.w(em4VarE, kp0Var);
        }
        em4 em4Var4 = em4VarW;
        boolean zY2 = false;
        hashSet = this.r;
        hashSet2 = this.t;
        if (odVarA != null) {
            mk4VarX = as5VarD.x(odVarA);
            if (mk4VarX.c) {
                set3 = Collections.EMPTY_SET;
            } else {
                set3 = mk4VarX.a;
            }
            if (set3 != null) {
                if (hashSet == null) {
                    hashSet = new HashSet();
                } else {
                    hashSet = new HashSet(hashSet);
                }
                it2 = set3.iterator();
                while (it2.hasNext()) {
                    hashSet.add((String) it2.next());
                }
            }
            set4 = as5VarD.A(odVarA).a;
            if (set4 != null) {
                if (hashSet2 == null) {
                    hashSet2 = new HashSet();
                } else {
                    hashSet2 = new HashSet(hashSet2);
                }
                it = set4.iterator();
                while (it.hasNext()) {
                    hashSet2.add((String) it.next());
                }
            }
            Set set6 = hashSet2;
            set2 = hashSet;
            zBooleanValue = Boolean.TRUE.equals(as5VarD.I(odVarA));
            set = set6;
        } else {
            set = hashSet2;
            set2 = hashSet;
            zBooleanValue = false;
        }
        bk4VarK = tn7.k(c87Var, kp0Var, Map.class);
        if (bk4VarK != null) {
            zBooleanValue = boolA.booleanValue();
        }
        z = zBooleanValue;
        u81.w(p65.class, this, "withResolved");
        p65Var = new p65(this, kp0Var, em4Var4, em4Var3, set2, set);
        if (z != p65Var.I) {
            p65Var = new p65(p65Var, this.x, z);
        }
        if (odVarA != null) {
            u81.w(p65.class, p65Var, "withFilterId");
            p65Var = new p65(p65Var, objG, p65Var.I);
        }
        if (kp0Var != null) {
            qk4VarC = kp0Var.c(v77Var, Map.class);
        } else {
            v77Var.e(Map.class);
            v77Var.k.getClass();
            qk4VarC = qk4.e;
        }
        return qk4VarC == null ? p65Var : p65Var;
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        Map map = (Map) obj;
        if (!map.isEmpty()) {
            boolean z = this.G;
            Object obj2 = this.y;
            if (obj2 != null || z) {
                boolean z2 = K == obj2;
                em4 em4Var = this.n;
                if (em4Var != null) {
                    for (Object obj3 : map.values()) {
                        if (obj3 == null) {
                            if (z) {
                            }
                        } else if (z2) {
                            if (!em4Var.c(c87Var, obj3)) {
                            }
                        } else if (obj2 == null || !obj2.equals(map)) {
                        }
                    }
                } else {
                    for (Object obj4 : map.values()) {
                        if (obj4 != null) {
                            try {
                                em4 em4VarP = p(c87Var, obj4);
                                if (z2) {
                                    if (!em4VarP.c(c87Var, obj4)) {
                                    }
                                } else if (obj2 == null || !obj2.equals(map)) {
                                }
                            } catch (yk4 unused) {
                            }
                        } else if (z) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        Map map = (Map) obj;
        fk4Var.Y(map);
        s(map, fk4Var, c87Var);
        fk4Var.q();
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        Map map = (Map) obj;
        fk4Var.g(map);
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(map, mm4.START_OBJECT));
        s(map, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarE);
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        if (this.p == rc8Var) {
            return this;
        }
        u81.w(p65.class, this, "_withValueTypeSerializer");
        return new p65(this, rc8Var, this.y, this.G);
    }

    public final em4 p(c87 c87Var, Object obj) {
        Class<?> cls = obj.getClass();
        em4 em4VarX = this.q.x(cls);
        if (em4VarX != null) {
            return em4VarX;
        }
        gc8 gc8Var = this.f;
        boolean zU0 = gc8Var.u0();
        od2 od2Var = this.q;
        kp0 kp0Var = this.c;
        if (zU0) {
            ib ibVarG = od2Var.g(c87Var.e(gc8Var, cls), c87Var, kp0Var);
            od2 od2Var2 = (od2) ibVarG.c;
            if (od2Var != od2Var2) {
                this.q = od2Var2;
            }
            return (em4) ibVarG.b;
        }
        od2Var.getClass();
        em4 em4VarJ = c87Var.j(cls, kp0Var);
        od2 od2VarS = od2Var.s(cls, em4VarJ);
        if (od2Var != od2VarS) {
            this.q = od2VarS;
        }
        return em4VarJ;
    }

    public final void r(Map map, fk4 fk4Var, c87 c87Var, Object obj) throws IOException {
        em4 em4Var;
        em4 em4VarP;
        boolean z = K == obj;
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key == null) {
                em4Var = c87Var.k;
            } else {
                rx2 rx2Var = this.H;
                if (rx2Var == null || !rx2Var.b(key)) {
                    em4Var = this.k;
                }
            }
            Object value = entry.getValue();
            if (value != null) {
                em4VarP = this.n;
                if (em4VarP == null) {
                    em4VarP = p(c87Var, value);
                }
                if (z) {
                    if (em4VarP.c(c87Var, value)) {
                        continue;
                    } else {
                        em4Var.e(key, fk4Var, c87Var);
                        em4VarP.f(value, fk4Var, c87Var, this.p);
                    }
                } else if (obj == null || !obj.equals(value)) {
                    em4Var.e(key, fk4Var, c87Var);
                    em4VarP.f(value, fk4Var, c87Var, this.p);
                }
            } else if (this.G) {
                continue;
            } else {
                em4VarP = c87Var.f;
                em4Var.e(key, fk4Var, c87Var);
                try {
                    em4VarP.f(value, fk4Var, c87Var, this.p);
                } catch (Exception e) {
                    tn7.n(c87Var, e, map, String.valueOf(key));
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:154:0x01e9 A[EXC_TOP_SPLITTER, PHI: r15
      0x01e9: PHI (r15v1 em4) = (r15v0 em4), (r15v3 em4), (r15v3 em4), (r15v3 em4) binds: [B:134:0x01cc, B:140:0x01dd, B:142:0x01e0, B:144:0x01e6] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    /* JADX WARN: Code duplicated, block: B:19:0x0053 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0055  */
    /* JADX WARN: Code duplicated, block: B:21:0x0058  */
    /* JADX WARN: Code duplicated, block: B:24:0x0077  */
    /* JADX WARN: Code duplicated, block: B:55:0x00da  */
    /* JADX WARN: Code duplicated, block: B:8:0x0025  */
    public final void s(Map map, fk4 fk4Var, c87 c87Var) {
        Object next;
        TreeMap treeMap;
        Class<?> cls;
        em4 em4Var;
        em4 em4VarP;
        Object key;
        Map map2 = map;
        if (map2.isEmpty()) {
            return;
        }
        boolean z = this.I;
        Object obj = K;
        Object obj2 = this.y;
        boolean z2 = this.G;
        em4 em4Var2 = this.n;
        if (!z) {
            if (c87Var.a.l(x77.ORDER_MAP_ENTRIES_BY_KEYS)) {
                if (!(map2 instanceof SortedMap) && !map2.isEmpty()) {
                    next = map2.keySet().iterator().next();
                    if (!Comparable.class.isInstance(next)) {
                        if ((map2 instanceof HashMap) || !map2.containsKey(null)) {
                            treeMap = new TreeMap(map2);
                        } else {
                            treeMap = new TreeMap();
                            Iterator it = map2.entrySet().iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    Map.Entry entry = (Map.Entry) it.next();
                                    Object key2 = entry.getKey();
                                    if (key2 == null) {
                                        Object value = entry.getValue();
                                        i33 i33Var = c87Var.k;
                                        if (value == null) {
                                            if (z2) {
                                            }
                                            try {
                                                i33Var.e(null, fk4Var, c87Var);
                                                throw null;
                                            } catch (Exception e) {
                                                tn7.n(c87Var, e, value, "");
                                                throw null;
                                            }
                                        }
                                        em4 em4VarP2 = em4Var2 == null ? p(c87Var, value) : em4Var2;
                                        if (obj2 == obj) {
                                            if (em4VarP2.c(c87Var, value)) {
                                            }
                                            i33Var.e(null, fk4Var, c87Var);
                                            throw null;
                                        }
                                        if (obj2 != null && obj2.equals(value)) {
                                        }
                                        i33Var.e(null, fk4Var, c87Var);
                                        throw null;
                                    }
                                    treeMap.put(key2, entry.getValue());
                                }
                            }
                        }
                        map2 = treeMap;
                    } else if (c87Var.a.l(x77.FAIL_ON_ORDER_MAP_BY_INCOMPARABLE_KEY)) {
                        if (next == null) {
                            cls = Object.class;
                        } else {
                            cls = next.getClass();
                        }
                        c87Var.A(cls, "Cannot order Map entries by key of incomparable type " + u81.e(next) + ", consider disabling `SerializationFeature.FAIL_ON_ORDER_MAP_BY_INCOMPARABLE_KEY` to simply skip sorting");
                        throw null;
                    }
                }
            }
        } else if (!(map2 instanceof SortedMap)) {
            next = map2.keySet().iterator().next();
            if (!Comparable.class.isInstance(next)) {
                if (map2 instanceof HashMap) {
                    treeMap = new TreeMap(map2);
                } else {
                    treeMap = new TreeMap(map2);
                }
                map2 = treeMap;
            } else if (c87Var.a.l(x77.FAIL_ON_ORDER_MAP_BY_INCOMPARABLE_KEY)) {
                if (next == null) {
                    cls = Object.class;
                } else {
                    cls = next.getClass();
                }
                c87Var.A(cls, "Cannot order Map entries by key of incomparable type " + u81.e(next) + ", consider disabling `SerializationFeature.FAIL_ON_ORDER_MAP_BY_INCOMPARABLE_KEY` to simply skip sorting");
                throw null;
            }
        }
        Object obj3 = this.x;
        if (obj3 != null) {
            l(c87Var, obj3);
            throw null;
        }
        rx2 rx2Var = this.H;
        rc8 rc8Var = this.p;
        em4 em4Var3 = this.k;
        if (obj2 != null || z2) {
            if (rc8Var != null) {
                r(map2, fk4Var, c87Var, obj2);
                return;
            }
            boolean z3 = obj == obj2;
            for (Map.Entry entry2 : map2.entrySet()) {
                Object key3 = entry2.getKey();
                if (key3 == null) {
                    em4Var = c87Var.k;
                } else if (rx2Var == null || !rx2Var.b(key3)) {
                    em4Var = em4Var3;
                }
                Object value2 = entry2.getValue();
                if (value2 != null) {
                    em4VarP = em4Var2 == null ? p(c87Var, value2) : em4Var2;
                    if (z3) {
                        if (em4VarP.c(c87Var, value2)) {
                            continue;
                        } else {
                            em4Var.e(key3, fk4Var, c87Var);
                            em4VarP.e(value2, fk4Var, c87Var);
                        }
                    } else if (obj2 == null || !obj2.equals(value2)) {
                        em4Var.e(key3, fk4Var, c87Var);
                        em4VarP.e(value2, fk4Var, c87Var);
                    }
                } else if (z2) {
                    continue;
                } else {
                    em4VarP = c87Var.f;
                    try {
                        em4Var.e(key3, fk4Var, c87Var);
                        em4VarP.e(value2, fk4Var, c87Var);
                    } catch (Exception e2) {
                        tn7.n(c87Var, e2, map2, String.valueOf(key3));
                        throw null;
                    }
                }
            }
            return;
        }
        if (em4Var2 != null) {
            for (Map.Entry entry3 : map2.entrySet()) {
                Object key4 = entry3.getKey();
                if (rx2Var == null || !rx2Var.b(key4)) {
                    if (key4 == null) {
                        c87Var.k.e(null, fk4Var, c87Var);
                        throw null;
                    }
                    em4Var3.e(key4, fk4Var, c87Var);
                    Object value3 = entry3.getValue();
                    if (value3 == null) {
                        c87Var.h(fk4Var);
                    } else if (rc8Var == null) {
                        try {
                            em4Var2.e(value3, fk4Var, c87Var);
                        } catch (Exception e3) {
                            tn7.n(c87Var, e3, map2, String.valueOf(key4));
                            throw null;
                        }
                    } else {
                        em4Var2.f(value3, fk4Var, c87Var, rc8Var);
                    }
                }
            }
            return;
        }
        if (rc8Var != null) {
            r(map2, fk4Var, c87Var, null);
            return;
        }
        try {
            key = null;
            for (Map.Entry entry4 : map2.entrySet()) {
                try {
                    Object value4 = entry4.getValue();
                    key = entry4.getKey();
                    if (key == null) {
                        c87Var.k.e(null, fk4Var, c87Var);
                        throw null;
                    }
                    if (rx2Var == null || !rx2Var.b(key)) {
                        em4Var3.e(key, fk4Var, c87Var);
                        if (value4 == null) {
                            c87Var.h(fk4Var);
                        } else {
                            (em4Var2 == null ? p(c87Var, value4) : em4Var2).e(value4, fk4Var, c87Var);
                        }
                    }
                } catch (Exception e4) {
                    e = e4;
                    tn7.n(c87Var, e, map2, String.valueOf(key));
                    throw null;
                }
            }
        } catch (Exception e5) {
            e = e5;
            key = null;
        }
    }

    public final p65 t(Object obj, boolean z) {
        if (obj == this.y && z == this.G) {
            return this;
        }
        u81.w(p65.class, this, "withContentInclusion");
        return new p65(this, this.p, obj, z);
    }

    public p65(Set set, Set set2, gc8 gc8Var, gc8 gc8Var2, boolean z, rc8 rc8Var, em4 em4Var, em4 em4Var2) {
        super(0, Map.class);
        rx2 rx2Var = null;
        set = (set == null || set.isEmpty()) ? null : set;
        this.r = set;
        this.t = set2;
        this.e = gc8Var;
        this.f = gc8Var2;
        this.d = z;
        this.p = rc8Var;
        this.k = em4Var;
        this.n = em4Var2;
        this.q = f96.i;
        this.c = null;
        this.x = null;
        this.I = false;
        this.y = null;
        this.G = false;
        if (set2 != null || (set != null && !set.isEmpty())) {
            rx2Var = new rx2(set, set2);
        }
        this.H = rx2Var;
    }

    public p65(p65 p65Var, rc8 rc8Var, Object obj, boolean z) {
        super(0, Map.class);
        this.r = p65Var.r;
        this.t = p65Var.t;
        this.e = p65Var.e;
        this.f = p65Var.f;
        this.d = p65Var.d;
        this.p = rc8Var;
        this.k = p65Var.k;
        this.n = p65Var.n;
        this.q = p65Var.q;
        this.c = p65Var.c;
        this.x = p65Var.x;
        this.I = p65Var.I;
        this.y = obj;
        this.G = z;
        this.H = p65Var.H;
    }

    public p65(p65 p65Var, Object obj, boolean z) {
        super(0, Map.class);
        this.r = p65Var.r;
        this.t = p65Var.t;
        this.e = p65Var.e;
        this.f = p65Var.f;
        this.d = p65Var.d;
        this.p = p65Var.p;
        this.k = p65Var.k;
        this.n = p65Var.n;
        this.q = f96.i;
        this.c = p65Var.c;
        this.x = obj;
        this.I = z;
        this.y = p65Var.y;
        this.G = p65Var.G;
        this.H = p65Var.H;
    }
}
