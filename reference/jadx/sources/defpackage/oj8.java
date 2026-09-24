package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oj8 {
    public static final Matrix p = new Matrix();
    public final Path a;
    public final Path b;
    public final Matrix c;
    public Paint d;
    public Paint e;
    public PathMeasure f;
    public final lj8 g;
    public float h;
    public float i;
    public float j;
    public float k;
    public int l;
    public String m;
    public Boolean n;
    public final k50 o;

    public oj8(oj8 oj8Var) {
        this.c = new Matrix();
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = 0.0f;
        this.l = 255;
        this.m = null;
        this.n = null;
        k50 k50Var = new k50(0);
        this.o = k50Var;
        this.g = new lj8(oj8Var.g, k50Var);
        this.a = new Path(oj8Var.a);
        this.b = new Path(oj8Var.b);
        this.h = oj8Var.h;
        this.i = oj8Var.i;
        this.j = oj8Var.j;
        this.k = oj8Var.k;
        this.l = oj8Var.l;
        this.m = oj8Var.m;
        String str = oj8Var.m;
        if (str != null) {
            k50Var.put(str, this);
        }
        this.n = oj8Var.n;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(lj8 lj8Var, Matrix matrix, Canvas canvas, int i, int i2) {
        int i3;
        float f;
        int i4;
        Matrix matrix2 = lj8Var.a;
        ArrayList arrayList = lj8Var.b;
        matrix2.set(matrix);
        Matrix matrix3 = lj8Var.a;
        matrix3.preConcat(lj8Var.j);
        canvas.save();
        char c = 0;
        int i5 = 0;
        while (i5 < arrayList.size()) {
            mj8 mj8Var = (mj8) arrayList.get(i5);
            if (mj8Var instanceof lj8) {
                a((lj8) mj8Var, matrix3, canvas, i, i2);
            } else {
                if (mj8Var instanceof nj8) {
                    nj8 nj8Var = (nj8) mj8Var;
                    float f2 = i / this.j;
                    float f3 = i2 / this.k;
                    float fMin = Math.min(f2, f3);
                    Matrix matrix4 = this.c;
                    matrix4.set(matrix3);
                    matrix4.postScale(f2, f3);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix3.mapVectors(fArr);
                    float fHypot = (float) Math.hypot(fArr[c], fArr[1]);
                    boolean z = c;
                    i3 = i5;
                    float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f4 = (fArr[z ? 1 : 0] * fArr[3]) - (fArr[1] * fArr[2]);
                    float fMax = Math.max(fHypot, fHypot2);
                    float fAbs = fMax > 0.0f ? Math.abs(f4) / fMax : 0.0f;
                    if (fAbs != 0.0f) {
                        Path path = this.a;
                        path.reset();
                        ky5[] ky5VarArr = nj8Var.a;
                        if (ky5VarArr != null) {
                            ky5.b(ky5VarArr, path);
                        }
                        Path path2 = this.b;
                        path2.reset();
                        if (nj8Var instanceof jj8) {
                            path2.setFillType(nj8Var.c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            path2.addPath(path, matrix4);
                            canvas.clipPath(path2);
                        } else {
                            kj8 kj8Var = (kj8) nj8Var;
                            float f5 = kj8Var.i;
                            if (f5 != 0.0f || kj8Var.j != 1.0f) {
                                float f6 = kj8Var.k;
                                float f7 = (f5 + f6) % 1.0f;
                                float f8 = (kj8Var.j + f6) % 1.0f;
                                if (this.f == null) {
                                    this.f = new PathMeasure();
                                }
                                this.f.setPath(path, z);
                                float length = this.f.getLength();
                                float f9 = f7 * length;
                                float f10 = f8 * length;
                                path.reset();
                                PathMeasure pathMeasure = this.f;
                                if (f9 > f10) {
                                    pathMeasure.getSegment(f9, length, path, true);
                                    f = 0.0f;
                                    this.f.getSegment(0.0f, f10, path, true);
                                } else {
                                    f = 0.0f;
                                    pathMeasure.getSegment(f9, f10, path, true);
                                }
                                path.rLineTo(f, f);
                            }
                            path2.addPath(path, matrix4);
                            nn1 nn1Var = kj8Var.f;
                            float f11 = 255.0f;
                            if (((Shader) nn1Var.b) == null && nn1Var.a == 0) {
                                f11 = 255.0f;
                                i4 = 16777215;
                            } else {
                                if (this.e == null) {
                                    i4 = 16777215;
                                    Paint paint = new Paint(1);
                                    this.e = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                } else {
                                    i4 = 16777215;
                                }
                                Paint paint2 = this.e;
                                Shader shader = (Shader) nn1Var.b;
                                if (shader != null) {
                                    shader.setLocalMatrix(matrix4);
                                    paint2.setShader(shader);
                                    paint2.setAlpha(Math.round(kj8Var.h * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    int i6 = nn1Var.a;
                                    float f12 = kj8Var.h;
                                    PorterDuff.Mode mode = rj8.q;
                                    paint2.setColor((i6 & i4) | (((int) (Color.alpha(i6) * f12)) << 24));
                                }
                                paint2.setColorFilter(null);
                                path2.setFillType(kj8Var.c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(path2, paint2);
                            }
                            nn1 nn1Var2 = kj8Var.d;
                            if (((Shader) nn1Var2.b) != null || nn1Var2.a != 0) {
                                if (this.d == null) {
                                    Paint paint3 = new Paint(1);
                                    this.d = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint4 = this.d;
                                Paint.Join join = kj8Var.m;
                                if (join != null) {
                                    paint4.setStrokeJoin(join);
                                }
                                Paint.Cap cap = kj8Var.l;
                                if (cap != null) {
                                    paint4.setStrokeCap(cap);
                                }
                                paint4.setStrokeMiter(kj8Var.n);
                                Shader shader2 = (Shader) nn1Var2.b;
                                if (shader2 != null) {
                                    shader2.setLocalMatrix(matrix4);
                                    paint4.setShader(shader2);
                                    paint4.setAlpha(Math.round(kj8Var.g * f11));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(255);
                                    int i7 = nn1Var2.a;
                                    float f13 = kj8Var.g;
                                    PorterDuff.Mode mode2 = rj8.q;
                                    paint4.setColor((i7 & i4) | (((int) (Color.alpha(i7) * f13)) << 24));
                                }
                                paint4.setColorFilter(null);
                                paint4.setStrokeWidth(kj8Var.e * fMin * fAbs);
                                canvas.drawPath(path2, paint4);
                            }
                        }
                    }
                }
                i5 = i3 + 1;
                c = 0;
            }
            i3 = i5;
            i5 = i3 + 1;
            c = 0;
        }
        canvas.restore();
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.l;
    }

    public void setAlpha(float f) {
        setRootAlpha((int) (f * 255.0f));
    }

    public void setRootAlpha(int i) {
        this.l = i;
    }

    public oj8() {
        this.c = new Matrix();
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = 0.0f;
        this.l = 255;
        this.m = null;
        this.n = null;
        this.o = new k50(0);
        this.g = new lj8();
        this.a = new Path();
        this.b = new Path();
    }
}
