package defpackage;

import android.animation.TimeInterpolator;
import android.graphics.PointF;
import android.util.Property;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m31 extends Property {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m31(Class cls, String str, int i) {
        super(cls, str);
        this.a = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.a) {
            case 0:
                return null;
            default:
                return Float.valueOf(((q71) obj).n);
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                s31 s31Var = (s31) obj;
                PointF pointF = (PointF) obj2;
                s31Var.getClass();
                s31Var.c = Math.round(pointF.x);
                int iRound = Math.round(pointF.y);
                s31Var.d = iRound;
                int i = s31Var.g + 1;
                s31Var.g = i;
                if (s31Var.f == i) {
                    wm8.a(s31Var.e, s31Var.a, s31Var.b, s31Var.c, iRound);
                    s31Var.f = 0;
                    s31Var.g = 0;
                }
                break;
            default:
                q71 q71Var = (q71) obj;
                float fFloatValue = ((Float) obj2).floatValue();
                q71Var.n = fFloatValue;
                int i2 = (int) (fFloatValue * 6000.0f);
                TimeInterpolator timeInterpolator = q71Var.e;
                ArrayList arrayList = (ArrayList) q71Var.b;
                sp2 sp2Var = (sp2) arrayList.get(0);
                float f = q71Var.n * 1080.0f;
                int[] iArr = q71.t;
                float interpolation = 0.0f;
                for (int i3 : iArr) {
                    interpolation += timeInterpolator.getInterpolation(ao.h(i2, i3, 500)) * 90.0f;
                }
                sp2Var.g = f + interpolation;
                float interpolation2 = timeInterpolator.getInterpolation(ao.h(i2, 0, 3000)) - timeInterpolator.getInterpolation(ao.h(i2, 3000, 3000));
                sp2Var.a = 0.0f;
                float[] fArr = q71.x;
                float fL = zv1.l(fArr[0], fArr[1], interpolation2);
                sp2Var.b = fL;
                float f2 = q71Var.p;
                if (f2 > 0.0f) {
                    sp2Var.b = (1.0f - f2) * fL;
                }
                for (int i4 = 0; i4 < iArr.length; i4++) {
                    float fH = ao.h(i2, iArr[i4], 100);
                    if (fH >= 0.0f && fH <= 1.0f) {
                        int i5 = i4 + q71Var.k;
                        int[] iArr2 = q71Var.f.e;
                        int length = i5 % iArr2.length;
                        int length2 = (length + 1) % iArr2.length;
                        ((sp2) arrayList.get(0)).c = j40.a(timeInterpolator.getInterpolation(fH), Integer.valueOf(iArr2[length]), Integer.valueOf(iArr2[length2])).intValue();
                        ((mb4) q71Var.a).invalidateSelf();
                    }
                    break;
                }
                ((mb4) q71Var.a).invalidateSelf();
                break;
        }
    }
}
