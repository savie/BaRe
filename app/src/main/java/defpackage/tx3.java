package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tx3 extends xo2 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Drawable c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ tx3(int i, Drawable drawable) {
        super(drawable);
        this.b = i;
        this.c = drawable;
    }

    @Override // defpackage.ll6
    public final void b() {
        int i = this.b;
    }

    @Override // defpackage.ll6
    public final int c() {
        int i = this.b;
        Drawable drawable = this.c;
        switch (i) {
            case 0:
                rx3 rx3Var = ux3.a;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                Integer numValueOf = Integer.valueOf(intrinsicWidth);
                if (intrinsicWidth <= 0) {
                    numValueOf = null;
                }
                int iIntValue = numValueOf != null ? numValueOf.intValue() : 1;
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Integer numValueOf2 = intrinsicHeight > 0 ? Integer.valueOf(intrinsicHeight) : null;
                return iIntValue * (numValueOf2 != null ? numValueOf2.intValue() : 1) * 4;
            default:
                Bitmap bitmapC = ai8.c(drawable);
                if (bitmapC != null) {
                    return xh8.l(bitmapC);
                }
                return 1;
        }
    }

    @Override // defpackage.ll6
    public final Class d() {
        switch (this.b) {
        }
        return Drawable.class;
    }

    private final void e() {
    }

    private final void f() {
    }
}
