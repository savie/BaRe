package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Member;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rp0 extends ep0 {
    public static final rp0 q = new rp0();

    /* JADX WARN: Code duplicated, block: B:106:0x020e  */
    /* JADX WARN: Code duplicated, block: B:130:0x0254  */
    /* JADX WARN: Code duplicated, block: B:132:0x0258  */
    /* JADX WARN: Code duplicated, block: B:134:0x025f  */
    /* JADX WARN: Code duplicated, block: B:135:0x0262  */
    /* JADX WARN: Code duplicated, block: B:137:0x026a  */
    /* JADX WARN: Code duplicated, block: B:144:0x028c  */
    /* JADX WARN: Code duplicated, block: B:147:0x0299  */
    /* JADX WARN: Code duplicated, block: B:149:0x029f A[RETURN] */
    public final mp0 V(c87 c87Var, lp0 lp0Var, w86 w86Var, boolean z, od odVar) throws ag4 {
        sc8 sc8VarH;
        boolean z2;
        boolean z3;
        Object objX;
        Class[] clsArrD;
        mp0 mp0Var;
        Object objP;
        fk5 fk5VarP;
        as5 as5Var;
        Class[] clsArrQ;
        Object objL;
        boolean z4;
        gc8 gc8VarD = odVar.D();
        lp0Var.p();
        jp0 jp0Var = new jp0(gc8VarD, odVar, lp0Var.i());
        em4 em4VarU = ep0.U(c87Var, odVar);
        v77 v77Var = c87Var.a;
        if (em4VarU instanceof op0) {
            ((op0) em4VarU).t(c87Var);
        }
        em4 em4VarV = c87Var.v(em4VarU, jp0Var);
        if (gc8VarD.x0() || gc8VarD.C()) {
            gc8 gc8VarO0 = gc8VarD.o0();
            vn7 vn7VarT = v77Var.d().t(v77Var, odVar, gc8VarD);
            sc8VarH = vn7VarT == null ? h(v77Var, gc8VarO0) : vn7VarT.a(v77Var, gc8VarO0, v77Var.d.K(v77Var, odVar, gc8VarO0));
        } else {
            sc8VarH = null;
        }
        vn7 vn7VarC = v77Var.d().C(v77Var, odVar, gc8VarD);
        sc8 sc8VarH2 = vn7VarC == null ? h(v77Var, gc8VarD) : vn7VarC.a(v77Var, gc8VarD, v77Var.d.K(v77Var, odVar, gc8VarD));
        as5 as5Var2 = (as5) w86Var.d;
        boolean z5 = w86Var.a;
        v77 v77Var2 = (v77) w86Var.b;
        wo0 wo0Var = (wo0) w86Var.c;
        s65 s65Var = wo0Var.c;
        hd hdVar = wo0Var.e;
        try {
            gc8 gc8VarA = w86Var.a(odVar, z, gc8VarD);
            if (sc8VarH != null) {
                if (gc8VarA == null) {
                    gc8VarA = gc8VarD;
                }
                if (gc8VarA.o0() == null) {
                    c87Var.C(wo0Var, lp0Var, "serialization type " + gc8VarA + " has no content", new Object[0]);
                    throw null;
                }
                gc8VarA = gc8VarA.E0(sc8VarH);
                gc8VarA.getClass();
            }
            gc8 gc8Var = gc8VarA == null ? gc8VarD : gc8VarA;
            od odVarE = lp0Var.e();
            if (odVarE == null) {
                c87Var.C(wo0Var, lp0Var, "could not determine property type", new Object[0]);
                throw null;
            }
            sc8 sc8Var = sc8VarH2;
            Class clsC = odVarE.C();
            Class cls = gc8Var.f;
            gc8 gc8Var2 = gc8Var;
            qk4 qk4Var = (qk4) w86Var.f;
            v77Var2.e(cls);
            v77Var2.e(clsC);
            qk4[] qk4VarArr = {qk4Var, null, null};
            qk4 qk4Var2 = qk4.e;
            qk4 qk4Var3 = null;
            for (int i = 0; i < 3; i++) {
                qk4 qk4VarA = qk4VarArr[i];
                if (qk4VarA != null) {
                    if (qk4Var3 != null) {
                        qk4VarA = qk4Var3.a(qk4VarA);
                    }
                    qk4Var3 = qk4VarA;
                }
            }
            qk4 qk4VarA2 = qk4Var3.a(lp0Var.b());
            pk4 pk4Var = qk4VarA2.a;
            if (pk4Var == pk4.e) {
                pk4Var = pk4.a;
            }
            int iOrdinal = pk4Var.ordinal();
            pk4 pk4Var2 = pk4.c;
            if (iOrdinal != 1) {
                if (iOrdinal != 2) {
                    if (iOrdinal != 3) {
                        if (iOrdinal == 4) {
                            if (z5) {
                                Object objNewInstance = w86Var.e;
                                if (objNewInstance == null) {
                                    boolean zI = v77Var2.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS);
                                    jd jdVar = (jd) hdVar.p0().b;
                                    if (jdVar == null) {
                                        objNewInstance = null;
                                    } else {
                                        if (zI) {
                                            boolean zI2 = s65Var.i(u65.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
                                            Member memberR0 = jdVar.r0();
                                            if (memberR0 != null) {
                                                u81.d(memberR0, zI2);
                                            }
                                        }
                                        try {
                                            objNewInstance = jdVar.P.newInstance(null);
                                        } catch (Exception e) {
                                            e = e;
                                            while (e.getCause() != null) {
                                                e = e.getCause();
                                            }
                                            Annotation[] annotationArr = u81.a;
                                            if (e instanceof Error) {
                                                throw ((Error) e);
                                            }
                                            u81.v(e);
                                            throw new IllegalArgumentException("Failed to instantiate bean of type " + hdVar.N.getName() + ": (" + e.getClass().getName() + ") " + u81.g(e), e);
                                        }
                                    }
                                    if (objNewInstance == null) {
                                        objNewInstance = Boolean.FALSE;
                                    }
                                    w86Var.e = objNewInstance;
                                }
                                Object obj = objNewInstance == Boolean.FALSE ? null : w86Var.e;
                                if (obj != null) {
                                    if (v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                                        boolean zI3 = v77Var2.i(u65.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
                                        Member memberR1 = odVar.r0();
                                        if (memberR1 != null) {
                                            u81.d(memberR1, zI3);
                                        }
                                    }
                                    try {
                                        objL = odVar.s0(obj);
                                        z4 = false;
                                    } catch (Exception e2) {
                                        e = e2;
                                        String strJ = lp0Var.j();
                                        while (e.getCause() != null) {
                                            e = e.getCause();
                                        }
                                        Annotation[] annotationArr2 = u81.a;
                                        if (e instanceof Error) {
                                            throw ((Error) e);
                                        }
                                        u81.v(e);
                                        d6.l(dj7.u("Failed to get property '", strJ, "' of default "), obj.getClass().getName(), " instance");
                                        return null;
                                    }
                                } else {
                                    objL = iz1.l(gc8Var2);
                                    z4 = true;
                                }
                            } else {
                                objL = iz1.l(gc8Var2);
                                z4 = true;
                            }
                            if (objL == null) {
                                if (z5) {
                                    objX = objL;
                                }
                                z3 = true;
                            } else {
                                if (objL.getClass().isArray()) {
                                    objL = zh8.p(objL);
                                }
                                z3 = z4;
                                objX = objL;
                            }
                        } else if (iOrdinal != 5) {
                            z2 = false;
                        } else {
                            objX = c87Var.x(qk4VarA2.c);
                            z3 = false;
                        }
                    }
                    clsArrD = lp0Var.d();
                    if (clsArrD == null) {
                        if (!wo0Var.g) {
                            wo0Var.g = true;
                            as5Var = wo0Var.d;
                            if (as5Var == null) {
                                clsArrQ = null;
                            } else {
                                clsArrQ = as5Var.Q(hdVar);
                            }
                            if (clsArrQ == null && !s65Var.i(u65.DEFAULT_VIEW_INCLUSION)) {
                                clsArrQ = wo0.j;
                            }
                            wo0Var.f = clsArrQ;
                        }
                        clsArrD = wo0Var.f;
                    }
                    mp0Var = new mp0(lp0Var, odVar, hdVar.V, gc8VarD, em4VarV, sc8Var, gc8VarA, z3, objX, clsArrD);
                    objP = as5Var2.p(odVar);
                    if (objP != null) {
                        mp0Var.f(c87Var.E(odVar, objP));
                    }
                    fk5VarP = as5Var2.P(odVar);
                    if (fk5VarP != null) {
                        return new nf8(mp0Var, fk5VarP);
                    }
                    return mp0Var;
                }
                if (!gc8Var2.C()) {
                    z3 = true;
                    objX = null;
                    clsArrD = lp0Var.d();
                    if (clsArrD == null) {
                        if (!wo0Var.g) {
                            wo0Var.g = true;
                            as5Var = wo0Var.d;
                            if (as5Var == null) {
                                clsArrQ = null;
                            } else {
                                clsArrQ = as5Var.Q(hdVar);
                            }
                            if (clsArrQ == null) {
                                clsArrQ = wo0.j;
                            }
                            wo0Var.f = clsArrQ;
                        }
                        clsArrD = wo0Var.f;
                    }
                    mp0Var = new mp0(lp0Var, odVar, hdVar.V, gc8VarD, em4VarV, sc8Var, gc8VarA, z3, objX, clsArrD);
                    objP = as5Var2.p(odVar);
                    if (objP != null) {
                        mp0Var.f(c87Var.E(odVar, objP));
                    }
                    fk5VarP = as5Var2.P(odVar);
                    if (fk5VarP != null) {
                        return new nf8(mp0Var, fk5VarP);
                    }
                    return mp0Var;
                }
                objX = pk4Var2;
                z3 = true;
                clsArrD = lp0Var.d();
                if (clsArrD == null) {
                    if (!wo0Var.g) {
                        wo0Var.g = true;
                        as5Var = wo0Var.d;
                        if (as5Var == null) {
                            clsArrQ = null;
                        } else {
                            clsArrQ = as5Var.Q(hdVar);
                        }
                        if (clsArrQ == null) {
                            clsArrQ = wo0.j;
                        }
                        wo0Var.f = clsArrQ;
                    }
                    clsArrD = wo0Var.f;
                }
                mp0Var = new mp0(lp0Var, odVar, hdVar.V, gc8VarD, em4VarV, sc8Var, gc8VarA, z3, objX, clsArrD);
                objP = as5Var2.p(odVar);
                if (objP != null) {
                    mp0Var.f(c87Var.E(odVar, objP));
                }
                fk5VarP = as5Var2.P(odVar);
                if (fk5VarP != null) {
                    return new nf8(mp0Var, fk5VarP);
                }
                return mp0Var;
            }
            z2 = true;
            x77 x77Var = x77.WRITE_EMPTY_JSON_ARRAYS;
            if (!gc8Var2.x0() || v77Var2.l(x77Var)) {
                z3 = z2;
                objX = null;
            } else {
                z3 = z2;
                objX = pk4Var2;
            }
            clsArrD = lp0Var.d();
            if (clsArrD == null) {
                if (!wo0Var.g) {
                    wo0Var.g = true;
                    as5Var = wo0Var.d;
                    if (as5Var == null) {
                        clsArrQ = null;
                    } else {
                        clsArrQ = as5Var.Q(hdVar);
                    }
                    if (clsArrQ == null) {
                        clsArrQ = wo0.j;
                    }
                    wo0Var.f = clsArrQ;
                }
                clsArrD = wo0Var.f;
            }
            mp0Var = new mp0(lp0Var, odVar, hdVar.V, gc8VarD, em4VarV, sc8Var, gc8VarA, z3, objX, clsArrD);
            objP = as5Var2.p(odVar);
            if (objP != null) {
                mp0Var.f(c87Var.E(odVar, objP));
            }
            fk5VarP = as5Var2.P(odVar);
            if (fk5VarP != null) {
                return new nf8(mp0Var, fk5VarP);
            }
            return mp0Var;
        } catch (yk4 e3) {
            c87Var.C(wo0Var, lp0Var, u81.g(e3), new Object[0]);
            throw null;
        }
    }

    public final a50 W() {
        return new a50(b87.a);
    }
}
