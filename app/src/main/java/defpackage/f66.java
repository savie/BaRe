package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f66 extends m50 {
    public ej7[] f;
    public ej7[] g;
    public int h;
    public wc9 i;

    @Override // defpackage.m50
    public final ej7 d(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.h; i2++) {
            ej7[] ej7VarArr = this.f;
            ej7 ej7Var = ej7VarArr[i2];
            if (!zArr[ej7Var.b]) {
                wc9 wc9Var = this.i;
                wc9Var.b = ej7Var;
                int i3 = 8;
                if (i != -1) {
                    ej7 ej7Var2 = ej7VarArr[i];
                    while (i3 >= 0) {
                        float f = ej7Var2.n[i3];
                        float f2 = ((ej7) wc9Var.b).n[i3];
                        if (f2 != f) {
                            if (f2 >= f) {
                                break;
                            }
                            i = i2;
                            break;
                            break;
                        }
                        i3--;
                    }
                } else {
                    while (i3 >= 0) {
                        float f3 = ((ej7) wc9Var.b).n[i3];
                        if (f3 > 0.0f) {
                            break;
                        }
                        if (f3 < 0.0f) {
                            i = i2;
                            break;
                        }
                        i3--;
                    }
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f[i];
    }

    @Override // defpackage.m50
    public final boolean e() {
        return this.h == 0;
    }

    @Override // defpackage.m50
    public final void i(bv4 bv4Var, m50 m50Var, boolean z) {
        ej7 ej7Var = m50Var.a;
        if (ej7Var == null) {
            return;
        }
        float[] fArr = ej7Var.n;
        d50 d50Var = m50Var.d;
        int iD = d50Var.d();
        for (int i = 0; i < iD; i++) {
            ej7 ej7VarE = d50Var.e(i);
            float f = d50Var.f(i);
            wc9 wc9Var = this.i;
            wc9Var.b = ej7VarE;
            if (ej7VarE.a) {
                boolean z2 = true;
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr2 = ((ej7) wc9Var.b).n;
                    float f2 = (fArr[i2] * f) + fArr2[i2];
                    fArr2[i2] = f2;
                    if (Math.abs(f2) < 1.0E-4f) {
                        ((ej7) wc9Var.b).n[i2] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    ((f66) wc9Var.c).k((ej7) wc9Var.b);
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f3 = fArr[i3];
                    if (f3 != 0.0f) {
                        float f4 = f3 * f;
                        if (Math.abs(f4) < 1.0E-4f) {
                            f4 = 0.0f;
                        }
                        ((ej7) wc9Var.b).n[i3] = f4;
                    } else {
                        ((ej7) wc9Var.b).n[i3] = 0.0f;
                    }
                }
                j(ej7VarE);
            }
            this.b = (m50Var.b * f) + this.b;
        }
        k(ej7Var);
    }

    public final void j(ej7 ej7Var) {
        int i;
        ej7[] ej7VarArr;
        int i2 = this.h + 1;
        ej7[] ej7VarArr2 = this.f;
        if (i2 > ej7VarArr2.length) {
            ej7[] ej7VarArr3 = (ej7[]) Arrays.copyOf(ej7VarArr2, ej7VarArr2.length * 2);
            this.f = ej7VarArr3;
            this.g = (ej7[]) Arrays.copyOf(ej7VarArr3, ej7VarArr3.length * 2);
        }
        ej7[] ej7VarArr4 = this.f;
        int i3 = this.h;
        ej7VarArr4[i3] = ej7Var;
        int i4 = i3 + 1;
        this.h = i4;
        if (i4 > 1 && ej7VarArr4[i3].b > ej7Var.b) {
            int i5 = 0;
            while (true) {
                i = this.h;
                ej7VarArr = this.g;
                if (i5 >= i) {
                    break;
                }
                ej7VarArr[i5] = this.f[i5];
                i5++;
            }
            Arrays.sort(ej7VarArr, 0, i, new xg(9));
            for (int i6 = 0; i6 < this.h; i6++) {
                this.f[i6] = this.g[i6];
            }
        }
        ej7Var.a = true;
        ej7Var.a(this);
    }

    public final void k(ej7 ej7Var) {
        int i = 0;
        while (i < this.h) {
            if (this.f[i] == ej7Var) {
                while (true) {
                    int i2 = this.h;
                    if (i >= i2 - 1) {
                        this.h = i2 - 1;
                        ej7Var.a = false;
                        return;
                    } else {
                        ej7[] ej7VarArr = this.f;
                        int i3 = i + 1;
                        ej7VarArr[i] = ej7VarArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // defpackage.m50
    public final String toString() {
        wc9 wc9Var = this.i;
        String str = " goal -> (" + this.b + ") : ";
        for (int i = 0; i < this.h; i++) {
            wc9Var.b = this.f[i];
            str = str + wc9Var + TokenAuthenticationScheme.SCHEME_DELIMITER;
        }
        return str;
    }
}
