package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.jcraft.jsch.SftpATTRS;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o03 extends w5 {
    public static final Rect n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
    public static final ge o = new ge();
    public static final fo8 p = new fo8(8);
    public final AccessibilityManager h;
    public final View i;
    public n03 j;
    public final Rect d = new Rect();
    public final Rect e = new Rect();
    public final Rect f = new Rect();
    public final int[] g = new int[2];
    public int k = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
    public int l = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
    public int m = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;

    public o03(View view) {
        this.i = view;
        this.h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    @Override // defpackage.w5
    public final zq8 b(View view) {
        if (this.j == null) {
            this.j = new n03(this);
        }
        return this.j;
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        this.a.onInitializeAccessibilityNodeInfo(view, m6Var.a);
        s(m6Var);
    }

    public final boolean j(int i) {
        if (this.l != i) {
            return false;
        }
        this.l = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        u(i, false);
        w(i, 8);
        return true;
    }

    public final AccessibilityEvent k(int i, int i2) {
        View view = this.i;
        if (i == -1) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
            view.onInitializeAccessibilityEvent(accessibilityEventObtain);
            return accessibilityEventObtain;
        }
        AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain(i2);
        m6 m6VarQ = q(i);
        accessibilityEventObtain2.getText().add(m6VarQ.f());
        AccessibilityNodeInfo accessibilityNodeInfo = m6VarQ.a;
        accessibilityEventObtain2.setContentDescription(accessibilityNodeInfo.getContentDescription());
        accessibilityEventObtain2.setScrollable(accessibilityNodeInfo.isScrollable());
        accessibilityEventObtain2.setPassword(accessibilityNodeInfo.isPassword());
        accessibilityEventObtain2.setEnabled(accessibilityNodeInfo.isEnabled());
        accessibilityEventObtain2.setChecked(accessibilityNodeInfo.isChecked());
        if (accessibilityEventObtain2.getText().isEmpty() && accessibilityEventObtain2.getContentDescription() == null) {
            g84.h("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            return null;
        }
        accessibilityEventObtain2.setClassName(accessibilityNodeInfo.getClassName());
        accessibilityEventObtain2.setSource(view, i);
        accessibilityEventObtain2.setPackageName(view.getContext().getPackageName());
        return accessibilityEventObtain2;
    }

    public final m6 l(int i) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
        m6 m6Var = new m6(accessibilityNodeInfoObtain);
        accessibilityNodeInfoObtain.setEnabled(true);
        accessibilityNodeInfoObtain.setFocusable(true);
        m6Var.i("android.view.View");
        Rect rect = n;
        m6Var.h(rect);
        accessibilityNodeInfoObtain.setBoundsInScreen(rect);
        View view = this.i;
        accessibilityNodeInfoObtain.setParent(view);
        t(i, m6Var);
        if (m6Var.f() == null && accessibilityNodeInfoObtain.getContentDescription() == null) {
            g84.h("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
            return null;
        }
        Rect rect2 = this.e;
        accessibilityNodeInfoObtain.getBoundsInParent(rect2);
        Rect rect3 = this.d;
        accessibilityNodeInfoObtain.getBoundsInScreen(rect3);
        if (rect2.equals(rect) && rect3.equals(rect)) {
            g84.h("Callbacks must set parent bounds or screen bounds in populateNodeForVirtualViewId()");
            return null;
        }
        int actions = accessibilityNodeInfoObtain.getActions();
        if ((actions & 64) != 0) {
            g84.h("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        if ((actions & 128) != 0) {
            g84.h("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        accessibilityNodeInfoObtain.setPackageName(view.getContext().getPackageName());
        m6Var.b = i;
        accessibilityNodeInfoObtain.setSource(view, i);
        if (this.k == i) {
            accessibilityNodeInfoObtain.setAccessibilityFocused(true);
            m6Var.a(128);
        } else {
            accessibilityNodeInfoObtain.setAccessibilityFocused(false);
            m6Var.a(64);
        }
        boolean z = this.l == i;
        if (z) {
            m6Var.a(2);
        } else if (accessibilityNodeInfoObtain.isFocusable()) {
            m6Var.a(1);
        }
        accessibilityNodeInfoObtain.setFocused(z);
        int[] iArr = this.g;
        view.getLocationOnScreen(iArr);
        if (rect3.equals(rect)) {
            m6Var.h(rect2);
            Rect rect4 = new Rect();
            rect4.set(rect2);
            view.getLocationOnScreen(iArr);
            rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            accessibilityNodeInfoObtain.setBoundsInScreen(rect4);
            accessibilityNodeInfoObtain.getBoundsInScreen(rect3);
        }
        Rect rect5 = this.f;
        if (view.getLocalVisibleRect(rect5)) {
            rect5.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            if (rect3.intersect(rect5)) {
                accessibilityNodeInfoObtain.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                    Object parent = view.getParent();
                    while (parent instanceof View) {
                        View view2 = (View) parent;
                        if (view2.getAlpha() > 0.0f && view2.getVisibility() == 0) {
                            parent = view2.getParent();
                        }
                    }
                    if (parent != null) {
                        m6Var.a.setVisibleToUser(true);
                    }
                }
            }
        }
        return m6Var;
    }

    public final boolean m(MotionEvent motionEvent) {
        int i;
        AccessibilityManager accessibilityManager = this.h;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iN = n(motionEvent.getX(), motionEvent.getY());
            int i2 = this.m;
            if (i2 != iN) {
                this.m = iN;
                w(iN, 128);
                w(i2, 256);
            }
            if (iN == Integer.MIN_VALUE) {
                return false;
            }
        } else {
            if (action != 10 || (i = this.m) == Integer.MIN_VALUE) {
                return false;
            }
            if (i != Integer.MIN_VALUE) {
                this.m = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                w(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, 128);
                w(i, 256);
                return true;
            }
        }
        return true;
    }

    public abstract int n(float f, float f2);

    public abstract void o(ArrayList arrayList);

    /* JADX WARN: Code duplicated, block: B:67:0x0149  */
    public final boolean p(int i, Rect rect) {
        int i2;
        Object obj;
        m6 m6Var;
        ArrayList arrayList = new ArrayList();
        o(arrayList);
        yj7 yj7Var = new yj7();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            yj7Var.b(((Integer) arrayList.get(i3)).intValue(), l(((Integer) arrayList.get(i3)).intValue()));
        }
        int i4 = this.l;
        int i5 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        m6 m6Var2 = i4 == Integer.MIN_VALUE ? null : (m6) yj7Var.a(i4);
        ge geVar = o;
        fo8 fo8Var = p;
        View view = this.i;
        int i6 = -1;
        if (i == 1 || i == 2) {
            boolean z = view.getLayoutDirection() == 1;
            fo8Var.getClass();
            int i7 = yj7Var.c;
            ArrayList arrayList2 = new ArrayList(i7);
            for (int i8 = 0; i8 < i7; i8++) {
                arrayList2.add((m6) yj7Var.c(i8));
            }
            Collections.sort(arrayList2, new gj3(z, geVar));
            if (i == 1) {
                i2 = 0;
                int size = arrayList2.size();
                if (m6Var2 != null) {
                    size = arrayList2.indexOf(m6Var2);
                }
                int i9 = size - 1;
                obj = i9 >= 0 ? arrayList2.get(i9) : null;
            } else {
                if (i != 2) {
                    c6.f("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                    return false;
                }
                int size2 = arrayList2.size();
                int iLastIndexOf = (m6Var2 == null ? -1 : arrayList2.lastIndexOf(m6Var2)) + 1;
                obj = iLastIndexOf < size2 ? arrayList2.get(iLastIndexOf) : null;
                i2 = 0;
            }
            m6Var = (m6) obj;
        } else {
            if (i != 17 && i != 33 && i != 66 && i != 130) {
                c6.f("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            Rect rect2 = new Rect();
            int i10 = this.l;
            if (i10 != Integer.MIN_VALUE) {
                q(i10).a.getBoundsInScreen(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = view.getWidth();
                int height = view.getHeight();
                if (i == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i == 33) {
                    rect2.set(0, height, width, height);
                } else if (i == 66) {
                    rect2.set(-1, 0, -1, height);
                } else {
                    if (i != 130) {
                        c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return false;
                    }
                    rect2.set(0, -1, width, -1);
                }
            }
            Rect rect3 = new Rect(rect2);
            if (i == 17) {
                rect3.offset(rect2.width() + 1, 0);
            } else if (i == 33) {
                rect3.offset(0, rect2.height() + 1);
            } else if (i == 66) {
                rect3.offset(-(rect2.width() + 1), 0);
            } else {
                if (i != 130) {
                    c6.f("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    return false;
                }
                rect3.offset(0, -(rect2.height() + 1));
            }
            fo8Var.getClass();
            int i11 = yj7Var.c;
            Rect rect4 = new Rect();
            m6Var = null;
            for (int i12 = 0; i12 < i11; i12++) {
                m6 m6Var3 = (m6) yj7Var.c(i12);
                if (m6Var3 != m6Var2) {
                    geVar.getClass();
                    m6Var3.a.getBoundsInScreen(rect4);
                    if (vm4.t(i, rect2, rect4)) {
                        if (!vm4.t(i, rect2, rect3) || vm4.c(i, rect2, rect4, rect3)) {
                            rect3.set(rect4);
                            m6Var = m6Var3;
                        } else if (!vm4.c(i, rect2, rect3, rect4)) {
                            int iW = vm4.w(i, rect2, rect4);
                            int iX = vm4.x(i, rect2, rect4);
                            int i13 = (iX * iX) + (iW * 13 * iW);
                            int iW2 = vm4.w(i, rect2, rect3);
                            int iX2 = vm4.x(i, rect2, rect3);
                            if (i13 < (iX2 * iX2) + (iW2 * 13 * iW2)) {
                                rect3.set(rect4);
                                m6Var = m6Var3;
                            }
                        }
                    }
                }
            }
            i2 = 0;
        }
        m6 m6Var4 = m6Var;
        if (m6Var4 != null) {
            int i14 = yj7Var.c;
            for (int i15 = i2; i15 < i14; i15++) {
                if (yj7Var.b[i15] == m6Var4) {
                    i6 = i15;
                    break;
                }
            }
            i5 = yj7Var.a[i6];
        }
        return v(i5);
    }

    public final m6 q(int i) {
        if (i != -1) {
            return l(i);
        }
        View view = this.i;
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(view);
        m6 m6Var = new m6(accessibilityNodeInfoObtain);
        WeakHashMap weakHashMap = dl8.a;
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        ArrayList arrayList = new ArrayList();
        o(arrayList);
        if (accessibilityNodeInfoObtain.getChildCount() > 0 && arrayList.size() > 0) {
            g84.h("Views cannot have both real and virtual children");
            return null;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            m6Var.a.addChild(view, ((Integer) arrayList.get(i2)).intValue());
        }
        return m6Var;
    }

    public abstract boolean r(int i, int i2, Bundle bundle);

    public abstract void t(int i, m6 m6Var);

    public final boolean v(int i) {
        int i2;
        View view = this.i;
        if ((!view.isFocused() && !view.requestFocus()) || (i2 = this.l) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            j(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.l = i;
        u(i, true);
        w(i, 8);
        return true;
    }

    public final void w(int i, int i2) {
        View view;
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.h.isEnabled() || (parent = (view = this.i).getParent()) == null) {
            return;
        }
        parent.requestSendAccessibilityEvent(view, k(i, i2));
    }

    public void s(m6 m6Var) {
    }

    public void u(int i, boolean z) {
    }
}
