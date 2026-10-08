package defpackage;

import android.util.Property;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n71 extends Property {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n71(Class cls, String str, int i) {
        super(cls, str);
        this.a = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.a) {
            case 0:
                return Float.valueOf(((o71) obj).p);
            default:
                return Float.valueOf(((su4) obj).p);
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                ((o71) obj).p = ((Float) obj2).floatValue();
                break;
            default:
                su4 su4Var = (su4) obj;
                float fFloatValue = ((Float) obj2).floatValue();
                su4Var.p = fFloatValue;
                int i = (int) (fFloatValue * 1800.0f);
                Interpolator[] interpolatorArr = su4Var.e;
                ArrayList arrayList = (ArrayList) su4Var.b;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    sp2 sp2Var = (sp2) arrayList.get(i2);
                    int[] iArr = su4.t;
                    int i3 = i2 * 2;
                    int i4 = iArr[i3];
                    int[] iArr2 = su4.r;
                    sp2Var.a = iz1.c(interpolatorArr[i3].getInterpolation(ao.h(i, i4, iArr2[i3])), 0.0f, 1.0f);
                    int i5 = i3 + 1;
                    sp2Var.b = iz1.c(interpolatorArr[i5].getInterpolation(ao.h(i, iArr[i5], iArr2[i5])), 0.0f, 1.0f);
                }
                if (su4Var.n) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((sp2) it.next()).c = su4Var.f.e[su4Var.k];
                    }
                    su4Var.n = false;
                }
                ((mb4) su4Var.a).invalidateSelf();
                break;
        }
    }
}
