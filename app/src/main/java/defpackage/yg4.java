package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yg4 extends as5 {
    public static final Class[] c = {bm4.class, ln4.class, ck4.class, xm4.class, rl4.class, an4.class, aj4.class, vk4.class};
    public static final Class[] d = {oj4.class, ln4.class, ck4.class, xm4.class, an4.class, aj4.class, vk4.class, zk4.class};
    public transient wp4 a;
    public boolean b;

    static {
        try {
            int i = fh4.a;
        } catch (Throwable th) {
            jb9.a0(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007c  */
    public static vn7 g0(s65 s65Var, jb9 jb9Var) {
        vn7 vn7Var;
        sm4 sm4Var;
        tm4 tm4Var;
        Class cls;
        tm4 tm4Var2;
        xm4 xm4Var = (xm4) jb9Var.z(xm4.class);
        mc8 mc8Var = null;
        wm4 wm4VarA = xm4Var == null ? null : wm4.a(xm4Var.use(), xm4Var.include(), xm4Var.property(), xm4Var.defaultImpl(), xm4Var.visible(), xm4Var.requireTypeIdForSubtypes().a());
        zm4 zm4Var = (zm4) jb9Var.z(zm4.class);
        if (zm4Var != null) {
            if (wm4VarA != null) {
                Class clsValue = zm4Var.value();
                s65Var.g();
                vn7Var = (vn7) u81.f(clsValue, s65Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS));
                sm4Var = (sm4) jb9Var.z(sm4.class);
                if (sm4Var != null) {
                    Class clsValue2 = sm4Var.value();
                    s65Var.g();
                    mc8Var = (mc8) u81.f(clsValue2, s65Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS));
                }
                tm4Var = wm4VarA.b;
                if (tm4Var == tm4.d && (jb9Var instanceof hd) && (tm4Var2 = tm4.a) != tm4Var) {
                    wm4VarA = new wm4(wm4VarA.a, tm4Var2, wm4VarA.c, wm4VarA.d, wm4VarA.e, wm4VarA.f);
                }
                cls = wm4VarA.d;
                if (cls != null && cls != vm4.class) {
                    cls.isAnnotation();
                }
                vn7Var.d = mc8Var;
                vn7Var.b(wm4VarA);
                return vn7Var;
            }
            return null;
        }
        if (wm4VarA != null) {
            um4 um4Var = wm4VarA.a;
            um4 um4Var2 = um4.NONE;
            if (um4Var == um4Var2) {
                wm4 wm4VarA2 = wm4.a(um4Var2, null, null, null, false, null);
                vn7 vn7Var2 = new vn7();
                vn7Var2.b(wm4VarA2);
                return vn7Var2;
            }
            vn7Var = new vn7();
            vn7Var.b(wm4VarA);
            sm4Var = (sm4) jb9Var.z(sm4.class);
            if (sm4Var != null) {
                Class clsValue3 = sm4Var.value();
                s65Var.g();
                mc8Var = (mc8) u81.f(clsValue3, s65Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS));
            }
            tm4Var = wm4VarA.b;
            if (tm4Var == tm4.d) {
                wm4VarA = new wm4(wm4VarA.a, tm4Var2, wm4VarA.c, wm4VarA.d, wm4VarA.e, wm4VarA.f);
            }
            cls = wm4VarA.d;
            if (cls != null) {
                cls.isAnnotation();
            }
            vn7Var.d = mc8Var;
            vn7Var.b(wm4VarA);
            return vn7Var;
        }
        return null;
    }

    public static boolean h0(Class cls, Class cls2) {
        if (cls.isPrimitive()) {
            return cls == u81.u(cls2);
        }
        return cls2.isPrimitive() && cls2 == u81.u(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.HashSet] */
    @Override // defpackage.as5
    public final sk4 A(jb9 jb9Var) {
        ?? hashSet;
        tk4 tk4Var = (tk4) jb9Var.z(tk4.class);
        if (tk4Var == null) {
            return sk4.b;
        }
        String[] strArrValue = tk4Var.value();
        if (strArrValue == null || strArrValue.length == 0) {
            hashSet = Collections.EMPTY_SET;
        } else {
            hashSet = new HashSet(strArrValue.length);
            for (String str : strArrValue) {
                hashSet.add(str);
            }
        }
        return new sk4(hashSet);
    }

    @Override // defpackage.as5
    public final Integer B(od odVar) {
        int iIndex;
        nl4 nl4Var = (nl4) odVar.z(nl4.class);
        if (nl4Var == null || (iIndex = nl4Var.index()) == -1) {
            return null;
        }
        return Integer.valueOf(iIndex);
    }

    @Override // defpackage.as5
    public final vn7 C(s65 s65Var, od odVar, gc8 gc8Var) {
        if (gc8Var.x0() || gc8Var.C()) {
            return null;
        }
        return g0(s65Var, odVar);
    }

    @Override // defpackage.as5
    public final de D(od odVar) {
        vk4 vk4Var = (vk4) odVar.z(vk4.class);
        if (vk4Var != null) {
            vk4Var.value();
            return new de(1);
        }
        aj4 aj4Var = (aj4) odVar.z(aj4.class);
        if (aj4Var == null) {
            return null;
        }
        aj4Var.value();
        return new de(2);
    }

    @Override // defpackage.as5
    public final z86 E(hd hdVar) {
        xl4 xl4Var = (xl4) hdVar.V.b(xl4.class);
        if (xl4Var == null) {
            return null;
        }
        String strNamespace = xl4Var.namespace();
        return z86.b(xl4Var.value(), (strNamespace == null || !strNamespace.isEmpty()) ? strNamespace : null);
    }

    @Override // defpackage.as5
    public final Object F(od odVar) {
        bm4 bm4Var = (bm4) odVar.z(bm4.class);
        if (bm4Var == null) {
            return null;
        }
        Class clsContentConverter = bm4Var.contentConverter();
        if (clsContentConverter == null || u81.o(clsContentConverter)) {
            clsContentConverter = null;
        }
        if (clsContentConverter == null || clsContentConverter == zv1.class) {
            return null;
        }
        return clsContentConverter;
    }

    @Override // defpackage.as5
    public final Object G(jb9 jb9Var) {
        bm4 bm4Var = (bm4) jb9Var.z(bm4.class);
        if (bm4Var == null) {
            return null;
        }
        Class clsConverter = bm4Var.converter();
        if (clsConverter == null || u81.o(clsConverter)) {
            clsConverter = null;
        }
        if (clsConverter == null || clsConverter == zv1.class) {
            return null;
        }
        return clsConverter;
    }

    @Override // defpackage.as5
    public final String[] H(hd hdVar) {
        pl4 pl4Var = (pl4) hdVar.V.b(pl4.class);
        if (pl4Var == null) {
            return null;
        }
        return pl4Var.value();
    }

    @Override // defpackage.as5
    public final Boolean I(jb9 jb9Var) {
        pl4 pl4Var = (pl4) jb9Var.z(pl4.class);
        if (pl4Var == null || !pl4Var.alphabetic()) {
            return null;
        }
        return Boolean.TRUE;
    }

    @Override // defpackage.as5
    public final am4 J(jb9 jb9Var) {
        bm4 bm4Var = (bm4) jb9Var.z(bm4.class);
        if (bm4Var == null) {
            return null;
        }
        return bm4Var.typing();
    }

    @Override // defpackage.as5
    public final Object K(jb9 jb9Var) {
        Class clsUsing;
        bm4 bm4Var = (bm4) jb9Var.z(bm4.class);
        if (bm4Var != null && (clsUsing = bm4Var.using()) != cm4.class) {
            return clsUsing;
        }
        rl4 rl4Var = (rl4) jb9Var.z(rl4.class);
        if (rl4Var == null || !rl4Var.value()) {
            return null;
        }
        return new if6(0, jb9Var.C());
    }

    @Override // defpackage.as5
    public final fm4 L(od odVar) {
        gm4 gm4Var = (gm4) odVar.z(gm4.class);
        if (gm4Var != null) {
            sp5 sp5VarNulls = gm4Var.nulls();
            sp5 sp5VarContentNulls = gm4Var.contentNulls();
            sp5 sp5Var = sp5.a;
            if (sp5VarNulls == null) {
                sp5VarNulls = sp5Var;
            }
            if (sp5VarContentNulls == null) {
                sp5VarContentNulls = sp5Var;
            }
            if (sp5VarNulls != sp5Var || sp5VarContentNulls != sp5Var) {
                return new fm4(sp5VarNulls, sp5VarContentNulls);
            }
        }
        return fm4.c;
    }

    @Override // defpackage.as5
    public final List M(jb9 jb9Var) {
        jm4 jm4Var = (jm4) jb9Var.z(jm4.class);
        List list = null;
        if (jm4Var == null) {
            return null;
        }
        im4[] im4VarArrValue = jm4Var.value();
        if (!jm4Var.failOnRepeatedNames()) {
            ArrayList arrayList = new ArrayList(im4VarArrValue.length);
            for (im4 im4Var : im4VarArrValue) {
                arrayList.add(new ik5(im4Var.value(), im4Var.name()));
                for (String str : im4Var.names()) {
                    arrayList.add(new ik5(im4Var.value(), str));
                }
            }
            return arrayList;
        }
        String strB = jb9Var.B();
        ArrayList arrayList2 = new ArrayList(im4VarArrValue.length);
        HashSet hashSet = new HashSet();
        int length = im4VarArrValue.length;
        int i = 0;
        while (i < length) {
            im4 im4Var2 = im4VarArrValue[i];
            String strName = im4Var2.name();
            if (!strName.isEmpty() && hashSet.contains(strName)) {
                c6.f(eq3.l("Annotated type [", strB, "] got repeated subtype name [", strName, "]"));
                return list;
            }
            hashSet.add(strName);
            arrayList2.add(new ik5(im4Var2.value(), strName));
            String[] strArrNames = im4Var2.names();
            int length2 = strArrNames.length;
            int i2 = 0;
            while (i2 < length2) {
                String str2 = strArrNames[i2];
                if (!str2.isEmpty() && hashSet.contains(str2)) {
                    c6.f(eq3.l("Annotated type [", strB, "] got repeated subtype name [", str2, "]"));
                    return list;
                }
                hashSet.add(str2);
                arrayList2.add(new ik5(im4Var2.value(), str2));
                i2++;
                list = null;
            }
            i++;
            list = null;
        }
        return arrayList2;
    }

    @Override // defpackage.as5
    public final String N(hd hdVar) {
        ym4 ym4Var = (ym4) hdVar.V.b(ym4.class);
        if (ym4Var == null) {
            return null;
        }
        return ym4Var.value();
    }

    @Override // defpackage.as5
    public final vn7 O(v77 v77Var, hd hdVar, gc8 gc8Var) {
        return g0(v77Var, hdVar);
    }

    @Override // defpackage.as5
    public final fk5 P(od odVar) {
        an4 an4Var = (an4) odVar.z(an4.class);
        if (an4Var == null || !an4Var.enabled()) {
            return null;
        }
        String strPrefix = an4Var.prefix();
        String strSuffix = an4Var.suffix();
        boolean z = false;
        boolean z2 = (strPrefix == null || strPrefix.isEmpty()) ? false : true;
        if (strSuffix != null && !strSuffix.isEmpty()) {
            z = true;
        }
        if (z2) {
            return z ? new ak5(strPrefix, strSuffix) : new bk5(strPrefix);
        }
        return z ? new ck5(strSuffix) : fk5.a;
    }

    @Override // defpackage.as5
    public final Class[] Q(jb9 jb9Var) {
        ln4 ln4Var = (ln4) jb9Var.z(ln4.class);
        if (ln4Var == null) {
            return null;
        }
        return ln4Var.value();
    }

    @Override // defpackage.as5
    public final Boolean R(od odVar) {
        si4 si4Var = (si4) odVar.z(si4.class);
        if (si4Var == null) {
            return null;
        }
        return Boolean.valueOf(si4Var.enabled());
    }

    @Override // defpackage.as5
    public final boolean S(pd pdVar) {
        return pdVar.t0(si4.class);
    }

    @Override // defpackage.as5
    public final Boolean T(od odVar) {
        ti4 ti4Var = (ti4) odVar.z(ti4.class);
        if (ti4Var == null) {
            return null;
        }
        return Boolean.valueOf(ti4Var.enabled());
    }

    @Override // defpackage.as5
    public final Boolean U(od odVar) {
        uk4 uk4Var = (uk4) odVar.z(uk4.class);
        if (uk4Var == null) {
            return null;
        }
        return Boolean.valueOf(uk4Var.value());
    }

    @Override // defpackage.as5
    public final Boolean V(od odVar) {
        hn4 hn4Var = (hn4) odVar.z(hn4.class);
        if (hn4Var == null) {
            return null;
        }
        return Boolean.valueOf(hn4Var.value());
    }

    @Override // defpackage.as5
    public final boolean W(pd pdVar) {
        hn4 hn4Var = (hn4) pdVar.z(hn4.class);
        return hn4Var != null && hn4Var.value();
    }

    @Override // defpackage.as5
    public final boolean X(od odVar) {
        lk4 lk4Var = (lk4) odVar.z(lk4.class);
        if (lk4Var != null) {
            return lk4Var.value();
        }
        return false;
    }

    @Override // defpackage.as5
    public final Boolean Y(od odVar) {
        nl4 nl4Var = (nl4) odVar.z(nl4.class);
        if (nl4Var == null) {
            return null;
        }
        fu5 fu5VarIsRequired = nl4Var.isRequired();
        return fu5VarIsRequired != fu5.b ? fu5VarIsRequired.a() : Boolean.valueOf(nl4Var.required());
    }

    @Override // defpackage.as5
    public final boolean Z(Annotation annotation) {
        Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
        String name = clsAnnotationType.getName();
        wp4 wp4Var = this.a;
        Boolean bool = (Boolean) wp4Var.a.get(name);
        if (bool == null) {
            Boolean boolValueOf = Boolean.valueOf(clsAnnotationType.getAnnotation(zg4.class) != null);
            wp4Var.a.g(name, boolValueOf, true);
            bool = boolValueOf;
        }
        return bool.booleanValue();
    }

    @Override // defpackage.as5
    public final void a(s65 s65Var, hd hdVar, ArrayList arrayList) {
        Annotation annotationB = hdVar.V.b(wi4.class);
        Class cls = hdVar.N;
        wi4 wi4Var = (wi4) annotationB;
        if (wi4Var == null) {
            return;
        }
        boolean zPrepend = wi4Var.prepend();
        ui4[] ui4VarArrAttrs = wi4Var.attrs();
        int length = ui4VarArrAttrs.length;
        gc8 gc8VarC = null;
        for (int i = 0; i < length; i++) {
            if (gc8VarC == null) {
                gc8VarC = s65Var.c(Object.class);
            }
            ui4 ui4Var = ui4VarArrAttrs[i];
            x86 x86Var = ui4Var.required() ? x86.n : x86.p;
            String strValue = ui4Var.value();
            String strPropName = ui4Var.propName();
            String strPropNamespace = ui4Var.propNamespace();
            z86 z86VarA = strPropName.isEmpty() ? z86.d : (strPropNamespace == null || strPropNamespace.isEmpty()) ? z86.a(strPropName) : z86.b(strPropName, strPropNamespace);
            if (z86VarA.a.isEmpty()) {
                z86VarA = z86.a(strValue);
            }
            z70 z70Var = new z70(strValue, eg7.t(s65Var, new hn8(hdVar, cls, strValue, gc8VarC), z86VarA, x86Var, ui4Var.include()), hdVar.V, gc8VarC);
            if (zPrepend) {
                arrayList.add(i, z70Var);
            } else {
                arrayList.add(z70Var);
            }
        }
        vi4[] vi4VarArrProps = wi4Var.props();
        if (vi4VarArrProps.length > 0) {
            vi4 vi4Var = vi4VarArrProps[0];
            x86 x86Var2 = vi4Var.required() ? x86.n : x86.p;
            String strName = vi4Var.name();
            String strNamespace = vi4Var.namespace();
            z86 z86VarA2 = strName.isEmpty() ? z86.d : (strNamespace == null || strNamespace.isEmpty()) ? z86.a(strName) : z86.b(strName, strNamespace);
            eg7.t(s65Var, new hn8(hdVar, cls, z86VarA2.a, s65Var.c(vi4Var.type())), z86VarA2, x86Var2, vi4Var.include());
            Class clsValue = vi4Var.value();
            s65Var.g();
            ((z70) u81.f(clsValue, s65Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS))).getClass();
            l0.e("Should not be called on this type");
        }
    }

    @Override // defpackage.as5
    public final Boolean a0(hd hdVar) {
        ok4 ok4Var = (ok4) hdVar.V.b(ok4.class);
        if (ok4Var == null) {
            return null;
        }
        return Boolean.valueOf(ok4Var.value());
    }

    @Override // defpackage.as5
    public final nn8 b(hd hdVar, nn8 nn8Var) {
        zi4 zi4Var = (zi4) hdVar.V.b(zi4.class);
        if (zi4Var == null) {
            return nn8Var;
        }
        yi4 yi4Var = nn8Var.a;
        yi4 yi4Var2 = nn8Var.e;
        yi4 yi4Var3 = nn8Var.d;
        yi4 yi4Var4 = nn8Var.c;
        yi4 yi4Var5 = nn8Var.b;
        yi4 yi4Var6 = zi4Var.getterVisibility();
        yi4 yi4Var7 = yi4.d;
        yi4 yi4Var8 = yi4Var6 == yi4Var7 ? yi4Var : yi4Var6;
        yi4 yi4VarIsGetterVisibility = zi4Var.isGetterVisibility();
        yi4 yi4Var9 = yi4VarIsGetterVisibility == yi4Var7 ? yi4Var5 : yi4VarIsGetterVisibility;
        yi4 yi4Var10 = zi4Var.setterVisibility();
        yi4 yi4Var11 = yi4Var10 == yi4Var7 ? yi4Var4 : yi4Var10;
        yi4 yi4VarCreatorVisibility = zi4Var.creatorVisibility();
        yi4 yi4Var12 = yi4VarCreatorVisibility == yi4Var7 ? yi4Var3 : yi4VarCreatorVisibility;
        yi4 yi4VarFieldVisibility = zi4Var.fieldVisibility();
        yi4 yi4Var13 = yi4VarFieldVisibility == yi4Var7 ? yi4Var2 : yi4VarFieldVisibility;
        return (yi4Var8 == nn8Var.a && yi4Var9 == yi4Var5 && yi4Var11 == yi4Var4 && yi4Var12 == yi4Var3 && yi4Var13 == yi4Var2) ? nn8Var : new nn8(yi4Var8, yi4Var9, yi4Var11, yi4Var12, yi4Var13);
    }

    @Override // defpackage.as5
    public final Object c(jb9 jb9Var) {
        Class clsContentUsing;
        bm4 bm4Var = (bm4) jb9Var.z(bm4.class);
        if (bm4Var == null || (clsContentUsing = bm4Var.contentUsing()) == cm4.class) {
            return null;
        }
        return clsContentUsing;
    }

    @Override // defpackage.as5
    public final Boolean c0(od odVar) {
        return Boolean.valueOf(odVar.t0(rm4.class));
    }

    @Override // defpackage.as5
    public final ej4 d(v77 v77Var, ud udVar) {
        ej4 ej4VarMode;
        fj4 fj4Var = (fj4) udVar.z(fj4.class);
        if (fj4Var == null) {
            ej4VarMode = null;
        } else {
            ej4VarMode = fj4Var.mode();
            if (ej4VarMode != ej4.a) {
                return ej4VarMode;
            }
        }
        if (this.b) {
            v77Var.i(u65.INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES);
        }
        return ej4VarMode;
    }

    @Override // defpackage.as5
    public final gc8 d0(s65 s65Var, jb9 jb9Var, gc8 gc8Var) throws yk4 {
        Class<?> clsAs;
        Class<?> clsContentAs;
        gc8 gc8VarG0;
        Class<?> clsKeyAs;
        gc8 gc8VarG1;
        gc8 q65Var = gc8Var;
        lc8 lc8Var = s65Var.b.a;
        bm4 bm4Var = (bm4) jb9Var.z(bm4.class);
        if (bm4Var == null || (clsAs = bm4Var.as()) == null || u81.o(clsAs)) {
            clsAs = null;
        }
        if (clsAs != null) {
            if (q65Var.w0(clsAs)) {
                q65Var = q65Var.G0();
            } else {
                Class<?> cls = q65Var.f;
                try {
                    if (clsAs.isAssignableFrom(cls)) {
                        lc8Var.getClass();
                        q65Var = lc8.f(q65Var, clsAs);
                    } else if (cls.isAssignableFrom(clsAs)) {
                        q65Var = lc8Var.g(q65Var, clsAs, false);
                    } else {
                        if (!h0(cls, clsAs)) {
                            throw new yk4(null, String.format("Cannot refine serialization type %s into %s; types not related", q65Var, clsAs.getName()));
                        }
                        q65Var = q65Var.G0();
                    }
                } catch (IllegalArgumentException e) {
                    throw new yk4(null, String.format("Failed to widen type %s with annotation (value %s), from '%s': %s", q65Var, clsAs.getName(), jb9Var.B(), e.getMessage()), e);
                }
            }
        }
        q65Var.getClass();
        if (q65Var instanceof q65) {
            q65 q65Var2 = (q65) q65Var;
            gc8 gc8Var2 = q65Var2.G;
            if (bm4Var == null || (clsKeyAs = bm4Var.keyAs()) == null || u81.o(clsKeyAs)) {
                clsKeyAs = null;
            }
            if (clsKeyAs != null) {
                if (gc8Var2.w0(clsKeyAs)) {
                    gc8VarG1 = gc8Var2.G0();
                } else {
                    Class<?> cls2 = gc8Var2.f;
                    try {
                        if (clsKeyAs.isAssignableFrom(cls2)) {
                            lc8Var.getClass();
                            gc8VarG1 = lc8.f(gc8Var2, clsKeyAs);
                        } else if (cls2.isAssignableFrom(clsKeyAs)) {
                            gc8VarG1 = lc8Var.g(gc8Var2, clsKeyAs, false);
                        } else {
                            if (!h0(cls2, clsKeyAs)) {
                                throw new yk4(null, String.format("Cannot refine serialization key type %s into %s; types not related", gc8Var2, clsKeyAs.getName()));
                            }
                            gc8VarG1 = gc8Var2.G0();
                        }
                    } catch (IllegalArgumentException e2) {
                        throw new yk4(null, String.format("Failed to widen key type of %s with concrete-type annotation (value %s), from '%s': %s", q65Var, clsKeyAs.getName(), jb9Var.B(), e2.getMessage()), e2);
                    }
                }
                gc8 gc8Var3 = gc8VarG1;
                q65Var = gc8Var3 == gc8Var2 ? q65Var2 : new q65(q65Var2.f, q65Var2.x, q65Var2.r, q65Var2.t, gc8Var3, q65Var2.H, q65Var2.n, q65Var2.p, q65Var2.q);
            }
        }
        gc8 gc8VarO0 = q65Var.o0();
        if (gc8VarO0 != null) {
            if (bm4Var == null || (clsContentAs = bm4Var.contentAs()) == null || u81.o(clsContentAs)) {
                clsContentAs = null;
            }
            if (clsContentAs != null) {
                if (gc8VarO0.w0(clsContentAs)) {
                    gc8VarG0 = gc8VarO0.G0();
                } else {
                    Class<?> cls3 = gc8VarO0.f;
                    try {
                        if (clsContentAs.isAssignableFrom(cls3)) {
                            lc8Var.getClass();
                            gc8VarG0 = lc8.f(gc8VarO0, clsContentAs);
                        } else if (cls3.isAssignableFrom(clsContentAs)) {
                            gc8VarG0 = lc8Var.g(gc8VarO0, clsContentAs, false);
                        } else {
                            if (!h0(cls3, clsContentAs)) {
                                throw new yk4(null, String.format("Cannot refine serialization content type %s into %s; types not related", gc8VarO0, clsContentAs.getName()));
                            }
                            gc8VarG0 = gc8VarO0.G0();
                        }
                    } catch (IllegalArgumentException e3) {
                        throw new yk4(null, String.format("Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from '%s': %s", q65Var, clsContentAs.getName(), jb9Var.B(), e3.getMessage()), e3);
                    }
                }
                return q65Var.D0(gc8VarG0);
            }
        }
        return q65Var;
    }

    @Override // defpackage.as5
    public final Object e(hd hdVar) {
        mx2 mx2Var = (mx2) hdVar.V.b(mx2.class);
        if (mx2Var == null) {
            return null;
        }
        return mx2Var.value();
    }

    @Override // defpackage.as5
    public final pd e0(pd pdVar, pd pdVar2) {
        Class clsZ0 = pdVar.z0(0);
        Class clsZ1 = pdVar2.z0(0);
        if (!clsZ0.isPrimitive()) {
            if (!clsZ1.isPrimitive()) {
                if (clsZ0 == String.class) {
                    if (clsZ1 == String.class) {
                        return null;
                    }
                } else if (clsZ1 != String.class) {
                    return null;
                }
            }
            return pdVar2;
        }
        if (clsZ1.isPrimitive()) {
            return null;
        }
        return pdVar;
    }

    @Override // defpackage.as5
    public final String[] f(hd hdVar, Enum[] enumArr, String[] strArr) {
        String strValue;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (ld ldVar : hdVar.q0()) {
            nl4 nl4Var = (nl4) ldVar.z(nl4.class);
            if (nl4Var != null && (strValue = nl4Var.value()) != null) {
                linkedHashMap.put(ldVar.O.getName(), strValue);
            }
        }
        int length = enumArr.length;
        for (int i = 0; i < length; i++) {
            String str = (String) linkedHashMap.get(enumArr[i].name());
            if (str != null) {
                strArr[i] = str;
            }
        }
        return strArr;
    }

    @Override // defpackage.as5
    public final Object g(jb9 jb9Var) {
        xj4 xj4Var = (xj4) jb9Var.z(xj4.class);
        if (xj4Var == null) {
            return null;
        }
        String strValue = xj4Var.value();
        if (strValue.isEmpty()) {
            return null;
        }
        return strValue;
    }

    @Override // defpackage.as5
    public final bk4 h(jb9 jb9Var) {
        ck4 ck4Var = (ck4) jb9Var.z(ck4.class);
        if (ck4Var == null) {
            return null;
        }
        String strPattern = ck4Var.pattern();
        ak4 ak4VarShape = ck4Var.shape();
        String strLocale = ck4Var.locale();
        String strTimezone = ck4Var.timezone();
        yj4[] yj4VarArrWith = ck4Var.with();
        yj4[] yj4VarArrWithout = ck4Var.without();
        int iOrdinal = 0;
        for (yj4 yj4Var : yj4VarArrWith) {
            iOrdinal |= 1 << yj4Var.ordinal();
        }
        int iOrdinal2 = 0;
        for (yj4 yj4Var2 : yj4VarArrWithout) {
            iOrdinal2 |= 1 << yj4Var2.ordinal();
        }
        return new bk4(strPattern, ak4VarShape, strLocale, strTimezone, new zj4(iOrdinal, iOrdinal2), ck4Var.lenient().a());
    }

    @Override // defpackage.as5
    public final bh4 i(od odVar) {
        String name;
        ch4 ch4Var = (ch4) odVar.z(ch4.class);
        if (ch4Var == null) {
            return null;
        }
        String strValue = ch4Var.value();
        Boolean boolA = ch4Var.useInput().a();
        Boolean boolA2 = ch4Var.optional().a();
        String str = "".equals(strValue) ? null : strValue;
        bh4 bh4Var = (str == null && boolA == null && boolA2 == null) ? bh4.d : new bh4(str, boolA, boolA2);
        Object obj = bh4Var.a;
        if (obj == null) {
            if (odVar instanceof pd) {
                pd pdVar = (pd) odVar;
                Method method = pdVar.P;
                name = method.getParameterCount() == 0 ? method.getReturnType().getName() : pdVar.z0(0).getName();
            } else {
                name = odVar.C().getName();
            }
            if (!name.equals(obj)) {
                return new bh4(name, bh4Var.b, bh4Var.c);
            }
        }
        return bh4Var;
    }

    @Override // defpackage.as5
    public final Object j(od odVar) {
        bh4 bh4VarI = i(odVar);
        if (bh4VarI == null) {
            return null;
        }
        return bh4VarI.a;
    }

    @Override // defpackage.as5
    public final Object k(jb9 jb9Var) {
        Class clsKeyUsing;
        bm4 bm4Var = (bm4) jb9Var.z(bm4.class);
        if (bm4Var == null || (clsKeyUsing = bm4Var.keyUsing()) == cm4.class) {
            return null;
        }
        return clsKeyUsing;
    }

    @Override // defpackage.as5
    public final Boolean l(od odVar) {
        zk4 zk4Var = (zk4) odVar.z(zk4.class);
        if (zk4Var == null) {
            return null;
        }
        return zk4Var.value().a();
    }

    @Override // defpackage.as5
    public final z86 m(od odVar) {
        boolean z;
        gm4 gm4Var = (gm4) odVar.z(gm4.class);
        if (gm4Var != null) {
            String strValue = gm4Var.value();
            if (!strValue.isEmpty()) {
                return z86.a(strValue);
            }
            z = true;
        } else {
            z = false;
        }
        nl4 nl4Var = (nl4) odVar.z(nl4.class);
        if (nl4Var != null) {
            String strNamespace = nl4Var.namespace();
            return z86.b(nl4Var.value(), (strNamespace == null || !strNamespace.isEmpty()) ? strNamespace : null);
        }
        if (z || odVar.u0(d)) {
            return z86.d;
        }
        return null;
    }

    @Override // defpackage.as5
    public final z86 n(od odVar) {
        boolean z;
        hk4 hk4Var = (hk4) odVar.z(hk4.class);
        if (hk4Var != null) {
            String strValue = hk4Var.value();
            if (!strValue.isEmpty()) {
                return z86.a(strValue);
            }
            z = true;
        } else {
            z = false;
        }
        nl4 nl4Var = (nl4) odVar.z(nl4.class);
        if (nl4Var != null) {
            String strNamespace = nl4Var.namespace();
            return z86.b(nl4Var.value(), (strNamespace == null || !strNamespace.isEmpty()) ? strNamespace : null);
        }
        if (z || odVar.u0(c)) {
            return z86.d;
        }
        return null;
    }

    @Override // defpackage.as5
    public final Object o(hd hdVar) {
        bl4 bl4Var = (bl4) hdVar.V.b(bl4.class);
        if (bl4Var == null) {
            return null;
        }
        return bl4Var.value();
    }

    @Override // defpackage.as5
    public final Object p(od odVar) {
        Class clsNullsUsing;
        bm4 bm4Var = (bm4) odVar.z(bm4.class);
        if (bm4Var == null || (clsNullsUsing = bm4Var.nullsUsing()) == cm4.class) {
            return null;
        }
        return clsNullsUsing;
    }

    @Override // defpackage.as5
    public final kr5 q(jb9 jb9Var) {
        jk4 jk4Var = (jk4) jb9Var.z(jk4.class);
        if (jk4Var == null || jk4Var.generator() == jr5.class) {
            return null;
        }
        return new kr5(z86.a(jk4Var.property()), jk4Var.scope(), jk4Var.generator(), false, jk4Var.resolver());
    }

    @Override // defpackage.as5
    public final kr5 r(jb9 jb9Var, kr5 kr5Var) {
        kk4 kk4Var = (kk4) jb9Var.z(kk4.class);
        if (kk4Var == null) {
            return kr5Var;
        }
        if (kr5Var == null) {
            kr5Var = kr5.f;
        }
        boolean zAlwaysAsId = kk4Var.alwaysAsId();
        return kr5Var.e == zAlwaysAsId ? kr5Var : new kr5(kr5Var.a, kr5Var.d, kr5Var.b, zAlwaysAsId, kr5Var.c);
    }

    @Override // defpackage.as5
    public final ml4 s(jb9 jb9Var) {
        nl4 nl4Var = (nl4) jb9Var.z(nl4.class);
        if (nl4Var != null) {
            return nl4Var.access();
        }
        return null;
    }

    @Override // defpackage.as5
    public final vn7 t(s65 s65Var, od odVar, gc8 gc8Var) {
        if (gc8Var.o0() != null) {
            return g0(s65Var, odVar);
        }
        d6.e(gc8Var, ")", "Must call method with a container or reference type (got ");
        return null;
    }

    @Override // defpackage.as5
    public final String v(od odVar) {
        nl4 nl4Var = (nl4) odVar.z(nl4.class);
        if (nl4Var != null) {
            String strDefaultValue = nl4Var.defaultValue();
            if (!strDefaultValue.isEmpty()) {
                return strDefaultValue;
            }
        }
        return null;
    }

    @Override // defpackage.as5
    public final String w(od odVar) {
        ol4 ol4Var = (ol4) odVar.z(ol4.class);
        if (ol4Var == null) {
            return null;
        }
        return ol4Var.value();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.HashSet] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Set] */
    @Override // defpackage.as5
    public final mk4 x(jb9 jb9Var) {
        ?? hashSet;
        nk4 nk4Var = (nk4) jb9Var.z(nk4.class);
        if (nk4Var == null) {
            return mk4.f;
        }
        mk4 mk4Var = mk4.f;
        String[] strArrValue = nk4Var.value();
        if (strArrValue == null || strArrValue.length == 0) {
            hashSet = Collections.EMPTY_SET;
        } else {
            hashSet = new HashSet(strArrValue.length);
            for (String str : strArrValue) {
                hashSet.add(str);
            }
        }
        ?? r1 = hashSet;
        boolean zIgnoreUnknown = nk4Var.ignoreUnknown();
        boolean zAllowGetters = nk4Var.allowGetters();
        boolean zAllowSetters = nk4Var.allowSetters();
        mk4 mk4Var2 = mk4.f;
        return (zIgnoreUnknown == mk4Var2.b && zAllowGetters == mk4Var2.c && zAllowSetters == mk4Var2.d && !mk4Var2.e && (r1 == 0 || r1.size() == 0)) ? mk4Var2 : new mk4(r1, zIgnoreUnknown, zAllowGetters, zAllowSetters, false);
    }

    @Override // defpackage.as5
    public final mk4 y(jb9 jb9Var) {
        return x(jb9Var);
    }

    @Override // defpackage.as5
    public final qk4 z(jb9 jb9Var) {
        qk4 qk4Var;
        bm4 bm4Var;
        rk4 rk4Var = (rk4) jb9Var.z(rk4.class);
        pk4 pk4Var = pk4.e;
        if (rk4Var == null) {
            qk4Var = qk4.e;
        } else {
            qk4 qk4Var2 = qk4.e;
            pk4 pk4VarValue = rk4Var.value();
            pk4 pk4VarContent = rk4Var.content();
            if (pk4VarValue == pk4Var && pk4VarContent == pk4Var) {
                qk4Var = qk4Var2;
            } else {
                Class clsValueFilter = rk4Var.valueFilter();
                if (clsValueFilter == Void.class) {
                    clsValueFilter = null;
                }
                Class clsContentFilter = rk4Var.contentFilter();
                qk4Var = new qk4(pk4VarValue, pk4VarContent, clsValueFilter, clsContentFilter != Void.class ? clsContentFilter : null);
            }
        }
        if (qk4Var.a != pk4Var || (bm4Var = (bm4) jb9Var.z(bm4.class)) == null) {
            return qk4Var;
        }
        int iOrdinal = bm4Var.include().ordinal();
        if (iOrdinal == 0) {
            return qk4Var.b(pk4.a);
        }
        if (iOrdinal == 1) {
            return qk4Var.b(pk4.b);
        }
        if (iOrdinal != 2) {
            return iOrdinal != 3 ? qk4Var : qk4Var.b(pk4.c);
        }
        return qk4Var.b(pk4.d);
    }
}
