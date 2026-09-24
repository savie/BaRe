package defpackage;

import java.lang.annotation.Annotation;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cr7 {
    public yz0 a;
    public dr b;
    public x00 c;
    public ny1 d;
    public er4 e;
    public er4 f;
    public er4 g;
    public tr5 h;
    public x44 i;
    public uq4 j;
    public db8 k;
    public boolean l;

    public final void a(au1 au1Var, Annotation annotation) {
        x44 x44Var = this.i;
        er4 er4Var = this.f;
        if (annotation instanceof u70) {
            b(au1Var, annotation, this.e);
        }
        if (annotation instanceof ut2) {
            e(au1Var, annotation, er4Var);
        }
        if (annotation instanceof jt2) {
            e(au1Var, annotation, er4Var);
        }
        if (annotation instanceof pt2) {
            e(au1Var, annotation, er4Var);
        }
        if (annotation instanceof gt2) {
            b(au1Var, annotation, er4Var);
        }
        if (annotation instanceof ct2) {
            b(au1Var, annotation, er4Var);
        }
        if (annotation instanceof mt2) {
            b(au1Var, annotation, er4Var);
        }
        if (annotation instanceof at2) {
            b(au1Var, annotation, er4Var);
        }
        if (annotation instanceof vj8) {
            uq4 uq4VarB = x44Var.b(au1Var, annotation);
            if (this.j != null) {
                throw new w70("Multiple version annotations in %s", annotation);
            }
            this.j = uq4VarB;
        }
        if (annotation instanceof q08) {
            er4 er4Var2 = this.g;
            uq4 uq4VarB2 = x44Var.b(au1Var, annotation);
            s03 s03VarF = uq4VarB2.f();
            String strA = uq4VarB2.a();
            db8 db8VarD = this.k;
            if (!s03VarF.isEmpty()) {
                db8VarD = d(s03VarF);
            }
            if (er4Var2.get(strA) != 0) {
                throw new sf5("Multiple text annotations in %s", annotation);
            }
            yz0 yz0Var = this.a;
            yz0Var.getClass();
            if (uq4VarB2.h()) {
                yz0.b(uq4VarB2, (er4) yz0Var.d);
            } else if (uq4VarB2.j()) {
                yz0.b(uq4VarB2, (er4) yz0Var.f);
            } else {
                yz0.b(uq4VarB2, (er4) yz0Var.e);
            }
            db8VarD.f(uq4VarB2);
            er4Var2.put(strA, uq4VarB2);
        }
    }

    public final void b(au1 au1Var, Annotation annotation, er4 er4Var) throws kd5 {
        uq4 uq4VarB = this.i.b(au1Var, annotation);
        String strA = uq4VarB.a();
        String name = uq4VarB.getName();
        if (er4Var.get(strA) != 0) {
            throw new kd5("Duplicate annotation of name '%s' on %s", name, au1Var);
        }
        c(uq4VarB, er4Var);
    }

    public final void c(uq4 uq4Var, er4 er4Var) throws w70, sf5, wt1 {
        s03 s03VarF = uq4Var.f();
        String strA = uq4Var.a();
        db8 db8VarD = this.k;
        if (!s03VarF.isEmpty()) {
            db8VarD = d(s03VarF);
        }
        yz0 yz0Var = this.a;
        yz0Var.getClass();
        if (uq4Var.h()) {
            yz0.b(uq4Var, (er4) yz0Var.d);
        } else if (uq4Var.j()) {
            yz0.b(uq4Var, (er4) yz0Var.f);
        } else {
            yz0.b(uq4Var, (er4) yz0Var.e);
        }
        db8VarD.f(uq4Var);
        er4Var.put(strA, uq4Var);
    }

    public final db8 d(s03 s03Var) {
        db8 db8VarE = this.k;
        db8 db8VarD = db8VarE.d(s03Var);
        if (db8VarD != null) {
            return db8VarD;
        }
        while (true) {
            String prefix = s03Var.getPrefix();
            String first = s03Var.getFirst();
            int index = s03Var.getIndex();
            if (first != null) {
                db8VarE = db8VarE.e(index, first, prefix);
            }
            if (!s03Var.Y()) {
                return db8VarE;
            }
            s03Var = s03Var.mo74a();
        }
    }

    public final void e(au1 au1Var, Annotation annotation, er4 er4Var) throws kd5 {
        w00 w00Var = (w00) this.i.e;
        w00Var.getClass();
        cr4 cr4VarR = w00Var.r(au1Var, annotation, new dr4(au1Var, annotation));
        for (uq4 uq4Var : cr4VarR != null ? cr4VarR.a : Collections.EMPTY_LIST) {
            String strA = uq4Var.a();
            String name = uq4Var.getName();
            if (er4Var.get(strA) != 0) {
                throw new kd5("Duplicate annotation of name '%s' on %s", name, uq4Var);
            }
            c(uq4Var, er4Var);
        }
    }
}
