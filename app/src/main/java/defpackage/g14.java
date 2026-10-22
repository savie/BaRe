package defpackage;

import android.graphics.Color;
import android.graphics.PointF;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g14 implements cj8, pr6 {
    public int a;

    public g14(int i) {
        this.a = i;
    }

    @Override // defpackage.pr6
    public int getN() {
        return this.a;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008c  */
    @Override // defpackage.cj8
    public Object r(ul4 ul4Var, float f) {
        int i;
        double d;
        ArrayList arrayList = new ArrayList();
        int i2 = 1;
        boolean z = ul4Var.v() == 1;
        if (z) {
            ul4Var.a();
        }
        while (ul4Var.m()) {
            arrayList.add(Float.valueOf((float) ul4Var.q()));
        }
        if (z) {
            ul4Var.g();
        }
        if (this.a == -1) {
            this.a = arrayList.size() / 4;
        }
        int i3 = this.a;
        float[] fArr = new float[i3];
        int[] iArr = new int[i3];
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i = this.a * 4;
            if (i4 >= i) {
                break;
            }
            int i7 = i4 / 4;
            double dFloatValue = ((Float) arrayList.get(i4)).floatValue();
            int i8 = i4 % 4;
            if (i8 != 0) {
                if (i8 == 1) {
                    i5 = (int) (dFloatValue * 255.0d);
                } else if (i8 == 2) {
                    i6 = (int) (dFloatValue * 255.0d);
                } else if (i8 == 3) {
                    iArr[i7] = Color.argb(255, i5, i6, (int) (dFloatValue * 255.0d));
                }
            } else if (i7 > 0) {
                float f2 = (float) dFloatValue;
                if (fArr[i7 - 1] >= f2) {
                    fArr[i7] = f2 + 0.01f;
                } else {
                    fArr[i7] = (float) dFloatValue;
                }
            } else {
                fArr[i7] = (float) dFloatValue;
            }
            i4++;
        }
        e14 e14Var = new e14(fArr, iArr);
        if (arrayList.size() > i) {
            int size = (arrayList.size() - i) / 2;
            double[] dArr = new double[size];
            double[] dArr2 = new double[size];
            int i9 = 0;
            while (i < arrayList.size()) {
                if (i % 2 == 0) {
                    dArr[i9] = ((Float) arrayList.get(i)).floatValue();
                } else {
                    dArr2[i9] = ((Float) arrayList.get(i)).floatValue();
                    i9++;
                }
                i++;
            }
            int i10 = 0;
            while (i10 < i3) {
                int i11 = iArr[i10];
                double d2 = e14Var.a[i10];
                int i12 = i2;
                while (true) {
                    if (i12 >= size) {
                        d = dArr2[size - 1] * 255.0d;
                        break;
                    }
                    int i13 = i12 - 1;
                    double d3 = dArr[i13];
                    double d4 = dArr[i12];
                    if (d4 >= d2) {
                        double d5 = (d2 - d3) / (d4 - d3);
                        PointF pointF = sg5.a;
                        double dMax = Math.max(0.0d, Math.min(1.0d, d5));
                        double d6 = dArr2[i13];
                        d = (((dArr2[i12] - d6) * dMax) + d6) * 255.0d;
                        break;
                    }
                    i12++;
                }
                iArr[i10] = Color.argb((int) d, Color.red(i11), Color.green(i11), Color.blue(i11));
                i10++;
                dArr = dArr;
                i2 = 1;
            }
        }
        return e14Var;
    }
}
