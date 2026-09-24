package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sg5 {
    public static final PointF a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    public static int c(float f, float f2) {
        int i = (int) f;
        int i2 = (int) f2;
        int i3 = i / i2;
        int i4 = i % i2;
        if (!((i ^ i2) >= 0) && i4 != 0) {
            i3--;
        }
        return i - (i2 * i3);
    }

    public static float d(float f, float f2, float f3) {
        return xs1.e(f2, f, f3, f);
    }

    public static void e(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2, ro4 ro4Var) {
        if (po4Var.a(i, ro4Var.getName())) {
            String name = ro4Var.getName();
            po4 po4Var3 = new po4(po4Var2);
            po4Var3.a.add(name);
            po4 po4Var4 = new po4(po4Var3);
            po4Var4.b = ro4Var;
            arrayList.add(po4Var4);
        }
    }
}
