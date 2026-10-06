package defpackage;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q72 extends c95 {
    public static final /* synthetic */ int a0 = 0;
    public p72 Z;

    public final void F(float f, float f2, float f3, float f4) {
        RectF rectF = this.Z.s;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }

    @Override // defpackage.c95
    public final void h(Canvas canvas) {
        if (this.Z.s.isEmpty()) {
            super.h(canvas);
            return;
        }
        canvas.save();
        canvas.clipOutRect(this.Z.s);
        super.h(canvas);
        canvas.restore();
    }

    @Override // defpackage.c95, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.Z = new p72(this.Z);
        return this;
    }
}
