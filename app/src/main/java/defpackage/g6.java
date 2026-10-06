package defpackage;

import android.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g6 {
    public static final g6 e = new g6(1, (CharSequence) null);
    public static final g6 f = new g6(2, (CharSequence) null);
    public static final g6 g;
    public static final g6 h;
    public static final g6 i;
    public static final g6 j;
    public static final g6 k;
    public static final g6 l;
    public static final g6 m;
    public static final g6 n;
    public static final g6 o;
    public static final g6 p;
    public final Object a;
    public final int b;
    public final Class c;
    public final w6 d;

    static {
        AccessibilityNodeInfo.AccessibilityAction accessibilityActionA = null;
        new g6(4, (CharSequence) null);
        new g6(8, (CharSequence) null);
        g = new g6(16, (CharSequence) null);
        new g6(32, (CharSequence) null);
        new g6(64, (CharSequence) null);
        new g6(128, (CharSequence) null);
        new g6(256, p6.class);
        new g6(512, p6.class);
        new g6(1024, q6.class);
        new g6(RSAKeyGenerator.MIN_KEY_SIZE_BITS, q6.class);
        h = new g6(4096, (CharSequence) null);
        i = new g6(8192, (CharSequence) null);
        new g6(16384, (CharSequence) null);
        new g6(32768, (CharSequence) null);
        new g6(65536, (CharSequence) null);
        new g6(131072, u6.class);
        j = new g6(262144, (CharSequence) null);
        new g6(524288, (CharSequence) null);
        k = new g6(1048576, (CharSequence) null);
        new g6(2097152, v6.class);
        new g6(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen, null, null, null);
        l = new g6(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition, null, null, s6.class);
        m = new g6(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp, null, null, null);
        new g6(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft, null, null, null);
        n = new g6(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown, null, null, null);
        new g6(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight, null, null, null);
        int i2 = Build.VERSION.SDK_INT;
        new g6(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
        new g6(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
        new g6(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
        new g6(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
        new g6(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick, null, null, null);
        o = new g6(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, R.id.accessibilityActionSetProgress, null, null, t6.class);
        new g6(AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW, R.id.accessibilityActionMoveWindow, null, null, r6.class);
        new g6(i2 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
        new g6(i2 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
        new g6(i2 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
        new g6(i2 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
        new g6(i2 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
        new g6(i2 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null, null, null);
        new g6(i2 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null, null, null);
        new g6(i2 >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.accessibilityActionShowTextSuggestions, null, null, null);
        p = new g6(i2 >= 34 ? j6.e() : null, R.id.accessibilityActionScrollInDirection, null, null, null);
        int i3 = bx0.a;
        if (i2 >= 36 && ax0.a() >= 3600001) {
            accessibilityActionA = l6.a();
        }
        new g6(accessibilityActionA, R.id.ALT, null, null, null);
    }

    public g6(Object obj, int i2, CharSequence charSequence, w6 w6Var, Class cls) {
        this.b = i2;
        this.d = w6Var;
        if (obj == null) {
            this.a = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
        } else {
            this.a = obj;
        }
        this.c = cls;
    }

    public final int a() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.a).getId();
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof g6)) {
            return false;
        }
        Object obj2 = ((g6) obj).a;
        Object obj3 = this.a;
        if (obj3 == null) {
            return obj2 == null;
        }
        return obj3.equals(obj2);
    }

    public final int hashCode() {
        Object obj = this.a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String strD = m6.d(this.b);
        if (strD.equals("ACTION_UNKNOWN")) {
            Object obj = this.a;
            if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                strD = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
            }
        }
        sb.append(strD);
        return sb.toString();
    }

    public g6(int i2, Class cls) {
        this(null, i2, null, null, cls);
    }

    public g6(int i2, CharSequence charSequence) {
        this(null, i2, charSequence, null, null);
    }
}
