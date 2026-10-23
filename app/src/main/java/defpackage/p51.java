package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p51 implements jk8, bw1 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;

    public p51(ai5 ai5Var, ix2 ix2Var, ln5 ln5Var) {
        this.a = new xk1(ai5Var, ln5Var, null);
        this.c = new cy6(ai5Var, ln5Var, null);
        this.d = ai5Var.n();
        this.b = ai5Var;
        this.e = ix2Var;
        this.f = ln5Var;
    }

    @Override // defpackage.bw1
    public void a(ev5 ev5Var, Object obj) {
        xk1 xk1Var = (xk1) this.a;
        cz4 cz4Var = (cz4) this.d;
        ai5 ai5Var = (ai5) this.b;
        ln5 ln5Var = (ln5) this.f;
        ix2 ix2Var = (ix2) this.e;
        if (!ix2Var.h) {
            Class cls = (Class) ln5Var.b;
            String strC = ix2Var.c();
            if (strC == null) {
                strC = ai5Var.m(cls);
            }
            cz4Var.getClass();
            ev5 ev5VarI = ev5Var.i(strC);
            if (obj == null || xk1Var.e(ln5Var, obj, ev5VarI)) {
                return;
            }
            ((cy6) this.c).a(ev5VarI, obj);
            return;
        }
        if (obj != null) {
            Class cls2 = (Class) ln5Var.b;
            String strI = xk1Var.i(obj);
            String strC2 = ix2Var.c();
            if (strC2 == null) {
                strC2 = ai5Var.m(cls2);
            }
            cz4Var.getClass();
            if (strI != null) {
                ev5Var.setAttribute(strC2, strI);
            }
        }
    }

    @Override // defpackage.bw1
    public Object b(mc4 mc4Var) {
        cy6 cy6Var = (cy6) this.c;
        Class cls = (Class) ((ln5) this.f).b;
        ix2 ix2Var = (ix2) this.e;
        String strC = ix2Var.c();
        if (strC == null) {
            strC = ((ai5) this.b).m(cls);
        }
        boolean z = ix2Var.h;
        cz4 cz4Var = (cz4) this.d;
        if (z) {
            cz4Var.getClass();
            mc4 attribute = mc4Var.getAttribute(strC);
            if (attribute == null) {
                return null;
            }
            return cy6Var.b(attribute);
        }
        cz4Var.getClass();
        mc4 mc4VarF = mc4Var.f(strC);
        if (mc4VarF == null) {
            return null;
        }
        return cy6Var.b(mc4VarF);
    }

    @Override // defpackage.bw1
    public Object c(mc4 mc4Var, Object obj) throws kd5 {
        Class cls = (Class) ((ln5) this.f).b;
        if (obj == null) {
            return b(mc4Var);
        }
        throw new kd5("Can not read key of %s for %s", cls, (ix2) this.e);
    }

    @Override // defpackage.bw1
    public boolean d(mc4 mc4Var) {
        cy6 cy6Var = (cy6) this.c;
        Class cls = (Class) ((ln5) this.f).b;
        ix2 ix2Var = (ix2) this.e;
        String strC = ix2Var.c();
        if (strC == null) {
            strC = ((ai5) this.b).m(cls);
        }
        boolean z = ix2Var.h;
        cz4 cz4Var = (cz4) this.d;
        if (z) {
            cz4Var.getClass();
            mc4 attribute = mc4Var.getAttribute(strC);
            if (attribute != null) {
                cy6Var.d(attribute);
                return true;
            }
        } else {
            cz4Var.getClass();
            mc4 mc4VarF = mc4Var.f(strC);
            if (mc4VarF != null) {
                cy6Var.d(mc4VarF);
                return true;
            }
        }
        return true;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (LinearLayout) this.a;
    }

    public p51(LinearLayout linearLayout, MaterialCardView materialCardView, MaterialCardView materialCardView2, ImageView imageView, TextView textView, TextView textView2) {
        this.a = linearLayout;
        this.b = materialCardView;
        this.c = materialCardView2;
        this.d = imageView;
        this.e = textView;
        this.f = textView2;
    }
}
