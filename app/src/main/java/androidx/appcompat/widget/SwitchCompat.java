package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import defpackage.dl8;
import defpackage.fp2;
import defpackage.fu7;
import defpackage.ge6;
import defpackage.i28;
import defpackage.iz1;
import defpackage.ji8;
import defpackage.k55;
import defpackage.ku2;
import defpackage.mo;
import defpackage.o31;
import defpackage.pk8;
import defpackage.pp;
import defpackage.u94;
import defpackage.xm8;
import defpackage.za;
import defpackage.zh8;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    public static final o31 m0 = new o31(Float.class, "thumbPos", 1);
    public static final int[] n0 = {R.attr.state_checked};
    public CharSequence G;
    public CharSequence H;
    public CharSequence I;
    public CharSequence J;
    public boolean K;
    public int L;
    public final int M;
    public float N;
    public float O;
    public final VelocityTracker P;
    public final int Q;
    public float R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public Drawable a;
    public int a0;
    public ColorStateList b;
    public int b0;
    public PorterDuff.Mode c;
    public boolean c0;
    public boolean d;
    public final TextPaint d0;
    public boolean e;
    public final ColorStateList e0;
    public Drawable f;
    public StaticLayout f0;
    public StaticLayout g0;
    public final za h0;
    public ObjectAnimator i0;
    public mo j0;
    public ColorStateList k;
    public fu7 k0;
    public final Rect l0;
    public PorterDuff.Mode n;
    public boolean p;
    public boolean q;
    public int r;
    public int t;
    public int x;
    public boolean y;

    public SwitchCompat(Context context, AttributeSet attributeSet, int i) {
        Typeface typeface;
        int resourceId;
        super(context, attributeSet, i);
        this.b = null;
        this.c = null;
        this.d = false;
        this.e = false;
        this.k = null;
        this.n = null;
        this.p = false;
        this.q = false;
        this.P = VelocityTracker.obtain();
        this.c0 = true;
        this.l0 = new Rect();
        i28.a(getContext(), this);
        TextPaint textPaint = new TextPaint(1);
        this.d0 = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = ge6.v;
        u94 u94VarE = u94.e(i, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) u94VarE.b;
        dl8.m(this, context, iArr, attributeSet, typedArray, i);
        Drawable drawableB = u94VarE.b(2);
        this.a = drawableB;
        if (drawableB != null) {
            drawableB.setCallback(this);
        }
        Drawable drawableB2 = u94VarE.b(11);
        this.f = drawableB2;
        if (drawableB2 != null) {
            drawableB2.setCallback(this);
        }
        setTextOnInternal(typedArray.getText(0));
        setTextOffInternal(typedArray.getText(1));
        this.K = typedArray.getBoolean(3, true);
        this.r = typedArray.getDimensionPixelSize(8, 0);
        this.t = typedArray.getDimensionPixelSize(5, 0);
        this.x = typedArray.getDimensionPixelSize(6, 0);
        this.y = typedArray.getBoolean(4, false);
        ColorStateList colorStateListA = u94VarE.a(9);
        if (colorStateListA != null) {
            this.b = colorStateListA;
            this.d = true;
        }
        PorterDuff.Mode modeC = fp2.c(typedArray.getInt(10, -1), null);
        if (this.c != modeC) {
            this.c = modeC;
            this.e = true;
        }
        if (this.d || this.e) {
            a();
        }
        ColorStateList colorStateListA2 = u94VarE.a(12);
        if (colorStateListA2 != null) {
            this.k = colorStateListA2;
            this.p = true;
        }
        PorterDuff.Mode modeC2 = fp2.c(typedArray.getInt(13, -1), null);
        if (this.n != modeC2) {
            this.n = modeC2;
            this.q = true;
        }
        if (this.p || this.q) {
            b();
        }
        int resourceId2 = typedArray.getResourceId(7, 0);
        if (resourceId2 != 0) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId2, ge6.w);
            ColorStateList colorStateList = (!typedArrayObtainStyledAttributes.hasValue(3) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(3, 0)) == 0 || (colorStateList = zh8.q(context, resourceId)) == null) ? typedArrayObtainStyledAttributes.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.e0 = colorStateList;
            } else {
                this.e0 = getTextColors();
            }
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != textPaint.getTextSize()) {
                    textPaint.setTextSize(f);
                    requestLayout();
                }
            }
            int i2 = typedArrayObtainStyledAttributes.getInt(1, -1);
            int i3 = typedArrayObtainStyledAttributes.getInt(2, -1);
            if (i2 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i2 != 2) {
                typeface = i2 != 3 ? null : Typeface.MONOSPACE;
            } else {
                typeface = Typeface.SERIF;
            }
            if (i3 > 0) {
                Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i3) : Typeface.create(typeface, i3);
                setSwitchTypeface(typefaceDefaultFromStyle);
                int i4 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i3;
                textPaint.setFakeBoldText((i4 & 1) != 0);
                textPaint.setTextSkewX((2 & i4) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
                Context context2 = getContext();
                za zaVar = new za();
                zaVar.a = context2.getResources().getConfiguration().locale;
                this.h0 = zaVar;
            } else {
                this.h0 = null;
            }
            setTextOnInternal(this.G);
            setTextOffInternal(this.I);
            typedArrayObtainStyledAttributes.recycle();
        }
        new pp(this).f(attributeSet, i);
        u94VarE.f();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.M = viewConfiguration.getScaledTouchSlop();
        this.Q = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().b(attributeSet, i);
        refreshDrawableState();
        setChecked(isChecked());
    }

    private mo getEmojiTextViewHelper() {
        if (this.j0 == null) {
            this.j0 = new mo(this);
        }
        return this.j0;
    }

    private boolean getTargetCheckedState() {
        return this.R > 0.5f;
    }

    private int getThumbOffset() {
        boolean z = xm8.a;
        int layoutDirection = getLayoutDirection();
        float f = this.R;
        if (layoutDirection == 1) {
            f = 1.0f - f;
        }
        return (int) ((f * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.l0;
        drawable.getPadding(rect);
        Drawable drawable2 = this.a;
        Rect rectB = drawable2 != null ? fp2.b(drawable2) : fp2.c;
        return ((((this.S - this.U) - rect.left) - rect.right) - rectB.left) - rectB.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.I = charSequence;
        TransformationMethod transformationMethodP = ((ji8) getEmojiTextViewHelper().b.b).P(this.h0);
        if (transformationMethodP != null) {
            charSequence = transformationMethodP.getTransformation(charSequence, this);
        }
        this.J = charSequence;
        this.g0 = null;
        if (this.K) {
            d();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.G = charSequence;
        TransformationMethod transformationMethodP = ((ji8) getEmojiTextViewHelper().b.b).P(this.h0);
        if (transformationMethodP != null) {
            charSequence = transformationMethodP.getTransformation(charSequence, this);
        }
        this.H = charSequence;
        this.f0 = null;
        if (this.K) {
            d();
        }
    }

    public final void a() {
        Drawable drawable = this.a;
        if (drawable != null) {
            if (this.d || this.e) {
                Drawable drawableMutate = drawable.mutate();
                this.a = drawableMutate;
                if (this.d) {
                    drawableMutate.setTintList(this.b);
                }
                if (this.e) {
                    this.a.setTintMode(this.c);
                }
                if (this.a.isStateful()) {
                    this.a.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.p || this.q) {
                Drawable drawableMutate = drawable.mutate();
                this.f = drawableMutate;
                if (this.p) {
                    drawableMutate.setTintList(this.k);
                }
                if (this.q) {
                    this.f.setTintMode(this.n);
                }
                if (this.f.isStateful()) {
                    this.f.setState(getDrawableState());
                }
            }
        }
    }

    public final void c() {
        setTextOnInternal(this.G);
        setTextOffInternal(this.I);
        requestLayout();
    }

    public final void d() {
        if (this.k0 == null && ((ji8) this.j0.b.b).y() && ku2.k != null) {
            ku2 ku2VarA = ku2.a();
            int iB = ku2VarA.b();
            if (iB == 3 || iB == 0) {
                fu7 fu7Var = new fu7(this);
                this.k0 = fu7Var;
                ku2VarA.f(fu7Var);
            }
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i;
        int i2;
        int i3 = this.V;
        int i4 = this.W;
        int i5 = this.a0;
        int i6 = this.b0;
        int thumbOffset = getThumbOffset() + i3;
        Drawable drawable = this.a;
        Rect rectB = drawable != null ? fp2.b(drawable) : fp2.c;
        Drawable drawable2 = this.f;
        Rect rect = this.l0;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            thumbOffset += i7;
            if (rectB != null) {
                int i8 = rectB.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = rectB.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = rectB.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = rectB.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                }
                this.f.setBounds(i3, i, i5, i2);
            } else {
                i = i4;
            }
            i2 = i6;
            this.f.setBounds(i3, i, i5, i2);
        }
        Drawable drawable3 = this.a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = thumbOffset - rect.left;
            int i16 = thumbOffset + this.U + rect.right;
            this.a.setBounds(i15, i4, i16, i6);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setHotspot(f, f2);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.a;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        boolean z = xm8.a;
        if (getLayoutDirection() != 1) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.S;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.x : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        boolean z = xm8.a;
        if (getLayoutDirection() == 1) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.S;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.x : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return k55.H(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.K;
    }

    public boolean getSplitTrack() {
        return this.y;
    }

    public int getSwitchMinWidth() {
        return this.t;
    }

    public int getSwitchPadding() {
        return this.x;
    }

    public CharSequence getTextOff() {
        return this.I;
    }

    public CharSequence getTextOn() {
        return this.G;
    }

    public Drawable getThumbDrawable() {
        return this.a;
    }

    public final float getThumbPosition() {
        return this.R;
    }

    public int getThumbTextPadding() {
        return this.r;
    }

    public ColorStateList getThumbTintList() {
        return this.b;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.c;
    }

    public Drawable getTrackDrawable() {
        return this.f;
    }

    public ColorStateList getTrackTintList() {
        return this.k;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.n;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.i0;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.i0.end();
        this.i0 = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, n0);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.f;
        Rect rect = this.l0;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.W;
        int i2 = this.b0;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        Drawable drawable2 = this.a;
        if (drawable != null) {
            if (!this.y || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectB = fp2.b(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectB.left;
                rect.right -= rectB.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.f0 : this.g0;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            TextPaint textPaint = this.d0;
            ColorStateList colorStateList = this.e0;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i3 + i4) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.G : this.I;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iMax;
        int width;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z, i, i2, i3, i4);
        int iMax2 = 0;
        if (this.a != null) {
            Drawable drawable = this.f;
            Rect rect = this.l0;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectB = fp2.b(this.a);
            iMax = Math.max(0, rectB.left - rect.left);
            iMax2 = Math.max(0, rectB.right - rect.right);
        } else {
            iMax = 0;
        }
        boolean z2 = xm8.a;
        if (getLayoutDirection() == 1) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.S + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.S) + iMax + iMax2;
        }
        int gravity = getGravity() & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i5 = this.T;
            int i6 = height2 - (i5 / 2);
            height = i5 + i6;
            paddingTop = i6;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.T + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.T;
        }
        this.V = paddingLeft;
        this.W = paddingTop;
        this.b0 = height;
        this.a0 = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int intrinsicWidth;
        int intrinsicHeight;
        int iMax;
        int intrinsicHeight2 = 0;
        if (this.K) {
            StaticLayout staticLayout = this.f0;
            TextPaint textPaint = this.d0;
            if (staticLayout == null) {
                CharSequence charSequence = this.H;
                this.f0 = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.g0 == null) {
                CharSequence charSequence2 = this.J;
                this.g0 = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.a;
        Rect rect = this.l0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.a.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.a.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        if (this.K) {
            iMax = (this.r * 2) + Math.max(this.f0.getWidth(), this.g0.getWidth());
        } else {
            iMax = 0;
        }
        this.U = Math.max(iMax, intrinsicWidth);
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax2 = rect.left;
        int iMax3 = rect.right;
        Drawable drawable3 = this.a;
        if (drawable3 != null) {
            Rect rectB = fp2.b(drawable3);
            iMax2 = Math.max(iMax2, rectB.left);
            iMax3 = Math.max(iMax3, rectB.right);
        }
        boolean z = this.c0;
        int iMax4 = this.t;
        if (z) {
            iMax4 = Math.max(iMax4, (this.U * 2) + iMax2 + iMax3);
        }
        int iMax5 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.S = iMax4;
        this.T = iMax5;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < iMax5) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax5);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.G : this.I;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x008e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0093  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:52:0x00be  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00db  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f2  */
    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean zIsChecked;
        boolean targetCheckedState;
        float xVelocity;
        float f;
        VelocityTracker velocityTracker = this.P;
        velocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int i = this.M;
        if (actionMasked != 0) {
            float f2 = 0.0f;
            if (actionMasked == 1) {
                if (this.L == 2) {
                    this.L = 0;
                    if (motionEvent.getAction() == 1 || !isEnabled()) {
                        z = false;
                    } else {
                        z = true;
                    }
                    zIsChecked = isChecked();
                    if (z) {
                        velocityTracker.computeCurrentVelocity(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT);
                        xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) > this.Q) {
                            boolean z2 = xm8.a;
                            targetCheckedState = getLayoutDirection() == 1 ? xVelocity > 0.0f : xVelocity < 0.0f;
                        } else {
                            targetCheckedState = getTargetCheckedState();
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                    super.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.L = 0;
                velocityTracker.clear();
            } else if (actionMasked == 2) {
                int i2 = this.L;
                if (i2 == 1) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    float f3 = i;
                    if (Math.abs(x - this.N) > f3 || Math.abs(y - this.O) > f3) {
                        this.L = 2;
                        getParent().requestDisallowInterceptTouchEvent(true);
                        this.N = x;
                        this.O = y;
                        return true;
                    }
                } else if (i2 == 2) {
                    float x2 = motionEvent.getX();
                    int thumbScrollRange = getThumbScrollRange();
                    float f4 = x2 - this.N;
                    if (thumbScrollRange != 0) {
                        f = f4 / thumbScrollRange;
                    } else {
                        f = f4 > 0.0f ? 1.0f : -1.0f;
                    }
                    boolean z3 = xm8.a;
                    if (getLayoutDirection() == 1) {
                        f = -f;
                    }
                    float f5 = this.R;
                    float f6 = f + f5;
                    if (f6 >= 0.0f) {
                        f2 = f6 > 1.0f ? 1.0f : f6;
                    }
                    if (f2 != f5) {
                        this.N = x2;
                        setThumbPosition(f2);
                    }
                    return true;
                }
            } else if (actionMasked == 3) {
                if (this.L == 2) {
                    this.L = 0;
                    if (motionEvent.getAction() == 1) {
                        z = false;
                    } else {
                        z = false;
                    }
                    zIsChecked = isChecked();
                    if (z) {
                        velocityTracker.computeCurrentVelocity(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT);
                        xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) > this.Q) {
                            boolean z4 = xm8.a;
                            if (getLayoutDirection() == 1) {
                            }
                        } else {
                            targetCheckedState = getTargetCheckedState();
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent);
                    motionEventObtain2.setAction(3);
                    super.onTouchEvent(motionEventObtain2);
                    motionEventObtain2.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.L = 0;
                velocityTracker.clear();
            }
        } else {
            float x3 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (isEnabled() && this.a != null) {
                int thumbOffset = getThumbOffset();
                Drawable drawable = this.a;
                Rect rect = this.l0;
                drawable.getPadding(rect);
                int i3 = this.W - i;
                int i4 = (this.V + thumbOffset) - i;
                int i5 = this.U + i4 + rect.left + rect.right + i;
                int i6 = this.b0 + i;
                if (x3 > i4 && x3 < i5 && y2 > i3 && y2 < i6) {
                    this.L = 1;
                    this.N = x3;
                    this.O = y2;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                Object string = this.G;
                if (string == null) {
                    string = getResources().getString(org.swiftapps.swiftbackup.R.string.abc_capital_on);
                }
                WeakHashMap weakHashMap = dl8.a;
                new pk8(org.swiftapps.swiftbackup.R.id.tag_state_description, CharSequence.class, 64, 30).g(this, string);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            Object string2 = this.I;
            if (string2 == null) {
                string2 = getResources().getString(org.swiftapps.swiftbackup.R.string.abc_capital_off);
            }
            WeakHashMap weakHashMap2 = dl8.a;
            new pk8(org.swiftapps.swiftbackup.R.id.tag_state_description, CharSequence.class, 64, 30).g(this, string2);
        }
        if (getWindowToken() == null || !isLaidOut()) {
            ObjectAnimator objectAnimator = this.i0;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            setThumbPosition(zIsChecked ? 1.0f : 0.0f);
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, m0, zIsChecked ? 1.0f : 0.0f);
        this.i0 = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(250L);
        this.i0.setAutoCancel(true);
        this.i0.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(k55.K(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
        setTextOnInternal(this.G);
        setTextOffInternal(this.I);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z) {
        this.c0 = z;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z) {
        if (this.K != z) {
            this.K = z;
            requestLayout();
            if (z) {
                d();
            }
        }
    }

    public void setSplitTrack(boolean z) {
        this.y = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.t = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.x = i;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.d0;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object string = this.I;
        if (string == null) {
            string = getResources().getString(org.swiftapps.swiftbackup.R.string.abc_capital_off);
        }
        WeakHashMap weakHashMap = dl8.a;
        new pk8(org.swiftapps.swiftbackup.R.id.tag_state_description, CharSequence.class, 64, 30).g(this, string);
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (!isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object string = this.G;
        if (string == null) {
            string = getResources().getString(org.swiftapps.swiftbackup.R.string.abc_capital_on);
        }
        WeakHashMap weakHashMap = dl8.a;
        new pk8(org.swiftapps.swiftbackup.R.id.tag_state_description, CharSequence.class, 64, 30).g(this, string);
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.R = f;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(iz1.m(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.r = i;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.b = colorStateList;
        this.d = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.c = mode;
        this.e = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(iz1.m(getContext(), i));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.k = colorStateList;
        this.p = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.n = mode;
        this.q = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.a || drawable == this.f;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.switchStyle);
    }

    public SwitchCompat(Context context) {
        this(context, null);
    }
}
