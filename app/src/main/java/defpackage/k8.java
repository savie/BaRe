package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.AppCompatImageView;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k8 extends AppCompatImageView implements p8 {
    public final /* synthetic */ o8 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k8(o8 o8Var, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.d = o8Var;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        s88.a(this, getContentDescription());
        setOnTouchListener(new j8(this, this));
    }

    @Override // defpackage.p8
    public final boolean b() {
        return false;
    }

    @Override // defpackage.p8
    public final boolean c() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.d.n();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int iMax = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
        }
        return frame;
    }
}
