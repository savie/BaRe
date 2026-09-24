package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.card.MaterialCardView;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x44 implements jk8 {
    public final Object a;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;
    public final Object k;
    public final Object n;

    public x44(cz4 cz4Var, vq3 vq3Var) {
        this.c = new gp1(this, eg2.a);
        s02 s02Var = new s02();
        s02Var.a = new bq1();
        s02Var.b = new bq1();
        x91 x91Var = new x91();
        x91Var.a = new cz4(17);
        x91Var.c = new lv1(18);
        x91Var.d = new om5(x91Var);
        x91Var.b = cz4Var;
        s02Var.c = x91Var;
        this.f = s02Var;
        this.b = new oe(this);
        this.d = new gp1(this, null);
        this.e = new w00(vq3Var);
        this.a = new om5(6);
        this.k = by8.a;
        this.n = vq3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public bu1 a(Class cls, eg2 eg2Var) {
        if (eg2Var != null) {
            gp1 gp1Var = (gp1) this.c;
            bq1 bq1Var = (bq1) gp1Var.b;
            bu1 bu1Var = (bu1) bq1Var.get(cls);
            if (bu1Var != null) {
                return bu1Var;
            }
            k63 k63Var = new k63(gp1Var.e(cls), (x44) gp1Var.e);
            bq1Var.put(cls, k63Var);
            return k63Var;
        }
        gp1 gp1Var2 = (gp1) this.d;
        bq1 bq1Var2 = (bq1) gp1Var2.b;
        bu1 bu1Var2 = (bu1) bq1Var2.get(cls);
        if (bu1Var2 != null) {
            return bu1Var2;
        }
        k63 k63Var2 = new k63(gp1Var2.e(cls), (x44) gp1Var2.e);
        bq1Var2.put(cls, k63Var2);
        return k63Var2;
    }

    public uq4 b(au1 au1Var, Annotation annotation) {
        w00 w00Var = (w00) this.e;
        w00Var.getClass();
        cr4 cr4VarR = w00Var.r(au1Var, annotation, new dr4(au1Var, annotation));
        if (cr4VarR == null || cr4VarR.b <= 0) {
            return null;
        }
        return (uq4) cr4VarR.a.get(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public bu1 c(Class cls, eg2 eg2Var) {
        if (eg2Var != null) {
            gp1 gp1Var = (gp1) this.c;
            bq1 bq1Var = (bq1) gp1Var.a;
            bu1 bu1Var = (bu1) bq1Var.get(cls);
            if (bu1Var != null) {
                return bu1Var;
            }
            wf5 wf5Var = new wf5(gp1Var.e(cls), (x44) gp1Var.e);
            bq1Var.put(cls, wf5Var);
            return wf5Var;
        }
        gp1 gp1Var2 = (gp1) this.d;
        bq1 bq1Var2 = (bq1) gp1Var2.a;
        bu1 bu1Var2 = (bu1) bq1Var2.get(cls);
        if (bu1Var2 != null) {
            return bu1Var2;
        }
        wf5 wf5Var2 = new wf5(gp1Var2.e(cls), (x44) gp1Var2.e);
        bq1Var2.put(cls, wf5Var2);
        return wf5Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, q27] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r2v1, types: [tr5] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [of2] */
    public q27 d(Class cls) {
        ?? of2Var;
        oe oeVar = (oe) this.b;
        x44 x44Var = (x44) oeVar.c;
        bq1 bq1Var = (bq1) oeVar.b;
        q27 q27Var = (q27) bq1Var.get(cls);
        if (q27Var != null) {
            return q27Var;
        }
        ri2 ri2VarE = ((gp1) x44Var.d).e(cls);
        if (x44Var.e(cls)) {
            of2Var = new of2(ri2VarE);
        } else {
            ?? tr5Var = new tr5(ri2VarE, x44Var);
            if (tr5Var.c.d) {
                boolean zIsArray = true;
                if (!Collection.class.isAssignableFrom(cls) && !Map.class.isAssignableFrom(cls)) {
                    zIsArray = cls.isArray();
                }
                if (!zIsArray) {
                    tr5Var = new of2();
                    ee2 ee2Var = new ee2(ri2VarE);
                    tr5Var.c = ee2Var;
                    tr5Var.b = new tr5(ee2Var, x44Var);
                }
            }
            of2Var = tr5Var;
        }
        bq1Var.put(cls, of2Var);
        return of2Var;
    }

    public boolean e(Class cls) {
        return cls == String.class || cls == Float.class || cls == Double.class || cls == Long.class || cls == Integer.class || cls == Boolean.class || cls.isEnum() || cls.isPrimitive() || ((s02) this.f).c(cls) != null;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (AppBarLayout) this.a;
    }

    public x44(AppBarLayout appBarLayout, LinearLayout linearLayout, ImageView imageView, MaterialCardView materialCardView, MaterialToolbar materialToolbar, ConstraintLayout constraintLayout, TextView textView, TextView textView2) {
        this.a = appBarLayout;
        this.b = linearLayout;
        this.c = imageView;
        this.d = materialCardView;
        this.e = materialToolbar;
        this.f = constraintLayout;
        this.k = textView;
        this.n = textView2;
    }
}
