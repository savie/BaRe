package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class m50 {
    public final d50 d;
    public ej7 a = null;
    public float b = 0.0f;
    public final ArrayList c = new ArrayList();
    public boolean e = false;

    public m50(gh ghVar) {
        this.d = new d50(this, ghVar);
    }

    public final void a(bv4 bv4Var, int i) {
        ej7 ej7VarJ = bv4Var.j(i);
        d50 d50Var = this.d;
        d50Var.g(ej7VarJ, 1.0f);
        d50Var.g(bv4Var.j(i), -1.0f);
    }

    public final void b(ej7 ej7Var, ej7 ej7Var2, ej7 ej7Var3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        d50 d50Var = this.d;
        if (z) {
            d50Var.g(ej7Var, 1.0f);
            d50Var.g(ej7Var2, -1.0f);
            d50Var.g(ej7Var3, -1.0f);
        } else {
            d50Var.g(ej7Var, -1.0f);
            d50Var.g(ej7Var2, 1.0f);
            d50Var.g(ej7Var3, 1.0f);
        }
    }

    public final void c(ej7 ej7Var, ej7 ej7Var2, ej7 ej7Var3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        d50 d50Var = this.d;
        if (z) {
            d50Var.g(ej7Var, 1.0f);
            d50Var.g(ej7Var2, -1.0f);
            d50Var.g(ej7Var3, 1.0f);
        } else {
            d50Var.g(ej7Var, -1.0f);
            d50Var.g(ej7Var2, 1.0f);
            d50Var.g(ej7Var3, -1.0f);
        }
    }

    public ej7 d(boolean[] zArr) {
        return f(zArr, null);
    }

    public boolean e() {
        return this.a == null && this.b == 0.0f && this.d.d() == 0;
    }

    public final ej7 f(boolean[] zArr, ej7 ej7Var) {
        int i;
        d50 d50Var = this.d;
        int iD = d50Var.d();
        ej7 ej7Var2 = null;
        float f = 0.0f;
        for (int i2 = 0; i2 < iD; i2++) {
            float f2 = d50Var.f(i2);
            if (f2 < 0.0f) {
                ej7 ej7VarE = d50Var.e(i2);
                if ((zArr == null || !zArr[ej7VarE.b]) && ej7VarE != ej7Var && (((i = ej7VarE.t) == 3 || i == 4) && f2 < f)) {
                    f = f2;
                    ej7Var2 = ej7VarE;
                }
            }
        }
        return ej7Var2;
    }

    public final void g(ej7 ej7Var) {
        ej7 ej7Var2 = this.a;
        d50 d50Var = this.d;
        if (ej7Var2 != null) {
            d50Var.g(ej7Var2, -1.0f);
            this.a.c = -1;
            this.a = null;
        }
        float fH = d50Var.h(ej7Var, true) * (-1.0f);
        this.a = ej7Var;
        if (fH == 1.0f) {
            return;
        }
        this.b /= fH;
        int i = d50Var.h;
        for (int i2 = 0; i != -1 && i2 < d50Var.a; i2++) {
            float[] fArr = d50Var.g;
            fArr[i] = fArr[i] / fH;
            i = d50Var.f[i];
        }
    }

    public final void h(bv4 bv4Var, ej7 ej7Var, boolean z) {
        if (ej7Var.f) {
            d50 d50Var = this.d;
            float fC = d50Var.c(ej7Var);
            this.b = (ej7Var.e * fC) + this.b;
            d50Var.h(ej7Var, z);
            if (z) {
                ej7Var.b(this);
            }
            if (d50Var.d() == 0) {
                this.e = true;
                bv4Var.b = true;
            }
        }
    }

    public void i(bv4 bv4Var, m50 m50Var, boolean z) {
        d50 d50Var = this.d;
        d50Var.getClass();
        float fC = d50Var.c(m50Var.a);
        d50Var.h(m50Var.a, z);
        d50 d50Var2 = m50Var.d;
        int iD = d50Var2.d();
        for (int i = 0; i < iD; i++) {
            ej7 ej7VarE = d50Var2.e(i);
            d50Var.a(ej7VarE, d50Var2.c(ej7VarE) * fC, z);
        }
        this.b = (m50Var.b * fC) + this.b;
        if (z) {
            m50Var.a.b(this);
        }
        if (this.a == null || d50Var.d() != 0) {
            return;
        }
        this.e = true;
        bv4Var.b = true;
    }

    public String toString() {
        boolean z;
        String strConcat = (this.a == null ? "0" : "" + this.a).concat(" = ");
        if (this.b != 0.0f) {
            StringBuilder sbS = dj7.s(strConcat);
            sbS.append(this.b);
            strConcat = sbS.toString();
            z = true;
        } else {
            z = false;
        }
        d50 d50Var = this.d;
        int iD = d50Var.d();
        for (int i = 0; i < iD; i++) {
            ej7 ej7VarE = d50Var.e(i);
            if (ej7VarE != null) {
                float f = d50Var.f(i);
                if (f != 0.0f) {
                    String string = ej7VarE.toString();
                    if (z) {
                        if (f > 0.0f) {
                            strConcat = strConcat.concat(" + ");
                        } else {
                            strConcat = strConcat.concat(" - ");
                            f *= -1.0f;
                        }
                    } else if (f < 0.0f) {
                        strConcat = strConcat.concat("- ");
                        f *= -1.0f;
                    }
                    strConcat = f == 1.0f ? strConcat.concat(string) : strConcat + f + TokenAuthenticationScheme.SCHEME_DELIMITER + string;
                    z = true;
                }
            }
        }
        return !z ? strConcat.concat("0.0") : strConcat;
    }
}
