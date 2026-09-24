package defpackage;

import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yo1 implements bw1 {
    public final Object a;
    public final Object b;
    public Object c;
    public final Object d;
    public final Object e;
    public final Object f;

    public yo1(ai5 ai5Var, vb8 vb8Var, Class cls) {
        this.a = new hr5(ai5Var, vb8Var, cls);
        this.b = new cy6(ai5Var, vb8Var, null);
        this.c = new nl1();
        sn6 sn6Var = new sn6();
        sn6Var.a = true;
        this.d = sn6Var;
        this.e = ai5Var;
        this.f = vb8Var;
    }

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) {
        Class<?> cls = obj.getClass();
        ai5 ai5Var = (ai5) this.e;
        q27 q27VarD = ((x44) ai5Var.d).d(cls);
        yz0 yz0VarB = q27VarD.b(ai5Var);
        wo1 wo1Var = (wo1) yz0VarB.e;
        ai5 ai5Var2 = (ai5) yz0VarB.n;
        q27VarD.d();
        vj8 vj8VarG = q27VarD.g();
        q27VarD.e();
        boolean zIsPrimitive = q27VarD.isPrimitive();
        uq4 version = q27VarD.getVersion();
        d67 d67VarJ = q27VarD.j();
        q27VarD.getText();
        q27VarD.getType();
        try {
            if (zIsPrimitive) {
                ((cy6) this.b).a(ev5Var, obj);
            } else {
                wo1 wo1Var2 = (wo1) yz0VarB.d;
                if (wo1Var2 != null) {
                    wo1Var2.a(ai5Var2, obj);
                }
                sn6 sn6Var = (sn6) this.d;
                if (vj8VarG != null) {
                    sn6Var.getClass();
                    Double dValueOf = Double.valueOf(1.0d);
                    Double dValueOf2 = Double.valueOf(vj8VarG.revision());
                    boolean zEquals = dValueOf.equals(dValueOf2);
                    sn6Var.a = zEquals;
                    if (!zEquals || version.isRequired()) {
                        o(ev5Var, dValueOf2, version);
                    }
                }
                p(ev5Var, obj, d67VarJ);
            }
            if (wo1Var != null) {
                wo1Var.a(ai5Var2, obj);
            }
        } catch (Throwable th) {
            if (wo1Var != null) {
                wo1Var.a(ai5Var2, obj);
            }
            throw th;
        }
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) {
        yo1 yo1Var;
        bw1 xo1Var;
        ai5 ai5Var = (ai5) this.e;
        gd4 gd4VarG = ((hr5) this.a).g(mc4Var);
        Class type = gd4VarG.getType();
        if (gd4VarG.c()) {
            return gd4VarG.d();
        }
        if (((x44) ai5Var.d).e(type)) {
            Class type2 = gd4VarG.getType();
            Object objF = ((cy6) this.b).f(mc4Var, type2);
            if (type2 != null) {
                gd4VarG.e(objF);
            }
            return objF;
        }
        nz4 nz4Var = new nz4(((x44) ai5Var.d).d(type), ai5Var);
        yz0 yz0Var = (yz0) nz4Var.d;
        ny1 ny1Var = (ny1) nz4Var.b;
        boolean z = false;
        if (((List) ny1Var.b).size() <= 1 && ((wf7) ny1Var.c) != null) {
            z = true;
        }
        nl1 nl1Var = (nl1) this.c;
        if (z) {
            yo1Var = this;
            xo1Var = new ju7(yo1Var, nl1Var, nz4Var, gd4VarG, 2);
        } else {
            yo1Var = this;
            xo1Var = new xo1(yo1Var, nl1Var, nz4Var, gd4VarG, 2);
        }
        Object objB = xo1Var.b(mc4Var);
        wo1 wo1Var = (wo1) yz0Var.c;
        ai5 ai5Var2 = (ai5) yz0Var.n;
        if (wo1Var != null) {
            wo1Var.a(ai5Var2, objB);
        }
        wo1 wo1Var2 = (wo1) yz0Var.b;
        if (wo1Var2 != null) {
            wo1Var2.a(ai5Var2, objB);
        }
        gd4VarG.e(objB);
        return yo1Var.h(mc4Var, objB, yz0Var);
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) {
        Class<?> cls = obj.getClass();
        ai5 ai5Var = (ai5) this.e;
        nz4 nz4Var = new nz4(((x44) ai5Var.d).d(cls), ai5Var);
        yz0 yz0Var = (yz0) nz4Var.d;
        d67 d67Var = (d67) nz4Var.c;
        j(mc4Var, obj, nz4Var);
        i(mc4Var, obj, d67Var);
        ((nl1) this.c).c(obj);
        wo1 wo1Var = (wo1) yz0Var.c;
        ai5 ai5Var2 = (ai5) yz0Var.n;
        if (wo1Var != null) {
            wo1Var.a(ai5Var2, obj);
        }
        wo1 wo1Var2 = (wo1) yz0Var.b;
        if (wo1Var2 != null) {
            wo1Var2.a(ai5Var2, obj);
        }
        return h(mc4Var, obj, yz0Var);
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) throws kd5 {
        gd4 gd4VarG = ((hr5) this.a).g(mc4Var);
        if (gd4VarG.c()) {
            return true;
        }
        gd4VarG.e(null);
        Class type = gd4VarG.getType();
        ai5 ai5Var = (ai5) this.e;
        q27 q27VarD = ((x44) ai5Var.d).d(type);
        q27VarD.b(ai5Var);
        q27VarD.d();
        q27VarD.g();
        q27VarD.e();
        q27VarD.isPrimitive();
        q27VarD.getVersion();
        d67 d67VarJ = q27VarD.j();
        q27VarD.getText();
        q27VarD.getType();
        n(mc4Var, d67VarJ);
        return mc4Var.b();
    }

    public void e(mc4 mc4Var, Object obj, d67 d67Var) {
        xn5 attributes = mc4Var.getAttributes();
        er4 attributes2 = d67Var.getAttributes();
        Iterator it = ((nc4) attributes).iterator();
        while (it.hasNext()) {
            mc4 attribute = mc4Var.getAttribute((String) it.next());
            if (attribute != null) {
                ai5 ai5Var = (ai5) this.e;
                String attribute2 = d67Var.getAttribute(attribute.getName());
                uq4 uq4Var = (uq4) attributes2.remove(attribute2);
                if (uq4Var == null) {
                    tr9 position = attribute.getPosition();
                    vb8 vb8Var = (vb8) this.f;
                    ai5Var.getClass();
                    Class clsO = ai5.o(vb8Var, obj);
                    if (attributes2.e(ai5Var) && ((sn6) this.d).a) {
                        throw new w70("Attribute '%s' does not have a match in %s at %s", attribute2, clsO, position);
                    }
                } else {
                    g(attribute, obj, uq4Var);
                }
            }
        }
        m(mc4Var, attributes2, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void f(mc4 mc4Var, Object obj, d67 d67Var) {
        er4 er4VarB0 = d67Var.b0();
        mc4 mc4VarD = mc4Var.d();
        while (mc4VarD != null) {
            lc4 lc4Var = (lc4) mc4VarD;
            bz2 bz2Var = lc4Var.d;
            d67 d67VarR = d67Var.r(bz2Var.getName());
            if (d67VarR != null) {
                i(mc4VarD, obj, d67VarR);
            } else {
                ai5 ai5Var = (ai5) this.e;
                nl1 nl1Var = (nl1) this.c;
                String strJ = d67Var.J(bz2Var.getName());
                uq4 uq4Var = (uq4) er4VarB0.remove(strJ);
                if (uq4Var == null) {
                    uq4Var = (hj8) nl1Var.b.get(strJ);
                }
                if (uq4Var == null) {
                    tr9 position = lc4Var.getPosition();
                    vb8 vb8Var = (vb8) this.f;
                    ai5Var.getClass();
                    Class clsO = ai5.o(vb8Var, obj);
                    if (er4VarB0.e(ai5Var) && ((sn6) this.d).a) {
                        throw new wt1("Element '%s' does not have a match in %s at %s", strJ, clsO, position);
                    }
                    lc4Var.l();
                } else {
                    Object objG = g(mc4VarD, obj, uq4Var);
                    for (String str : uq4Var.m()) {
                    }
                    if (uq4Var.isInline()) {
                        nl1Var.d(uq4Var, objG);
                    }
                }
            }
            mc4VarD = mc4Var.d();
        }
        m(mc4Var, er4VarB0, obj);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003b  */
    /* JADX WARN: Multi-variable type inference failed */
    public Object g(mc4 mc4Var, Object obj, uq4 uq4Var) {
        Object objB;
        Object obj2;
        nl1 nl1Var = (nl1) this.c;
        ai5 ai5Var = (ai5) this.e;
        bw1 bw1VarQ = uq4Var.q(ai5Var);
        if (uq4Var.i()) {
            nl1Var.getClass();
            hj8 hj8Var = (hj8) nl1Var.a.get(uq4Var.getKey());
            au1 au1VarK = uq4Var.k();
            if (hj8Var != null) {
                objB = bw1VarQ.c(mc4Var, hj8Var.a);
            } else if (obj == null || (obj2 = au1VarK.get(obj)) == null) {
                objB = bw1VarQ.b(mc4Var);
            } else {
                objB = bw1VarQ.c(mc4Var, obj2);
            }
        } else {
            objB = bw1VarQ.b(mc4Var);
        }
        if (objB == null) {
            tr9 position = mc4Var.getPosition();
            vb8 vb8Var = (vb8) this.f;
            ai5Var.getClass();
            Class clsO = ai5.o(vb8Var, obj);
            if (uq4Var.isRequired() && ((sn6) this.d).a) {
                throw new fj8("Empty value for %s in %s at %s", uq4Var, clsO, position);
            }
        } else if (objB != uq4Var.o(ai5Var)) {
            nl1Var.d(uq4Var, objB);
        }
        return objB;
    }

    public Object h(mc4 mc4Var, Object obj, yz0 yz0Var) throws wt1 {
        if (obj == null) {
            return obj;
        }
        tr9 position = mc4Var.getPosition();
        wo1 wo1Var = (wo1) yz0Var.k;
        if (wo1Var != null) {
            obj = wo1Var.a((ai5) yz0Var.n, obj);
        }
        Class type = ((vb8) this.f).getType();
        Class<?> cls = obj.getClass();
        if (type.isAssignableFrom(cls)) {
            return obj;
        }
        throw new wt1("Type %s does not match %s at %s", cls, type, position);
    }

    public void i(mc4 mc4Var, Object obj, d67 d67Var) {
        uq4 text = d67Var.getText();
        if (text != null) {
            g(mc4Var, obj, text);
        }
        e(mc4Var, obj, d67Var);
        f(mc4Var, obj, d67Var);
    }

    public void j(mc4 mc4Var, Object obj, nz4 nz4Var) {
        ai5 ai5Var = (ai5) this.e;
        sn6 sn6Var = (sn6) this.d;
        uq4 uq4Var = (uq4) nz4Var.e;
        vb8 vb8Var = (vb8) this.f;
        Class type = vb8Var.getType();
        if (uq4Var != null) {
            mc4 mc4Var2 = (mc4) ((nc4) mc4Var.getAttributes()).remove((Object) uq4Var.getName());
            if (mc4Var2 == null) {
                vj8 vj8VarG = ((x44) ai5Var.d).d(type).g();
                sn6Var.getClass();
                Double dValueOf = Double.valueOf(1.0d);
                Double dValueOf2 = Double.valueOf(vj8VarG.revision());
                ((nl1) this.c).d(uq4Var, dValueOf);
                sn6Var.a(dValueOf2, dValueOf);
                return;
            }
            Object objG = g(mc4Var2, obj, uq4Var);
            Class type2 = vb8Var.getType();
            if (objG != null) {
                Double dValueOf3 = Double.valueOf(((x44) ai5Var.d).d(type2).g().revision());
                if (objG.equals(sn6Var)) {
                    return;
                }
                sn6Var.a(dValueOf3, objG);
            }
        }
    }

    public void k(mc4 mc4Var, uq4 uq4Var) throws kd5 {
        bw1 bw1VarQ = uq4Var.q((ai5) this.e);
        tr9 position = mc4Var.getPosition();
        Class type = ((vb8) this.f).getType();
        if (!bw1VarQ.d(mc4Var)) {
            throw new kd5("Invalid value for %s in %s at %s", uq4Var, type, position);
        }
        ((nl1) this.c).d(uq4Var, null);
    }

    public void l(mc4 mc4Var, er4 er4Var) throws fj8 {
        tr9 position = mc4Var.getPosition();
        Iterator it = er4Var.iterator();
        while (it.hasNext()) {
            uq4 uq4Var = (uq4) it.next();
            Class type = ((vb8) this.f).getType();
            if (uq4Var.isRequired() && ((sn6) this.d).a) {
                throw new fj8("Unable to satisfy %s for %s at %s", uq4Var, type, position);
            }
        }
    }

    public void m(mc4 mc4Var, er4 er4Var, Object obj) throws fj8 {
        ai5 ai5Var = (ai5) this.e;
        vb8 vb8Var = (vb8) this.f;
        ai5Var.getClass();
        Class clsO = ai5.o(vb8Var, obj);
        tr9 position = mc4Var.getPosition();
        Iterator it = er4Var.iterator();
        while (it.hasNext()) {
            uq4 uq4Var = (uq4) it.next();
            if (uq4Var.isRequired() && ((sn6) this.d).a) {
                throw new fj8("Unable to satisfy %s for %s at %s", uq4Var, clsO, position);
            }
            Object objO = uq4Var.o(ai5Var);
            if (objO != null) {
                ((nl1) this.c).d(uq4Var, objO);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void n(mc4 mc4Var, d67 d67Var) throws kd5 {
        sn6 sn6Var = (sn6) this.d;
        ai5 ai5Var = (ai5) this.e;
        vb8 vb8Var = (vb8) this.f;
        xn5 attributes = mc4Var.getAttributes();
        er4 attributes2 = d67Var.getAttributes();
        Iterator it = ((nc4) attributes).iterator();
        while (it.hasNext()) {
            mc4 attribute = mc4Var.getAttribute((String) it.next());
            if (attribute != null) {
                tr9 position = attribute.getPosition();
                String attribute2 = d67Var.getAttribute(attribute.getName());
                uq4 uq4Var = (uq4) attributes2.remove(attribute2);
                if (uq4Var == null) {
                    Class type = vb8Var.getType();
                    if (attributes2.e(ai5Var) && sn6Var.a) {
                        throw new w70("Attribute '%s' does not exist for %s at %s", attribute2, type, position);
                    }
                } else {
                    k(attribute, uq4Var);
                }
            }
        }
        l(mc4Var, attributes2);
        er4 er4VarB0 = d67Var.b0();
        mc4 mc4VarD = mc4Var.d();
        while (mc4VarD != null) {
            lc4 lc4Var = (lc4) mc4VarD;
            bz2 bz2Var = lc4Var.d;
            d67 d67VarR = d67Var.r(bz2Var.getName());
            if (d67VarR != null) {
                n(mc4VarD, d67VarR);
            } else {
                nl1 nl1Var = (nl1) this.c;
                String strJ = d67Var.J(bz2Var.getName());
                uq4 uq4Var2 = (uq4) er4VarB0.remove(strJ);
                if (uq4Var2 == null) {
                    uq4Var2 = (hj8) nl1Var.b.get(strJ);
                }
                if (uq4Var2 == null) {
                    tr9 position2 = lc4Var.getPosition();
                    Class type2 = vb8Var.getType();
                    if (er4VarB0.e(ai5Var) && sn6Var.a) {
                        throw new wt1("Element '%s' does not exist for %s at %s", strJ, type2, position2);
                    }
                    lc4Var.l();
                } else {
                    for (String str : uq4Var2.m()) {
                    }
                    if (uq4Var2.isInline()) {
                        nl1Var.d(uq4Var2, null);
                    }
                    k(mc4VarD, uq4Var2);
                }
            }
            mc4VarD = mc4Var.d();
        }
        l(mc4Var, er4VarB0);
    }

    public void o(ev5 ev5Var, Object obj, uq4 uq4Var) {
        if (obj != null) {
            uq4Var.e().c(ev5Var.setAttribute(uq4Var.getName(), ((hr5) this.a).i(obj)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void p(ev5 ev5Var, Object obj, d67 d67Var) throws w70, sf5, wt1 {
        hr5 hr5Var = (hr5) this.a;
        ai5 ai5Var = (ai5) this.e;
        vb8 vb8Var = (vb8) this.f;
        x46 x46VarC = ev5Var.c();
        String prefix = d67Var.getPrefix();
        if (prefix != null) {
            String strE = x46VarC.e(prefix);
            if (strE == null) {
                throw new wt1("Namespace prefix '%s' in %s is not in scope", prefix, vb8Var);
            }
            ev5Var.e(strE);
        }
        for (uq4 uq4Var : d67Var.getAttributes()) {
            Object objO = uq4Var.k().get(obj);
            ai5Var.getClass();
            Class<?> cls = obj.getClass();
            if (objO == null) {
                objO = uq4Var.o(ai5Var);
            }
            if (objO == null && uq4Var.isRequired()) {
                throw new w70("Value for %s is null in %s", uq4Var, cls);
            }
            o(ev5Var, objO, uq4Var);
        }
        nl1 nl1Var = (nl1) this.c;
        Iterator it = d67Var.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            d67 d67VarR = d67Var.r(str);
            if (d67VarR != null) {
                p(ev5Var.i(str), obj, d67VarR);
            } else {
                uq4 uq4VarB = d67Var.b(d67Var.J(str));
                ai5Var.getClass();
                x44 x44Var = (x44) ai5Var.d;
                Class<?> cls2 = obj.getClass();
                nl1Var.getClass();
                if ((uq4VarB != null ? (hj8) nl1Var.a.get(uq4VarB.getKey()) : null) != null) {
                    continue;
                } else {
                    if (uq4VarB == null) {
                        throw new wt1("Element '%s' not defined in %s", str, cls2);
                    }
                    Object objA = uq4VarB.k().get(obj);
                    Class<?> cls3 = obj.getClass();
                    if (objA == null && uq4VarB.isRequired()) {
                        throw new wt1("Value for %s is null in %s", uq4VarB, cls3);
                    }
                    if (objA != null) {
                        yz0 yz0VarB = x44Var.d(objA.getClass()).b(ai5Var);
                        wo1 wo1Var = (wo1) yz0VarB.f;
                        if (wo1Var != null) {
                            objA = wo1Var.a((ai5) yz0VarB.n, objA);
                        }
                    }
                    if (objA != null) {
                        Class<?> cls4 = objA.getClass();
                        uq4 uq4VarN = uq4VarB.n(cls4);
                        String name = uq4VarN.getName();
                        vb8 vb8VarL = uq4VarB.l(cls4);
                        ev5 ev5VarI = ev5Var.i(name);
                        if (!uq4VarN.isInline()) {
                            uq4VarN.e().e(ev5VarI, x44Var.d(vb8VarL.getType()).e());
                        }
                        if (uq4VarN.isInline() || !hr5Var.e(vb8VarL, objA, ev5VarI)) {
                            bw1 bw1VarQ = uq4VarN.q(ai5Var);
                            cv5 cv5Var = (cv5) ev5VarI;
                            cv5Var.g(uq4VarN.t());
                            bw1VarQ.a(cv5Var, objA);
                        }
                    }
                    nl1Var.d(uq4VarB, objA);
                }
            }
        }
        uq4 text = d67Var.getText();
        if (text != null) {
            Object objO2 = text.k().get(obj);
            ai5Var.getClass();
            Class<?> cls5 = obj.getClass();
            if (objO2 == null) {
                objO2 = text.o(ai5Var);
            }
            if (objO2 == null && text.isRequired()) {
                throw new sf5("Value for %s is null in %s", text, cls5);
            }
            if (objO2 == null || text.p()) {
                return;
            }
            String strI = hr5Var.i(objO2);
            ev5Var.g(text.t());
            ev5Var.setValue(strI);
        }
    }

    public Task q(String str, Boolean bool, RecaptchaAction recaptchaAction) {
        Task taskContinueWithTask;
        if (str == null || str.isEmpty()) {
            str = "*";
        }
        Task taskR = r(str);
        if (bool.booleanValue() || taskR == null) {
            String str2 = str.isEmpty() ? "*" : str;
            if (bool.booleanValue() || (taskContinueWithTask = r(str2)) == null) {
                FirebaseAuth firebaseAuth = (FirebaseAuth) this.e;
                ix0 ix0Var = firebaseAuth.e;
                String str3 = firebaseAuth.i;
                ix0Var.getClass();
                taskContinueWithTask = ix0Var.m(new g49(str3)).continueWithTask(new yf1(this, str2));
            }
            taskR = taskContinueWithTask;
        }
        return taskR.continueWithTask(new s79(this, recaptchaAction));
    }

    public Task r(String str) {
        Task task;
        synchronized (this.a) {
            task = (Task) ((HashMap) this.b).get(str);
        }
        return task;
    }

    public yo1(FirebaseApp firebaseApp, FirebaseAuth firebaseAuth) {
        fa9 fa9Var = new fa9();
        this.a = new Object();
        this.b = new HashMap();
        this.d = firebaseApp;
        this.e = firebaseAuth;
        this.f = fa9Var;
    }
}
