package defpackage;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.tasks.Task;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.textfield.TextInputEditText;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.locks.Lock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sz8 {
    public static final yo2 a = new yo2();
    public static final boolean[] b = new boolean[3];
    public static final y53 c;
    public static final y53 d;
    public static final y53[] e;

    static {
        y53 y53Var = new y53("auth_api_credentials_begin_sign_in", -1, 9L, true);
        y53 y53Var2 = new y53("auth_api_credentials_sign_out", -1, 2L, true);
        c = y53Var2;
        y53 y53Var3 = new y53("auth_api_credentials_authorize", -1, 1L, true);
        y53 y53Var4 = new y53("auth_api_credentials_revoke_access", -1, 1L, true);
        y53 y53Var5 = new y53("auth_api_credentials_clear_token", -1, 1L, true);
        y53 y53Var6 = new y53("auth_api_credentials_save_password", -1, 4L, true);
        y53 y53Var7 = new y53("auth_api_credentials_get_sign_in_intent", -1, 6L, true);
        d = y53Var7;
        e = new y53[]{y53Var, y53Var2, y53Var3, y53Var4, y53Var5, y53Var6, y53Var7, new y53("auth_api_credentials_save_account_linking_token", -1, 3L, true), new y53("auth_api_credentials_get_phone_number_hint_intent", -1, 3L, true), new y53("auth_api_credentials_verify_with_google", -1, 1L, true), new y53("auth_api_credentials_credential_provider", -1, 1L, true), new y53("auth_api_credentials_save_webauthn_credential_specifics", -1, 1L, true), new y53("auth_api_credentials_delete_webauthn_credential_specifics", -1, 1L, false), new y53("auth_api_credentials_list_webauthn_credential_specifics", -1, 1L, true), new y53("auth_api_credentials_get_google_passkey_for_export", -1, 2L, true), new y53("auth_api_credentials_get_authentication_intent", -1, 1L, true), new y53("auth_api_credentials_get_registration_intent", -1, 1L, true), new y53("auth_api_credentials_check_key_availability", -1, 1L, true), new y53("auth_api_credentials_has_discoverable_key", -1, 1L, true), new y53("auth_api_credentials_validate_calling_browser", -1, 1L, true), new y53("auth_api_credentials_validate_rp_id_and_calling_package", -1, 1L, true), new y53("auth_api_credentials_get_credential_list_for_browser", -1, 1L, true), new y53("auth_api_credentials_update_webauthn_credential_specifics", -1, 1L, true)};
    }

    public static final int A(Context context) {
        context.getClass();
        return context.getColor(y(context, R.attr.textColorSecondary));
    }

    public static final int B(fw6 fw6Var) {
        nw6 nw6VarP0 = fw6Var.p0("SELECT changes()");
        try {
            nw6VarP0.i0();
            int i = (int) nw6VarP0.getLong(0);
            k55.d(nw6VarP0, null);
            return i;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public static String E(String str) {
        long j;
        str.getClass();
        Charset charset = StandardCharsets.UTF_8;
        charset.getClass();
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        int length = bytes.length & (-16);
        int i = 0;
        long jRotateLeft = 0;
        long jRotateLeft2 = 0;
        while (true) {
            j = 5545529020109919103L;
            if (i >= length) {
                break;
            }
            long jV = v(bytes, i);
            long jV2 = v(bytes, i + 8);
            long jRotateLeft3 = ((Long.rotateLeft((Long.rotateLeft(jV * (-8663945395140668459L), 31) * 5545529020109919103L) ^ jRotateLeft, 27) + jRotateLeft2) * 5) + 1390208809;
            jRotateLeft2 = ((Long.rotateLeft((Long.rotateLeft(jV2 * 5545529020109919103L, 33) * (-8663945395140668459L)) ^ jRotateLeft2, 31) + jRotateLeft3) * 5) + 944331445;
            jRotateLeft = jRotateLeft3;
            i += 16;
        }
        int length2 = bytes.length - length;
        int iMin = Math.min(length2, 8);
        int i2 = 0;
        long j2 = 0;
        while (i2 < iMin) {
            j2 |= (((long) bytes[length + i2]) & 255) << (i2 * 8);
            i2++;
            j = j;
        }
        long j3 = j;
        long j4 = 0;
        for (int i3 = 8; i3 < length2; i3++) {
            j4 |= (((long) bytes[length + i3]) & 255) << ((i3 - 8) * 8);
        }
        if (length2 > 8) {
            jRotateLeft2 ^= Long.rotateLeft(j4 * j3, 33) * (-8663945395140668459L);
        }
        if (length2 > 0) {
            jRotateLeft ^= Long.rotateLeft(j2 * (-8663945395140668459L), 31) * j3;
        }
        long length3 = ((long) bytes.length) ^ jRotateLeft;
        long length4 = ((long) bytes.length) ^ jRotateLeft2;
        long j5 = length3 + length4;
        long j6 = length4 + j5;
        long j7 = (j5 ^ (j5 >>> 33)) * (-49064778989728563L);
        long j8 = (j7 ^ (j7 >>> 33)) * (-4265267296055464877L);
        long j9 = (j6 ^ (j6 >>> 33)) * (-49064778989728563L);
        long j10 = (j9 ^ (j9 >>> 33)) * (-4265267296055464877L);
        long j11 = j10 ^ (j10 >>> 33);
        long j12 = (j8 ^ (j8 >>> 33)) + j11;
        String hexString = Long.toHexString(j11 + j12);
        hexString.getClass();
        String strO0 = nq7.o0(16, hexString);
        String hexString2 = Long.toHexString(j12);
        hexString2.getClass();
        return eq3.j(strO0, nq7.o0(16, hexString2));
    }

    public static final void F(ExtendedFloatingActionButton extendedFloatingActionButton, long j) {
        extendedFloatingActionButton.getClass();
        if (extendedFloatingActionButton.getVisibility() == 8) {
            return;
        }
        extendedFloatingActionButton.setVisibility(8);
    }

    public static final in2 G(oh4 oh4Var, boolean z, sh4 sh4Var) {
        if (oh4Var instanceof ci4) {
            return ((ci4) oh4Var).D(z, sh4Var);
        }
        return oh4Var.invokeOnCompletion(sh4Var.p(), z, new oh1(1, sh4Var, sh4.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0, 6));
    }

    public static boolean H(long j, sx2 sx2Var) {
        return (j & sx2Var.getValue()) > 0;
    }

    public static final boolean I(View view) {
        view.getClass();
        return view.getVisibility() == 0;
    }

    public static String J(Iterable iterable) {
        if (iterable == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            jb9.h("individual scopes cannot be null or empty", !TextUtils.isEmpty(str));
            linkedHashSet.add(str);
        }
        if (linkedHashSet.isEmpty()) {
            return null;
        }
        return TextUtils.join(TokenAuthenticationScheme.SCHEME_DELIMITER, linkedHashSet);
    }

    public static LinkedHashSet K(Set set, Object obj) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(x65.q0(set.size()));
        boolean z = false;
        for (Object obj2 : set) {
            boolean z2 = true;
            if (!z && pe4.d(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                linkedHashSet.add(obj2);
            }
        }
        return linkedHashSet;
    }

    public static Set L(Set set, Set set2) {
        if (set2.isEmpty()) {
            return el1.z1(set);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : set) {
            if (!set2.contains(obj)) {
                linkedHashSet.add(obj);
            }
        }
        return linkedHashSet;
    }

    public static ac N(cn4 cn4Var, e25 e25Var) {
        return new ac(zo4.a(cn4Var, e25Var, 1.0f, us2.b, false), 6);
    }

    public static bc O(ul4 ul4Var, e25 e25Var, boolean z) {
        return new bc(zo4.a(ul4Var, e25Var, z ? mi8.c() : 1.0f, q34.c, false), 6);
    }

    public static dc P(cn4 cn4Var, e25 e25Var) {
        return new dc(zo4.a(cn4Var, e25Var, 1.0f, cz4.c, false), 6);
    }

    public static fc Q(cn4 cn4Var, e25 e25Var) {
        return new fc(zo4.a(cn4Var, e25Var, mi8.c(), ns0.c, true), 6);
    }

    public static LinkedHashSet R(Set set, Iterable iterable) {
        int size;
        set.getClass();
        iterable.getClass();
        Integer numValueOf = iterable instanceof Collection ? Integer.valueOf(((Collection) iterable).size()) : null;
        if (numValueOf != null) {
            size = set.size() + numValueOf.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(x65.q0(size));
        linkedHashSet.addAll(set);
        el1.K0(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static LinkedHashSet S(Set set, Object obj) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(x65.q0(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(obj);
        return linkedHashSet;
    }

    public static final Object T(Object obj) {
        return obj instanceof ln1 ? lg7.e(((ln1) obj).a) : obj;
    }

    public static final int U(int i, int i2) {
        return xl1.g(i, tu0.v((i2 / 100.0f) * 255.0f));
    }

    public static final void V(TextInputEditText textInputEditText) {
        textInputEditText.getClass();
        Typeface typefaceA = fm6.a(textInputEditText.getContext(), org.swiftapps.swiftbackup.R.font.mono_regular);
        if (typefaceA != null) {
            textInputEditText.setTypeface(typefaceA);
        }
    }

    public static final void W(View view) {
        view.getClass();
        view.setVisibility(8);
    }

    public static final void X(View view) {
        view.getClass();
        view.setVisibility(4);
    }

    public static Set Y(Object obj) {
        Set setSingleton = Collections.singleton(obj);
        setSingleton.getClass();
        return setSingleton;
    }

    public static final void Z(km0 km0Var, int i, boolean z, boolean z2, boolean z3) {
        int iH = l73.h(i, 0, km0Var.getMax());
        if (z2 || iH > km0Var.getProgress()) {
            if (!z || (km0Var.isAttachedToWindow() && km0Var.isLaidOut() && km0Var.isShown())) {
                boolean z4 = z && km0Var.isAttachedToWindow() && km0Var.isLaidOut() && km0Var.isShown();
                boolean z5 = km0Var.getProgress() == iH;
                km0Var.c(iH, z4);
                if (!z4 || z5) {
                    g0(km0Var, iH);
                    return;
                }
                return;
            }
            if (!z3) {
                km0Var.c(iH, false);
                g0(km0Var, iH);
                return;
            }
            jl8 jl8Var = new jl8(km0Var, iH, z2, z3);
            if (km0Var.isAttachedToWindow()) {
                yt5.a(km0Var, new w7(km0Var, jl8Var));
            } else if (km0Var.isAttachedToWindow()) {
                yt5.a(km0Var, new x7(km0Var, jl8Var, 4));
            } else {
                km0Var.addOnAttachStateChangeListener(new ll8(km0Var, km0Var, jl8Var));
            }
        }
    }

    public static void a(View view) {
        view.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        Integer numValueOf = Integer.valueOf(marginLayoutParams != null ? marginLayoutParams.leftMargin : 0);
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
        Integer numValueOf2 = Integer.valueOf(marginLayoutParams2 != null ? marginLayoutParams2.topMargin : 0);
        ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
        Integer numValueOf3 = Integer.valueOf(marginLayoutParams3 != null ? marginLayoutParams3.rightMargin : 0);
        ViewGroup.LayoutParams layoutParams4 = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams4 : null;
        List listA0 = fl1.A0(numValueOf, numValueOf2, numValueOf3, Integer.valueOf(marginLayoutParams4 != null ? marginLayoutParams4.bottomMargin : 0));
        final int iIntValue = ((Number) listA0.get(0)).intValue();
        final int iIntValue2 = ((Number) listA0.get(1)).intValue();
        final int iIntValue3 = ((Number) listA0.get(2)).intValue();
        final int iIntValue4 = ((Number) listA0.get(3)).intValue();
        ls5 ls5Var = new ls5() { // from class: hl8
            @Override // defpackage.ls5
            public final tv8 n(View view2, tv8 tv8Var) {
                view2.getClass();
                ViewGroup.LayoutParams layoutParams5 = view2.getLayoutParams();
                if (layoutParams5 == null) {
                    f6.n("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                    return null;
                }
                if ((layoutParams5 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams5 : null) != null) {
                    ((ViewGroup.MarginLayoutParams) layoutParams5).setMargins(iIntValue, iIntValue2, iIntValue3, tv8Var.a() + iIntValue4);
                }
                view2.setLayoutParams(layoutParams5);
                return tv8Var;
            }
        };
        WeakHashMap weakHashMap = dl8.a;
        uk8.c(view, ls5Var);
    }

    public static final void a0(MaterialButton materialButton, int i) {
        materialButton.getClass();
        TypedArray typedArrayObtainStyledAttributes = materialButton.getContext().obtainStyledAttributes(i, wd6.c);
        typedArrayObtainStyledAttributes.getClass();
        try {
            try {
                materialButton.setBackgroundTintList(k55.m(materialButton.getContext(), typedArrayObtainStyledAttributes, 7));
                materialButton.setIconTint(k55.m(materialButton.getContext(), typedArrayObtainStyledAttributes, 15));
                materialButton.setRippleColor(k55.m(materialButton.getContext(), typedArrayObtainStyledAttributes, 18));
                typedArrayObtainStyledAttributes.recycle();
                TypedArray typedArrayObtainStyledAttributes2 = materialButton.getContext().obtainStyledAttributes(i, wd6.d);
                typedArrayObtainStyledAttributes2.getClass();
                try {
                    try {
                        materialButton.setTextColor(k55.m(materialButton.getContext(), typedArrayObtainStyledAttributes2, 3));
                        typedArrayObtainStyledAttributes2.recycle();
                    } catch (Exception e2) {
                        throw e2;
                    }
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes2.recycle();
                    throw th;
                }
            } catch (Exception e3) {
                throw e3;
            }
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    public static void b(View view, int i) {
        final boolean z = (i & 2) == 0;
        final boolean z2 = (i & 8) == 0;
        view.getClass();
        List listA0 = fl1.A0(Integer.valueOf(view.getPaddingLeft()), Integer.valueOf(view.getPaddingTop()), Integer.valueOf(view.getPaddingRight()), Integer.valueOf(view.getPaddingBottom()));
        final int iIntValue = ((Number) listA0.get(0)).intValue();
        final int iIntValue2 = ((Number) listA0.get(1)).intValue();
        final int iIntValue3 = ((Number) listA0.get(2)).intValue();
        final int iIntValue4 = ((Number) listA0.get(3)).intValue();
        ls5 ls5Var = new ls5() { // from class: il8
            @Override // defpackage.ls5
            public final tv8 n(View view2, tv8 tv8Var) {
                view2.getClass();
                view2.setPadding(iIntValue, iIntValue2 + (z ? tv8Var.d() : 0), iIntValue3, iIntValue4 + (z2 ? tv8Var.a() : 0));
                return tv8Var;
            }
        };
        WeakHashMap weakHashMap = dl8.a;
        uk8.c(view, ls5Var);
    }

    public static final void b0(km0 km0Var, int i, boolean z) {
        km0Var.getClass();
        if (i < 0 || i > km0Var.getMax() || i <= km0Var.getProgress()) {
            return;
        }
        Z(km0Var, i, z, false, false);
    }

    public static final Object c(Task task, xc4 xc4Var) {
        if (!task.isComplete()) {
            o21 o21Var = new o21(1, nc8.D(xc4Var));
            o21Var.u();
            task.addOnCompleteListener(sl2.b, new ln5(o21Var, 14));
            return o21Var.s();
        }
        Exception exception = task.getException();
        if (exception != null) {
            throw exception;
        }
        if (!task.isCanceled()) {
            return task.getResult();
        }
        throw new CancellationException("Task " + task + " was cancelled normally.");
    }

    public static final void c0(View view) {
        view.getClass();
        view.setVisibility(0);
    }

    public static String d(int i, int i2, String str) {
        if (i < 0) {
            return y13.t("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return y13.t("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        c6.f(fz5.j(i2, "negative size: "));
        return null;
    }

    public static final void d0(View view, boolean z) {
        view.getClass();
        if (z) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    public static w97 e(w97 w97Var) {
        d65 d65Var = w97Var.a;
        d65Var.b();
        return d65Var.p > 0 ? w97Var : w97.b;
    }

    public static final void e0(View view, boolean z) {
        if (I(view)) {
            return;
        }
        view.setVisibility(0);
        if (z) {
            view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), org.swiftapps.swiftbackup.R.anim.extended_fab_enter));
        }
    }

    public static void f(int i, int i2) {
        String strT;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                strT = y13.t("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    c6.f(fz5.j(i2, "negative size: "));
                    return;
                }
                strT = y13.t("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strT);
        }
    }

    public static final void f0(ExtendedFloatingActionButton extendedFloatingActionButton, RecyclerView recyclerView, boolean z) {
        extendedFloatingActionButton.getClass();
        recyclerView.getClass();
        recyclerView.i(new r23(extendedFloatingActionButton, z));
    }

    public static void g(pt1 pt1Var, bv4 bv4Var, ot1 ot1Var) {
        ot1Var.o = -1;
        ys1 ys1Var = ot1Var.M;
        int[] iArr = ot1Var.p0;
        ys1 ys1Var2 = ot1Var.L;
        ys1 ys1Var3 = ot1Var.J;
        ys1 ys1Var4 = ot1Var.K;
        ys1 ys1Var5 = ot1Var.I;
        ot1Var.p = -1;
        int[] iArr2 = pt1Var.p0;
        if (iArr2[0] != 2 && iArr[0] == 4) {
            int i = ys1Var5.g;
            int iQ = pt1Var.q() - ys1Var4.g;
            ys1Var5.i = bv4Var.k(ys1Var5);
            ys1Var4.i = bv4Var.k(ys1Var4);
            bv4Var.d(ys1Var5.i, i);
            bv4Var.d(ys1Var4.i, iQ);
            ot1Var.o = 2;
            ot1Var.Y = i;
            int i2 = iQ - i;
            ot1Var.U = i2;
            int i3 = ot1Var.b0;
            if (i2 < i3) {
                ot1Var.U = i3;
            }
        }
        if (iArr2[1] == 2 || iArr[1] != 4) {
            return;
        }
        int i4 = ys1Var3.g;
        int iK = pt1Var.k() - ys1Var2.g;
        ys1Var3.i = bv4Var.k(ys1Var3);
        ys1Var2.i = bv4Var.k(ys1Var2);
        bv4Var.d(ys1Var3.i, i4);
        bv4Var.d(ys1Var2.i, iK);
        if (ot1Var.a0 > 0 || ot1Var.g0 == 8) {
            ej7 ej7VarK = bv4Var.k(ys1Var);
            ys1Var.i = ej7VarK;
            bv4Var.d(ej7VarK, ot1Var.a0 + i4);
        }
        ot1Var.p = 2;
        ot1Var.Z = i4;
        int i5 = iK - i4;
        ot1Var.V = i5;
        int i6 = ot1Var.c0;
        if (i5 < i6) {
            ot1Var.V = i6;
        }
    }

    public static final void g0(km0 km0Var, int i) {
        if (km0Var.isIndeterminate()) {
            return;
        }
        qk2 progressDrawable = km0Var.getProgressDrawable();
        if (progressDrawable != null) {
            long j = ((long) i) * 10000;
            int max = km0Var.getMax();
            if (max < 1) {
                max = 1;
            }
            progressDrawable.setLevel((int) (j / ((long) max)));
        }
        qk2 progressDrawable2 = km0Var.getProgressDrawable();
        if (progressDrawable2 != null) {
            progressDrawable2.jumpToCurrentState();
        }
        km0Var.invalidate();
    }

    public static void h(int i, int i2) {
        if (i < 0 || i > i2) {
            a6.d(d(i, i2, "index"));
        }
    }

    public static final ColorStateList h0(int i) {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i);
        colorStateListValueOf.getClass();
        return colorStateListValueOf;
    }

    public static void i(int i, int i2, int i3) {
        String strD;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strD = d(i, i3, "start index");
            } else {
                strD = (i2 < 0 || i2 > i3) ? d(i2, i3, "end index") : y13.t("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strD);
        }
    }

    public static EnumSet i0(long j, Class cls) {
        if (!sx2.class.isAssignableFrom(cls)) {
            c6.f("Can only be used with EnumWithValue enums.");
            return null;
        }
        EnumSet enumSetNoneOf = EnumSet.noneOf(cls);
        for (Object obj : (Enum[]) cls.getEnumConstants()) {
            if (H(j, (sx2) obj)) {
                enumSetNoneOf.add(obj);
            }
        }
        return enumSetNoneOf;
    }

    public static void j(String str, boolean z) {
        if (z) {
            return;
        }
        l0.e(str);
    }

    public static long j0(Collection collection) {
        long value = 0;
        for (Object obj : collection) {
            if (!(obj instanceof sx2)) {
                c6.f("Can only be used with EnumWithValue enums.");
                return 0L;
            }
            value |= ((sx2) obj).getValue();
        }
        return value;
    }

    public static or0 k(nr0 nr0Var, Drawable drawable, int i, int i2) {
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        boolean z = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmap = null;
        } else {
            if (i != Integer.MIN_VALUE || current.getIntrinsicWidth() > 0) {
                if (i2 != Integer.MIN_VALUE || current.getIntrinsicHeight() > 0) {
                    if (current.getIntrinsicWidth() > 0) {
                        i = current.getIntrinsicWidth();
                    }
                    if (current.getIntrinsicHeight() > 0) {
                        i2 = current.getIntrinsicHeight();
                    }
                    Lock lock = n98.d;
                    lock.lock();
                    Bitmap bitmapK = nr0Var.k(i, i2, Bitmap.Config.ARGB_8888);
                    try {
                        Canvas canvas = new Canvas(bitmapK);
                        current.setBounds(0, 0, i, i2);
                        current.draw(canvas);
                        canvas.setBitmap(null);
                        lock.unlock();
                        bitmap = bitmapK;
                    } catch (Throwable th) {
                        lock.unlock();
                        throw th;
                    }
                } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                    Log.w("DrawableToBitmap", "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
                }
                z = true;
            } else if (Log.isLoggable("DrawableToBitmap", 5)) {
                Log.w("DrawableToBitmap", "Unable to draw " + current + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            bitmap = null;
            z = true;
        }
        if (!z) {
            nr0Var = a;
        }
        return or0.e(nr0Var, bitmap);
    }

    public static sx2 k0(long j, Class cls, bp5 bp5Var) {
        for (sx2 sx2Var : (sx2[]) cls.getEnumConstants()) {
            if (sx2Var.getValue() == j) {
                return sx2Var;
            }
        }
        return bp5Var;
    }

    public static ArrayList l() {
        String string;
        String string2;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("app_locale", null);
            Calendar calendar = Calendar.getInstance((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a());
            ArrayList arrayList = new ArrayList();
            calendar.getClass();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 1; i < 8; i++) {
                calendar.set(7, i);
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string2 = sharedPreferences2.getString("app_locale", null);
                } catch (ClassCastException unused) {
                    string2 = null;
                }
                String displayName = calendar.getDisplayName(7, 1, (string2 == null || string2.length() == 0) ? xx3.h().a() : xx3.g(string2).a());
                displayName.getClass();
                arrayList2.add(displayName);
            }
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                String str = (String) arrayList2.get(i2);
                i2++;
                arrayList.add(new jd2(i2, str));
            }
            if (calendar.getFirstDayOfWeek() == 2) {
                Object obj = arrayList.get(0);
                obj.getClass();
                arrayList.remove(0);
                arrayList.add((jd2) obj);
            }
            return arrayList;
        } catch (ClassCastException unused2) {
            string = null;
        }
    }

    public static int l0(byte[] bArr, int i, rg9 rg9Var) throws uj9 {
        int iR0 = r0(bArr, i, rg9Var);
        int i2 = rg9Var.a;
        if (i2 < 0) {
            b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iR0) {
            b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        if (i2 == 0) {
            rg9Var.c = dh9.b;
            return iR0;
        }
        rg9Var.c = dh9.o(bArr, iR0, i2);
        return iR0 + i2;
    }

    public static final void m(Dialog dialog) {
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Exception unused) {
            }
        }
    }

    public static String m0(String str) {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static void n(Context context, fc5 fc5Var, float f) {
        context.getClass();
        fc5Var.getClass();
        fc5Var.K = true;
        int iV = tu0.v((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * f);
        Iterator it = fc5Var.l().iterator();
        it.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            next.getClass();
            ic5 ic5Var = (ic5) next;
            if (ic5Var.getIcon() != null) {
                int i = ic5Var.Q;
                if ((i & 2) != 2 && (i & 1) != 1) {
                    ic5Var.setIcon(new InsetDrawable(ic5Var.getIcon(), iV, 0, iV, 0));
                    if (ic5Var.hasSubMenu()) {
                        lr7 lr7Var = ic5Var.G;
                        if (lr7Var == null) {
                            lr7Var = null;
                        }
                        if (lr7Var != null) {
                            n(context, lr7Var, f);
                        }
                    }
                }
            }
        }
    }

    public static int n0(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static final boolean o(int i, int i2) {
        return (i & i2) == i2;
    }

    public static int o0(jm9 jm9Var, int i, byte[] bArr, int i2, int i3, ej9 ej9Var, rg9 rg9Var) throws uj9 {
        xi9 xi9VarZze = jm9Var.zze();
        jm9 jm9Var2 = jm9Var;
        byte[] bArr2 = bArr;
        int i4 = i3;
        rg9 rg9Var2 = rg9Var;
        int iW0 = w0(xi9VarZze, jm9Var2, bArr2, i2, i4, rg9Var2);
        jm9Var2.zzf(xi9VarZze);
        rg9Var2.c = xi9VarZze;
        ej9Var.add(xi9VarZze);
        while (iW0 < i4) {
            rg9 rg9Var3 = rg9Var2;
            int i5 = i4;
            int iR0 = r0(bArr2, iW0, rg9Var3);
            if (i != rg9Var3.a) {
                break;
            }
            byte[] bArr3 = bArr2;
            jm9 jm9Var3 = jm9Var2;
            xi9 xi9VarZze2 = jm9Var3.zze();
            iW0 = w0(xi9VarZze2, jm9Var3, bArr3, iR0, i5, rg9Var3);
            jm9Var2 = jm9Var3;
            bArr2 = bArr3;
            i4 = i5;
            rg9Var2 = rg9Var3;
            jm9Var2.zzf(xi9VarZze2);
            rg9Var2.c = xi9VarZze2;
            ej9Var.add(xi9VarZze2);
        }
        return iW0;
    }

    public static final void p(ox1 ox1Var) {
        oh4 oh4Var = (oh4) ox1Var.get(nh4.b);
        if (oh4Var != null && !oh4Var.isActive()) {
            throw oh4Var.getCancellationException();
        }
    }

    public static int p0(byte[] bArr, int i, ej9 ej9Var, rg9 rg9Var) throws uj9 {
        yi9 yi9Var = (yi9) ej9Var;
        int iR0 = r0(bArr, i, rg9Var);
        int i2 = rg9Var.a + iR0;
        while (iR0 < i2) {
            iR0 = r0(bArr, iR0, rg9Var);
            yi9Var.e(rg9Var.a);
        }
        if (iR0 == i2) {
            return iR0;
        }
        b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    public static final int q(Context context, int i) {
        context.getClass();
        return context.getColor(y(context, i));
    }

    public static int q0(int i, byte[] bArr, int i2, int i3, mn9 mn9Var, rg9 rg9Var) throws uj9 {
        if ((i >>> 3) == 0) {
            b6.f("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iU0 = u0(bArr, i2, rg9Var);
            mn9Var.c(i, Long.valueOf(rg9Var.b));
            return iU0;
        }
        if (i4 == 1) {
            mn9Var.c(i, Long.valueOf(x0(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iR0 = r0(bArr, i2, rg9Var);
            int i5 = rg9Var.a;
            if (i5 < 0) {
                b6.f("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return 0;
            }
            if (i5 > bArr.length - iR0) {
                b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0;
            }
            if (i5 == 0) {
                mn9Var.c(i, dh9.b);
            } else {
                mn9Var.c(i, dh9.o(bArr, iR0, i5));
            }
            return iR0 + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                mn9Var.c(i, Integer.valueOf(n0(bArr, i2)));
                return i2 + 4;
            }
            b6.f("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i6 = (i & (-8)) | 4;
        mn9 mn9VarB = mn9.b();
        int i7 = rg9Var.d + 1;
        rg9Var.d = i7;
        if (i7 >= 100) {
            b6.f("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i8 = 0;
        while (i2 < i3) {
            int iR1 = r0(bArr, i2, rg9Var);
            int i9 = rg9Var.a;
            if (i9 == i6) {
                i8 = i9;
                i2 = iR1;
                break;
            }
            i2 = q0(i9, bArr, iR1, i3, mn9VarB, rg9Var);
            i8 = i9;
        }
        rg9Var.d--;
        if (i2 > i3 || i8 != i6) {
            b6.f("Failed to parse the message.");
            return 0;
        }
        mn9Var.c(i, mn9VarB);
        return i2;
    }

    public static final int r(Context context) {
        context.getClass();
        return context.getColor(y(context, org.swiftapps.swiftbackup.R.attr.colorError2));
    }

    public static int r0(byte[] bArr, int i, rg9 rg9Var) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return s0(b2, bArr, i2, rg9Var);
        }
        rg9Var.a = b2;
        return i2;
    }

    public static final oh4 s(ox1 ox1Var) {
        oh4 oh4Var = (oh4) ox1Var.get(nh4.b);
        if (oh4Var != null) {
            return oh4Var;
        }
        l0.k(ox1Var, "Current context doesn't contain Job in it: ");
        return null;
    }

    public static int s0(int i, byte[] bArr, int i2, rg9 rg9Var) {
        byte b2 = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b2 >= 0) {
            rg9Var.a = i4 | (b2 << 7);
            return i3;
        }
        int i5 = i4 | ((b2 & 127) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i3];
        if (b3 >= 0) {
            rg9Var.a = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & 127) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            rg9Var.a = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & 127) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            rg9Var.a = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                rg9Var.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static final long t(fw6 fw6Var) {
        if (B(fw6Var) == 0) {
            return -1L;
        }
        nw6 nw6VarP0 = fw6Var.p0("SELECT last_insert_rowid()");
        try {
            nw6VarP0.i0();
            long j = nw6VarP0.getLong(0);
            k55.d(nw6VarP0, null);
            return j;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public static int t0(int i, byte[] bArr, int i2, int i3, ej9 ej9Var, rg9 rg9Var) {
        yi9 yi9Var = (yi9) ej9Var;
        int iR0 = r0(bArr, i2, rg9Var);
        yi9Var.e(rg9Var.a);
        while (iR0 < i3) {
            int iR1 = r0(bArr, iR0, rg9Var);
            if (i != rg9Var.a) {
                break;
            }
            iR0 = r0(bArr, iR1, rg9Var);
            yi9Var.e(rg9Var.a);
        }
        return iR0;
    }

    public static final Context u(Context context, Locale locale) {
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(locale);
        Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
        contextCreateConfigurationContext.getClass();
        return contextCreateConfigurationContext;
    }

    public static int u0(byte[] bArr, int i, rg9 rg9Var) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            rg9Var.b = j;
            return i2;
        }
        int i3 = i + 2;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | (((long) (b2 & 127)) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            byte b3 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b3 & 127)) << i4;
            b2 = b3;
            i3 = i5;
        }
        rg9Var.b = j2;
        return i3;
    }

    public static long v(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    public static int v0(Object obj, jm9 jm9Var, byte[] bArr, int i, int i2, int i3, rg9 rg9Var) throws uj9 {
        pl9 pl9Var = (pl9) jm9Var;
        int i4 = rg9Var.d + 1;
        rg9Var.d = i4;
        if (i4 >= 100) {
            b6.f("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int iQ = pl9Var.q(obj, bArr, i, i2, i3, rg9Var);
        rg9Var.d--;
        rg9Var.c = obj;
        return iQ;
    }

    public static final int w(Context context) {
        context.getClass();
        return io4.c(context, context.getColor(org.swiftapps.swiftbackup.R.color.grn));
    }

    public static int w0(Object obj, jm9 jm9Var, byte[] bArr, int i, int i2, rg9 rg9Var) throws uj9 {
        int iS0 = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iS0 = s0(i3, bArr, iS0, rg9Var);
            i3 = rg9Var.a;
        }
        int i4 = iS0;
        if (i3 < 0 || i3 > i2 - i4) {
            b6.f("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i5 = rg9Var.d + 1;
        rg9Var.d = i5;
        if (i5 >= 100) {
            b6.f("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i6 = i4 + i3;
        jm9Var.b(obj, bArr, i4, i6, rg9Var);
        rg9Var.d--;
        rg9Var.c = obj;
        return i6;
    }

    public static final int x(Context context) {
        context.getClass();
        return context.getColor(y(context, org.swiftapps.swiftbackup.R.attr.colorPrimary));
    }

    public static long x0(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public static final int y(Context context, int i) {
        context.getClass();
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public static final int z(Context context) {
        context.getClass();
        return context.getColor(y(context, R.attr.textColorPrimary));
    }

    public abstract short C(short s);

    public abstract short D(short s, short s2);

    public abstract Object M();
}
