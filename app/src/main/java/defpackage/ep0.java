package defpackage;

import java.io.File;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ep0 extends ji8 implements Serializable {
    public static final HashMap n;
    public static final HashMap p;

    static {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        map2.put(String.class.getName(), new iq7(String.class));
        vp5 vp5Var = vp5.f;
        map2.put(StringBuffer.class.getName(), vp5Var);
        map2.put(StringBuilder.class.getName(), vp5Var);
        map2.put(Character.class.getName(), vp5Var);
        map2.put(Character.TYPE.getName(), vp5Var);
        map2.put(Integer.class.getName(), new bq5(Integer.class));
        Class cls = Integer.TYPE;
        map2.put(cls.getName(), new bq5(cls));
        map2.put(Long.class.getName(), new cq5(Long.class));
        Class cls2 = Long.TYPE;
        map2.put(cls2.getName(), new cq5(cls2));
        String name = Byte.class.getName();
        aq5 aq5Var = aq5.d;
        map2.put(name, aq5Var);
        map2.put(Byte.TYPE.getName(), aq5Var);
        String name2 = Short.class.getName();
        dq5 dq5Var = dq5.d;
        map2.put(name2, dq5Var);
        map2.put(Short.TYPE.getName(), dq5Var);
        map2.put(Double.class.getName(), new yp5(Double.class));
        Class cls3 = Double.TYPE;
        map2.put(cls3.getName(), new yp5(cls3));
        String name3 = Float.class.getName();
        zp5 zp5Var = zp5.d;
        map2.put(name3, zp5Var);
        map2.put(Float.TYPE.getName(), zp5Var);
        map2.put(Boolean.TYPE.getName(), new qt0(true));
        int i = 0;
        map2.put(Boolean.class.getName(), new qt0(false));
        map2.put(BigInteger.class.getName(), new wp5(BigInteger.class));
        map2.put(BigDecimal.class.getName(), new wp5(BigDecimal.class));
        map2.put(Calendar.class.getName(), mz0.k);
        map2.put(Date.class.getName(), dd2.k);
        HashMap map3 = new HashMap();
        map3.put(URL.class, new vp5(i, URL.class));
        map3.put(URI.class, new vp5(i, URI.class));
        map3.put(Currency.class, new vp5(i, Currency.class));
        map3.put(UUID.class, new jd8(null));
        map3.put(Pattern.class, new vp5(i, Pattern.class));
        map3.put(Locale.class, new vp5(i, Locale.class));
        map3.put(AtomicBoolean.class, nn7.class);
        map3.put(AtomicInteger.class, on7.class);
        map3.put(AtomicLong.class, pn7.class);
        map3.put(File.class, l93.class);
        map3.put(Class.class, p81.class);
        qp5 qp5Var = qp5.d;
        map3.put(Void.class, qp5Var);
        map3.put(Void.TYPE, qp5Var);
        for (Map.Entry entry : map3.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof em4) {
                map2.put(((Class) entry.getKey()).getName(), (em4) value);
            } else {
                map.put(((Class) entry.getKey()).getName(), (Class) value);
            }
        }
        map.put(g58.class.getName(), h58.class);
        n = map2;
        p = map;
    }

    public static qk4 S(c87 c87Var, wo0 wo0Var, gc8 gc8Var, Class cls) {
        v77 v77Var = c87Var.a;
        v77Var.k.getClass();
        qk4 qk4VarA = qk4.e;
        as5 as5Var = wo0Var.d;
        if (as5Var != null) {
            qk4VarA = qk4VarA.a(as5Var.z(wo0Var.e));
        }
        v77Var.e(cls);
        v77Var.e(gc8Var.f);
        return qk4VarA;
    }

    public static em4 U(c87 c87Var, jb9 jb9Var) {
        v77 v77Var = c87Var.a;
        Object objK = v77Var.d().K(jb9Var);
        if (objK == null) {
            return null;
        }
        em4 em4VarE = c87Var.E(jb9Var, objK);
        Object objG = v77Var.d().G(jb9Var);
        if (objG == null) {
            return em4VarE;
        }
        c87Var.f(objG);
        return em4VarE;
    }

    public final tn7 T(c87 c87Var, gc8 gc8Var, wo0 wo0Var) {
        if (yl4.class.isAssignableFrom(gc8Var.f)) {
            return u77.c;
        }
        od odVarC = wo0Var.c();
        if (odVarC == null) {
            return null;
        }
        v77 v77Var = c87Var.a;
        v77Var.getClass();
        if (v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            u81.d(odVarC.r0(), v77Var.i(u65.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        gc8 gc8VarD = odVarC.D();
        em4 em4VarU = U(c87Var, odVarC);
        if (em4VarU == null) {
            em4VarU = (em4) gc8VarD.n;
        }
        rc8 rc8VarH = (rc8) gc8VarD.p;
        if (rc8VarH == null) {
            rc8VarH = h(v77Var, gc8VarD);
        }
        mk4 mk4VarX = v77Var.d().x(odVarC);
        Set set = mk4VarX.c ? Collections.EMPTY_SET : mk4VarX.a;
        if (em4VarU != null && !set.isEmpty()) {
            em4VarU = em4VarU.i(set);
        }
        return new kn4(odVarC, rc8VarH, em4VarU, set);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x016b  */
    /* JADX WARN: Code duplicated, block: B:103:0x0176  */
    /* JADX WARN: Code duplicated, block: B:104:0x0178  */
    /* JADX WARN: Code duplicated, block: B:106:0x017c  */
    /* JADX WARN: Code duplicated, block: B:108:0x0183  */
    /* JADX WARN: Code duplicated, block: B:110:0x018b  */
    /* JADX WARN: Code duplicated, block: B:111:0x0199  */
    /* JADX WARN: Code duplicated, block: B:112:0x019f  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:81:0x0101  */
    /* JADX WARN: Code duplicated, block: B:90:0x0131  */
    /* JADX WARN: Code duplicated, block: B:92:0x0137  */
    /* JADX WARN: Code duplicated, block: B:94:0x0147  */
    /* JADX WARN: Code duplicated, block: B:97:0x0160  */
    /* JADX WARN: Code duplicated, block: B:98:0x0163  */
    @Override // defpackage.ji8
    public final em4 f(c87 c87Var, gc8 gc8Var) {
        em4 rn7Var;
        em4 qn7Var;
        xv5 xv5Var;
        LinkedList linkedList;
        od odVarC;
        em4 qn7Var2;
        em4 em4VarF;
        mk4 mk4VarX;
        Set set;
        Class cls;
        v77 v77Var = c87Var.a;
        wo0 wo0VarK = v77Var.k(gc8Var);
        Class cls2 = gc8Var.f;
        hd hdVar = wo0VarK.e;
        Object objK = v77Var.d().k(hdVar);
        em4 em4VarE = objK != null ? c87Var.E(hdVar, objK) : null;
        if (em4VarE != null) {
            return em4VarE;
        }
        if (cls2 != null && cls2 != Object.class) {
            if (cls2 == String.class) {
                rn7Var = xx3.e;
            } else {
                if (cls2.isPrimitive()) {
                    Annotation[] annotationArr = u81.a;
                    if (cls2 == Integer.TYPE) {
                        cls = Integer.class;
                    } else if (cls2 == Long.TYPE) {
                        cls = Long.class;
                    } else if (cls2 == Boolean.TYPE) {
                        cls = Boolean.class;
                    } else if (cls2 == Double.TYPE) {
                        cls = Double.class;
                    } else if (cls2 == Float.TYPE) {
                        cls = Float.class;
                    } else if (cls2 == Byte.TYPE) {
                        cls = Byte.class;
                    } else if (cls2 == Short.TYPE) {
                        cls = Short.class;
                    } else {
                        if (cls2 != Character.TYPE) {
                            z5.d(cls2.getName(), " is not a primitive type", "Class ");
                            return null;
                        }
                        cls = Character.class;
                    }
                } else {
                    cls = cls2;
                }
                if (cls == Integer.class) {
                    qn7Var = new qn7(5, cls);
                } else if (cls == Long.class) {
                    qn7Var = new qn7(6, cls);
                } else if (cls.isPrimitive() || Number.class.isAssignableFrom(cls)) {
                    qn7Var = new qn7(8, cls);
                } else if (cls == Class.class) {
                    qn7Var = new qn7(3, cls);
                } else if (Date.class.isAssignableFrom(cls)) {
                    qn7Var = new qn7(1, cls);
                } else if (Calendar.class.isAssignableFrom(cls)) {
                    qn7Var = new qn7(2, cls);
                } else if (cls == UUID.class) {
                    qn7Var = new qn7(8, cls);
                } else {
                    qn7Var = cls == byte[].class ? new qn7(7, cls) : null;
                }
            }
            if (qn7Var == null) {
                return qn7Var;
            }
            xv5Var = wo0VarK.b;
            if (xv5Var != null) {
                if (!xv5Var.i) {
                    xv5Var.i();
                }
                linkedList = xv5Var.q;
                if (linkedList == null) {
                    odVarC = null;
                } else {
                    if (linkedList.size() <= 1 && !xv5.g(xv5Var.q)) {
                        xv5Var.j("Multiple 'as-key' properties defined (%s vs %s)", xv5Var.q.get(0), xv5Var.q.get(1));
                        throw null;
                    }
                    odVarC = (od) xv5Var.q.get(0);
                }
            } else {
                odVarC = null;
            }
            if (odVarC == null) {
                odVarC = wo0VarK.c();
            }
            if (odVarC != null) {
                em4VarF = f(c87Var, odVarC.D());
                if (v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                    u81.d(odVarC.r0(), v77Var.i(u65.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                }
                mk4VarX = v77Var.d().x(odVarC);
                if (mk4VarX.c) {
                    set = Collections.EMPTY_SET;
                } else {
                    set = mk4VarX.a;
                }
                if (!set.isEmpty()) {
                    em4VarF = em4VarF.i(set);
                }
                return new kn4(odVarC, null, em4VarF, set);
            }
            if (cls2 == null) {
                qn7Var2 = new qn7(8, cls2);
            } else if (cls2 == Enum.class) {
                qn7Var2 = new rn7();
            } else {
                Annotation[] annotationArr2 = u81.a;
                if (Enum.class.isAssignableFrom(cls2)) {
                    rx2 rx2VarA = rx2.a(v77Var, hdVar);
                    ox2.r(v77Var, hdVar);
                    return new sn7(cls2, rx2VarA);
                }
                qn7Var2 = new qn7(8, cls2);
            }
            return qn7Var2;
        }
        rn7Var = new rn7();
        qn7Var = rn7Var;
        if (qn7Var == null) {
            return qn7Var;
        }
        xv5Var = wo0VarK.b;
        if (xv5Var != null) {
            if (!xv5Var.i) {
                xv5Var.i();
            }
            linkedList = xv5Var.q;
            if (linkedList == null) {
                if (linkedList.size() <= 1) {
                }
                odVarC = (od) xv5Var.q.get(0);
            } else {
                odVarC = null;
            }
        } else {
            odVarC = null;
        }
        if (odVarC == null) {
            odVarC = wo0VarK.c();
        }
        if (odVarC != null) {
            em4VarF = f(c87Var, odVarC.D());
            if (v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                u81.d(odVarC.r0(), v77Var.i(u65.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            mk4VarX = v77Var.d().x(odVarC);
            if (mk4VarX.c) {
                set = Collections.EMPTY_SET;
            } else {
                set = mk4VarX.a;
            }
            if (!set.isEmpty()) {
                em4VarF = em4VarF.i(set);
            }
            return new kn4(odVarC, null, em4VarF, set);
        }
        if (cls2 == null) {
            qn7Var2 = new qn7(8, cls2);
        } else if (cls2 == Enum.class) {
            qn7Var2 = new rn7();
        } else {
            Annotation[] annotationArr3 = u81.a;
            if (Enum.class.isAssignableFrom(cls2)) {
                rx2 rx2VarA2 = rx2.a(v77Var, hdVar);
                ox2.r(v77Var, hdVar);
                return new sn7(cls2, rx2VarA2);
            }
            qn7Var2 = new qn7(8, cls2);
        }
        return qn7Var2;
    }

    @Override // defpackage.ji8
    public final sc8 h(v77 v77Var, gc8 gc8Var) {
        ArrayList arrayList;
        gc8 gc8VarC = v77Var.c(gc8Var.f);
        en0 en0Var = v77Var.b;
        ((xo0) en0Var.b).getClass();
        wo0 wo0VarP0 = xo0.p0(v77Var, gc8VarC);
        if (wo0VarP0 == null) {
            wo0VarP0 = wo0.d(v77Var, gc8VarC, xo0.q0(v77Var, gc8VarC, v77Var));
        }
        hd hdVar = wo0VarP0.e;
        vn7 vn7VarO = v77Var.d().O(v77Var, hdVar, gc8Var);
        if (vn7VarO == null) {
            en0Var.getClass();
            arrayList = null;
            vn7VarO = null;
        } else {
            v77Var.d.getClass();
            as5 as5VarD = v77Var.d();
            HashMap map = new HashMap();
            un7.J(hdVar, new ik5(hdVar.N, null), v77Var, as5VarD, map);
            arrayList = new ArrayList(map.values());
        }
        if (vn7VarO == null) {
            return null;
        }
        return vn7VarO.a(v77Var, gc8Var, arrayList);
    }
}
