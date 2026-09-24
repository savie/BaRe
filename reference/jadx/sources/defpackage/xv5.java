package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xv5 {
    public final v77 a;
    public final ae2 b;
    public final gc8 c;
    public final hd d;
    public final nn8 e;
    public final as5 f;
    public final boolean g;
    public final boolean h;
    public boolean i;
    public LinkedHashMap j;
    public List k;
    public f41 l;
    public LinkedList m;
    public LinkedList n;
    public LinkedList o;
    public LinkedList p;
    public LinkedList q;
    public LinkedList r;
    public LinkedHashMap s;
    public bk4 t;

    public xv5(v77 v77Var, gc8 gc8Var, hd hdVar, ae2 ae2Var) {
        nn8 nn8Var;
        this.a = v77Var;
        this.c = gc8Var;
        this.d = hdVar;
        this.h = u81.s(gc8Var.f);
        if (v77Var.i(u65.USE_ANNOTATIONS)) {
            this.g = true;
            this.f = v77Var.d();
        } else {
            this.g = false;
            this.f = go5.a;
        }
        Class cls = gc8Var.f;
        mp7 mp7Var = v77Var.k;
        if (u81.p(cls)) {
            nn8Var = nn8.k;
        } else {
            mp7Var.getClass();
            long j = v77Var.a;
            long j2 = t65.q;
            long j3 = j & j2;
            yi4 yi4Var = yi4.a;
            nn8 nn8Var2 = nn8.f;
            if (j3 != j2) {
                boolean zI = v77Var.i(u65.AUTO_DETECT_FIELDS);
                yi4 yi4Var2 = yi4.c;
                if (!zI) {
                    yi4 yi4Var3 = yi4.b;
                    nn8Var2 = new nn8(yi4Var3, yi4Var3, yi4Var, yi4Var, yi4Var2);
                }
                if (!v77Var.i(u65.AUTO_DETECT_GETTERS) && nn8Var2.a != yi4Var2) {
                    nn8Var2 = new nn8(yi4Var2, nn8Var2.b, nn8Var2.c, nn8Var2.d, nn8Var2.e);
                }
                if (!v77Var.i(u65.AUTO_DETECT_IS_GETTERS) && nn8Var2.b != yi4Var2) {
                    nn8 nn8Var3 = new nn8(nn8Var2.a, yi4Var2, nn8Var2.c, nn8Var2.d, nn8Var2.e);
                    yi4Var2 = yi4Var2;
                    nn8Var2 = nn8Var3;
                }
                if (!v77Var.i(u65.AUTO_DETECT_SETTERS) && nn8Var2.c != yi4Var2) {
                    yi4 yi4Var4 = yi4Var2;
                    yi4Var2 = yi4Var4;
                    nn8Var2 = new nn8(nn8Var2.a, nn8Var2.b, yi4Var4, nn8Var2.d, nn8Var2.e);
                }
                if (!v77Var.i(u65.AUTO_DETECT_CREATORS) && nn8Var2.d != yi4Var2) {
                    nn8Var2 = new nn8(nn8Var2.a, nn8Var2.b, nn8Var2.c, yi4Var2, nn8Var2.e);
                }
            }
            nn8Var = (u81.s(cls) && v77Var.i(u65.AUTO_DETECT_CREATORS) && nn8Var2.d != yi4Var) ? new nn8(nn8Var2.a, nn8Var2.b, nn8Var2.c, yi4Var, nn8Var2.e) : nn8Var2;
        }
        nn8 nn8VarB = v77Var.d().b(hdVar, nn8Var);
        mp7Var.getClass();
        this.e = nn8VarB;
        this.b = ae2Var;
    }

    public static boolean g(LinkedList linkedList) {
        do {
            od odVar = (od) linkedList.get(0);
            od odVar2 = (od) linkedList.get(1);
            if (odVar instanceof ld) {
                if (!(odVar2 instanceof pd)) {
                    return false;
                }
                linkedList.remove(0);
            } else {
                if (!(odVar instanceof pd) || !(odVar2 instanceof ld)) {
                    return false;
                }
                linkedList.remove(1);
            }
        } while (linkedList.size() > 1);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b4  */
    public final void a(f41 f41Var, List list, LinkedHashMap linkedHashMap, boolean z) {
        as5 as5Var;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            k36 k36Var = (k36) it.next();
            if (k36Var.b) {
                it.remove();
                int iOrdinal = k36Var.c.ordinal();
                boolean zA = false;
                v77 v77Var = this.a;
                if (iOrdinal != 1) {
                    if (iOrdinal == 2) {
                        zA = true;
                        break;
                    }
                    ud udVar = k36Var.a;
                    udVar.x0();
                    k36Var.b(v77Var);
                    int length = k36Var.e.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            LinkedList linkedList = this.r;
                            if (linkedList != null && !linkedList.isEmpty()) {
                                break;
                            }
                            if (udVar.x0() != 1) {
                                zA = k36Var.a(v77Var);
                                break;
                            }
                            z86 z86Var = k36Var.d[0];
                            if (z86Var != null) {
                                aw5 aw5Var = (aw5) linkedHashMap.get(z86Var.a);
                                if (aw5Var == null) {
                                    Iterator it2 = linkedHashMap.values().iterator();
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            as5Var = this.f;
                                            if (as5Var != null) {
                                                break;
                                            }
                                        } else {
                                            aw5 aw5Var2 = (aw5) it2.next();
                                            if (!aw5Var2.L() || aw5Var2.K() || (!aw5.G(aw5Var2.k, z86Var) && !aw5.G(aw5Var2.p, z86Var) && !aw5.G(aw5Var2.q, z86Var) && !aw5.G(aw5Var2.n, z86Var))) {
                                            }
                                        }
                                    }
                                } else if (!aw5Var.L() || aw5Var.K()) {
                                    as5Var = this.f;
                                    if (as5Var != null) {
                                        break;
                                    }
                                }
                            } else {
                                as5Var = this.f;
                                if (as5Var != null && as5Var.i(udVar.w0(0)) != null) {
                                    break;
                                }
                                break;
                                break;
                            }
                        } else if (k36Var.e[i] == null) {
                            i++;
                        }
                        zA = true;
                        break;
                    }
                }
                if (!zA) {
                    if (((ArrayList) f41Var.b) == null) {
                        f41Var.b = new ArrayList();
                    }
                    ((ArrayList) f41Var.b).add(k36Var);
                } else if (!z) {
                    f41Var.e(v77Var, k36Var, "explicit");
                }
            }
        }
    }

    public final List c(List list) {
        if (list.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ud udVar = (ud) it.next();
            arrayList.add(new k36(udVar, this.g ? this.f.d(this.a, udVar) : null));
        }
        return arrayList;
    }

    public final void d(bh4 bh4Var, od odVar) {
        if (bh4Var == null) {
            return;
        }
        Object obj = bh4Var.a;
        if (this.s == null) {
            this.s = new LinkedHashMap();
        }
        od odVar2 = (od) this.s.put(obj, odVar);
        if (odVar2 == null || odVar2.getClass() != odVar.getClass()) {
            return;
        }
        j("Duplicate injectable value with id '%s' (of type %s)", obj, u81.e(obj));
        throw null;
    }

    public final aw5 e(String str, LinkedHashMap linkedHashMap) {
        aw5 aw5Var = (aw5) linkedHashMap.get(str);
        if (aw5Var != null) {
            return aw5Var;
        }
        z86 z86VarA = z86.a(str);
        aw5 aw5Var2 = new aw5(this.a, this.f, true, z86VarA, z86VarA);
        linkedHashMap.put(str, aw5Var2);
        return aw5Var2;
    }

    public final aw5 f(LinkedHashMap linkedHashMap, z86 z86Var) {
        String str = z86Var.a;
        aw5 aw5Var = (aw5) linkedHashMap.get(str);
        if (aw5Var != null) {
            return aw5Var;
        }
        aw5 aw5Var2 = new aw5(this.a, this.f, true, z86Var, z86Var);
        linkedHashMap.put(str, aw5Var2);
        return aw5Var2;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0126 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x011c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:? A[LOOP:6: B:60:0x0106->B:123:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x0152 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x0138 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x01c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x01d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x01b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:140:0x01b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:59:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:62:0x010c  */
    /* JADX WARN: Code duplicated, block: B:66:0x0123  */
    /* JADX WARN: Code duplicated, block: B:69:0x012b  */
    /* JADX WARN: Code duplicated, block: B:72:0x013e  */
    /* JADX WARN: Code duplicated, block: B:78:0x0167 A[LOOP:8: B:76:0x0161->B:78:0x0167, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:94:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:98:0x01bf  */
    /* JADX WARN: Instruction removed from duplicated block: B:55:0x00f1, please report this as an issue */
    public final void h(LinkedHashMap linkedHashMap) {
        int i;
        boolean z;
        od odVar;
        LinkedHashMap linkedHashMap2;
        Collection<aw5> collectionValues;
        String strJ;
        TreeMap treeMap;
        Iterator it;
        aw5 aw5Var;
        Integer num;
        aw5 aw5Var2;
        as5 as5Var = this.f;
        hd hdVar = this.d;
        Boolean boolI = as5Var.I(hdVar);
        v77 v77Var = this.a;
        boolean zI = boolI == null ? v77Var.i(u65.SORT_PROPERTIES_ALPHABETICALLY) : boolI.booleanValue();
        Iterator it2 = linkedHashMap.values().iterator();
        while (true) {
            if (it2.hasNext()) {
                if (((aw5) it2.next()).i().c != null) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        String[] strArrH = as5Var.H(hdVar);
        if (zI || z || this.k != null || strArrH != null) {
            int size = linkedHashMap.size();
            Map treeMap2 = zI ? new TreeMap() : new LinkedHashMap(size + size);
            for (aw5 aw5Var3 : linkedHashMap.values()) {
                treeMap2.put(aw5Var3.j(), aw5Var3);
            }
            LinkedList linkedList = this.m;
            if (linkedList == null) {
                LinkedList linkedList2 = this.n;
                if (linkedList2 != null) {
                    odVar = (od) linkedList2.getFirst();
                }
                linkedHashMap2 = new LinkedHashMap(size + size);
                if (strArrH != null) {
                    for (String strJ2 : strArrH) {
                        aw5Var2 = (aw5) treeMap2.remove(strJ2);
                        if (aw5Var2 == null) {
                            for (aw5 aw5Var4 : linkedHashMap.values()) {
                                if (strJ2.equals(aw5Var4.f.a)) {
                                    strJ2 = aw5Var4.j();
                                    aw5Var2 = aw5Var4;
                                    break;
                                }
                            }
                        }
                        if (aw5Var2 != null) {
                            linkedHashMap2.put(strJ2, aw5Var2);
                        }
                    }
                }
                if (z) {
                    treeMap = new TreeMap();
                    it = treeMap2.entrySet().iterator();
                    while (it.hasNext()) {
                        aw5Var = (aw5) ((Map.Entry) it.next()).getValue();
                        num = aw5Var.i().c;
                        if (num != null) {
                            treeMap.put(num, aw5Var);
                            it.remove();
                        }
                    }
                    for (aw5 aw5Var5 : treeMap.values()) {
                        linkedHashMap2.put(aw5Var5.j(), aw5Var5);
                    }
                }
                if (this.k != null && (!zI || v77Var.i(u65.SORT_CREATOR_PROPERTIES_FIRST))) {
                    if (zI || v77Var.i(u65.SORT_CREATOR_PROPERTIES_BY_DECLARATION_ORDER)) {
                        collectionValues = this.k;
                    } else {
                        TreeMap treeMap3 = new TreeMap();
                        for (aw5 aw5Var6 : this.k) {
                            if (aw5Var6 != null) {
                                treeMap3.put(aw5Var6.j(), aw5Var6);
                            }
                        }
                        collectionValues = treeMap3.values();
                    }
                    for (aw5 aw5Var7 : collectionValues) {
                        if (aw5Var7 == null) {
                            strJ = aw5Var7.j();
                            if (treeMap2.containsKey(strJ)) {
                                linkedHashMap2.put(strJ, aw5Var7);
                            }
                        }
                    }
                }
                linkedHashMap2.putAll(treeMap2);
                linkedHashMap.clear();
                linkedHashMap.putAll(linkedHashMap2);
            }
            odVar = (od) linkedList.getFirst();
            LinkedHashMap linkedHashMap3 = new LinkedHashMap(treeMap2.size() * 2);
            aw5 aw5Var8 = null;
            for (aw5 aw5Var9 : treeMap2.values()) {
                yv5 yv5Var = aw5Var9.k;
                Member memberR0 = odVar.r0();
                while (true) {
                    if (yv5Var == null) {
                        yv5 yv5Var2 = aw5Var9.p;
                        Member memberR1 = odVar.r0();
                        while (true) {
                            if (yv5Var2 == null) {
                                linkedHashMap3.put(aw5Var9.j(), aw5Var9);
                                break;
                            } else if (((od) yv5Var2.a).r0() != memberR1) {
                                yv5Var2 = yv5Var2.b;
                            }
                        }
                    } else if (((od) yv5Var.a).r0() != memberR0) {
                        yv5Var = yv5Var.b;
                    }
                    aw5Var8 = aw5Var9;
                    break;
                }
            }
            if (aw5Var8 != null) {
                linkedHashMap3.put(aw5Var8.j(), aw5Var8);
            }
            treeMap2 = linkedHashMap3;
            linkedHashMap2 = new LinkedHashMap(size + size);
            if (strArrH != null) {
                while (i < r1) {
                    aw5Var2 = (aw5) treeMap2.remove(strJ2);
                    if (aw5Var2 == null) {
                        while (r10.hasNext()) {
                            if (strJ2.equals(aw5Var4.f.a)) {
                                strJ2 = aw5Var4.j();
                                aw5Var2 = aw5Var4;
                                break;
                            }
                        }
                    }
                    if (aw5Var2 != null) {
                        linkedHashMap2.put(strJ2, aw5Var2);
                    }
                }
            }
            if (z) {
                treeMap = new TreeMap();
                it = treeMap2.entrySet().iterator();
                while (it.hasNext()) {
                    aw5Var = (aw5) ((Map.Entry) it.next()).getValue();
                    num = aw5Var.i().c;
                    if (num != null) {
                        treeMap.put(num, aw5Var);
                        it.remove();
                    }
                }
                while (r0.hasNext()) {
                    linkedHashMap2.put(aw5Var5.j(), aw5Var5);
                }
            }
            if (this.k != null) {
                if (zI) {
                    collectionValues = this.k;
                } else {
                    collectionValues = this.k;
                }
                while (r14.hasNext()) {
                    if (aw5Var7 == null) {
                        strJ = aw5Var7.j();
                        if (treeMap2.containsKey(strJ)) {
                            linkedHashMap2.put(strJ, aw5Var7);
                        }
                    }
                }
            }
            linkedHashMap2.putAll(treeMap2);
            linkedHashMap.clear();
            linkedHashMap.putAll(linkedHashMap2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:148:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:225:0x042f  */
    /* JADX WARN: Code duplicated, block: B:231:0x0447  */
    /* JADX WARN: Code duplicated, block: B:237:0x0463  */
    /* JADX WARN: Code duplicated, block: B:259:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:261:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:262:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:267:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:270:0x04d7  */
    /* JADX WARN: Code duplicated, block: B:272:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:276:0x04f3  */
    /* JADX WARN: Code duplicated, block: B:278:0x0500 A[LOOP:6: B:271:0x04e4->B:278:0x0500, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:280:0x0507  */
    /* JADX WARN: Code duplicated, block: B:285:0x0515  */
    /* JADX WARN: Code duplicated, block: B:288:0x051f A[LOOP:7: B:286:0x0519->B:288:0x051f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:311:0x0566  */
    /* JADX WARN: Code duplicated, block: B:313:0x056c  */
    /* JADX WARN: Code duplicated, block: B:316:0x0573  */
    /* JADX WARN: Code duplicated, block: B:318:0x0579  */
    /* JADX WARN: Code duplicated, block: B:336:0x05c8  */
    /* JADX WARN: Code duplicated, block: B:338:0x05d2  */
    /* JADX WARN: Code duplicated, block: B:341:0x05d9  */
    /* JADX WARN: Code duplicated, block: B:342:0x05db  */
    /* JADX WARN: Code duplicated, block: B:349:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:350:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:364:0x061b  */
    /* JADX WARN: Code duplicated, block: B:370:0x0640  */
    /* JADX WARN: Code duplicated, block: B:375:0x0665  */
    /* JADX WARN: Code duplicated, block: B:376:0x066b  */
    /* JADX WARN: Code duplicated, block: B:378:0x067b  */
    /* JADX WARN: Code duplicated, block: B:380:0x0689  */
    /* JADX WARN: Code duplicated, block: B:381:0x068c  */
    /* JADX WARN: Code duplicated, block: B:388:0x06c4  */
    /* JADX WARN: Code duplicated, block: B:390:0x06c8  */
    /* JADX WARN: Code duplicated, block: B:392:0x06d4  */
    /* JADX WARN: Code duplicated, block: B:393:0x06d9  */
    /* JADX WARN: Code duplicated, block: B:395:0x06df  */
    /* JADX WARN: Code duplicated, block: B:396:0x06e2  */
    /* JADX WARN: Code duplicated, block: B:505:0x0897  */
    /* JADX WARN: Code duplicated, block: B:530:0x08e1 A[PHI: r8
      0x08e1: PHI (r8v13 ml4) = (r8v12 ml4), (r8v14 ml4) binds: [B:553:0x0924, B:529:0x08df] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:760:0x043d A[EDGE_INSN: B:760:0x043d->B:228:0x043d BREAK  A[LOOP:2: B:223:0x0427->B:762:0x0427], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:761:0x0439 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:763:0x0427 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:766:0x0451 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:768:0x0441 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:786:0x04ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:793:0x0632 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:795:0x0615 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:798:0x0657 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:800:0x063a A[SYNTHETIC] */
    public final void i() {
        ae2 ae2Var;
        nn8 nn8Var;
        Object[] objArr;
        as5 as5Var;
        bh4 bh4VarI;
        yv5 yv5Var;
        yv5 yv5Var2;
        ml4 ml4VarS;
        ml4 ml4VarS2;
        yv5 yv5Var3;
        yv5 yv5Var4;
        String str;
        int length;
        k36 k36Var;
        Iterator it;
        boolean zHasNext;
        ej4 ej4Var;
        Iterator it2;
        Class cls;
        Iterator it3;
        Iterator it4;
        Iterator it5;
        k36 k36Var2;
        ud udVar;
        ArrayList arrayList;
        int iX0;
        int i;
        td tdVarW0;
        z86 z86Var;
        z86 z86VarA;
        boolean z;
        aw5 aw5VarF;
        z86 z86Var2;
        aw5 aw5VarF2;
        ud udVar2;
        ud udVar3;
        ArrayList arrayList2;
        k36 k36Var3;
        ud udVar4;
        int i2;
        z86 z86Var3;
        Object obj;
        aw5 aw5Var;
        int iOrdinal;
        ArrayList arrayList3;
        LinkedList linkedList;
        Iterator it6;
        List arrayList4;
        Iterator it7;
        k36 k36Var4;
        int length2;
        int i3;
        Iterator it8;
        boolean z2;
        boolean z3;
        ud udVar5;
        Class clsZ0;
        h80[] h80VarArr;
        Class cls2;
        int i4;
        jd jdVar;
        boolean z4;
        String name;
        z86 z86Var4;
        boolean z5;
        boolean z6;
        boolean zA;
        String strB;
        boolean zA2;
        boolean z7;
        boolean z8;
        hd hdVar = this.d;
        Class cls3 = hdVar.N;
        this.l = new f41();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        u65 u65Var = u65.PROPAGATE_TRANSIENT_MARKER;
        v77 v77Var = this.a;
        boolean zI = v77Var.i(u65Var);
        Iterator it9 = hdVar.q0().iterator();
        while (true) {
            boolean zHasNext2 = it9.hasNext();
            ae2Var = this.b;
            nn8Var = this.e;
            objArr = null;
            as5Var = this.f;
            if (!zHasNext2) {
                break;
            }
            ld ldVar = (ld) it9.next();
            Boolean bool = Boolean.TRUE;
            if (bool.equals(as5Var.U(ldVar))) {
                if (this.q == null) {
                    this.q = new LinkedList();
                }
                this.q.add(ldVar);
            }
            if (bool.equals(as5Var.V(ldVar))) {
                if (this.r == null) {
                    this.r = new LinkedList();
                }
                this.r.add(ldVar);
            } else {
                boolean zEquals = bool.equals(as5Var.R(ldVar));
                boolean zEquals2 = bool.equals(as5Var.T(ldVar));
                if (zEquals || zEquals2) {
                    if (zEquals) {
                        if (this.n == null) {
                            this.n = new LinkedList();
                        }
                        this.n.add(ldVar);
                    }
                    if (zEquals2) {
                        if (this.p == null) {
                            this.p = new LinkedList();
                        }
                        this.p.add(ldVar);
                    }
                }
                String name2 = ldVar.O.getName();
                ae2Var.getClass();
                if (name2 != null) {
                    z86.b(name2, null);
                    z86 z86VarN = as5Var.n(ldVar);
                    boolean z9 = z86VarN != null;
                    if (z9 && z86VarN.c()) {
                        z86VarN = z86.b(name2, null);
                        z7 = false;
                    } else {
                        z7 = z9;
                    }
                    z86 z86Var5 = z86VarN;
                    boolean zA3 = z86Var5 != null;
                    if (!zA3) {
                        nn8Var.getClass();
                        zA3 = nn8Var.e.a(ldVar.O);
                    }
                    boolean z10 = zA3;
                    boolean zX = as5Var.X(ldVar);
                    if (Modifier.isTransient(ldVar.O.getModifiers()) && !z9) {
                        if (zI) {
                            z8 = true;
                            aw5 aw5VarE = e(name2, linkedHashMap);
                            aw5VarE.k = new yv5(ldVar, aw5VarE.k, z86Var5, z7, z10, z8);
                        } else if (!zX) {
                        }
                    }
                    z8 = zX;
                    aw5 aw5VarE2 = e(name2, linkedHashMap);
                    aw5VarE2.k = new yv5(ldVar, aw5VarE2.k, z86Var5, z7, z10, z8);
                }
            }
        }
        for (pd pdVar : hdVar.r0()) {
            Method method = pdVar.P;
            int parameterCount = method.getParameterCount();
            if (parameterCount == 0) {
                Class<?> returnType = method.getReturnType();
                if (returnType != Void.TYPE && (returnType != Void.class || v77Var.i(u65.ALLOW_VOID_VALUED_PROPERTIES))) {
                    Boolean bool2 = Boolean.TRUE;
                    if (bool2.equals(as5Var.R(pdVar))) {
                        if (this.m == null) {
                            this.m = new LinkedList();
                        }
                        this.m.add(pdVar);
                    } else if (bool2.equals(as5Var.U(pdVar))) {
                        if (this.q == null) {
                            this.q = new LinkedList();
                        }
                        this.q.add(pdVar);
                    } else if (bool2.equals(as5Var.V(pdVar))) {
                        if (this.r == null) {
                            this.r = new LinkedList();
                        }
                        this.r.add(pdVar);
                    }
                    z86 z86VarN2 = as5Var.n(pdVar);
                    boolean z11 = z86VarN2 != null;
                    if (z11) {
                        String strC = ae2Var.c(pdVar, method.getName());
                        if (strC == null) {
                            strC = ae2Var.a(pdVar, method.getName());
                        }
                        name = strC == null ? method.getName() : strC;
                        if (z86VarN2.c()) {
                            z86VarN2 = z86.b(name, null);
                            z11 = false;
                        }
                        z86Var4 = z86VarN2;
                        z5 = z11;
                        z6 = true;
                    } else {
                        name = ae2Var.c(pdVar, method.getName());
                        if (name == null) {
                            name = ae2Var.a(pdVar, method.getName());
                            if (name != null) {
                                nn8Var.getClass();
                                zA = nn8Var.b.a(method);
                            }
                        } else {
                            nn8Var.getClass();
                            zA = nn8Var.a.a(method);
                        }
                        z86Var4 = z86VarN2;
                        z6 = zA;
                        z5 = z11;
                    }
                    String strB2 = b(name);
                    boolean zX2 = as5Var.X(pdVar);
                    aw5 aw5VarE3 = e(strB2, linkedHashMap);
                    aw5VarE3.p = new yv5(pdVar, aw5VarE3.p, z86Var4, z5, z6, zX2);
                }
            } else if (parameterCount == 1) {
                z86 z86VarM = as5Var.m(pdVar);
                boolean z12 = z86VarM != null;
                if (z12) {
                    strB = ae2Var.b(method.getName());
                    if (strB == null) {
                        strB = method.getName();
                    }
                    if (z86VarM.c()) {
                        z86VarM = z86.b(strB, null);
                        z12 = false;
                    }
                    zA2 = true;
                } else {
                    strB = ae2Var.b(method.getName());
                    if (strB != null) {
                        nn8Var.getClass();
                        zA2 = nn8Var.c.a(method);
                    }
                }
                z86 z86Var6 = z86VarM;
                boolean z13 = z12;
                String strB3 = b(strB);
                boolean zX3 = as5Var.X(pdVar);
                aw5 aw5VarE4 = e(strB3, linkedHashMap);
                aw5VarE4.q = new yv5(pdVar, aw5VarE4.q, z86Var6, z13, zA2, zX3);
            } else if (parameterCount == 2 && Boolean.TRUE.equals(as5Var.T(pdVar))) {
                if (this.o == null) {
                    this.o = new LinkedList();
                }
                this.o.add(pdVar);
            }
        }
        Boolean boolValueOf = hdVar.Z;
        if (boolValueOf == null) {
            Annotation[] annotationArr = u81.a;
            if (Modifier.isStatic(cls3.getModifiers())) {
                z4 = false;
            } else if ((u81.r(cls3) ? null : cls3.getEnclosingClass()) != null) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolValueOf = Boolean.valueOf(z4);
            hdVar.Z = boolValueOf;
        }
        if (!boolValueOf.booleanValue()) {
            f41 f41Var = this.l;
            List listC = c((List) hdVar.p0().c);
            List listC2 = c((List) hdVar.p0().d);
            if (this.h) {
                RuntimeException runtimeException = vg4.e;
                if (runtimeException != null) {
                    throw runtimeException;
                }
                vg4 vg4Var = vg4.d;
                Object[] objArrA = vg4Var.a(cls3);
                if (objArrA == null) {
                    h80VarArr = null;
                } else {
                    h80VarArr = new h80[objArrA.length];
                    int i5 = 0;
                    while (i5 < objArrA.length) {
                        try {
                            cls2 = cls3;
                            try {
                                try {
                                    i4 = i5;
                                    try {
                                        h80VarArr[i4] = new h80(11, (Class) vg4Var.c.invoke(objArrA[i4], objArr), (String) vg4Var.b.invoke(objArrA[i5], objArr));
                                        i5 = i4 + 1;
                                        cls3 = cls2;
                                        objArr = null;
                                    } catch (Exception e) {
                                        e = e;
                                        throw new IllegalArgumentException(String.format("Failed to access type of field #%d (of %d) of Record type %s", Integer.valueOf(i4), Integer.valueOf(objArrA.length), u81.t(cls2)), e);
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                    i4 = i5;
                                }
                            } catch (Exception e3) {
                                e = e3;
                                throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i5), Integer.valueOf(objArrA.length), u81.t(cls2)), e);
                            }
                        } catch (Exception e4) {
                            e = e4;
                            cls2 = cls3;
                        }
                    }
                }
                if (h80VarArr != null) {
                    int length3 = h80VarArr.length;
                    if (length3 != 0 || (jdVar = (jd) hdVar.p0().b) == null) {
                        Iterator it10 = listC.iterator();
                        loop11: while (true) {
                            if (!it10.hasNext()) {
                                c6.f("Failed to find the canonical Record constructor of type ".concat(u81.m(hdVar.M)));
                                return;
                            }
                            k36Var = (k36) it10.next();
                            ud udVar6 = k36Var.a;
                            if (udVar6.x0() == length3) {
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= length3) {
                                        z86[] z86VarArr = new z86[length3];
                                        for (int i7 = 0; i7 < length3; i7++) {
                                            z86VarArr[i7] = z86.a((String) h80VarArr[i7].b);
                                        }
                                        if (k36Var.d != null) {
                                            break loop11;
                                        }
                                        int iX1 = udVar6.x0();
                                        if (iX1 != 0) {
                                            k36Var.e = new z86[iX1];
                                            k36Var.d = z86VarArr;
                                            as5 as5VarD = v77Var.d();
                                            for (int i8 = 0; i8 < iX1; i8++) {
                                                z86 z86VarM2 = as5VarD.m(udVar6.w0(i8));
                                                if (z86VarM2 != null && !z86VarM2.c()) {
                                                    k36Var.e[i8] = z86VarM2;
                                                }
                                            }
                                            break loop11;
                                        }
                                        z86[] z86VarArr2 = k36.f;
                                        k36Var.e = z86VarArr2;
                                        k36Var.d = z86VarArr2;
                                        break loop11;
                                    }
                                    Iterator it11 = it10;
                                    if (!udVar6.z0(i6).equals((Class) h80VarArr[i6].c)) {
                                        it10 = it11;
                                        break;
                                    } else {
                                        i6++;
                                        it10 = it11;
                                    }
                                }
                            }
                        }
                    } else {
                        k36Var = new k36(jdVar, null);
                    }
                }
                it = listC.iterator();
                while (true) {
                    zHasNext = it.hasNext();
                    ej4Var = ej4.b;
                    if (zHasNext) {
                        break;
                    } else if (((k36) it.next()).c == ej4Var) {
                        it.remove();
                    }
                }
                it2 = listC2.iterator();
                while (it2.hasNext()) {
                    if (((k36) it2.next()).c == ej4Var) {
                        it2.remove();
                    }
                }
                cls = this.c.f;
                it3 = listC2.iterator();
                while (it3.hasNext()) {
                    k36 k36Var5 = (k36) it3.next();
                    z3 = k36Var5.b;
                    udVar5 = k36Var5.a;
                    if (!z3 && k36Var != k36Var5) {
                        if (!cls.isAssignableFrom(udVar5.C()) && udVar5.x0() == 1) {
                            String strB4 = udVar5.B();
                            if (!"valueOf".equals(strB4) && (!"fromString".equals(strB4) || ((clsZ0 = udVar5.z0(0)) != String.class && !CharSequence.class.isAssignableFrom(clsZ0)))) {
                            }
                        }
                        it3.remove();
                    }
                }
                if (this.g) {
                    a(f41Var, listC, linkedHashMap, false);
                    if (((k36) f41Var.a) != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    a(f41Var, listC2, linkedHashMap, z2);
                }
                if (((k36) f41Var.a) == null) {
                    it6 = listC.iterator();
                    arrayList4 = null;
                    while (it6.hasNext()) {
                        k36Var4 = (k36) it6.next();
                        k36Var4.b(v77Var);
                        length2 = k36Var4.e.length;
                        i3 = 0;
                        while (i3 < length2) {
                            it8 = it6;
                            if (k36Var4.e[i3] != null) {
                                it8.remove();
                                if (arrayList4 == null) {
                                    arrayList4 = new ArrayList(4);
                                }
                                arrayList4.add(k36Var4);
                                it6 = it8;
                                break;
                            }
                            i3++;
                            it6 = it8;
                        }
                    }
                    if (arrayList4 == null) {
                        arrayList4 = Collections.EMPTY_LIST;
                    }
                    if (k36Var == null && arrayList4.contains(k36Var)) {
                        f41Var.e(v77Var, k36Var, "implicit");
                    } else {
                        it7 = arrayList4.iterator();
                        while (it7.hasNext()) {
                            f41Var.e(v77Var, (k36) it7.next(), "implicit");
                        }
                    }
                }
                if (k36Var != null && (listC.remove(k36Var) || listC2.remove(k36Var))) {
                    iOrdinal = k36Var.c.ordinal();
                    if (iOrdinal != 1 || (iOrdinal != 2 && iOrdinal != 3 && k36Var.a.x0() == 1 && (linkedList = this.r) != null && !linkedList.isEmpty())) {
                        arrayList3 = (ArrayList) f41Var.b;
                        if (arrayList3 != null || arrayList3.isEmpty()) {
                            if (((ArrayList) f41Var.b) == null) {
                                f41Var.b = new ArrayList();
                            }
                            ((ArrayList) f41Var.b).add(k36Var);
                        }
                    } else if (((k36) f41Var.a) == null) {
                        f41Var.e(v77Var, k36Var, "Primary");
                    }
                }
                if (((k36) f41Var.a) == null && (((arrayList2 = (ArrayList) f41Var.b) == null || arrayList2.isEmpty()) && ((jd) hdVar.p0().b) == null && listC.size() == 1)) {
                    k36Var3 = (k36) listC.get(0);
                    udVar4 = k36Var3.a;
                    nn8Var.getClass();
                    if (nn8Var.d.a(udVar4.r0())) {
                        k36Var3.b(v77Var);
                        if (udVar4.x0() != 1) {
                            i2 = 0;
                            if (as5Var != null || as5Var.i(udVar4.w0(0)) == null) {
                                z86Var3 = k36Var3.d[0];
                                if (z86Var3 == null) {
                                    obj = null;
                                } else {
                                    obj = z86Var3.a;
                                }
                                if (obj != null && (aw5Var = (aw5) linkedHashMap.get(obj)) != null && aw5Var.L() && !aw5Var.K()) {
                                    i2 = 0;
                                    listC.remove(i2);
                                    f41Var.e(v77Var, k36Var3, "implicit");
                                }
                            } else {
                                listC.remove(i2);
                                f41Var.e(v77Var, k36Var3, "implicit");
                            }
                        } else if (!k36Var3.a(v77Var)) {
                            i2 = 0;
                            listC.remove(i2);
                            f41Var.e(v77Var, k36Var3, "implicit");
                        }
                    }
                }
                it4 = listC.iterator();
                while (it4.hasNext()) {
                    udVar3 = ((k36) it4.next()).a;
                    nn8Var.getClass();
                    if (!nn8Var.d.a(udVar3.r0())) {
                        it4.remove();
                    }
                }
                it5 = listC2.iterator();
                while (it5.hasNext()) {
                    udVar2 = ((k36) it5.next()).a;
                    nn8Var.getClass();
                    if (!nn8Var.d.a(udVar2.r0())) {
                        it5.remove();
                    }
                }
                f41Var.c = listC;
                f41Var.d = listC2;
                k36Var2 = (k36) f41Var.a;
                if (k36Var2 == null) {
                    this.k = Collections.EMPTY_LIST;
                } else {
                    udVar = k36Var2.a;
                    arrayList = new ArrayList();
                    this.k = arrayList;
                    iX0 = udVar.x0();
                    for (i = 0; i < iX0; i++) {
                        tdVarW0 = udVar.w0(i);
                        z86Var = k36Var2.e[i];
                        z86VarA = k36Var2.d[i];
                        if (z86Var != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z || z86VarA != null) {
                            if (z86VarA != null) {
                                z86VarA = z86.a(b(z86VarA.a));
                            }
                            if (z86VarA == null) {
                                aw5VarF = f(linkedHashMap, z86Var);
                            } else {
                                aw5VarF = f(linkedHashMap, z86VarA);
                            }
                            if (z) {
                                z86Var2 = z86Var;
                            } else {
                                z86Var2 = z86VarA;
                            }
                            aw5VarF.n = new yv5(tdVarW0, aw5VarF.n, z86Var2, z, true, false);
                            aw5VarF2 = aw5VarF;
                        } else if (as5Var.P(tdVarW0) != null) {
                            z86 z86Var7 = new z86(fz5.j(tdVarW0.Q, "@JsonUnwrapped/"), null);
                            aw5VarF2 = f(linkedHashMap, z86Var7);
                            aw5VarF2.n = new yv5(tdVarW0, aw5VarF2.n, z86Var7, false, true, false);
                        } else {
                            aw5VarF2 = null;
                        }
                        arrayList.add(aw5VarF2);
                    }
                }
            } else {
                as5Var.getClass();
            }
            k36Var = null;
            it = listC.iterator();
            while (true) {
                zHasNext = it.hasNext();
                ej4Var = ej4.b;
                if (zHasNext) {
                    break;
                    break;
                } else if (((k36) it.next()).c == ej4Var) {
                    it.remove();
                }
            }
            it2 = listC2.iterator();
            while (it2.hasNext()) {
                if (((k36) it2.next()).c == ej4Var) {
                    it2.remove();
                }
            }
            cls = this.c.f;
            it3 = listC2.iterator();
            while (it3.hasNext()) {
                k36 k36Var6 = (k36) it3.next();
                z3 = k36Var6.b;
                udVar5 = k36Var6.a;
                if (!z3) {
                    if (!cls.isAssignableFrom(udVar5.C())) {
                    }
                    it3.remove();
                }
            }
            if (this.g) {
                a(f41Var, listC, linkedHashMap, false);
                if (((k36) f41Var.a) != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                a(f41Var, listC2, linkedHashMap, z2);
            }
            if (((k36) f41Var.a) == null) {
                it6 = listC.iterator();
                arrayList4 = null;
                while (it6.hasNext()) {
                    k36Var4 = (k36) it6.next();
                    k36Var4.b(v77Var);
                    length2 = k36Var4.e.length;
                    i3 = 0;
                    while (i3 < length2) {
                        it8 = it6;
                        if (k36Var4.e[i3] != null) {
                            it8.remove();
                            if (arrayList4 == null) {
                                arrayList4 = new ArrayList(4);
                            }
                            arrayList4.add(k36Var4);
                            it6 = it8;
                            break;
                            break;
                        }
                        i3++;
                        it6 = it8;
                    }
                }
                if (arrayList4 == null) {
                    arrayList4 = Collections.EMPTY_LIST;
                }
                if (k36Var == null) {
                    it7 = arrayList4.iterator();
                    while (it7.hasNext()) {
                        f41Var.e(v77Var, (k36) it7.next(), "implicit");
                    }
                } else {
                    it7 = arrayList4.iterator();
                    while (it7.hasNext()) {
                        f41Var.e(v77Var, (k36) it7.next(), "implicit");
                    }
                }
            }
            if (k36Var != null) {
                iOrdinal = k36Var.c.ordinal();
                if (iOrdinal != 1) {
                    arrayList3 = (ArrayList) f41Var.b;
                    if (arrayList3 != null) {
                        if (((ArrayList) f41Var.b) == null) {
                            f41Var.b = new ArrayList();
                        }
                        ((ArrayList) f41Var.b).add(k36Var);
                    } else {
                        if (((ArrayList) f41Var.b) == null) {
                            f41Var.b = new ArrayList();
                        }
                        ((ArrayList) f41Var.b).add(k36Var);
                    }
                } else {
                    arrayList3 = (ArrayList) f41Var.b;
                    if (arrayList3 != null) {
                        if (((ArrayList) f41Var.b) == null) {
                            f41Var.b = new ArrayList();
                        }
                        ((ArrayList) f41Var.b).add(k36Var);
                    } else {
                        if (((ArrayList) f41Var.b) == null) {
                            f41Var.b = new ArrayList();
                        }
                        ((ArrayList) f41Var.b).add(k36Var);
                    }
                }
            }
            if (((k36) f41Var.a) == null) {
                k36Var3 = (k36) listC.get(0);
                udVar4 = k36Var3.a;
                nn8Var.getClass();
                if (nn8Var.d.a(udVar4.r0())) {
                    k36Var3.b(v77Var);
                    if (udVar4.x0() != 1) {
                        i2 = 0;
                        if (as5Var != null) {
                        }
                        z86Var3 = k36Var3.d[0];
                        if (z86Var3 == null) {
                            obj = null;
                        } else {
                            obj = z86Var3.a;
                        }
                        if (obj != null) {
                            i2 = 0;
                            listC.remove(i2);
                            f41Var.e(v77Var, k36Var3, "implicit");
                        }
                    } else if (!k36Var3.a(v77Var)) {
                        i2 = 0;
                        listC.remove(i2);
                        f41Var.e(v77Var, k36Var3, "implicit");
                    }
                }
            }
            it4 = listC.iterator();
            while (it4.hasNext()) {
                udVar3 = ((k36) it4.next()).a;
                nn8Var.getClass();
                if (!nn8Var.d.a(udVar3.r0())) {
                    it4.remove();
                }
            }
            it5 = listC2.iterator();
            while (it5.hasNext()) {
                udVar2 = ((k36) it5.next()).a;
                nn8Var.getClass();
                if (!nn8Var.d.a(udVar2.r0())) {
                    it5.remove();
                }
            }
            f41Var.c = listC;
            f41Var.d = listC2;
            k36Var2 = (k36) f41Var.a;
            if (k36Var2 == null) {
                this.k = Collections.EMPTY_LIST;
            } else {
                udVar = k36Var2.a;
                arrayList = new ArrayList();
                this.k = arrayList;
                iX0 = udVar.x0();
                while (i < iX0) {
                    tdVarW0 = udVar.w0(i);
                    z86Var = k36Var2.e[i];
                    z86VarA = k36Var2.d[i];
                    if (z86Var != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        if (z86VarA != null) {
                            z86VarA = z86.a(b(z86VarA.a));
                        }
                        if (z86VarA == null) {
                            aw5VarF = f(linkedHashMap, z86Var);
                        } else {
                            aw5VarF = f(linkedHashMap, z86VarA);
                        }
                        if (z) {
                            z86Var2 = z86Var;
                        } else {
                            z86Var2 = z86VarA;
                        }
                        aw5VarF.n = new yv5(tdVarW0, aw5VarF.n, z86Var2, z, true, false);
                        aw5VarF2 = aw5VarF;
                    } else {
                        if (z86VarA != null) {
                            z86VarA = z86.a(b(z86VarA.a));
                        }
                        if (z86VarA == null) {
                            aw5VarF = f(linkedHashMap, z86Var);
                        } else {
                            aw5VarF = f(linkedHashMap, z86VarA);
                        }
                        if (z) {
                            z86Var2 = z86Var;
                        } else {
                            z86Var2 = z86VarA;
                        }
                        aw5VarF.n = new yv5(tdVarW0, aw5VarF.n, z86Var2, z, true, false);
                        aw5VarF2 = aw5VarF;
                    }
                    arrayList.add(aw5VarF2);
                }
            }
        }
        if (v77Var.i(u65.FIX_FIELD_NAME_UPPER_CASE_PREFIX)) {
            HashMap map = null;
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                aw5 aw5Var2 = (aw5) entry.getValue();
                if (aw5Var2.k != null && aw5Var2.p == null && aw5Var2.q == null && aw5Var2.n == null) {
                    if (!(aw5.t(aw5Var2.k) || aw5.t(aw5Var2.p) || aw5.t(aw5Var2.q) || aw5.t(aw5Var2.n)) && (length = (str = (String) entry.getKey()).length()) != 0 && ((length != 1 && !Character.isLowerCase(str.charAt(1))) || !Character.isLowerCase(str.charAt(0)))) {
                        if (map == null) {
                            map = new HashMap();
                        }
                        map.put(entry.getKey(), aw5Var2);
                    }
                }
            }
            if (map != null) {
                for (Map.Entry entry2 : map.entrySet()) {
                    Iterator it12 = linkedHashMap.entrySet().iterator();
                    aw5 aw5Var3 = (aw5) entry2.getValue();
                    String str2 = (String) entry2.getKey();
                    while (it12.hasNext()) {
                        Map.Entry entry3 = (Map.Entry) it12.next();
                        aw5 aw5Var4 = (aw5) entry3.getValue();
                        if (aw5Var4 != aw5Var3) {
                            if (!(aw5Var4.k != null) && str2.equalsIgnoreCase((String) entry3.getKey())) {
                                it12.remove();
                                aw5Var3.J(aw5Var4);
                                break;
                            }
                        }
                    }
                }
            }
        }
        Iterator it13 = linkedHashMap.values().iterator();
        while (it13.hasNext()) {
            aw5 aw5Var5 = (aw5) it13.next();
            if (!aw5Var5.L()) {
                it13.remove();
            } else if (aw5Var5.K()) {
                if (!aw5.w(aw5Var5.k) && !aw5.w(aw5Var5.p) && !aw5.w(aw5Var5.q)) {
                    yv5 yv5Var5 = aw5Var5.n;
                    while (true) {
                        if (yv5Var5 == null) {
                            it13.remove();
                            aw5Var5.j();
                        } else if (yv5Var5.f || yv5Var5.c == null || !yv5Var5.d) {
                            yv5Var5 = yv5Var5.b;
                        }
                    }
                }
                yv5 yv5VarD = aw5Var5.k;
                if (yv5VarD != null) {
                    yv5VarD = yv5VarD.d();
                }
                aw5Var5.k = yv5VarD;
                yv5 yv5VarD2 = aw5Var5.p;
                if (yv5VarD2 != null) {
                    yv5VarD2 = yv5VarD2.d();
                }
                aw5Var5.p = yv5VarD2;
                yv5 yv5VarD3 = aw5Var5.q;
                if (yv5VarD3 != null) {
                    yv5VarD3 = yv5VarD3.d();
                }
                aw5Var5.q = yv5VarD3;
                yv5 yv5VarD4 = aw5Var5.n;
                if (yv5VarD4 != null) {
                    yv5VarD4 = yv5VarD4.d();
                }
                aw5Var5.n = yv5VarD4;
                if (!aw5Var5.a()) {
                    aw5Var5.j();
                }
            }
        }
        boolean zI2 = v77Var.i(u65.INFER_PROPERTY_MUTATORS);
        for (aw5 aw5Var6 : linkedHashMap.values()) {
            boolean z14 = aw5Var6.b;
            as5 as5Var2 = aw5Var6.d;
            ml4 ml4Var = ml4.a;
            if (as5Var2 == null) {
                ml4VarS2 = null;
            } else if (z14) {
                yv5 yv5Var6 = aw5Var6.p;
                if ((yv5Var6 == null || (ml4VarS2 = as5Var2.s((od) yv5Var6.a)) == null || ml4VarS2 == ml4Var) && (((yv5Var3 = aw5Var6.k) == null || (ml4VarS2 = as5Var2.s((od) yv5Var3.a)) == null || ml4VarS2 == ml4Var) && ((yv5Var4 = aw5Var6.n) == null || (ml4VarS2 = as5Var2.s((od) yv5Var4.a)) == null || ml4VarS2 == ml4Var))) {
                    yv5 yv5Var7 = aw5Var6.q;
                    if (yv5Var7 == null || (ml4VarS = as5Var2.s((od) yv5Var7.a)) == null || ml4VarS == ml4Var) {
                        ml4VarS2 = null;
                    } else {
                        ml4VarS2 = ml4VarS;
                    }
                }
            } else {
                yv5 yv5Var8 = aw5Var6.n;
                if ((yv5Var8 == null || (ml4VarS2 = as5Var2.s((od) yv5Var8.a)) == null || ml4VarS2 == ml4Var) && (((yv5Var = aw5Var6.q) == null || (ml4VarS2 = as5Var2.s((od) yv5Var.a)) == null || ml4VarS2 == ml4Var) && ((yv5Var2 = aw5Var6.k) == null || (ml4VarS2 = as5Var2.s((od) yv5Var2.a)) == null || ml4VarS2 == ml4Var))) {
                    yv5 yv5Var9 = aw5Var6.p;
                    if (yv5Var9 == null || (ml4VarS = as5Var2.s((od) yv5Var9.a)) == null || ml4VarS == ml4Var) {
                        ml4VarS2 = null;
                    } else {
                        ml4VarS2 = ml4VarS;
                    }
                }
            }
            if (aw5Var6.c.i(u65.INVERSE_READ_WRITE_ACCESS)) {
                ml4 ml4Var2 = ml4.c;
                ml4 ml4Var3 = ml4.b;
                if (ml4VarS2 == ml4Var3) {
                    ml4VarS2 = ml4Var2;
                } else if (ml4VarS2 == ml4Var2) {
                    ml4VarS2 = ml4Var3;
                }
            }
            if (ml4VarS2 != null) {
                ml4Var = ml4VarS2;
            }
            int iOrdinal2 = ml4Var.ordinal();
            if (iOrdinal2 == 1) {
                aw5Var6.q = null;
                aw5Var6.n = null;
                if (!z14) {
                    aw5Var6.k = null;
                }
            } else if (iOrdinal2 == 2) {
                aw5Var6.p = null;
                if (z14) {
                    aw5Var6.k = null;
                }
            } else if (iOrdinal2 != 3) {
                yv5 yv5VarF = aw5Var6.p;
                if (yv5VarF != null) {
                    yv5VarF = yv5VarF.f();
                }
                aw5Var6.p = yv5VarF;
                yv5 yv5VarF2 = aw5Var6.n;
                if (yv5VarF2 != null) {
                    yv5VarF2 = yv5VarF2.f();
                }
                aw5Var6.n = yv5VarF2;
                if (!zI2 || aw5Var6.p == null) {
                    yv5 yv5VarF3 = aw5Var6.k;
                    if (yv5VarF3 != null) {
                        yv5VarF3 = yv5VarF3.f();
                    }
                    aw5Var6.k = yv5VarF3;
                    yv5 yv5VarF4 = aw5Var6.q;
                    if (yv5VarF4 != null) {
                        yv5VarF4 = yv5VarF4.f();
                    }
                    aw5Var6.q = yv5VarF4;
                }
            }
        }
        Iterator it14 = linkedHashMap.entrySet().iterator();
        LinkedList<aw5> linkedList2 = null;
        while (it14.hasNext()) {
            aw5 aw5Var7 = (aw5) ((Map.Entry) it14.next()).getValue();
            Set setC = aw5.C(aw5Var7.n, aw5.C(aw5Var7.q, aw5.C(aw5Var7.p, aw5.C(aw5Var7.k, null))));
            if (setC == null) {
                setC = Collections.EMPTY_SET;
            }
            if (!setC.isEmpty()) {
                it14.remove();
                if (linkedList2 == null) {
                    linkedList2 = new LinkedList();
                }
                if (setC.size() == 1) {
                    linkedList2.add(new aw5(aw5Var7, (z86) setC.iterator().next()));
                } else {
                    HashMap map2 = new HashMap();
                    aw5Var7.B(setC, map2, aw5Var7.k);
                    aw5Var7.B(setC, map2, aw5Var7.p);
                    aw5Var7.B(setC, map2, aw5Var7.q);
                    aw5Var7.B(setC, map2, aw5Var7.n);
                    linkedList2.addAll(map2.values());
                }
            }
        }
        if (linkedList2 != null) {
            for (aw5 aw5Var8 : linkedList2) {
                String strJ = aw5Var8.j();
                aw5 aw5Var9 = (aw5) linkedHashMap.get(strJ);
                if (aw5Var9 == null) {
                    linkedHashMap.put(strJ, aw5Var8);
                } else {
                    aw5Var9.J(aw5Var8);
                }
                List list = this.k;
                td tdVarF = aw5Var8.f();
                if (list != null && tdVarF != null) {
                    int size = list.size();
                    for (int i9 = 0; i9 < size; i9++) {
                        aw5 aw5Var10 = (aw5) list.get(i9);
                        if (aw5Var10 != null && aw5Var10.f() == tdVarF) {
                            list.set(i9, aw5Var8);
                            break;
                        }
                    }
                }
            }
        }
        for (od odVar : hdVar.q0()) {
            d(as5Var.i(odVar), odVar);
        }
        for (pd pdVar2 : hdVar.r0()) {
            if (pdVar2.P.getParameterCount() == 1) {
                d(as5Var.i(pdVar2), pdVar2);
            }
        }
        if (this.s != null) {
            for (aw5 aw5Var11 : this.k) {
                if (aw5Var11 != null && (bh4VarI = as5Var.i(aw5Var11.f())) != null) {
                    this.s.remove(bh4VarI.a);
                }
            }
        }
        for (aw5 aw5Var12 : linkedHashMap.values()) {
            yv5 yv5Var10 = aw5Var12.p;
            yv5 yv5Var11 = aw5Var12.k;
            if (yv5Var10 != null) {
                aw5Var12.p = aw5.A(aw5Var12.p, aw5.H(0, yv5Var10, yv5Var11, aw5Var12.n, aw5Var12.q));
            } else if (yv5Var11 != null) {
                aw5Var12.k = aw5.A(aw5Var12.k, aw5.H(0, yv5Var11, aw5Var12.n, aw5Var12.q));
            }
        }
        Object objO = as5Var.o(hdVar);
        if (objO == null) {
            v77Var.b.getClass();
        } else {
            Class cls4 = (Class) objO;
            if (cls4 != a96.class) {
                if (!a96.class.isAssignableFrom(cls4)) {
                    j("AnnotationIntrospector returned Class %s; expected `Class<PropertyNamingStrategy>`", u81.e(cls4));
                    throw null;
                }
                v77Var.g();
                xs1.r(u81.f(cls4, v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS)));
            }
        }
        for (aw5 aw5Var13 : linkedHashMap.values()) {
            yv5 yv5VarB = aw5Var13.k;
            if (yv5VarB != null) {
                yv5VarB = yv5VarB.b();
            }
            aw5Var13.k = yv5VarB;
            yv5 yv5VarB2 = aw5Var13.p;
            if (yv5VarB2 != null) {
                yv5VarB2 = yv5VarB2.b();
            }
            aw5Var13.p = yv5VarB2;
            yv5 yv5VarB3 = aw5Var13.q;
            if (yv5VarB3 != null) {
                yv5VarB3 = yv5VarB3.b();
            }
            aw5Var13.q = yv5VarB3;
            yv5 yv5VarB4 = aw5Var13.n;
            if (yv5VarB4 != null) {
                yv5VarB4 = yv5VarB4.b();
            }
            aw5Var13.n = yv5VarB4;
        }
        if (v77Var.i(u65.USE_WRAPPER_NAME_AS_PROPERTY_NAME)) {
            Iterator it15 = linkedHashMap.entrySet().iterator();
            while (it15.hasNext()) {
                ((aw5) ((Map.Entry) it15.next()).getValue()).N();
            }
        }
        h(linkedHashMap);
        this.j = linkedHashMap;
        this.i = true;
    }

    public final void j(String str, Object... objArr) {
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        throw new IllegalArgumentException("Problem with definition of " + this.d + ": " + str);
    }

    public final String b(String str) {
        return str;
    }
}
