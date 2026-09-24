package defpackage;

import android.util.Property;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w03 extends Property {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w03(Class cls, String str, int i) {
        super(cls, str);
        this.a = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.a) {
            case 0:
                return Float.valueOf(((View) obj).getPaddingStart());
            case 1:
                return Float.valueOf(((ru4) obj).n);
            default:
                return Float.valueOf(wm8.a.m((View) obj));
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                View view = (View) obj;
                view.setPaddingRelative(((Float) obj2).intValue(), view.getPaddingTop(), view.getPaddingEnd(), view.getPaddingBottom());
                break;
            case 1:
                ru4 ru4Var = (ru4) obj;
                float fFloatValue = ((Float) obj2).floatValue();
                ru4Var.n = fFloatValue;
                ArrayList arrayList = (ArrayList) ru4Var.b;
                ((sp2) arrayList.get(0)).a = 0.0f;
                float fH = ao.h((int) (fFloatValue * 333.0f), 0, 667);
                sp2 sp2Var = (sp2) arrayList.get(0);
                sp2 sp2Var2 = (sp2) arrayList.get(1);
                i53 i53Var = ru4Var.d;
                float interpolation = i53Var.getInterpolation(fH);
                sp2Var2.a = interpolation;
                sp2Var.b = interpolation;
                sp2 sp2Var3 = (sp2) arrayList.get(1);
                sp2 sp2Var4 = (sp2) arrayList.get(2);
                float interpolation2 = i53Var.getInterpolation(fH + 0.49925038f);
                sp2Var4.a = interpolation2;
                sp2Var3.b = interpolation2;
                ((sp2) arrayList.get(2)).b = 1.0f;
                if (ru4Var.k && ((sp2) arrayList.get(1)).b < 1.0f) {
                    ((sp2) arrayList.get(2)).c = ((sp2) arrayList.get(1)).c;
                    ((sp2) arrayList.get(1)).c = ((sp2) arrayList.get(0)).c;
                    ((sp2) arrayList.get(0)).c = ru4Var.e.e[ru4Var.f];
                    ru4Var.k = false;
                }
                ((mb4) ru4Var.a).invalidateSelf();
                break;
            default:
                float fFloatValue2 = ((Float) obj2).floatValue();
                wm8.a.t((View) obj, fFloatValue2);
                break;
        }
    }
}
