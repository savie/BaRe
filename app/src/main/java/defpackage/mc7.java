package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mc7 {
    public float a;
    public float b;
    public float c;
    public float d;
    public float e;
    public float f;
    public final ArrayList g = new ArrayList();
    public final ArrayList h = new ArrayList();

    public mc7() {
        d(0.0f, 0.0f, 270.0f, 0.0f);
    }

    public final void a(float f) {
        float f2 = this.e;
        if (f2 == f) {
            return;
        }
        float f3 = ((f - f2) + 360.0f) % 360.0f;
        if (f3 > 180.0f) {
            return;
        }
        float f4 = this.c;
        float f5 = this.d;
        ic7 ic7Var = new ic7(f4, f5, f4, f5);
        ic7Var.f = this.e;
        ic7Var.g = f3;
        this.h.add(new gc7(ic7Var));
        this.e = f;
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.g;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((kc7) arrayList.get(i)).a(matrix, path);
        }
    }

    public final void c(float f, float f2) {
        jc7 jc7Var = new jc7();
        jc7Var.b = f;
        jc7Var.c = f2;
        this.g.add(jc7Var);
        hc7 hc7Var = new hc7(jc7Var, this.c, this.d);
        float fB = hc7Var.b() + 270.0f;
        float fB2 = hc7Var.b() + 270.0f;
        a(fB);
        this.h.add(hc7Var);
        this.e = fB2;
        this.c = f;
        this.d = f2;
    }

    public final void d(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = (f3 + f4) % 360.0f;
        this.g.clear();
        this.h.clear();
    }
}
