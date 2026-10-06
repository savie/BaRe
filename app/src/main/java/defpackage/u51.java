package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.internal.CheckableImageButton;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u51 extends w5 {
    public final /* synthetic */ int d;
    public final /* synthetic */ View e;

    public u51(DrawerLayout drawerLayout) {
        this.d = 1;
        this.e = drawerLayout;
        new Rect();
    }

    @Override // defpackage.w5
    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.d) {
            case 1:
                DrawerLayout drawerLayout = (DrawerLayout) this.e;
                if (accessibilityEvent.getEventType() != 32) {
                    return this.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
                }
                accessibilityEvent.getText();
                View viewE = drawerLayout.e();
                if (viewE != null) {
                    int iG = drawerLayout.g(viewE);
                    WeakHashMap weakHashMap = dl8.a;
                    Gravity.getAbsoluteGravity(iG, drawerLayout.getLayoutDirection());
                }
                return true;
            default:
                return super.a(view, accessibilityEvent);
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    @Override // defpackage.w5
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        boolean z;
        ow5 ow5Var;
        int i = this.d;
        View view2 = this.e;
        switch (i) {
            case 0:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) view2).d);
                break;
            case 1:
                super.c(view, accessibilityEvent);
                accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
                break;
            default:
                ViewPager viewPager = (ViewPager) view2;
                super.c(view, accessibilityEvent);
                accessibilityEvent.setClassName(ViewPager.class.getName());
                ow5 ow5Var2 = viewPager.e;
                if (ow5Var2 != null) {
                    z = ow5Var2.c() > 1;
                }
                accessibilityEvent.setScrollable(z);
                if (accessibilityEvent.getEventType() == 4096 && (ow5Var = viewPager.e) != null) {
                    accessibilityEvent.setItemCount(ow5Var.c());
                    accessibilityEvent.setFromIndex(viewPager.f);
                    accessibilityEvent.setToIndex(viewPager.f);
                    break;
                }
                break;
        }
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        int i = this.d;
        boolean z = false;
        View view2 = this.e;
        View.AccessibilityDelegate accessibilityDelegate = this.a;
        switch (i) {
            case 0:
                AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                CheckableImageButton checkableImageButton = (CheckableImageButton) view2;
                accessibilityNodeInfo.setCheckable(checkableImageButton.e);
                accessibilityNodeInfo.setChecked(checkableImageButton.d);
                break;
            case 1:
                int[] iArr = DrawerLayout.U;
                AccessibilityNodeInfo accessibilityNodeInfo2 = m6Var.a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                m6Var.i("androidx.drawerlayout.widget.DrawerLayout");
                accessibilityNodeInfo2.setFocusable(false);
                accessibilityNodeInfo2.setFocused(false);
                accessibilityNodeInfo2.removeAction((AccessibilityNodeInfo.AccessibilityAction) g6.e.a);
                accessibilityNodeInfo2.removeAction((AccessibilityNodeInfo.AccessibilityAction) g6.f.a);
                break;
            default:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, m6Var.a);
                m6Var.i(ViewPager.class.getName());
                ViewPager viewPager = (ViewPager) view2;
                ow5 ow5Var = viewPager.e;
                if (ow5Var != null && ow5Var.c() > 1) {
                    z = true;
                }
                m6Var.o(z);
                if (viewPager.canScrollHorizontally(1)) {
                    m6Var.a(4096);
                }
                if (viewPager.canScrollHorizontally(-1)) {
                    m6Var.a(8192);
                }
                break;
        }
    }

    @Override // defpackage.w5
    public boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        switch (this.d) {
            case 1:
                int[] iArr = DrawerLayout.U;
                return this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            default:
                return super.f(viewGroup, view, accessibilityEvent);
        }
    }

    @Override // defpackage.w5
    public boolean g(View view, int i, Bundle bundle) {
        switch (this.d) {
            case 2:
                ViewPager viewPager = (ViewPager) this.e;
                if (super.g(view, i, bundle)) {
                    return true;
                }
                if (i != 4096) {
                    if (i == 8192 && viewPager.canScrollHorizontally(-1)) {
                        viewPager.setCurrentItem(viewPager.f - 1);
                        return true;
                    }
                } else if (viewPager.canScrollHorizontally(1)) {
                    viewPager.setCurrentItem(viewPager.f + 1);
                    return true;
                }
                return false;
            default:
                return super.g(view, i, bundle);
        }
    }

    public /* synthetic */ u51(View view, int i) {
        this.d = i;
        this.e = view;
    }
}
