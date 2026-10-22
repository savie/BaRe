package defpackage;

import android.view.Window;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ol1 implements oc, dh5 {
    public static final s79[] c = new s79[0];
    public static final Annotation[] d = new Annotation[0];
    public final /* synthetic */ int a;
    public Object b;

    public ol1(int i) {
        this.a = i;
        switch (i) {
            case 10:
                this.b = new short[768];
                break;
            default:
                this.b = new ArrayDeque(20);
                break;
        }
    }

    public abstract tv8 A(tv8 tv8Var, List list);

    public abstract l39 B(yu8 yu8Var, l39 l39Var);

    public abstract z0 C(m2 m2Var, byte[] bArr);

    public abstract void D(z0 z0Var, n1 n1Var);

    public abstract int E(z0 z0Var);

    public void F(k28 k28Var, boolean z, boolean z2) {
        k28Var.getClass();
        u35 u35Var = new u35(k28Var, i(), z, z2);
        this.b = u35Var;
        u35Var.show();
        w(u35Var);
    }

    public void G(zm zmVar, Integer num) {
        Window window;
        zmVar.getClass();
        v75 v75Var = new v75(zmVar, 0);
        ((ra) v75Var.b).s = i().getRoot();
        wa waVarC = v75Var.c();
        this.b = waVarC;
        if (num != null && (window = waVarC.getWindow()) != null) {
            window.setGravity(num.intValue());
        }
        waVarC.show();
        w(waVarC);
    }

    public abstract boolean c(ev6 ev6Var);

    public void d(q1 q1Var) {
        if (((Class) this.b).isInstance(q1Var)) {
            return;
        }
        l0.e("unexpected object: ".concat(q1Var.getClass().getName()));
    }

    public cy0 e(cy0 cy0Var, Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            cy0Var = cy0Var.b(annotation);
            if (((as5) this.b).Z(annotation)) {
                cy0Var = h(cy0Var, annotation);
            }
        }
        return cy0Var;
    }

    public boolean equals(Object obj) {
        switch (this.a) {
            case 3:
                return this == obj;
            default:
                return super.equals(obj);
        }
    }

    public cy0 f(Annotation[] annotationArr) {
        cy0 cy0VarB = vd.j;
        for (Annotation annotation : annotationArr) {
            cy0VarB = cy0VarB.b(annotation);
            if (((as5) this.b).Z(annotation)) {
                cy0VarB = h(cy0VarB, annotation);
            }
        }
        return cy0VarB;
    }

    public cy0 g(cy0 cy0Var, Annotation[] annotationArr) {
        as5 as5Var = (as5) this.b;
        for (Annotation annotation : annotationArr) {
            if (!cy0Var.y(annotation)) {
                cy0Var = cy0Var.b(annotation);
                if (as5Var.Z(annotation)) {
                    for (Annotation annotation2 : u81.h(annotation.annotationType())) {
                        if (!(annotation2 instanceof Target) && !(annotation2 instanceof Retention) && !cy0Var.y(annotation2)) {
                            cy0Var = cy0Var.b(annotation2);
                            if (as5Var.Z(annotation2)) {
                                cy0Var = h(cy0Var, annotation2);
                            }
                        }
                    }
                }
            }
        }
        return cy0Var;
    }

    public cy0 h(cy0 cy0Var, Annotation annotation) {
        for (Annotation annotation2 : u81.h(annotation.annotationType())) {
            if (!(annotation2 instanceof Target) && !(annotation2 instanceof Retention)) {
                if (!((as5) this.b).Z(annotation2)) {
                    cy0Var = cy0Var.b(annotation2);
                } else if (!cy0Var.y(annotation2)) {
                    cy0Var = h(cy0Var.b(annotation2), annotation2);
                }
            }
        }
        return cy0Var;
    }

    public abstract jk8 i();

    public void j(boolean z) {
        if (!z) {
            sz8.m((ho) this.b);
        } else {
            zn4 zn4Var = zn4.a;
            zn4.f(300L, new ak(this, 29));
        }
    }

    public abstract void k(ev6 ev6Var);

    public q1 l(byte[] bArr) throws IOException {
        q1 q1VarT = q1.t(bArr);
        d(q1VarT);
        return q1VarT;
    }

    public q1 m(v1 v1Var) {
        throw new IllegalStateException("unexpected implicit constructed encoding");
    }

    public q1 o(p82 p82Var) {
        throw new IllegalStateException("unexpected implicit primitive encoding");
    }

    @Override // defpackage.oc
    public List p() {
        return (List) this.b;
    }

    @Override // defpackage.oc
    public boolean q() {
        List list = (List) this.b;
        return list.isEmpty() || (list.size() == 1 && ((wo4) list.get(0)).c());
    }

    public q1 r(q2 q2Var, boolean z) {
        String str;
        q1 q1VarM;
        vm4.e(q2Var);
        int i = q2Var.a;
        b0 b0Var = q2Var.d;
        if (z) {
            if (!q2Var.y()) {
                str = "object implicit - explicit expected.";
                l0.e(str);
                return null;
            }
            q1VarM = b0Var.d();
            d(q1VarM);
            d(q1VarM);
            return q1VarM;
        }
        if (1 == i) {
            str = "object explicit - implicit expected.";
            l0.e(str);
            return null;
        }
        q1 q1VarD = b0Var.d();
        if (i == 3) {
            q1VarM = m(q2Var.B(q1VarD));
        } else if (i != 4) {
            d(q1VarD);
            q1VarM = q1VarD;
        } else {
            q1VarM = q1VarD instanceof v1 ? m((v1) q1VarD) : o((p82) q1VarD);
        }
        d(q1VarM);
        return q1VarM;
    }

    public String s() {
        return ((String) this.b).concat(" is not supported by this YubiKey");
    }

    public void t(ev6 ev6Var) {
        if (c(ev6Var)) {
            k(ev6Var);
        } else {
            ((ol1) this.b).t(ev6Var);
        }
    }

    public String toString() {
        switch (this.a) {
            case 6:
                StringBuilder sb = new StringBuilder();
                List list = (List) this.b;
                if (!list.isEmpty()) {
                    sb.append("values=");
                    sb.append(Arrays.toString(list.toArray()));
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public abstract boolean u(wj8 wj8Var);

    public void v(s26 s26Var) {
        ArrayDeque arrayDeque = (ArrayDeque) this.b;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(s26Var);
        }
    }

    public abstract void x(yu8 yu8Var);

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new v83((t83) this.b);
    }

    public abstract void z(yu8 yu8Var);

    public void w(ho hoVar) {
    }

    public /* synthetic */ ol1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public /* synthetic */ ol1(int i, boolean z) {
        this.a = i;
    }
}
