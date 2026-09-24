package defpackage;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class yo4 {
    public static yj7 b;
    public static final LinearInterpolator a = new LinearInterpolator();
    public static final ib c = ib.k(JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, "s", JWKParameterNames.RSA_EXPONENT, "o", "i", "h", "to", "ti");
    public static final ib d = ib.k("x", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE);

    public static Interpolator a(PointF pointF, PointF pointF2) {
        WeakReference weakReference;
        Interpolator pathInterpolator;
        pointF.x = sg5.b(pointF.x, -1.0f, 1.0f);
        pointF.y = sg5.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = sg5.b(pointF2.x, -1.0f, 1.0f);
        float fB = sg5.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fB;
        float f = pointF.x;
        float f2 = pointF.y;
        float f3 = pointF2.x;
        di8 di8Var = mi8.a;
        int i = f != 0.0f ? (int) (527.0f * f) : 17;
        if (f2 != 0.0f) {
            i = (int) (i * 31 * f2);
        }
        if (f3 != 0.0f) {
            i = (int) (i * 31 * f3);
        }
        if (fB != 0.0f) {
            i = (int) (i * 31 * fB);
        }
        synchronized (yo4.class) {
            if (b == null) {
                b = new yj7();
            }
            weakReference = (WeakReference) b.a(i);
        }
        Interpolator interpolator = weakReference != null ? (Interpolator) weakReference.get() : null;
        if (weakReference != null && interpolator != null) {
            return interpolator;
        }
        try {
            pathInterpolator = new PathInterpolator(pointF.x, pointF.y, pointF2.x, pointF2.y);
        } catch (IllegalArgumentException e) {
            pathInterpolator = "The Path cannot loop back on itself.".equals(e.getMessage()) ? new PathInterpolator(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
        }
        try {
            WeakReference weakReference2 = new WeakReference(pathInterpolator);
            synchronized (yo4.class) {
                b.b(i, weakReference2);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        return pathInterpolator;
    }

    /* JADX WARN: Code duplicated, block: B:99:0x01f6  */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002d. Please report as an issue. */
    public static wo4 b(ul4 ul4Var, e25 e25Var, float f, cj8 cj8Var, boolean z, boolean z2) {
        Object obj;
        Interpolator interpolatorA;
        Interpolator interpolatorA2;
        Interpolator interpolatorA3;
        Object obj2;
        wo4 wo4Var;
        ib ibVar;
        ib ibVar2;
        PointF pointF;
        ib ibVar3 = c;
        LinearInterpolator linearInterpolator = a;
        if (!z || !z2) {
            ib ibVar4 = ibVar3;
            if (!z) {
                return new wo4(cj8Var.r(ul4Var, f));
            }
            ul4Var.b();
            PointF pointFB = null;
            PointF pointFB2 = null;
            PointF pointFB3 = null;
            PointF pointFB4 = null;
            boolean z3 = false;
            Object objR = null;
            float fQ = 0.0f;
            Object objR2 = null;
            while (ul4Var.m()) {
                ibVar4 = ibVar4;
                switch (ul4Var.A(ibVar4)) {
                    case 0:
                        fQ = (float) ul4Var.q();
                        continue;
                    case 1:
                        objR = cj8Var.r(ul4Var, f);
                        break;
                    case 2:
                        objR2 = cj8Var.r(ul4Var, f);
                        break;
                    case 3:
                        pointFB4 = gn4.b(ul4Var, 1.0f);
                        break;
                    case 4:
                        pointFB = gn4.b(ul4Var, 1.0f);
                        break;
                    case 5:
                        z3 = ul4Var.r() == 1;
                        break;
                    case 6:
                        pointFB2 = gn4.b(ul4Var, f);
                        break;
                    case 7:
                        pointFB3 = gn4.b(ul4Var, f);
                        break;
                    default:
                        ul4Var.G();
                        break;
                }
            }
            ul4Var.h();
            if (!z3) {
                if (pointFB4 == null || pointFB == null) {
                    obj = objR2;
                } else {
                    interpolatorA = a(pointFB4, pointFB);
                    obj = objR2;
                }
                wo4 wo4Var2 = new wo4(e25Var, objR, obj, interpolatorA, fQ, (Float) null);
                wo4Var2.o = pointFB2;
                wo4Var2.p = pointFB3;
                return wo4Var2;
            }
            obj = objR;
            interpolatorA = linearInterpolator;
            wo4 wo4Var3 = new wo4(e25Var, objR, obj, interpolatorA, fQ, (Float) null);
            wo4Var3.o = pointFB2;
            wo4Var3.p = pointFB3;
            return wo4Var3;
        }
        ul4Var.b();
        PointF pointF2 = null;
        PointF pointFB5 = null;
        PointF pointFB6 = null;
        boolean z4 = false;
        PointF pointFB7 = null;
        PointF pointFB8 = null;
        PointF pointF3 = null;
        Object objR3 = null;
        PointF pointF4 = null;
        PointF pointF5 = null;
        float fQ2 = 0.0f;
        Object objR4 = null;
        while (ul4Var.m()) {
            int iA = ul4Var.A(ibVar3);
            ib ibVar5 = d;
            linearInterpolator = linearInterpolator;
            switch (iA) {
                case 0:
                    ibVar = ibVar3;
                    fQ2 = (float) ul4Var.q();
                    ibVar3 = ibVar;
                    break;
                case 1:
                    ibVar = ibVar3;
                    objR3 = cj8Var.r(ul4Var, f);
                    ibVar3 = ibVar;
                    break;
                case 2:
                    ibVar = ibVar3;
                    objR4 = cj8Var.r(ul4Var, f);
                    ibVar3 = ibVar;
                    break;
                case 3:
                    ibVar = ibVar3;
                    boolean z5 = z4;
                    Object obj3 = objR3;
                    PointF pointF6 = pointF4;
                    if (ul4Var.v() == 3) {
                        ul4Var.b();
                        float fQ3 = 0.0f;
                        float fQ4 = 0.0f;
                        float fQ5 = 0.0f;
                        float fQ6 = 0.0f;
                        while (ul4Var.m()) {
                            int iA2 = ul4Var.A(ibVar5);
                            if (iA2 != 0) {
                                if (iA2 != 1) {
                                    ul4Var.G();
                                } else if (ul4Var.v() == 7) {
                                    fQ6 = (float) ul4Var.q();
                                    fQ4 = fQ6;
                                } else {
                                    ul4Var.a();
                                    fQ4 = (float) ul4Var.q();
                                    fQ6 = ul4Var.v() == 7 ? (float) ul4Var.q() : fQ4;
                                    ul4Var.g();
                                }
                            } else if (ul4Var.v() == 7) {
                                fQ5 = (float) ul4Var.q();
                                fQ3 = fQ5;
                            } else {
                                ul4Var.a();
                                fQ3 = (float) ul4Var.q();
                                fQ5 = ul4Var.v() == 7 ? (float) ul4Var.q() : fQ3;
                                ul4Var.g();
                            }
                        }
                        PointF pointF7 = new PointF(fQ3, fQ4);
                        pointF4 = new PointF(fQ5, fQ6);
                        ul4Var.h();
                        pointF3 = pointF7;
                    } else {
                        pointFB7 = gn4.b(ul4Var, f);
                        pointF4 = pointF6;
                    }
                    z4 = z5;
                    objR3 = obj3;
                    ibVar3 = ibVar;
                    break;
                case 4:
                    boolean z6 = z4;
                    if (ul4Var.v() == 3) {
                        ul4Var.b();
                        float fQ7 = 0.0f;
                        float fQ8 = 0.0f;
                        float fQ9 = 0.0f;
                        float fQ10 = 0.0f;
                        while (ul4Var.m()) {
                            Object obj4 = objR3;
                            int iA3 = ul4Var.A(ibVar5);
                            if (iA3 != 0) {
                                ibVar2 = ibVar3;
                                if (iA3 != 1) {
                                    ul4Var.G();
                                } else if (ul4Var.v() == 7) {
                                    fQ10 = (float) ul4Var.q();
                                    pointF4 = pointF4;
                                    fQ8 = fQ10;
                                } else {
                                    pointF = pointF4;
                                    ul4Var.a();
                                    fQ8 = (float) ul4Var.q();
                                    fQ10 = ul4Var.v() == 7 ? (float) ul4Var.q() : fQ8;
                                    ul4Var.g();
                                    pointF4 = pointF;
                                }
                            } else {
                                ibVar2 = ibVar3;
                                pointF = pointF4;
                                if (ul4Var.v() == 7) {
                                    fQ9 = (float) ul4Var.q();
                                    pointF4 = pointF;
                                    fQ7 = fQ9;
                                } else {
                                    ul4Var.a();
                                    fQ7 = (float) ul4Var.q();
                                    fQ9 = ul4Var.v() == 7 ? (float) ul4Var.q() : fQ7;
                                    ul4Var.g();
                                    pointF4 = pointF;
                                }
                            }
                            objR3 = obj4;
                            ibVar3 = ibVar2;
                        }
                        ibVar = ibVar3;
                        PointF pointF8 = new PointF(fQ7, fQ8);
                        pointF2 = new PointF(fQ9, fQ10);
                        ul4Var.h();
                        pointF5 = pointF8;
                    } else {
                        ibVar = ibVar3;
                        pointFB8 = gn4.b(ul4Var, f);
                    }
                    z4 = z6;
                    ibVar3 = ibVar;
                    break;
                case 5:
                    z4 = ul4Var.r() == 1;
                    linearInterpolator = linearInterpolator;
                    break;
                case 6:
                    pointFB5 = gn4.b(ul4Var, f);
                    linearInterpolator = linearInterpolator;
                    break;
                case 7:
                    pointFB6 = gn4.b(ul4Var, f);
                    linearInterpolator = linearInterpolator;
                    break;
                default:
                    ul4Var.G();
                    linearInterpolator = linearInterpolator;
                    break;
            }
        }
        Interpolator interpolatorA4 = linearInterpolator;
        boolean z7 = z4;
        Object obj5 = objR3;
        PointF pointF9 = pointF4;
        ul4Var.h();
        if (z7) {
            obj2 = obj5;
        } else {
            if (pointFB7 == null || pointFB8 == null) {
                if (pointF3 != null && pointF9 != null && pointF5 != null && pointF2 != null) {
                    interpolatorA2 = a(pointF3, pointF5);
                    interpolatorA3 = a(pointF9, pointF2);
                    obj2 = objR4;
                    interpolatorA4 = null;
                }
                if (interpolatorA2 != null || interpolatorA3 == null) {
                    wo4Var = new wo4(e25Var, obj5, obj2, interpolatorA4, fQ2, (Float) null);
                } else {
                    wo4Var = new wo4(e25Var, obj5, obj2, interpolatorA2, interpolatorA3, fQ2);
                }
                wo4Var.o = pointFB5;
                wo4Var.p = pointFB6;
                return wo4Var;
            }
            interpolatorA4 = a(pointFB7, pointFB8);
            obj2 = objR4;
        }
        interpolatorA2 = null;
        interpolatorA3 = null;
        if (interpolatorA2 != null) {
            wo4Var = new wo4(e25Var, obj5, obj2, interpolatorA4, fQ2, (Float) null);
        } else {
            wo4Var = new wo4(e25Var, obj5, obj2, interpolatorA4, fQ2, (Float) null);
        }
        wo4Var.o = pointFB5;
        wo4Var.p = pointFB6;
        return wo4Var;
    }
}
