package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.PathInterpolator;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dl8 {
    public static WeakHashMap a = null;
    public static Field b = null;
    public static boolean c = false;
    public static final int[] d = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
    public static final mk8 e = new mk8();
    public static final rk8 f = new rk8();

    public static lm8 a(View view) {
        if (a == null) {
            a = new WeakHashMap();
        }
        lm8 lm8Var = (lm8) a.get(view);
        if (lm8Var != null) {
            return lm8Var;
        }
        lm8 lm8Var2 = new lm8(view);
        a.put(view, lm8Var2);
        return lm8Var2;
    }

    public static tv8 b(View view, tv8 tv8Var) {
        WindowInsets windowInsetsG = tv8Var.g();
        if (windowInsetsG != null) {
            WindowInsets windowInsetsA = Build.VERSION.SDK_INT >= 30 ? al8.a(view, windowInsetsG) : sk8.a(view, windowInsetsG);
            if (!windowInsetsA.equals(windowInsetsG)) {
                return tv8.h(windowInsetsA, view);
            }
        }
        return tv8Var;
    }

    public static boolean c(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = cl8.d;
        cl8 cl8Var = (cl8) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (cl8Var == null) {
            cl8Var = new cl8();
            cl8Var.a = null;
            cl8Var.b = null;
            cl8Var.c = null;
            view.setTag(R.id.tag_unhandled_key_event_manager, cl8Var);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = cl8Var.a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = cl8.d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (cl8Var.a == null) {
                            cl8Var.a = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = cl8.d;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                cl8Var.a.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    cl8Var.a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        View viewA = cl8Var.a(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewA != null && !KeyEvent.isModifierKey(keyCode)) {
                if (cl8Var.b == null) {
                    cl8Var.b = new SparseArray();
                }
                cl8Var.b.put(keyCode, new WeakReference(viewA));
            }
        }
        return viewA != null;
    }

    public static View.AccessibilityDelegate d(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return zk8.a(view);
        }
        if (c) {
            return null;
        }
        if (b == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                b = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                c = true;
                return null;
            }
        }
        try {
            Object obj = b.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            c = true;
            return null;
        }
    }

    public static CharSequence e(View view) {
        Object tag;
        if (Build.VERSION.SDK_INT >= 28) {
            tag = yk8.a(view);
        } else {
            tag = view.getTag(R.id.tag_accessibility_pane_title);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        return (CharSequence) tag;
    }

    public static ArrayList f(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static String[] g(lo loVar) {
        return Build.VERSION.SDK_INT >= 31 ? bl8.a(loVar) : (String[]) loVar.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static void h(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = e(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (view.getAccessibilityLiveRegion() != 0 || z) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z ? 32 : RSAKeyGenerator.MIN_KEY_SIZE_BITS);
                accessibilityEventObtain.setContentChangeTypes(i);
                if (z) {
                    accessibilityEventObtain.getText().add(e(view));
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i != 32) {
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                        return;
                    } catch (AbstractMethodError e2) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.setEventType(32);
            accessibilityEventObtain2.setContentChangeTypes(i);
            accessibilityEventObtain2.setSource(view);
            view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.getText().add(e(view));
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
        }
    }

    public static tv8 i(View view, tv8 tv8Var) {
        WindowInsets windowInsetsG = tv8Var.g();
        if (windowInsetsG != null) {
            WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsetsG);
            if (!windowInsetsOnApplyWindowInsets.equals(windowInsetsG)) {
                return tv8.h(windowInsetsOnApplyWindowInsets, view);
            }
        }
        return tv8Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static qu1 j(View view, qu1 qu1Var) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + qu1Var + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return bl8.b(view, qu1Var);
        }
        x18 x18Var = (x18) view.getTag(R.id.tag_on_receive_content_listener);
        gt5 gt5Var = e;
        if (x18Var == null) {
            if (view instanceof gt5) {
                gt5Var = (gt5) view;
            }
            return gt5Var.a(qu1Var);
        }
        qu1 qu1VarA = x18.a(view, qu1Var);
        if (qu1VarA == null) {
            return null;
        }
        if (view instanceof gt5) {
            gt5Var = (gt5) view;
        }
        return gt5Var.a(qu1VarA);
    }

    public static void k(View view, int i) {
        ArrayList arrayListF = f(view);
        for (int i2 = 0; i2 < arrayListF.size(); i2++) {
            if (((g6) arrayListF.get(i2)).a() == i) {
                arrayListF.remove(i2);
                return;
            }
        }
    }

    public static void l(View view, g6 g6Var, w6 w6Var) {
        w5 w5Var;
        if (w6Var == null) {
            k(view, g6Var.a());
            h(view, 0);
            return;
        }
        g6 g6Var2 = new g6(null, g6Var.b, null, w6Var, g6Var.c);
        View.AccessibilityDelegate accessibilityDelegateD = d(view);
        if (accessibilityDelegateD == null) {
            w5Var = null;
        } else {
            w5Var = accessibilityDelegateD instanceof v5 ? ((v5) accessibilityDelegateD).a : new w5(accessibilityDelegateD);
        }
        if (w5Var == null) {
            w5Var = new w5();
        }
        n(view, w5Var);
        k(view, g6Var2.a());
        f(view).add(g6Var2);
        h(view, 0);
    }

    public static void m(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            zk8.b(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    public static void n(View view, w5 w5Var) {
        if (w5Var == null && (d(view) instanceof v5)) {
            w5Var = new w5();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        view.setAccessibilityDelegate(w5Var == null ? null : w5Var.b);
    }

    public static void o(View view, CharSequence charSequence) {
        new ok8(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).g(view, charSequence);
        rk8 rk8Var = f;
        if (charSequence == null) {
            rk8Var.a.remove(view);
            view.removeOnAttachStateChangeListener(rk8Var);
            view.getViewTreeObserver().removeOnGlobalLayoutListener(rk8Var);
        } else {
            rk8Var.a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(rk8Var);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(rk8Var);
            }
        }
    }

    public static void p(View view, ol1 ol1Var) {
        if (Build.VERSION.SDK_INT >= 30) {
            wu8.h(view, ol1Var);
            return;
        }
        PathInterpolator pathInterpolator = tu8.e;
        View.OnApplyWindowInsetsListener su8Var = new su8(view, ol1Var);
        view.setTag(R.id.tag_window_insets_animation_callback, su8Var);
        if (view.getTag(R.id.tag_compat_insets_dispatch) == null && view.getTag(R.id.tag_on_apply_window_listener) == null) {
            view.setOnApplyWindowInsetsListener(su8Var);
        }
    }
}
