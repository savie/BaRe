package com.airbnb.lottie;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import defpackage.a25;
import defpackage.az5;
import defpackage.b25;
import defpackage.b35;
import defpackage.c35;
import defpackage.c6;
import defpackage.cd;
import defpackage.d25;
import defpackage.di8;
import defpackage.dl8;
import defpackage.e25;
import defpackage.e35;
import defpackage.eq3;
import defpackage.f35;
import defpackage.fg7;
import defpackage.hp1;
import defpackage.i25;
import defpackage.i35;
import defpackage.j25;
import defpackage.j35;
import defpackage.k25;
import defpackage.kj6;
import defpackage.l25;
import defpackage.mi8;
import defpackage.n25;
import defpackage.po4;
import defpackage.qd6;
import defpackage.sg5;
import defpackage.t94;
import defpackage.u94;
import defpackage.w08;
import defpackage.wp3;
import defpackage.x15;
import defpackage.x25;
import defpackage.xp3;
import defpackage.xs1;
import defpackage.y15;
import defpackage.z15;
import defpackage.z25;
import defpackage.zh8;
import defpackage.zv1;
import java.io.ByteArrayInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {
    public static final x15 O = new x15();
    public boolean G;
    public boolean H;
    public boolean I;
    public kj6 J;
    public final HashSet K;
    public int L;
    public i35 M;
    public e25 N;
    public final y15 d;
    public final z15 e;
    public e35 f;
    public int k;
    public final c35 n;
    public boolean p;
    public String q;
    public int r;
    public boolean t;
    public boolean x;
    public boolean y;

    public LottieAnimationView(Context context) {
        super(context);
        this.d = new y15(this);
        this.e = new z15(this);
        this.k = 0;
        this.n = new c35();
        this.t = false;
        this.x = false;
        this.y = false;
        this.G = false;
        this.H = false;
        this.I = true;
        this.J = kj6.a;
        this.K = new HashSet();
        this.L = 0;
        e(null, R.attr.lottieAnimationViewStyle);
    }

    private void setCompositionTask(i35 i35Var) {
        this.N = null;
        this.n.d();
        a();
        i35Var.b(this.d);
        i35Var.a(this.e);
        this.M = i35Var;
    }

    public final void a() {
        i35 i35Var = this.M;
        if (i35Var != null) {
            y15 y15Var = this.d;
            synchronized (i35Var) {
                i35Var.a.remove(y15Var);
            }
            i35 i35Var2 = this.M;
            z15 z15Var = this.e;
            synchronized (i35Var2) {
                i35Var2.b.remove(z15Var);
            }
        }
    }

    @Override // android.view.View
    public final void buildDrawingCache(boolean z) {
        this.L++;
        super.buildDrawingCache(z);
        if (this.L == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(z) == null) {
            setRenderMode(kj6.b);
        }
        this.L--;
        zv1.d();
    }

    public final void d() {
        e25 e25Var;
        int iOrdinal = this.J.ordinal();
        int i = 2;
        if (iOrdinal == 0 ? !(((e25Var = this.N) == null || !e25Var.n || Build.VERSION.SDK_INT >= 28) && (e25Var == null || e25Var.o <= 4)) : iOrdinal != 1) {
            i = 1;
        }
        if (i != getLayerType()) {
            setLayerType(i, null);
        }
    }

    public final void e(AttributeSet attributeSet, int i) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, qd6.a, i, 0);
        this.I = typedArrayObtainStyledAttributes.getBoolean(1, true);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(10);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(5);
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(16);
        if (zHasValue && zHasValue2) {
            c6.f("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
            return;
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(10, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(5);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(16)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(4, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(0, false)) {
            this.y = true;
            this.H = true;
        }
        boolean z = typedArrayObtainStyledAttributes.getBoolean(8, false);
        c35 c35Var = this.n;
        if (z) {
            c35Var.c.setRepeatCount(-1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(13)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(13, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(12)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(12, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(15)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(15, 1.0f));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(7));
        setProgress(typedArrayObtainStyledAttributes.getFloat(9, 0.0f));
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        if (c35Var.t != z2) {
            c35Var.t = z2;
            if (c35Var.b != null) {
                c35Var.c();
            }
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            c35Var.a(new po4("**"), f35.F, new cd(new fg7(zh8.q(getContext(), typedArrayObtainStyledAttributes.getResourceId(2, -1)).getDefaultColor(), PorterDuff.Mode.SRC_ATOP)));
        }
        if (typedArrayObtainStyledAttributes.hasValue(14)) {
            c35Var.d = typedArrayObtainStyledAttributes.getFloat(14, 1.0f);
        }
        if (typedArrayObtainStyledAttributes.hasValue(11)) {
            int i2 = typedArrayObtainStyledAttributes.getInt(11, 0);
            if (i2 >= kj6.values().length) {
                i2 = 0;
            }
            setRenderMode(kj6.values()[i2]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(6, false));
        typedArrayObtainStyledAttributes.recycle();
        Context context = getContext();
        di8 di8Var = mi8.a;
        c35Var.e = Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f;
        d();
        this.p = true;
    }

    public final void f() {
        if (!isShown()) {
            this.t = true;
        } else {
            this.n.g();
            d();
        }
    }

    public e25 getComposition() {
        return this.N;
    }

    public long getDuration() {
        e25 e25Var = this.N;
        if (e25Var != null) {
            return (long) e25Var.b();
        }
        return 0L;
    }

    public int getFrame() {
        return (int) this.n.c.f;
    }

    public String getImageAssetsFolder() {
        return this.n.q;
    }

    public float getMaxFrame() {
        return this.n.c.b();
    }

    public float getMinFrame() {
        return this.n.c.c();
    }

    public az5 getPerformanceTracker() {
        e25 e25Var = this.n.b;
        if (e25Var != null) {
            return e25Var.a;
        }
        return null;
    }

    public float getProgress() {
        return this.n.c.a();
    }

    public int getRepeatCount() {
        return this.n.c.getRepeatCount();
    }

    public int getRepeatMode() {
        return this.n.c.getRepeatMode();
    }

    public float getScale() {
        return this.n.d;
    }

    public float getSpeed() {
        return this.n.c.c;
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        c35 c35Var = this.n;
        if (drawable2 == c35Var) {
            super.invalidateDrawable(c35Var);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        if (this.H || this.y) {
            f();
            this.H = false;
            this.y = false;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        c35 c35Var = this.n;
        if (c35Var.f()) {
            this.y = false;
            this.x = false;
            this.t = false;
            c35Var.n.clear();
            c35Var.c.cancel();
            d();
            this.y = true;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof d25)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        d25 d25Var = (d25) parcelable;
        super.onRestoreInstanceState(d25Var.getSuperState());
        String str = d25Var.a;
        this.q = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.q);
        }
        int i = d25Var.b;
        this.r = i;
        if (i != 0) {
            setAnimation(i);
        }
        setProgress(d25Var.c);
        if (d25Var.d) {
            f();
        }
        this.n.q = d25Var.e;
        setRepeatMode(d25Var.f);
        setRepeatCount(d25Var.k);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0032  */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        d25 d25Var = new d25(super.onSaveInstanceState());
        d25Var.a = this.q;
        d25Var.b = this.r;
        c35 c35Var = this.n;
        j35 j35Var = c35Var.c;
        j35 j35Var2 = c35Var.c;
        d25Var.c = j35Var.a();
        if (c35Var.f()) {
            z = true;
        } else {
            WeakHashMap weakHashMap = dl8.a;
            if (isAttachedToWindow() || !this.y) {
                z = false;
            } else {
                z = true;
            }
        }
        d25Var.d = z;
        d25Var.e = c35Var.q;
        d25Var.f = j35Var2.getRepeatMode();
        d25Var.k = j35Var2.getRepeatCount();
        return d25Var;
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        if (this.p) {
            boolean zIsShown = isShown();
            c35 c35Var = this.n;
            if (zIsShown) {
                if (this.x) {
                    if (isShown()) {
                        c35Var.h();
                        d();
                    } else {
                        this.t = false;
                        this.x = true;
                    }
                } else if (this.t) {
                    f();
                }
                this.x = false;
                this.t = false;
                return;
            }
            if (c35Var.f()) {
                this.H = false;
                this.y = false;
                this.x = false;
                this.t = false;
                c35Var.n.clear();
                c35Var.c.f(true);
                d();
                this.x = true;
            }
        }
    }

    public void setAnimation(int i) {
        i35 i35VarA;
        this.r = i;
        this.q = null;
        if (isInEditMode()) {
            i35VarA = new i35(new a25(this, i), true);
        } else if (this.I) {
            Context context = getContext();
            String strH = n25.h(context, i);
            i35VarA = n25.a(strH, new k25(new WeakReference(context), context.getApplicationContext(), i, strH));
        } else {
            Context context2 = getContext();
            HashMap map = n25.a;
            i35VarA = n25.a(null, new k25(new WeakReference(context2), context2.getApplicationContext(), i, null));
        }
        setCompositionTask(i35VarA);
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setCompositionTask(n25.a(null, new l25(new ByteArrayInputStream(str.getBytes()))));
    }

    public void setAnimationFromUrl(String str) {
        i35 i35VarA;
        if (this.I) {
            Context context = getContext();
            HashMap map = n25.a;
            String strJ = xs1.j("url_", str);
            i35VarA = n25.a(strJ, new i25(context, str, strJ));
        } else {
            i35VarA = n25.a(null, new i25(getContext(), str, null));
        }
        setCompositionTask(i35VarA);
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.n.I = z;
    }

    public void setCacheComposition(boolean z) {
        this.I = z;
    }

    public void setComposition(e25 e25Var) {
        c35 c35Var = this.n;
        c35Var.setCallback(this);
        this.N = e25Var;
        boolean z = true;
        this.G = true;
        ArrayList arrayList = c35Var.n;
        j35 j35Var = c35Var.c;
        if (c35Var.b == e25Var) {
            z = false;
        } else {
            c35Var.K = false;
            c35Var.d();
            c35Var.b = e25Var;
            c35Var.c();
            boolean z2 = j35Var.q == null;
            j35Var.q = e25Var;
            if (z2) {
                j35Var.i((int) Math.max(j35Var.n, e25Var.k), (int) Math.min(j35Var.p, e25Var.l));
            } else {
                j35Var.i((int) e25Var.k, (int) e25Var.l);
            }
            float f = j35Var.f;
            j35Var.f = 0.0f;
            j35Var.h((int) f);
            j35Var.e();
            c35Var.o(j35Var.getAnimatedFraction());
            c35Var.d = c35Var.d;
            Iterator it = new ArrayList(arrayList).iterator();
            while (it.hasNext()) {
                b35 b35Var = (b35) it.next();
                if (b35Var != null) {
                    b35Var.run();
                }
                it.remove();
            }
            arrayList.clear();
            e25Var.a.a = c35Var.G;
            Drawable.Callback callback = c35Var.getCallback();
            if (callback instanceof ImageView) {
                ImageView imageView = (ImageView) callback;
                imageView.setImageDrawable(null);
                imageView.setImageDrawable(c35Var);
            }
        }
        this.G = false;
        d();
        if (getDrawable() != c35Var || z) {
            if (!z) {
                boolean zF = c35Var.f();
                setImageDrawable(null);
                setImageDrawable(c35Var);
                if (zF) {
                    c35Var.h();
                }
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it2 = this.K.iterator();
            if (it2.hasNext()) {
                throw eq3.h(it2);
            }
        }
    }

    public void setFailureListener(e35 e35Var) {
        this.f = e35Var;
    }

    public void setFallbackResource(int i) {
        this.k = i;
    }

    public void setFontAssetDelegate(wp3 wp3Var) {
        xp3 xp3Var = this.n.r;
    }

    public void setFrame(int i) {
        this.n.i(i);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.n.f = z;
    }

    public void setImageAssetDelegate(t94 t94Var) {
        u94 u94Var = this.n.p;
    }

    public void setImageAssetsFolder(String str) {
        this.n.q = str;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        a();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        a();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        a();
        super.setImageResource(i);
    }

    public void setMaxFrame(int i) {
        this.n.j(i);
    }

    public void setMaxProgress(float f) {
        c35 c35Var = this.n;
        e25 e25Var = c35Var.b;
        if (e25Var == null) {
            c35Var.n.add(new z25(c35Var, f));
        } else {
            c35Var.j((int) sg5.d(e25Var.k, e25Var.l, f));
        }
    }

    public void setMinAndMaxFrame(String str) {
        this.n.l(str);
    }

    public void setMinFrame(int i) {
        this.n.m(i);
    }

    public void setMinProgress(float f) {
        c35 c35Var = this.n;
        e25 e25Var = c35Var.b;
        if (e25Var == null) {
            c35Var.n.add(new x25(c35Var, f));
        } else {
            c35Var.m((int) sg5.d(e25Var.k, e25Var.l, f));
        }
    }

    public void setOutlineMasksAndMattes(boolean z) {
        c35 c35Var = this.n;
        if (c35Var.H == z) {
            return;
        }
        c35Var.H = z;
        hp1 hp1Var = c35Var.x;
        if (hp1Var != null) {
            hp1Var.r(z);
        }
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        c35 c35Var = this.n;
        c35Var.G = z;
        e25 e25Var = c35Var.b;
        if (e25Var != null) {
            e25Var.a.a = z;
        }
    }

    public void setProgress(float f) {
        this.n.o(f);
    }

    public void setRenderMode(kj6 kj6Var) {
        this.J = kj6Var;
        d();
    }

    public void setRepeatCount(int i) {
        this.n.c.setRepeatCount(i);
    }

    public void setRepeatMode(int i) {
        this.n.c.setRepeatMode(i);
    }

    public void setSafeMode(boolean z) {
        this.n.k = z;
    }

    public void setScale(float f) {
        c35 c35Var = this.n;
        c35Var.d = f;
        if (getDrawable() == c35Var) {
            boolean zF = c35Var.f();
            setImageDrawable(null);
            setImageDrawable(c35Var);
            if (zF) {
                c35Var.h();
            }
        }
    }

    public void setSpeed(float f) {
        this.n.c.c = f;
    }

    public void setTextDelegate(w08 w08Var) {
        this.n.getClass();
    }

    @Override // android.view.View
    public final void unscheduleDrawable(Drawable drawable) {
        c35 c35Var;
        if (!this.G && drawable == (c35Var = this.n) && c35Var.f()) {
            this.H = false;
            this.y = false;
            this.x = false;
            this.t = false;
            c35Var.n.clear();
            c35Var.c.f(true);
            d();
        } else if (!this.G && (drawable instanceof c35)) {
            c35 c35Var2 = (c35) drawable;
            if (c35Var2.f()) {
                c35Var2.n.clear();
                c35Var2.c.f(true);
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public void setMaxFrame(String str) {
        this.n.k(str);
    }

    public void setMinFrame(String str) {
        this.n.n(str);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new y15(this);
        this.e = new z15(this);
        this.k = 0;
        this.n = new c35();
        this.t = false;
        this.x = false;
        this.y = false;
        this.G = false;
        this.H = false;
        this.I = true;
        this.J = kj6.a;
        this.K = new HashSet();
        this.L = 0;
        e(attributeSet, R.attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new y15(this);
        this.e = new z15(this);
        this.k = 0;
        this.n = new c35();
        this.t = false;
        this.x = false;
        this.y = false;
        this.G = false;
        this.H = false;
        this.I = true;
        this.J = kj6.a;
        this.K = new HashSet();
        this.L = 0;
        e(attributeSet, i);
    }

    public void setAnimation(String str) {
        i35 i35VarA;
        this.q = str;
        int i = 0;
        this.r = 0;
        if (isInEditMode()) {
            i35VarA = new i35(new b25(this, str), true);
        } else if (this.I) {
            Context context = getContext();
            HashMap map = n25.a;
            String strJ = xs1.j("asset_", str);
            i35VarA = n25.a(strJ, new j25(i, context.getApplicationContext(), str, strJ));
        } else {
            Context context2 = getContext();
            HashMap map2 = n25.a;
            i35VarA = n25.a(null, new j25(i, context2.getApplicationContext(), str, null));
        }
        setCompositionTask(i35VarA);
    }
}
