package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class r21 extends FrameLayout {
    public static final int[] f = {R.attr.colorBackground};
    public boolean a;
    public boolean b;
    public final Rect c;
    public final Rect d;
    public final oe e;

    public r21(Context context, AttributeSet attributeSet, int i) {
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i);
        Rect rect = new Rect();
        this.c = rect;
        this.d = new Rect();
        oe oeVar = new oe(this);
        this.e = oeVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, xd6.a, i, org.swiftapps.swiftbackup.R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(f);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateListValueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(org.swiftapps.swiftbackup.R.color.cardview_light_background) : getResources().getColor(org.swiftapps.swiftbackup.R.color.cardview_dark_background));
        }
        float dimension = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(5, 0.0f);
        this.a = typedArrayObtainStyledAttributes.getBoolean(7, false);
        this.b = typedArrayObtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        mq6 mq6Var = new mq6(colorStateListValueOf, dimension);
        oeVar.b = mq6Var;
        setBackgroundDrawable(mq6Var);
        setClipToOutline(true);
        setElevation(dimension2);
        lg7.D(oeVar, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((mq6) this.e.b).h;
    }

    public float getCardElevation() {
        return ((r21) this.e.c).getElevation();
    }

    public int getContentPaddingBottom() {
        return this.c.bottom;
    }

    public int getContentPaddingLeft() {
        return this.c.left;
    }

    public int getContentPaddingRight() {
        return this.c.right;
    }

    public int getContentPaddingTop() {
        return this.c.top;
    }

    public float getMaxCardElevation() {
        return ((mq6) this.e.b).e;
    }

    public boolean getPreventCornerOverlap() {
        return this.b;
    }

    public float getRadius() {
        return ((mq6) this.e.b).a;
    }

    public boolean getUseCompatPadding() {
        return this.a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i);
        mq6 mq6Var = (mq6) this.e.b;
        if (colorStateListValueOf == null) {
            mq6Var.getClass();
            colorStateListValueOf = ColorStateList.valueOf(0);
        }
        mq6Var.h = colorStateListValueOf;
        mq6Var.b.setColor(colorStateListValueOf.getColorForState(mq6Var.getState(), mq6Var.h.getDefaultColor()));
        mq6Var.invalidateSelf();
    }

    public void setCardElevation(float f2) {
        ((r21) this.e.c).setElevation(f2);
    }

    public void setMaxCardElevation(float f2) {
        lg7.D(this.e, f2);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.b) {
            this.b = z;
            oe oeVar = this.e;
            lg7.D(oeVar, ((mq6) oeVar.b).e);
        }
    }

    public void setRadius(float f2) {
        mq6 mq6Var = (mq6) this.e.b;
        if (f2 == mq6Var.a) {
            return;
        }
        mq6Var.a = f2;
        mq6Var.b(null);
        mq6Var.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.a != z) {
            this.a = z;
            oe oeVar = this.e;
            lg7.D(oeVar, ((mq6) oeVar.b).e);
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        mq6 mq6Var = (mq6) this.e.b;
        if (colorStateList == null) {
            mq6Var.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        mq6Var.h = colorStateList;
        mq6Var.b.setColor(colorStateList.getColorForState(mq6Var.getState(), mq6Var.h.getDefaultColor()));
        mq6Var.invalidateSelf();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
    }
}
