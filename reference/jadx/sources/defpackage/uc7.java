package defpackage;

import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.imageview.ShapeableImageView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uc7 extends ViewOutlineProvider {
    public final Rect a = new Rect();
    public final /* synthetic */ ShapeableImageView b;

    public uc7(ShapeableImageView shapeableImageView) {
        this.b = shapeableImageView;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        ShapeableImageView shapeableImageView = this.b;
        if (shapeableImageView.t == null) {
            return;
        }
        if (shapeableImageView.r == null) {
            shapeableImageView.r = new c95(shapeableImageView.t);
        }
        RectF rectF = shapeableImageView.e;
        Rect rect = this.a;
        rectF.round(rect);
        shapeableImageView.r.setBounds(rect);
        shapeableImageView.r.getOutline(outline);
    }
}
