package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tr5 implements q27 {
    public final cr7 a;
    public final o81 b;
    public final br7 c;
    public final ri2 d;

    /* JADX WARN: Code duplicated, block: B:40:0x0130  */
    public tr5(ri2 ri2Var, x44 x44Var) throws w70, sf5, wt1 {
        boolean zContainsKey;
        Object obj;
        Constructor[] constructorArr;
        int i;
        int i2;
        ArrayList<uf7> arrayList;
        o81 o81Var = new o81();
        xt1 xt1Var = new xt1();
        xt1Var.a = new ArrayList();
        xt1Var.b = new uw5();
        xt1Var.d = x44Var;
        Constructor[] constructorArrE = ri2Var.e();
        if (!ri2Var.f()) {
            throw new wt1("Can not construct inner %s", ri2Var);
        }
        int length = constructorArrE.length;
        int i3 = 0;
        int i4 = 0;
        while (i4 < length) {
            Constructor constructor = constructorArrE[i4];
            if (ri2Var.isPrimitive()) {
                constructorArr = constructorArrE;
                i = length;
                i2 = i4;
            } else {
                ot9 ot9Var = (ot9) new wv0(constructor, (uw5) xt1Var.b, (x44) xt1Var.d).d;
                Constructor constructor2 = (Constructor) ot9Var.b;
                Constructor constructor3 = (Constructor) ot9Var.b;
                zw5 zw5Var = (zw5) ot9Var.a;
                Class<?>[] parameterTypes = constructor2.getParameterTypes();
                int i5 = zw5.b;
                if (parameterTypes.length == zw5Var.size()) {
                    zw5 zw5Var2 = new zw5();
                    if (zw5Var.isEmpty()) {
                        arrayList = new ArrayList();
                        uf7 uf7Var = new uf7(constructor3);
                        if (constructor3.getParameterTypes().length == zw5Var.size()) {
                            arrayList.add(uf7Var);
                        }
                        constructorArr = constructorArrE;
                        i = length;
                        i2 = i4;
                    } else {
                        ot9Var.b(zw5Var2, new vf7(), i3);
                        ArrayList arrayList2 = new ArrayList();
                        int size = zw5Var2.size() > 0 ? zw5Var2.c(i3).size() : i3;
                        int size2 = zw5Var2.size();
                        for (int i6 = i3; i6 < size; i6++) {
                            uf7 uf7Var2 = new uf7(constructor3);
                            int i7 = 0;
                            while (i7 < size2) {
                                Constructor[] constructorArr2 = constructorArrE;
                                tw5 tw5Var = (tw5) zw5Var2.c(i7).get(i6);
                                ((hz0) tw5Var).getClass();
                                int i8 = length;
                                Object obj2 = ((hz0) tw5Var).b;
                                int i9 = i4;
                                uw5 uw5Var = uf7Var2.a;
                                if (uw5Var.containsKey(obj2)) {
                                    throw new wt1("Parameter '%s' is a duplicate in %s", null, constructor3);
                                }
                                if (obj2 != null) {
                                    uw5Var.put(obj2, tw5Var);
                                }
                                i7++;
                                constructorArrE = constructorArr2;
                                length = i8;
                                i4 = i9;
                            }
                            arrayList2.add(uf7Var2);
                        }
                        constructorArr = constructorArrE;
                        i = length;
                        i2 = i4;
                        arrayList = arrayList2;
                    }
                    for (uf7 uf7Var3 : arrayList) {
                        if (uf7Var3.a.size() == 0) {
                            xt1Var.c = uf7Var3;
                        }
                        ((ArrayList) xt1Var.a).add(uf7Var3);
                    }
                } else {
                    constructorArr = constructorArrE;
                    i = length;
                    i2 = i4;
                }
            }
            i4 = i2 + 1;
            constructorArrE = constructorArr;
            length = i;
            i3 = 0;
        }
        o81Var.b = xt1Var;
        oe oeVar = new oe(8);
        o81Var.a = oeVar;
        o81Var.i = x44Var;
        eg2 eg2VarD = ri2Var.d();
        Class type = ri2Var.getType();
        while (type != null) {
            x44 x44Var2 = o81Var.i;
            ri2 ri2VarE = eg2VarD != null ? ((gp1) x44Var2.c).e(type) : ((gp1) x44Var2.d).e(type);
            kk5 kk5VarG = ri2VarE.g();
            jk5 namespace = ri2VarE.getNamespace();
            if (namespace != null) {
                ((ArrayList) oeVar.b).add(namespace);
            }
            if (kk5VarG != null) {
                for (jk5 jk5Var : kk5VarG.value()) {
                    ((ArrayList) oeVar.b).add(jk5Var);
                }
            }
            for (rf5 rf5Var : ri2VarE.k()) {
                Annotation[] annotationArr = rf5Var.a;
                Method method = rf5Var.b;
                for (Annotation annotation : annotationArr) {
                    if ((annotation instanceof em1) && o81Var.c == null) {
                        o81Var.c = o81.a(method);
                    }
                    if ((annotation instanceof si8) && o81Var.d == null) {
                        o81Var.d = o81.a(method);
                    }
                    if ((annotation instanceof ez5) && o81Var.e == null) {
                        o81Var.e = o81.a(method);
                    }
                    if ((annotation instanceof cn1) && o81Var.f == null) {
                        o81Var.f = o81.a(method);
                    }
                    if ((annotation instanceof pj6) && o81Var.g == null) {
                        o81Var.g = o81.a(method);
                    }
                    if ((annotation instanceof jl6) && o81Var.h == null) {
                        o81Var.h = o81.a(method);
                    }
                }
            }
            if (o81Var.j == null) {
                o81Var.j = ri2VarE.getRoot();
            }
            if (o81Var.k == null) {
                o81Var.k = ri2VarE.getOrder();
            }
            type = ri2VarE.j();
        }
        jk5 namespace2 = ri2Var.getNamespace();
        if (namespace2 != null) {
            ((ArrayList) oeVar.b).add(namespace2);
            oeVar.c = namespace2;
        }
        this.b = o81Var;
        cr7 cr7Var = new cr7();
        dr drVar = new dr(ri2Var, x44Var);
        cr7Var.b = drVar;
        cr7Var.c = new x00(drVar, ri2Var, x44Var);
        yz0 yz0Var = new yz0();
        yz0Var.b = new ArrayList();
        new km5((byte) 0, 6);
        yz0Var.d = new er4(null);
        yz0Var.e = new er4(null);
        yz0Var.f = new er4(null);
        yz0Var.k = this;
        yz0Var.n = ri2Var;
        cr7Var.a = yz0Var;
        cr7Var.k = new db8(this, ri2Var, null, null, 1);
        cr7Var.e = new er4(this);
        cr7Var.f = new er4(this);
        cr7Var.g = new er4(this);
        cr7Var.h = this;
        cr7Var.i = x44Var;
        this.a = cr7Var;
        this.d = ri2Var;
        ri2Var.getType();
        cr7 cr7Var2 = this.a;
        pu5 pu5Var = cr7Var2.h.b.k;
        if (pu5Var != null) {
            x00 x00Var = cr7Var2.c;
            db8 db8Var = cr7Var2.k;
            ri2 ri2Var2 = (ri2) x00Var.d;
            dr drVar2 = (dr) x00Var.b;
            for (String str : pu5Var.elements()) {
                s03 s03VarB = drVar2.b(str);
                if (s03VarB.h()) {
                    throw new sf5("Ordered element '%s' references an attribute in %s", s03VarB, ri2Var2);
                }
                x00Var.f(db8Var, s03VarB);
            }
            for (String str2 : pu5Var.attributes()) {
                s03 s03VarB2 = drVar2.b(str2);
                if (!s03VarB2.h() && s03VarB2.Y()) {
                    throw new sf5("Ordered attribute '%s' references an element in %s", s03VarB2, ri2Var2);
                }
                if (s03VarB2.Y()) {
                    x00.b(db8Var, s03VarB2);
                } else {
                    cz4 cz4Var = ((vq3) x00Var.c).a;
                    db8Var.b.put(str2, null);
                }
            }
        }
        for (au1 au1Var : x44Var.a(ri2Var.getType(), ri2Var.d())) {
            Annotation annotationC = au1Var.c();
            if (annotationC != null) {
                this.a.a(au1Var, annotationC);
            }
        }
        for (au1 au1Var2 : x44Var.c(ri2Var.getType(), ri2Var.d())) {
            Annotation annotationC2 = au1Var2.c();
            if (annotationC2 != null) {
                this.a.a(au1Var2, annotationC2);
            }
        }
        Class type2 = ri2Var.getType();
        cr7 cr7Var3 = this.a;
        if (cr7Var3.d == null) {
            yz0 yz0Var2 = cr7Var3.a;
            ri2 ri2Var3 = (ri2) yz0Var2.n;
            ArrayList arrayList3 = (ArrayList) yz0Var2.b;
            tr5 tr5Var = (tr5) yz0Var2.k;
            if (((ny1) yz0Var2.c) == null) {
                xt1 xt1Var2 = tr5Var.b.b;
                xt1Var2.getClass();
                for (uf7 uf7Var4 : new ArrayList((ArrayList) xt1Var2.a)) {
                    uf7 uf7Var5 = new uf7(uf7Var4.b, uf7Var4.c);
                    for (tw5 tw5Var2 : uf7Var4.a) {
                        uq4 uq4VarC = yz0Var2.c(tw5Var2);
                        hz0 hz0Var = uq4VarC != null ? new hz0(tw5Var2, uq4VarC) : null;
                        if (hz0Var != null && (obj = hz0Var.b) != null) {
                            uf7Var5.a.put(obj, hz0Var);
                        }
                    }
                    arrayList3.add(new wf7(uf7Var5));
                }
                if (((ny1) yz0Var2.c) == null) {
                    uf7 uf7Var6 = (uf7) tr5Var.b.b.c;
                    tr5Var.m();
                    yz0Var2.c = new ny1(3, arrayList3, uf7Var6 != null ? new wf7(uf7Var6) : null, ri2Var3);
                }
                Iterator it = tr5Var.m().d().iterator();
                if (it.hasNext()) {
                    uq4 uq4VarC2 = yz0Var2.c((tw5) it.next());
                    if (uq4VarC2 == null) {
                        throw new wt1("Parameter '%s' does not have a match in %s", null, ri2Var3);
                    }
                    uq4VarC2.k().getType();
                    throw null;
                }
                er4 er4Var = (er4) yz0Var2.d;
                er4 er4Var2 = (er4) yz0Var2.e;
                ny1 ny1Var = (ny1) yz0Var2.c;
                ny1Var.getClass();
                ArrayList arrayList4 = new ArrayList((List) ny1Var.b);
                ny1 ny1Var2 = (ny1) yz0Var2.c;
                if (((List) ny1Var2.b).size() <= 1 && ((wf7) ny1Var2.c) != null) {
                    yz0Var2.d(er4Var2);
                    yz0Var2.d(er4Var);
                }
                if (!arrayList4.isEmpty()) {
                    yz0Var2.e(er4Var2, arrayList4);
                    yz0Var2.e(er4Var, arrayList4);
                }
            }
            cr7Var3.d = (ny1) yz0Var2.c;
        }
        cr7 cr7Var4 = this.a;
        dr drVar3 = cr7Var4.b;
        db8 db8Var2 = cr7Var4.k;
        tr5 tr5Var2 = cr7Var4.h;
        pu5 pu5Var2 = tr5Var2.b.k;
        er4<uq4> er4Var3 = cr7Var4.f;
        for (uq4 uq4Var : er4Var3) {
            String[] strArrM = uq4Var.m();
            au1 au1VarK = uq4Var.k();
            int length2 = strArrM.length;
            int i10 = 0;
            while (i10 < length2) {
                String str3 = strArrM[i10];
                Annotation annotationC3 = au1VarK.c();
                uq4 uq4Var2 = (uq4) er4Var3.get(str3);
                pu5 pu5Var3 = pu5Var2;
                if (uq4Var.isInline() != uq4Var2.isInline()) {
                    throw new wt1("Inline must be consistent in %s for %s", annotationC3, au1VarK);
                }
                if (uq4Var.isRequired() != uq4Var2.isRequired()) {
                    throw new wt1("Required must be consistent in %s for %s", annotationC3, au1VarK);
                }
                i10++;
                pu5Var2 = pu5Var3;
            }
        }
        pu5 pu5Var4 = pu5Var2;
        if (pu5Var4 != null) {
            for (String str4 : pu5Var4.elements()) {
                s03 s03VarB3 = drVar3.b(str4);
                db8 db8VarD = s03VarB3.Y() ? db8Var2.d(s03VarB3.l0(0, 1)) : db8Var2;
                if (db8VarD != null) {
                    fh5 fh5Var = db8VarD.d;
                    String last = s03VarB3.getLast();
                    int index = s03VarB3.getIndex();
                    if (db8VarD.c.containsKey(last) || (fh5Var.containsKey(last) && !fh5Var.d(index, last).isEmpty())) {
                    }
                }
                throw new wt1("Ordered element '%s' missing for %s", str4, type2);
            }
        }
        if (pu5Var4 != null) {
            for (String str5 : pu5Var4.attributes()) {
                s03 s03VarB4 = drVar3.b(str5);
                db8 db8VarD2 = s03VarB4.Y() ? db8Var2.d(s03VarB4.l0(0, 1)) : db8Var2;
                if (db8VarD2 != null) {
                    String last2 = s03VarB4.getLast();
                    boolean zY = s03VarB4.Y();
                    er4 er4Var4 = db8VarD2.b;
                    zContainsKey = !zY ? er4Var4.containsKey(str5) : er4Var4.containsKey(last2);
                } else {
                    zContainsKey = false;
                }
                if (!zContainsKey) {
                    throw new w70("Ordered attribute '%s' missing in %s", str5, type2);
                }
            }
        }
        if (!db8Var2.isEmpty()) {
            db8Var2.g(type2);
        }
        uq4 uq4Var3 = db8Var2.r;
        uq4Var3 = uq4Var3 == null ? db8Var2.q : uq4Var3;
        if (uq4Var3 == null) {
            if (tr5Var2.b.j == null) {
                cr7Var4.l = db8Var2.isEmpty();
            }
        } else if (!uq4Var3.p()) {
            if (!er4Var3.isEmpty()) {
                throw new sf5("Elements used with %s in %s", uq4Var3, type2);
            }
            if (db8Var2.c()) {
                throw new sf5("Paths used with %s in %s", uq4Var3, type2);
            }
        }
        uq4 uq4Var4 = db8Var2.r;
        uq4Var4 = uq4Var4 == null ? db8Var2.q : uq4Var4;
        if (uq4Var4 != null && uq4Var4.p()) {
            Object key = uq4Var4.getKey();
            for (uq4 uq4Var5 : er4Var3) {
                if (!uq4Var5.getKey().equals(key)) {
                    throw new sf5("Elements used with %s in %s", uq4Var4, type2);
                }
                Class type3 = uq4Var5.b().getType();
                if (type3 == String.class) {
                    throw new sf5("Illegal entry of %s with text annotations on %s in %s", type3, uq4Var4, type2);
                }
            }
            if (db8Var2.c()) {
                throw new sf5("Paths used with %s in %s", uq4Var4, type2);
            }
        }
        ri2Var.getType();
        if (this.c == null) {
            cr7 cr7Var5 = this.a;
            this.c = new br7(cr7Var5.d, cr7Var5.k, cr7Var5.j, cr7Var5.l);
        }
        this.a = null;
    }

    @Override // defpackage.q27
    public final boolean a() {
        return this.d.a();
    }

    @Override // defpackage.q27
    public final yz0 b(ai5 ai5Var) {
        return new yz0(this, ai5Var);
    }

    @Override // defpackage.q27
    public final wo1 c() {
        return this.b.h;
    }

    @Override // defpackage.q27
    public final ny1 d() {
        return this.c.a;
    }

    @Override // defpackage.q27
    public final xd2 e() {
        return this.b.a;
    }

    @Override // defpackage.q27
    public final wo1 f() {
        return this.b.g;
    }

    @Override // defpackage.q27
    public final vj8 g() {
        uq4 uq4Var = this.c.b;
        if (uq4Var != null) {
            return (vj8) uq4Var.k().getAnnotation(vj8.class);
        }
        return null;
    }

    @Override // defpackage.q27
    public final String getName() {
        return this.d.getName();
    }

    @Override // defpackage.q27
    public final void getText() {
        this.c.getClass();
    }

    @Override // defpackage.q27
    public final Class getType() {
        return this.d.getType();
    }

    @Override // defpackage.q27
    public final uq4 getVersion() {
        return this.c.b;
    }

    @Override // defpackage.q27
    public final wo1 h() {
        return this.b.e;
    }

    @Override // defpackage.q27
    public final wo1 i() {
        return this.b.d;
    }

    @Override // defpackage.q27
    public final boolean isPrimitive() {
        return this.c.d;
    }

    @Override // defpackage.q27
    public final d67 j() {
        return new gh5(this.c.c);
    }

    @Override // defpackage.q27
    public final wo1 k() {
        return this.b.f;
    }

    @Override // defpackage.q27
    public final wo1 l() {
        return this.b.c;
    }

    public final uw5 m() {
        return (uw5) this.b.b.b;
    }
}
