package defpackage;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fa implements lx1 {
    public final lx1 a;
    public final float b;

    public fa(float f, lx1 lx1Var) {
        while (lx1Var instanceof fa) {
            lx1Var = ((fa) lx1Var).a;
            f += ((fa) lx1Var).b;
        }
        this.a = lx1Var;
        this.b = f;
    }

    @Override // defpackage.lx1
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.a.a(rectF) + this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fa)) {
            return false;
        }
        fa faVar = (fa) obj;
        return this.a.equals(faVar.a) && this.b == faVar.b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Float.valueOf(this.b)});
    }
}
