package defpackage;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.Choreographer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dd {
    public static final ThreadLocal i = new ThreadLocal();
    public final cd e;
    public ad h;
    public final dg7 a = new dg7(0);
    public final ArrayList b = new ArrayList();
    public final z28 c = new z28(this, 3);
    public final yc d = new yc(this, 0);
    public boolean f = false;
    public float g = 1.0f;

    public dd(cd cdVar) {
        this.e = cdVar;
    }

    /* JADX WARN: Type inference failed for: r1v8, types: [android.animation.ValueAnimator$DurationScaleChangeListener, zc] */
    public final void a(gk7 gk7Var) {
        ArrayList arrayList = this.b;
        if (arrayList.size() == 0) {
            ((Choreographer) this.e.b).postFrameCallback(new bd(this.d));
            if (Build.VERSION.SDK_INT >= 33) {
                this.g = ValueAnimator.getDurationScale();
                if (this.h == null) {
                    this.h = new ad(this);
                }
                final ad adVar = this.h;
                if (adVar.a == null) {
                    ?? r1 = new ValueAnimator.DurationScaleChangeListener() { // from class: zc
                        @Override // android.animation.ValueAnimator.DurationScaleChangeListener
                        public final void onChanged(float f) {
                            adVar.b.g = f;
                        }
                    };
                    adVar.a = r1;
                    ValueAnimator.registerDurationScaleChangeListener(r1);
                }
            }
        }
        if (arrayList.contains(gk7Var)) {
            return;
        }
        arrayList.add(gk7Var);
    }
}
