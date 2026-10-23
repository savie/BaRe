package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u94 implements jk8, am6, z23, n59 {
    public static final Object d = new Object();
    public final Object a;
    public final Object b;
    public Object c;

    public u94(Drawable.Callback callback, String str, HashMap map) {
        if (TextUtils.isEmpty(str) || str.charAt(str.length() - 1) == '/') {
            this.b = str;
        } else {
            this.b = str.concat("/");
        }
        if (callback instanceof View) {
            this.a = ((View) callback).getContext();
            this.c = map;
        } else {
            m15.b("LottieDrawable must be inside of a view for images to work.");
            this.c = new HashMap();
            this.a = null;
        }
    }

    public static u94 e(int i, int i2, Context context, AttributeSet attributeSet, int[] iArr) {
        return new u94(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public ColorStateList a(int i) {
        int resourceId;
        ColorStateList colorStateListQ;
        TypedArray typedArray = (TypedArray) this.b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateListQ = zh8.q((Context) this.a, resourceId)) == null) ? typedArray.getColorStateList(i) : colorStateListQ;
    }

    public Drawable b(int i) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? typedArray.getDrawable(i) : iz1.m((Context) this.a, resourceId);
    }

    public Drawable c(int i) {
        int resourceId;
        Drawable drawableE;
        if (!((TypedArray) this.b).hasValue(i) || (resourceId = ((TypedArray) this.b).getResourceId(i, 0)) == 0) {
            return null;
        }
        jo joVarA = jo.a();
        Context context = (Context) this.a;
        synchronized (joVarA) {
            drawableE = joVarA.a.e(context, resourceId, true);
        }
        return drawableE;
    }

    public Typeface d(int i, int i2, kp kpVar) {
        int resourceId = ((TypedArray) this.b).getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.c) == null) {
            this.c = new TypedValue();
        }
        Context context = (Context) this.a;
        TypedValue typedValue = (TypedValue) this.c;
        ThreadLocal threadLocal = fm6.a;
        if (context.isRestricted()) {
            return null;
        }
        return fm6.b(context, resourceId, typedValue, i2, kpVar, true, false);
    }

    public void f() {
        ((TypedArray) this.b).recycle();
    }

    @Override // defpackage.ea6
    public Object get() {
        return new ya8(new b05(), new sl4(), (sf2) ((tf2) this.a).get(), (fg8) ((zr7) this.b).get(), (e38) ((lj3) this.c).get());
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (TextInputLayout) this.a;
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        b69 b69Var = (b69) f59Var;
        as2 as2Var = new as2();
        lp1 lp1Var = new lp1(1);
        as2Var.d = lp1Var;
        as2Var.e = new lp1(1);
        String str = b69Var.b;
        ly8.e(str);
        as2Var.a = str;
        hh8 hh8Var = (hh8) this.a;
        boolean z = hh8Var.c;
        String str2 = hh8Var.a;
        ArrayList arrayList = lp1Var.a;
        if (z || str2 != null) {
            if (str2 == null) {
                arrayList.add("DISPLAY_NAME");
            } else {
                as2Var.b = str2;
            }
        }
        if (hh8Var.d || hh8Var.e != null) {
            String str3 = hh8Var.b;
            if (str3 == null) {
                arrayList.add("PHOTO_URL");
            } else {
                as2Var.c = str3;
            }
        }
        ke keVar = (ke) this.c;
        yf1 yf1Var = (yf1) this.b;
        bi9 bi9Var = new bi9(b69Var.b, 1);
        g59 g59Var = (g59) keVar.b;
        xp3 xp3Var = new xp3(keVar, this, yf1Var, b69Var, as2Var);
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/getAccountInfo", g59Var.f), bi9Var, xp3Var, new w59(), (xt1) d59Var.b);
    }

    @Override // defpackage.am6
    public ll6 m(ll6 ll6Var, ou5 ou5Var) {
        Drawable drawable = (Drawable) ll6Var.get();
        if (drawable instanceof BitmapDrawable) {
            return ((ir0) this.b).m(or0.e((nr0) this.a, ((BitmapDrawable) drawable).getBitmap()), ou5Var);
        }
        if (drawable instanceof fx3) {
            return ((b05) this.c).m(ll6Var, ou5Var);
        }
        return null;
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.b).a(zv1.t(str));
    }

    public u94(ke keVar, hh8 hh8Var, yf1 yf1Var) {
        this.a = hh8Var;
        this.b = yf1Var;
        Objects.requireNonNull(keVar);
        this.c = keVar;
    }

    public /* synthetic */ u94(Object obj, Object obj2, Object obj3) {
        this.a = obj;
        this.b = obj2;
        this.c = obj3;
    }

    public u94(Context context, TypedArray typedArray) {
        this.a = context;
        this.b = typedArray;
    }
}
