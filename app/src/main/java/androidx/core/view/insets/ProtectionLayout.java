package androidx.core.view.insets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import defpackage.c6;
import defpackage.fz5;
import defpackage.j70;
import defpackage.j96;
import defpackage.k96;
import defpackage.l0;
import defpackage.lv7;
import defpackage.ro;
import defpackage.ul1;
import defpackage.vc4;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ProtectionLayout extends FrameLayout {
    public static final Object c = new Object();
    public final ArrayList a;
    public k96 b;

    public ProtectionLayout(Context context, List list) {
        super(context);
        this.a = new ArrayList();
        setProtections(list);
    }

    private lv7 getOrInstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R.id.tag_system_bar_state_monitor);
        if (tag instanceof lv7) {
            return (lv7) tag;
        }
        lv7 lv7Var = new lv7(viewGroup);
        viewGroup.setTag(R.id.tag_system_bar_state_monitor, lv7Var);
        return lv7Var;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x009f  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3 A[LOOP:0: B:7:0x0028->B:27:0x00b3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x00bc A[SYNTHETIC] */
    public final void a() {
        int i;
        int i2;
        int i3;
        FrameLayout.LayoutParams layoutParams;
        View view;
        ro roVar;
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty()) {
            b();
            return;
        }
        lv7 orInstallSystemBarStateMonitor = getOrInstallSystemBarStateMonitor();
        b();
        this.b = new k96(orInstallSystemBarStateMonitor, arrayList);
        int childCount = getChildCount();
        int size = this.b.a.size();
        for (int i4 = 0; i4 < size; i4++) {
            ul1 ul1Var = (ul1) this.b.a.get(i4);
            Context context = getContext();
            int i5 = i4 + childCount;
            j96 j96Var = ul1Var.b;
            int i6 = ul1Var.a;
            int i7 = -1;
            if (i6 != 1) {
                if (i6 == 2) {
                    i3 = j96Var.b;
                    i2 = 48;
                } else if (i6 == 4) {
                    i = j96Var.a;
                    i2 = 5;
                } else if (i6 != 8) {
                    c6.f(fz5.j(i6, "Unexpected side: "));
                    return;
                } else {
                    i3 = j96Var.b;
                    i2 = 80;
                }
                layoutParams = new FrameLayout.LayoutParams(i7, i3, i2);
                vc4 vc4Var = j96Var.c;
                layoutParams.leftMargin = vc4Var.a;
                layoutParams.topMargin = vc4Var.b;
                layoutParams.rightMargin = vc4Var.c;
                layoutParams.bottomMargin = vc4Var.d;
                view = new View(context);
                view.setTag(c);
                view.setTranslationX(j96Var.f);
                view.setTranslationY(j96Var.g);
                view.setAlpha(j96Var.h);
                view.setVisibility(j96Var.d ? 0 : 8);
                view.setBackground(j96Var.e);
                roVar = new ro(11, layoutParams, view);
                if (j96Var.i == null) {
                    l0.e("Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?");
                    return;
                } else {
                    j96Var.i = roVar;
                    addView(view, i5, layoutParams);
                }
            } else {
                i = j96Var.a;
                i2 = 3;
            }
            i7 = i;
            i3 = -1;
            layoutParams = new FrameLayout.LayoutParams(i7, i3, i2);
            vc4 vc4Var2 = j96Var.c;
            layoutParams.leftMargin = vc4Var2.a;
            layoutParams.topMargin = vc4Var2.b;
            layoutParams.rightMargin = vc4Var2.c;
            layoutParams.bottomMargin = vc4Var2.d;
            view = new View(context);
            view.setTag(c);
            view.setTranslationX(j96Var.f);
            view.setTranslationY(j96Var.g);
            view.setAlpha(j96Var.h);
            view.setVisibility(j96Var.d ? 0 : 8);
            view.setBackground(j96Var.e);
            roVar = new ro(11, layoutParams, view);
            if (j96Var.i == null) {
                l0.e("Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?");
                return;
            } else {
                j96Var.i = roVar;
                addView(view, i5, layoutParams);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view != null && view.getTag() != c) {
            k96 k96Var = this.b;
            int childCount = getChildCount() - (k96Var != null ? k96Var.a.size() : 0);
            if (i > childCount || i < 0) {
                i = childCount;
            }
        }
        super.addView(view, i, layoutParams);
    }

    public final void b() {
        k96 k96Var;
        if (this.b != null) {
            removeViews(getChildCount() - this.b.a.size(), this.b.a.size());
            int size = this.b.a.size();
            int i = 0;
            while (true) {
                k96Var = this.b;
                if (i >= size) {
                    break;
                }
                ((ul1) k96Var.a.get(i)).b.i = null;
                i++;
            }
            ArrayList arrayList = k96Var.a;
            if (!k96Var.f) {
                k96Var.f = true;
                k96Var.b.b.remove(k96Var);
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    ((ul1) arrayList.get(size2)).e = null;
                }
                arrayList.clear();
            }
            this.b = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R.id.tag_system_bar_state_monitor);
        if (tag instanceof lv7) {
            lv7 lv7Var = (lv7) tag;
            if (lv7Var.b.isEmpty()) {
                lv7Var.a.post(new j70(lv7Var, 6));
                viewGroup.setTag(R.id.tag_system_bar_state_monitor, null);
            }
        }
    }

    public void setProtections(List<ul1> list) {
        ArrayList arrayList = this.a;
        arrayList.clear();
        arrayList.addAll(list);
        if (isAttachedToWindow()) {
            a();
            requestApplyInsets();
        }
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = new ArrayList();
    }

    public ProtectionLayout(Context context) {
        super(context);
        this.a = new ArrayList();
    }
}
