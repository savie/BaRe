package defpackage;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import com.jcraft.jsch.Argon2;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.io.IOException;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rj8 extends ij8 {
    public static final PorterDuff.Mode q = PorterDuff.Mode.SRC_IN;
    public pj8 b;
    public PorterDuffColorFilter c;
    public ColorFilter d;
    public boolean e;
    public boolean f;
    public final float[] k;
    public final Matrix n;
    public final Rect p;

    public rj8() {
        this.f = true;
        this.k = new float[9];
        this.n = new Matrix();
        this.p = new Rect();
        pj8 pj8Var = new pj8();
        pj8Var.c = null;
        pj8Var.d = q;
        pj8Var.b = new oj8();
        this.b = pj8Var;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.a;
        if (drawable == null) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.p;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.d;
        if (colorFilter == null) {
            colorFilter = this.c;
        }
        Matrix matrix = this.n;
        canvas.getMatrix(matrix);
        float[] fArr = this.k;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iHeight = (int) (rect.height() * fAbs2);
        int iMin = Math.min(RSAKeyGenerator.MIN_KEY_SIZE_BITS, iWidth);
        int iMin2 = Math.min(RSAKeyGenerator.MIN_KEY_SIZE_BITS, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && getLayoutDirection() == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        pj8 pj8Var = this.b;
        Bitmap bitmap = pj8Var.f;
        if (bitmap == null || iMin != bitmap.getWidth() || iMin2 != pj8Var.f.getHeight()) {
            pj8Var.f = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            pj8Var.k = true;
        }
        boolean z = this.f;
        pj8 pj8Var2 = this.b;
        if (!z) {
            pj8Var2.f.eraseColor(0);
            Canvas canvas2 = new Canvas(pj8Var2.f);
            oj8 oj8Var = pj8Var2.b;
            oj8Var.a(oj8Var.g, oj8.p, canvas2, iMin, iMin2);
        } else if (pj8Var2.k || pj8Var2.g != pj8Var2.c || pj8Var2.h != pj8Var2.d || pj8Var2.j != pj8Var2.e || pj8Var2.i != pj8Var2.b.getRootAlpha()) {
            pj8 pj8Var3 = this.b;
            pj8Var3.f.eraseColor(0);
            Canvas canvas3 = new Canvas(pj8Var3.f);
            oj8 oj8Var2 = pj8Var3.b;
            oj8Var2.a(oj8Var2.g, oj8.p, canvas3, iMin, iMin2);
            pj8 pj8Var4 = this.b;
            pj8Var4.g = pj8Var4.c;
            pj8Var4.h = pj8Var4.d;
            pj8Var4.i = pj8Var4.b.getRootAlpha();
            pj8Var4.j = pj8Var4.e;
            pj8Var4.k = false;
        }
        pj8 pj8Var5 = this.b;
        if (pj8Var5.b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (pj8Var5.l == null) {
                Paint paint2 = new Paint();
                pj8Var5.l = paint2;
                paint2.setFilterBitmap(true);
            }
            pj8Var5.l.setAlpha(pj8Var5.b.getRootAlpha());
            pj8Var5.l.setColorFilter(colorFilter);
            paint = pj8Var5.l;
        }
        canvas.drawBitmap(pj8Var5.f, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getAlpha() : this.b.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return this.b.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getColorFilter() : this.d;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.a != null) {
            return new qj8(this.a.getConstantState());
        }
        this.b.a = getChangingConfigurations();
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.b.b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.b.b.h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int i;
        char c;
        int i2;
        Paint.Cap cap;
        Paint.Join join;
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        pj8 pj8Var = this.b;
        pj8Var.b = new oj8();
        TypedArray typedArrayN = x13.N(resources, theme, attributeSet, tu0.a);
        pj8 pj8Var2 = this.b;
        oj8 oj8Var = pj8Var2.b;
        int i3 = !x13.z(xmlPullParser, "tintMode") ? -1 : typedArrayN.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (i3 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i3 != 5) {
            if (i3 != 9) {
                switch (i3) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case Argon2.V10 /* 16 */:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        pj8Var2.d = mode;
        ColorStateList colorStateListA = null;
        int i4 = 1;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "tint") != null) {
            TypedValue typedValue = new TypedValue();
            typedArrayN.getValue(1, typedValue);
            int i5 = typedValue.type;
            if (i5 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i5 < 28 || i5 > 31) {
                Resources resources2 = typedArrayN.getResources();
                int resourceId = typedArrayN.getResourceId(1, 0);
                ThreadLocal threadLocal = wl1.a;
                try {
                    colorStateListA = wl1.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
                }
            } else {
                colorStateListA = ColorStateList.valueOf(typedValue.data);
            }
        }
        ColorStateList colorStateList = colorStateListA;
        if (colorStateList != null) {
            pj8Var2.c = colorStateList;
        }
        boolean z = pj8Var2.e;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "autoMirrored") != null) {
            z = typedArrayN.getBoolean(5, z);
        }
        pj8Var2.e = z;
        float f = oj8Var.j;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportWidth") != null) {
            f = typedArrayN.getFloat(7, f);
        }
        oj8Var.j = f;
        float f2 = oj8Var.k;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportHeight") != null) {
            f2 = typedArrayN.getFloat(8, f2);
        }
        oj8Var.k = f2;
        if (oj8Var.j <= 0.0f) {
            throw new XmlPullParserException(typedArrayN.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f2 <= 0.0f) {
            throw new XmlPullParserException(typedArrayN.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        oj8Var.h = typedArrayN.getDimension(3, oj8Var.h);
        float dimension = typedArrayN.getDimension(2, oj8Var.i);
        oj8Var.i = dimension;
        if (oj8Var.h <= 0.0f) {
            throw new XmlPullParserException(typedArrayN.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(typedArrayN.getPositionDescription() + "<vector> tag requires height > 0");
        }
        float alpha = oj8Var.getAlpha();
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "alpha") != null) {
            alpha = typedArrayN.getFloat(4, alpha);
        }
        oj8Var.setAlpha(alpha);
        String string = typedArrayN.getString(0);
        if (string != null) {
            oj8Var.m = string;
            oj8Var.o.put(string, oj8Var);
        }
        typedArrayN.recycle();
        pj8Var.a = getChangingConfigurations();
        pj8Var.k = true;
        pj8 pj8Var3 = this.b;
        oj8 oj8Var2 = pj8Var3.b;
        ArrayDeque arrayDeque = new ArrayDeque();
        lj8 lj8Var = oj8Var2.g;
        k50 k50Var = oj8Var2.o;
        arrayDeque.push(lj8Var);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        while (eventType != i4 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                lj8 lj8Var2 = (lj8) arrayDeque.peek();
                i = depth;
                if ("path".equals(name)) {
                    kj8 kj8Var = new kj8();
                    kj8Var.e = 0.0f;
                    kj8Var.g = 1.0f;
                    kj8Var.h = 1.0f;
                    kj8Var.i = 0.0f;
                    kj8Var.j = 1.0f;
                    kj8Var.k = 0.0f;
                    Paint.Cap cap2 = Paint.Cap.BUTT;
                    kj8Var.l = cap2;
                    Paint.Join join2 = Paint.Join.MITER;
                    kj8Var.m = join2;
                    kj8Var.n = 4.0f;
                    TypedArray typedArrayN2 = x13.N(resources, theme, attributeSet, tu0.c);
                    if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                        String string2 = typedArrayN2.getString(0);
                        if (string2 != null) {
                            kj8Var.b = string2;
                        }
                        String string3 = typedArrayN2.getString(2);
                        if (string3 != null) {
                            kj8Var.a = ho6.h(string3);
                        }
                        kj8Var.f = x13.v(typedArrayN2, xmlPullParser, theme, "fillColor", 1);
                        float f3 = kj8Var.h;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillAlpha") != null) {
                            f3 = typedArrayN2.getFloat(12, f3);
                        }
                        kj8Var.h = f3;
                        int i6 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineCap") != null ? typedArrayN2.getInt(8, -1) : -1;
                        Paint.Cap cap3 = kj8Var.l;
                        if (i6 == 0) {
                            cap = cap2;
                        } else if (i6 != 1) {
                            cap = i6 != 2 ? cap3 : Paint.Cap.SQUARE;
                        } else {
                            cap = Paint.Cap.ROUND;
                        }
                        kj8Var.l = cap;
                        int i7 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineJoin") != null ? typedArrayN2.getInt(9, -1) : -1;
                        Paint.Join join3 = kj8Var.m;
                        if (i7 == 0) {
                            join = join2;
                        } else if (i7 != 1) {
                            join = i7 != 2 ? join3 : Paint.Join.BEVEL;
                        } else {
                            join = Paint.Join.ROUND;
                        }
                        kj8Var.m = join;
                        float f4 = kj8Var.n;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeMiterLimit") != null) {
                            f4 = typedArrayN2.getFloat(10, f4);
                        }
                        kj8Var.n = f4;
                        kj8Var.d = x13.v(typedArrayN2, xmlPullParser, theme, "strokeColor", 3);
                        float f5 = kj8Var.g;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeAlpha") != null) {
                            f5 = typedArrayN2.getFloat(11, f5);
                        }
                        kj8Var.g = f5;
                        float f6 = kj8Var.e;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeWidth") != null) {
                            f6 = typedArrayN2.getFloat(4, f6);
                        }
                        kj8Var.e = f6;
                        float f7 = kj8Var.j;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathEnd") != null) {
                            f7 = typedArrayN2.getFloat(6, f7);
                        }
                        kj8Var.j = f7;
                        float f8 = kj8Var.k;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathOffset") != null) {
                            f8 = typedArrayN2.getFloat(7, f8);
                        }
                        kj8Var.k = f8;
                        float f9 = kj8Var.i;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathStart") != null) {
                            f9 = typedArrayN2.getFloat(5, f9);
                        }
                        kj8Var.i = f9;
                        int i8 = kj8Var.c;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillType") != null) {
                            i8 = typedArrayN2.getInt(13, i8);
                        }
                        kj8Var.c = i8;
                    }
                    typedArrayN2.recycle();
                    lj8Var2.b.add(kj8Var);
                    if (kj8Var.getPathName() != null) {
                        k50Var.put(kj8Var.getPathName(), kj8Var);
                    }
                    pj8Var3.a = pj8Var3.a;
                    z2 = false;
                    c = '\b';
                } else {
                    c = '\b';
                    if ("clip-path".equals(name)) {
                        jj8 jj8Var = new jj8();
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                            TypedArray typedArrayN3 = x13.N(resources, theme, attributeSet, tu0.d);
                            String string4 = typedArrayN3.getString(0);
                            if (string4 != null) {
                                jj8Var.b = string4;
                            }
                            String string5 = typedArrayN3.getString(1);
                            if (string5 != null) {
                                jj8Var.a = ho6.h(string5);
                            }
                            jj8Var.c = !x13.z(xmlPullParser, "fillType") ? 0 : typedArrayN3.getInt(2, 0);
                            typedArrayN3.recycle();
                        }
                        lj8Var2.b.add(jj8Var);
                        if (jj8Var.getPathName() != null) {
                            k50Var.put(jj8Var.getPathName(), jj8Var);
                        }
                        pj8Var3.a = pj8Var3.a;
                    } else if ("group".equals(name)) {
                        lj8 lj8Var3 = new lj8();
                        TypedArray typedArrayN4 = x13.N(resources, theme, attributeSet, tu0.b);
                        float f10 = lj8Var3.c;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "rotation") != null) {
                            f10 = typedArrayN4.getFloat(5, f10);
                        }
                        lj8Var3.c = f10;
                        lj8Var3.d = typedArrayN4.getFloat(1, lj8Var3.d);
                        lj8Var3.e = typedArrayN4.getFloat(2, lj8Var3.e);
                        float f11 = lj8Var3.f;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleX") != null) {
                            f11 = typedArrayN4.getFloat(3, f11);
                        }
                        lj8Var3.f = f11;
                        float f12 = lj8Var3.g;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleY") != null) {
                            f12 = typedArrayN4.getFloat(4, f12);
                        }
                        lj8Var3.g = f12;
                        float f13 = lj8Var3.h;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateX") != null) {
                            f13 = typedArrayN4.getFloat(6, f13);
                        }
                        lj8Var3.h = f13;
                        float f14 = lj8Var3.i;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateY") != null) {
                            f14 = typedArrayN4.getFloat(7, f14);
                        }
                        lj8Var3.i = f14;
                        String string6 = typedArrayN4.getString(0);
                        if (string6 != null) {
                            lj8Var3.k = string6;
                        }
                        lj8Var3.c();
                        typedArrayN4.recycle();
                        lj8Var2.b.add(lj8Var3);
                        arrayDeque.push(lj8Var3);
                        if (lj8Var3.getGroupName() != null) {
                            k50Var.put(lj8Var3.getGroupName(), lj8Var3);
                        }
                        pj8Var3.a = pj8Var3.a;
                    }
                }
                i2 = 1;
            } else {
                i = depth;
                c = '\b';
                i2 = 1;
                if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                    arrayDeque.pop();
                }
            }
            eventType = xmlPullParser.next();
            i4 = i2;
            depth = i;
        }
        if (z2) {
            throw new XmlPullParserException("no path defined");
        }
        this.c = a(pj8Var.c, pj8Var.d);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.a;
        return drawable != null ? drawable.isAutoMirrored() : this.b.e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        pj8 pj8Var = this.b;
        if (pj8Var == null) {
            return false;
        }
        oj8 oj8Var = pj8Var.b;
        if (oj8Var.n == null) {
            oj8Var.n = Boolean.valueOf(oj8Var.g.a());
        }
        if (oj8Var.n.booleanValue()) {
            return true;
        }
        ColorStateList colorStateList = this.b.c;
        return colorStateList != null && colorStateList.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.e && super.mutate() == this) {
            pj8 pj8Var = this.b;
            pj8 pj8Var2 = new pj8();
            pj8Var2.c = null;
            pj8Var2.d = q;
            if (pj8Var != null) {
                pj8Var2.a = pj8Var.a;
                oj8 oj8Var = new oj8(pj8Var.b);
                pj8Var2.b = oj8Var;
                if (pj8Var.b.e != null) {
                    oj8Var.e = new Paint(pj8Var.b.e);
                }
                if (pj8Var.b.d != null) {
                    pj8Var2.b.d = new Paint(pj8Var.b.d);
                }
                pj8Var2.c = pj8Var.c;
                pj8Var2.d = pj8Var.d;
                pj8Var2.e = pj8Var.e;
            }
            this.b = pj8Var2;
            this.e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        pj8 pj8Var = this.b;
        ColorStateList colorStateList = pj8Var.c;
        if (colorStateList == null || (mode = pj8Var.d) == null) {
            z = false;
        } else {
            this.c = a(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        oj8 oj8Var = pj8Var.b;
        if (oj8Var.n == null) {
            oj8Var.n = Boolean.valueOf(oj8Var.g.a());
        }
        if (oj8Var.n.booleanValue()) {
            boolean zB = pj8Var.b.g.b(iArr);
            pj8Var.k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.b.b.getRootAlpha() != i) {
            this.b.b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.b.e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.d = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setTint(i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        pj8 pj8Var = this.b;
        if (pj8Var.c != colorStateList) {
            pj8Var.c = colorStateList;
            this.c = a(colorStateList, pj8Var.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        pj8 pj8Var = this.b;
        if (pj8Var.d != mode) {
            pj8Var.d = mode;
            this.c = a(pj8Var.c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.a;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    public rj8(pj8 pj8Var) {
        this.f = true;
        this.k = new float[9];
        this.n = new Matrix();
        this.p = new Rect();
        this.b = pj8Var;
        this.c = a(pj8Var.c, pj8Var.d);
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }
}
