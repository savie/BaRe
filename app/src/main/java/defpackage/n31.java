package defpackage;

import android.graphics.PointF;
import android.util.Property;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n31 extends Property {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n31(Class cls, String str, int i) {
        super(cls, str);
        this.a = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.a) {
            case 0:
                return null;
            case 1:
                return Float.valueOf(((q71) obj).p);
            default:
                return Float.valueOf(((gp2) obj).b());
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                View view = (View) obj;
                PointF pointF = (PointF) obj2;
                wm8.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
                break;
            case 1:
                ((q71) obj).p = ((Float) obj2).floatValue();
                break;
            default:
                gp2 gp2Var = (gp2) obj;
                float fFloatValue = ((Float) obj2).floatValue();
                if (gp2Var.p != fFloatValue) {
                    gp2Var.p = fFloatValue;
                    gp2Var.invalidateSelf();
                }
                break;
        }
    }
}
