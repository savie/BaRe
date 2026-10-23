package defpackage;

import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m71 extends Property {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m71(Class cls, String str, int i) {
        super(cls, str);
        this.a = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.a) {
            case 0:
                return Float.valueOf(((o71) obj).n);
            default:
                return ((View) obj).getClipBounds();
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                o71 o71Var = (o71) obj;
                float fFloatValue = ((Float) obj2).floatValue();
                o71Var.n = fFloatValue;
                int i = (int) (fFloatValue * 5400.0f);
                i53 i53Var = o71Var.e;
                ArrayList arrayList = (ArrayList) o71Var.b;
                sp2 sp2Var = (sp2) arrayList.get(0);
                float f = o71Var.n * 1520.0f;
                sp2Var.a = (-20.0f) + f;
                sp2Var.b = f;
                for (int i2 = 0; i2 < 4; i2++) {
                    sp2Var.b = (i53Var.getInterpolation(ao.h(i, o71.r[i2], 667)) * 250.0f) + sp2Var.b;
                    sp2Var.a = (i53Var.getInterpolation(ao.h(i, o71.t[i2], 667)) * 250.0f) + sp2Var.a;
                }
                float f2 = sp2Var.a;
                float f3 = sp2Var.b;
                sp2Var.a = (((f3 - f2) * o71Var.p) + f2) / 360.0f;
                sp2Var.b = f3 / 360.0f;
                for (int i3 = 0; i3 < 4; i3++) {
                    float fH = ao.h(i, o71.x[i3], 333);
                    if (fH > 0.0f && fH < 1.0f) {
                        int i4 = i3 + o71Var.k;
                        int[] iArr = o71Var.f.e;
                        int length = i4 % iArr.length;
                        int length2 = (length + 1) % iArr.length;
                        int i5 = iArr[length];
                        int i6 = iArr[length2];
                        ((sp2) arrayList.get(0)).c = j40.a(i53Var.getInterpolation(fH), Integer.valueOf(i5), Integer.valueOf(i6)).intValue();
                        ((mb4) o71Var.a).invalidateSelf();
                    }
                    break;
                }
                ((mb4) o71Var.a).invalidateSelf();
                break;
            default:
                ((View) obj).setClipBounds((Rect) obj2);
                break;
        }
    }
}
