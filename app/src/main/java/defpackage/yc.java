package defpackage;

import android.os.Build;
import android.os.SystemClock;
import android.view.Choreographer;
import com.google.android.material.timepicker.ClockFaceView;
import com.l4digital.fastscroll.FastScroller;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yc implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ yc(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01ec A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x01d5 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x01e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0072  */
    /* JADX WARN: Code duplicated, block: B:31:0x007a  */
    /* JADX WARN: Code duplicated, block: B:33:0x0089  */
    /* JADX WARN: Code duplicated, block: B:35:0x008f  */
    /* JADX WARN: Code duplicated, block: B:38:0x009c  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:55:0x015d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0173  */
    /* JADX WARN: Code duplicated, block: B:61:0x0188  */
    /* JADX WARN: Code duplicated, block: B:63:0x018e  */
    /* JADX WARN: Code duplicated, block: B:65:0x019e  */
    /* JADX WARN: Code duplicated, block: B:77:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:79:0x01e6  */
    @Override // java.lang.Runnable
    public final void run() {
        long j;
        long j2;
        float f;
        long j3;
        long j4;
        boolean z;
        float f2;
        hk7 hk7Var;
        float f3;
        float f4;
        float f5;
        hk7 hk7Var2;
        int i;
        boolean z2;
        ArrayList arrayList;
        dd ddVarB;
        ArrayList arrayList2;
        int iIndexOf;
        int i2;
        int size;
        km0 km0Var;
        int i3 = this.a;
        Object obj = this.b;
        switch (i3) {
            case 0:
                dd ddVar = (dd) ((dd) obj).c.b;
                long jUptimeMillis = SystemClock.uptimeMillis();
                ArrayList arrayList3 = ddVar.b;
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                boolean z3 = false;
                int i4 = 0;
                while (i4 < arrayList3.size()) {
                    gk7 gk7Var = (gk7) arrayList3.get(i4);
                    if (gk7Var == null) {
                        i = i4;
                    } else {
                        dg7 dg7Var = ddVar.a;
                        Long l = (Long) dg7Var.get(gk7Var);
                        if (l == null) {
                            j = gk7Var.i;
                            if (j == 0) {
                                gk7Var.i = jUptimeMillis;
                                gk7Var.d(gk7Var.b);
                                i = i4;
                            } else {
                                j2 = jUptimeMillis - j;
                                gk7Var.i = jUptimeMillis;
                                f = gk7.b().g;
                                if (f == 0.0f) {
                                    j3 = 2147483647L;
                                } else {
                                    j3 = (long) (j2 / f);
                                }
                                j4 = j3;
                                z = gk7Var.o;
                                f2 = gk7Var.n;
                                if (z) {
                                    if (f2 != Float.MAX_VALUE) {
                                        gk7Var.m.i = f2;
                                        gk7Var.n = Float.MAX_VALUE;
                                    }
                                    gk7Var.b = (float) gk7Var.m.i;
                                    gk7Var.a = 0.0f;
                                    gk7Var.o = z3;
                                    i = i4;
                                } else {
                                    hk7Var = gk7Var.m;
                                    f3 = gk7Var.b;
                                    f4 = gk7Var.a;
                                    if (f2 != Float.MAX_VALUE) {
                                        long j5 = j4 / 2;
                                        vr2 vr2VarC = hk7Var.c(f3, f4, j5);
                                        hk7 hk7Var3 = gk7Var.m;
                                        hk7Var3.i = gk7Var.n;
                                        gk7Var.n = Float.MAX_VALUE;
                                        vr2 vr2VarC2 = hk7Var3.c(vr2VarC.a, vr2VarC.b, j5);
                                        gk7Var.b = vr2VarC2.a;
                                        gk7Var.a = vr2VarC2.b;
                                    } else {
                                        vr2 vr2VarC3 = hk7Var.c(f3, f4, j4);
                                        gk7Var.b = vr2VarC3.a;
                                        gk7Var.a = vr2VarC3.b;
                                    }
                                    float fMax = Math.max(gk7Var.b, gk7Var.h);
                                    gk7Var.b = fMax;
                                    float fMin = Math.min(fMax, gk7Var.g);
                                    gk7Var.b = fMin;
                                    f5 = gk7Var.a;
                                    hk7Var2 = gk7Var.m;
                                    hk7Var2.getClass();
                                    i = i4;
                                    if (Math.abs(f5) < hk7Var2.e) {
                                    }
                                    z2 = false;
                                    float fMin2 = Math.min(gk7Var.b, gk7Var.g);
                                    gk7Var.b = fMin2;
                                    float fMax2 = Math.max(fMin2, gk7Var.h);
                                    gk7Var.b = fMax2;
                                    gk7Var.d(fMax2);
                                    if (z2) {
                                        arrayList = gk7Var.k;
                                        gk7Var.f = false;
                                        ddVarB = gk7.b();
                                        ddVarB.a.remove(gk7Var);
                                        arrayList2 = ddVarB.b;
                                        iIndexOf = arrayList2.indexOf(gk7Var);
                                        if (iIndexOf >= 0) {
                                            arrayList2.set(iIndexOf, null);
                                            ddVarB.f = true;
                                        }
                                        gk7Var.i = 0L;
                                        gk7Var.c = false;
                                        for (i2 = 0; i2 < arrayList.size(); i2++) {
                                            if (arrayList.get(i2) != null) {
                                                gm0 gm0Var = (gm0) arrayList.get(i2);
                                                float f6 = gk7Var.b;
                                                km0Var = gm0Var.a;
                                                if (km0Var.getProgressDrawable() == null) {
                                                }
                                            }
                                        }
                                        for (size = arrayList.size() - 1; size >= 0; size--) {
                                            if (arrayList.get(size) == null) {
                                                arrayList.remove(size);
                                            }
                                        }
                                    }
                                }
                                z2 = true;
                                float fMin3 = Math.min(gk7Var.b, gk7Var.g);
                                gk7Var.b = fMin3;
                                float fMax3 = Math.max(fMin3, gk7Var.h);
                                gk7Var.b = fMax3;
                                gk7Var.d(fMax3);
                                if (z2) {
                                    arrayList = gk7Var.k;
                                    gk7Var.f = false;
                                    ddVarB = gk7.b();
                                    ddVarB.a.remove(gk7Var);
                                    arrayList2 = ddVarB.b;
                                    iIndexOf = arrayList2.indexOf(gk7Var);
                                    if (iIndexOf >= 0) {
                                        arrayList2.set(iIndexOf, null);
                                        ddVarB.f = true;
                                    }
                                    gk7Var.i = 0L;
                                    gk7Var.c = false;
                                    while (i2 < arrayList.size()) {
                                        if (arrayList.get(i2) != null) {
                                            gm0 gm0Var2 = (gm0) arrayList.get(i2);
                                            float f7 = gk7Var.b;
                                            km0Var = gm0Var2.a;
                                            if (km0Var.getProgressDrawable() == null) {
                                            }
                                        }
                                    }
                                    while (size >= 0) {
                                        if (arrayList.get(size) == null) {
                                            arrayList.remove(size);
                                        }
                                    }
                                }
                            }
                        } else if (l.longValue() < jUptimeMillis2) {
                            dg7Var.remove(gk7Var);
                            j = gk7Var.i;
                            if (j == 0) {
                                gk7Var.i = jUptimeMillis;
                                gk7Var.d(gk7Var.b);
                                i = i4;
                            } else {
                                j2 = jUptimeMillis - j;
                                gk7Var.i = jUptimeMillis;
                                f = gk7.b().g;
                                if (f == 0.0f) {
                                    j3 = 2147483647L;
                                } else {
                                    j3 = (long) (j2 / f);
                                }
                                j4 = j3;
                                z = gk7Var.o;
                                f2 = gk7Var.n;
                                if (z) {
                                    if (f2 != Float.MAX_VALUE) {
                                        gk7Var.m.i = f2;
                                        gk7Var.n = Float.MAX_VALUE;
                                    }
                                    gk7Var.b = (float) gk7Var.m.i;
                                    gk7Var.a = 0.0f;
                                    gk7Var.o = z3;
                                    i = i4;
                                } else {
                                    hk7Var = gk7Var.m;
                                    f3 = gk7Var.b;
                                    f4 = gk7Var.a;
                                    if (f2 != Float.MAX_VALUE) {
                                        long j6 = j4 / 2;
                                        vr2 vr2VarC4 = hk7Var.c(f3, f4, j6);
                                        hk7 hk7Var4 = gk7Var.m;
                                        hk7Var4.i = gk7Var.n;
                                        gk7Var.n = Float.MAX_VALUE;
                                        vr2 vr2VarC5 = hk7Var4.c(vr2VarC4.a, vr2VarC4.b, j6);
                                        gk7Var.b = vr2VarC5.a;
                                        gk7Var.a = vr2VarC5.b;
                                    } else {
                                        vr2 vr2VarC6 = hk7Var.c(f3, f4, j4);
                                        gk7Var.b = vr2VarC6.a;
                                        gk7Var.a = vr2VarC6.b;
                                    }
                                    float fMax4 = Math.max(gk7Var.b, gk7Var.h);
                                    gk7Var.b = fMax4;
                                    float fMin4 = Math.min(fMax4, gk7Var.g);
                                    gk7Var.b = fMin4;
                                    f5 = gk7Var.a;
                                    hk7Var2 = gk7Var.m;
                                    hk7Var2.getClass();
                                    i = i4;
                                    if (Math.abs(f5) < hk7Var2.e || Math.abs(fMin4 - ((float) hk7Var2.i)) >= hk7Var2.d) {
                                        z2 = false;
                                    } else {
                                        gk7Var.b = (float) gk7Var.m.i;
                                        gk7Var.a = 0.0f;
                                    }
                                    float fMin5 = Math.min(gk7Var.b, gk7Var.g);
                                    gk7Var.b = fMin5;
                                    float fMax5 = Math.max(fMin5, gk7Var.h);
                                    gk7Var.b = fMax5;
                                    gk7Var.d(fMax5);
                                    if (z2) {
                                        arrayList = gk7Var.k;
                                        gk7Var.f = false;
                                        ddVarB = gk7.b();
                                        ddVarB.a.remove(gk7Var);
                                        arrayList2 = ddVarB.b;
                                        iIndexOf = arrayList2.indexOf(gk7Var);
                                        if (iIndexOf >= 0) {
                                            arrayList2.set(iIndexOf, null);
                                            ddVarB.f = true;
                                        }
                                        gk7Var.i = 0L;
                                        gk7Var.c = false;
                                        while (i2 < arrayList.size()) {
                                            if (arrayList.get(i2) != null) {
                                                gm0 gm0Var3 = (gm0) arrayList.get(i2);
                                                float f8 = gk7Var.b;
                                                km0Var = gm0Var3.a;
                                                if (km0Var.getProgressDrawable() == null && km0Var.getProgressDrawable().getLevel() == 10000) {
                                                    ib0 ib0Var = km0Var.x;
                                                    if (km0Var.getVisibility() != 0) {
                                                        km0Var.removeCallbacks(km0Var.t);
                                                    } else {
                                                        km0Var.removeCallbacks(ib0Var);
                                                        long jUptimeMillis3 = SystemClock.uptimeMillis() - km0Var.f;
                                                        long j7 = km0Var.e;
                                                        if (jUptimeMillis3 >= j7) {
                                                            ib0Var.run();
                                                        } else {
                                                            km0Var.postDelayed(ib0Var, j7 - jUptimeMillis3);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        while (size >= 0) {
                                            if (arrayList.get(size) == null) {
                                                arrayList.remove(size);
                                            }
                                        }
                                    }
                                }
                                z2 = true;
                                float fMin6 = Math.min(gk7Var.b, gk7Var.g);
                                gk7Var.b = fMin6;
                                float fMax6 = Math.max(fMin6, gk7Var.h);
                                gk7Var.b = fMax6;
                                gk7Var.d(fMax6);
                                if (z2) {
                                    arrayList = gk7Var.k;
                                    gk7Var.f = false;
                                    ddVarB = gk7.b();
                                    ddVarB.a.remove(gk7Var);
                                    arrayList2 = ddVarB.b;
                                    iIndexOf = arrayList2.indexOf(gk7Var);
                                    if (iIndexOf >= 0) {
                                        arrayList2.set(iIndexOf, null);
                                        ddVarB.f = true;
                                    }
                                    gk7Var.i = 0L;
                                    gk7Var.c = false;
                                    while (i2 < arrayList.size()) {
                                        if (arrayList.get(i2) != null) {
                                            gm0 gm0Var4 = (gm0) arrayList.get(i2);
                                            float f9 = gk7Var.b;
                                            km0Var = gm0Var4.a;
                                            if (km0Var.getProgressDrawable() == null) {
                                            }
                                        }
                                    }
                                    while (size >= 0) {
                                        if (arrayList.get(size) == null) {
                                            arrayList.remove(size);
                                        }
                                    }
                                }
                            }
                        } else {
                            i = i4;
                        }
                    }
                    i4 = i + 1;
                    z3 = false;
                }
                if (ddVar.f) {
                    for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
                        if (arrayList3.get(size2) == null) {
                            arrayList3.remove(size2);
                        }
                    }
                    if (arrayList3.size() == 0 && Build.VERSION.SDK_INT >= 33) {
                        ddVar.h.a();
                    }
                    ddVar.f = false;
                }
                if (arrayList3.size() > 0) {
                    ((Choreographer) ddVar.e.b).postFrameCallback(new bd(ddVar.d));
                }
                break;
            case 1:
                FastScroller.a((FastScroller) obj);
                break;
            case 2:
                ((pg3) obj).a();
                break;
            case 3:
                ((qk3) obj).dismiss();
                break;
            case 4:
                n38 n38Var = ((j95) obj).Q;
                if (n38Var instanceof v38) {
                    ((v38) n38Var).g();
                }
                break;
            default:
                ((ClockFaceView) obj).p();
                break;
        }
    }
}
