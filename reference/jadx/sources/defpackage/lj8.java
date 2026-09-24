package defpackage;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lj8 extends mj8 {
    public final Matrix a;
    public final ArrayList b;
    public float c;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    public final Matrix j;
    public String k;

    public lj8(lj8 lj8Var, k50 k50Var) {
        nj8 jj8Var;
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        Matrix matrix = new Matrix();
        this.j = matrix;
        this.k = null;
        this.c = lj8Var.c;
        this.d = lj8Var.d;
        this.e = lj8Var.e;
        this.f = lj8Var.f;
        this.g = lj8Var.g;
        this.h = lj8Var.h;
        this.i = lj8Var.i;
        String str = lj8Var.k;
        this.k = str;
        if (str != null) {
            k50Var.put(str, this);
        }
        matrix.set(lj8Var.j);
        ArrayList arrayList = lj8Var.b;
        for (int i = 0; i < arrayList.size(); i++) {
            Object obj = arrayList.get(i);
            if (obj instanceof lj8) {
                this.b.add(new lj8((lj8) obj, k50Var));
            } else {
                if (obj instanceof kj8) {
                    kj8 kj8Var = (kj8) obj;
                    kj8 kj8Var2 = new kj8(kj8Var);
                    kj8Var2.e = 0.0f;
                    kj8Var2.g = 1.0f;
                    kj8Var2.h = 1.0f;
                    kj8Var2.i = 0.0f;
                    kj8Var2.j = 1.0f;
                    kj8Var2.k = 0.0f;
                    kj8Var2.l = Paint.Cap.BUTT;
                    kj8Var2.m = Paint.Join.MITER;
                    kj8Var2.n = 4.0f;
                    kj8Var2.d = kj8Var.d;
                    kj8Var2.e = kj8Var.e;
                    kj8Var2.g = kj8Var.g;
                    kj8Var2.f = kj8Var.f;
                    kj8Var2.c = kj8Var.c;
                    kj8Var2.h = kj8Var.h;
                    kj8Var2.i = kj8Var.i;
                    kj8Var2.j = kj8Var.j;
                    kj8Var2.k = kj8Var.k;
                    kj8Var2.l = kj8Var.l;
                    kj8Var2.m = kj8Var.m;
                    kj8Var2.n = kj8Var.n;
                    jj8Var = kj8Var2;
                } else {
                    if (!(obj instanceof jj8)) {
                        l0.e("Unknown object in the tree!");
                        throw null;
                    }
                    jj8Var = new jj8((jj8) obj);
                }
                this.b.add(jj8Var);
                Object obj2 = jj8Var.b;
                if (obj2 != null) {
                    k50Var.put(obj2, jj8Var);
                }
            }
        }
    }

    @Override // defpackage.mj8
    public final boolean a() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                return false;
            }
            if (((mj8) arrayList.get(i)).a()) {
                return true;
            }
            i++;
        }
    }

    @Override // defpackage.mj8
    public final boolean b(int[] iArr) {
        int i = 0;
        boolean zB = false;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                return zB;
            }
            zB |= ((mj8) arrayList.get(i)).b(iArr);
            i++;
        }
    }

    public final void c() {
        Matrix matrix = this.j;
        matrix.reset();
        matrix.postTranslate(-this.d, -this.e);
        matrix.postScale(this.f, this.g);
        matrix.postRotate(this.c, 0.0f, 0.0f);
        matrix.postTranslate(this.h + this.d, this.i + this.e);
    }

    public String getGroupName() {
        return this.k;
    }

    public Matrix getLocalMatrix() {
        return this.j;
    }

    public float getPivotX() {
        return this.d;
    }

    public float getPivotY() {
        return this.e;
    }

    public float getRotation() {
        return this.c;
    }

    public float getScaleX() {
        return this.f;
    }

    public float getScaleY() {
        return this.g;
    }

    public float getTranslateX() {
        return this.h;
    }

    public float getTranslateY() {
        return this.i;
    }

    public void setPivotX(float f) {
        if (f != this.d) {
            this.d = f;
            c();
        }
    }

    public void setPivotY(float f) {
        if (f != this.e) {
            this.e = f;
            c();
        }
    }

    public void setRotation(float f) {
        if (f != this.c) {
            this.c = f;
            c();
        }
    }

    public void setScaleX(float f) {
        if (f != this.f) {
            this.f = f;
            c();
        }
    }

    public void setScaleY(float f) {
        if (f != this.g) {
            this.g = f;
            c();
        }
    }

    public void setTranslateX(float f) {
        if (f != this.h) {
            this.h = f;
            c();
        }
    }

    public void setTranslateY(float f) {
        if (f != this.i) {
            this.i = f;
            c();
        }
    }

    public lj8() {
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = new Matrix();
        this.k = null;
    }
}
