package org.swiftapps.swiftbackup.views;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.android.material.card.MaterialCardView;
import defpackage.c95;
import defpackage.f3;
import defpackage.fl1;
import defpackage.g67;
import defpackage.hl1;
import defpackage.jx2;
import defpackage.l73;
import defpackage.ly8;
import defpackage.md4;
import defpackage.mt7;
import defpackage.nd4;
import defpackage.pq6;
import defpackage.q;
import defpackage.qt7;
import defpackage.sb7;
import defpackage.st7;
import defpackage.tb7;
import defpackage.us2;
import defpackage.v85;
import defpackage.xh8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.SwiftSegmentedCardGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SwiftSegmentedCardGroup extends LinearLayout {
    public static final /* synthetic */ int k = 0;
    public final float a;
    public final float b;
    public final int c;
    public final LinkedHashSet d;
    public final LinkedHashMap e;
    public boolean f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    /* JADX INFO: loaded from: classes2.dex */
    public enum a {
        Single,
        Top,
        Middle,
        Bottom;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwiftSegmentedCardGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.a = getResources().getDimension(R.dimen.card_corner_radius);
        this.b = getResources().getDimension(R.dimen.corner_radius_small);
        this.c = getResources().getDimensionPixelSize(R.dimen.segmented_card_gap);
        this.d = new LinkedHashSet();
        this.e = new LinkedHashMap();
        setOrientation(1);
        setClipChildren(false);
        setClipToPadding(false);
    }

    public static final void c(SwiftSegmentedCardGroup swiftSegmentedCardGroup, View view, MaterialCardView materialCardView, View view2) {
        Rect rect;
        tb7 tb7Var;
        Context context = view.getContext();
        context.getClass();
        ColorStateList colorStateListC = g67.c(context, R.attr.colorControlHighlight);
        int i = 0;
        if (colorStateListC == null) {
            colorStateListC = ColorStateList.valueOf(0);
            colorStateListC.getClass();
        }
        if (view.getWidth() == 0 || view.getHeight() == 0 || view.equals(view2)) {
            rect = new Rect(0, 0, view.getWidth(), view.getHeight());
        } else {
            ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
            if (viewGroup == null) {
                rect = new Rect(0, 0, view.getWidth(), view.getHeight());
            } else {
                Rect rect2 = new Rect(0, 0, view2.getWidth(), view2.getHeight());
                viewGroup.offsetDescendantRectToMyCoords(view2, rect2);
                int i2 = rect2.top;
                if (i2 < 0) {
                    i2 = 0;
                }
                ViewGroup viewGroup2 = (ViewGroup) view;
                int width = viewGroup2.getWidth();
                int i3 = rect2.bottom;
                int height = viewGroup2.getHeight();
                if (i3 > height) {
                    i3 = height;
                }
                rect = new Rect(0, i2, width, i3);
            }
        }
        float fA = 0.0f;
        if (materialCardView == null || materialCardView.getWidth() == 0 || materialCardView.getHeight() == 0) {
            pq6 pq6Var = new pq6();
            pq6 pq6Var2 = new pq6();
            pq6 pq6Var3 = new pq6();
            pq6 pq6Var4 = new pq6();
            f3 f3Var = new f3(0.0f);
            f3 f3Var2 = new f3(0.0f);
            f3 f3Var3 = new f3(0.0f);
            f3 f3Var4 = new f3(0.0f);
            int i4 = 0;
            us2 us2Var = new us2(i4);
            us2 us2Var2 = new us2(i4);
            us2 us2Var3 = new us2(i4);
            us2 us2Var4 = new us2(i4);
            tb7 tb7Var2 = new tb7();
            tb7Var2.a = pq6Var;
            tb7Var2.b = pq6Var2;
            tb7Var2.c = pq6Var3;
            tb7Var2.d = pq6Var4;
            tb7Var2.e = f3Var;
            tb7Var2.f = f3Var2;
            tb7Var2.g = f3Var3;
            tb7Var2.h = f3Var4;
            tb7Var2.i = us2Var;
            tb7Var2.j = us2Var2;
            tb7Var2.k = us2Var3;
            tb7Var2.l = us2Var4;
            tb7Var = tb7Var2;
        } else {
            Rect rect3 = new Rect(0, 0, view.getWidth(), view.getHeight());
            materialCardView.offsetDescendantRectToMyCoords(view, rect3);
            int i5 = rect3.left;
            int i6 = rect.left + i5;
            int i7 = rect3.top;
            Rect rect4 = new Rect(i6, rect.top + i7, i5 + rect.right, i7 + rect.bottom);
            RectF rectF = new RectF(0.0f, 0.0f, materialCardView.getWidth(), materialCardView.getHeight());
            tb7 shapeAppearanceModel = materialCardView.getShapeAppearanceModel();
            shapeAppearanceModel.getClass();
            boolean z = rect4.left <= 1;
            boolean z2 = rect4.top <= 1;
            boolean z3 = rect4.right >= materialCardView.getWidth() + (-1);
            boolean z4 = rect4.bottom >= materialCardView.getHeight() + (-1);
            float fA2 = (z && z2) ? shapeAppearanceModel.e.a(rectF) : 0.0f;
            float fA3 = (z3 && z2) ? shapeAppearanceModel.f.a(rectF) : 0.0f;
            float fA4 = (z3 && z4) ? shapeAppearanceModel.g.a(rectF) : 0.0f;
            if (z && z4) {
                fA = shapeAppearanceModel.h.a(rectF);
            }
            pq6 pq6Var5 = new pq6();
            pq6 pq6Var6 = new pq6();
            pq6 pq6Var7 = new pq6();
            pq6 pq6Var8 = new pq6();
            us2 us2Var5 = new us2(i);
            us2 us2Var6 = new us2(i);
            us2 us2Var7 = new us2(i);
            us2 us2Var8 = new us2(i);
            f3 f3Var5 = new f3(fA2);
            f3 f3Var6 = new f3(fA3);
            f3 f3Var7 = new f3(fA4);
            f3 f3Var8 = new f3(fA);
            tb7Var = new tb7();
            tb7Var.a = pq6Var5;
            tb7Var.b = pq6Var6;
            tb7Var.c = pq6Var7;
            tb7Var.d = pq6Var8;
            tb7Var.e = f3Var5;
            tb7Var.f = f3Var6;
            tb7Var.g = f3Var7;
            tb7Var.h = f3Var8;
            tb7Var.i = us2Var5;
            tb7Var.j = us2Var6;
            tb7Var.k = us2Var7;
            tb7Var.l = us2Var8;
        }
        c95 c95Var = new c95(tb7Var);
        c95Var.t(ColorStateList.valueOf(-1));
        int height2 = view.getHeight() - rect.bottom;
        int i8 = height2 < 0 ? 0 : height2;
        Drawable insetDrawable = c95Var;
        if (rect.top > 0 || i8 > 0) {
            int i9 = rect.top;
            insetDrawable = new InsetDrawable((Drawable) c95Var, 0, i9 < 0 ? 0 : i9, 0, i8);
        }
        view.setForeground(new RippleDrawable(colorStateListC, null, insetDrawable));
    }

    public final ArrayList a() {
        nd4 nd4VarF = l73.F(0, getChildCount());
        ArrayList arrayList = new ArrayList(hl1.G0(nd4VarF, 10));
        Iterator it = nd4VarF.iterator();
        while (true) {
            md4 md4Var = (md4) it;
            if (!md4Var.c) {
                break;
            }
            arrayList.add(getChildAt(md4Var.nextInt()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (obj instanceof MaterialCardView) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view == null || this.f) {
            super.addView(view, i, layoutParams);
            d();
            return;
        }
        if (!(view instanceof mt7)) {
            super.addView(view, i, layoutParams);
            d();
            return;
        }
        MaterialCardView materialCardView = new MaterialCardView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(layoutParams != null ? layoutParams.width : -1, layoutParams != null ? layoutParams.height : -2);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            layoutParams2.leftMargin = marginLayoutParams.leftMargin;
            layoutParams2.topMargin = marginLayoutParams.topMargin;
            layoutParams2.rightMargin = marginLayoutParams.rightMargin;
            layoutParams2.bottomMargin = marginLayoutParams.bottomMargin;
            layoutParams2.setMarginStart(marginLayoutParams.getMarginStart());
            layoutParams2.setMarginEnd(marginLayoutParams.getMarginEnd());
        }
        materialCardView.setLayoutParams(layoutParams2);
        materialCardView.setCardElevation(0.0f);
        materialCardView.setClipChildren(true);
        materialCardView.setClipToPadding(true);
        materialCardView.setClipToOutline(true);
        materialCardView.setUseCompatPadding(false);
        v85 v85Var = materialCardView.k;
        v85Var.b.set(0, 0, 0, 0);
        v85Var.l();
        Context context = materialCardView.getContext();
        context.getClass();
        ColorStateList colorStateListC = g67.c(context, R.attr.cardBackgroundColor);
        if (colorStateListC != null) {
            materialCardView.setCardBackgroundColor(colorStateListC);
        }
        this.d.add(materialCardView);
        materialCardView.addView(view, new FrameLayout.LayoutParams(layoutParams != null ? layoutParams.width : -1, layoutParams != null ? layoutParams.height : -2));
        this.f = true;
        super.addView(materialCardView, i, materialCardView.getLayoutParams());
        this.f = false;
        d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v13, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v9, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.LinkedHashSet, java.util.Set] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.view.View$OnLayoutChangeListener, nt7] */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.view.View$OnLayoutChangeListener, ot7] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.view.View$OnTouchListener, pt7] */
    public final void b(final View view, View.OnClickListener onClickListener) {
        LinkedHashMap linkedHashMap = this.e;
        st7 st7Var = (st7) linkedHashMap.remove(view);
        final MaterialCardView materialCardView = null;
        if (st7Var != null) {
            View view2 = st7Var.a;
            view2.removeOnLayoutChangeListener(st7Var.c);
            if (!view2.equals(view)) {
                view.removeOnLayoutChangeListener(st7Var.d);
            }
            view.setOnTouchListener(null);
            view2.setPressed(false);
            view2.setForeground(st7Var.b);
        }
        view.setOnClickListener(onClickListener);
        view.setClickable(true);
        view.setFocusable(true);
        ?? r11 = view;
        while (true) {
            if (r11 == 0 || r11.equals(this)) {
                r11 = 0;
                break;
            } else {
                if (r11 instanceof mt7) {
                    break;
                }
                Object parent = r11.getParent();
                r11 = parent instanceof View ? (View) parent : 0;
            }
        }
        final ?? r4 = r11 == 0 ? view : r11;
        ?? r12 = r4;
        while (r12 != 0 && !r12.equals(this)) {
            if ((r12 instanceof MaterialCardView) && this.d.contains(r12)) {
                materialCardView = (MaterialCardView) r12;
                break;
            } else {
                Object parent2 = r12.getParent();
                r12 = parent2 instanceof View ? (View) parent2 : 0;
            }
        }
        Drawable foreground = r4.getForeground();
        c(this, r4, materialCardView, view);
        ?? r6 = new View.OnLayoutChangeListener() { // from class: nt7
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                SwiftSegmentedCardGroup.c(this.a, r4, materialCardView, view);
            }
        };
        ?? r7 = new View.OnLayoutChangeListener() { // from class: ot7
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view3, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                SwiftSegmentedCardGroup.c(this.a, r4, materialCardView, view);
            }
        };
        ?? r8 = new View.OnTouchListener(this) { // from class: pt7
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view3, MotionEvent motionEvent) {
                rt7 rt7Var;
                int i = SwiftSegmentedCardGroup.k;
                view3.getClass();
                motionEvent.getClass();
                View view4 = r4;
                if (view4.equals(view3)) {
                    rt7Var = new rt7(motionEvent.getX(), motionEvent.getY());
                } else {
                    ViewGroup viewGroup = view4 instanceof ViewGroup ? (ViewGroup) view4 : null;
                    if (viewGroup == null) {
                        rt7Var = new rt7(motionEvent.getX(), motionEvent.getY());
                    } else {
                        Rect rect = new Rect(0, 0, view3.getWidth(), view3.getHeight());
                        viewGroup.offsetDescendantRectToMyCoords(view3, rect);
                        rt7Var = new rt7(motionEvent.getX() + rect.left, motionEvent.getY() + rect.top);
                    }
                }
                Drawable foreground2 = view4.getForeground();
                RippleDrawable rippleDrawable = foreground2 instanceof RippleDrawable ? (RippleDrawable) foreground2 : null;
                if (rippleDrawable != null) {
                    rippleDrawable.setHotspot(rt7Var.a, rt7Var.b);
                }
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    view4.setPressed(true);
                    return false;
                }
                if (actionMasked != 1 && actionMasked != 3) {
                    return false;
                }
                view4.post(new mr3(view4, 4));
                return false;
            }
        };
        r4.addOnLayoutChangeListener(r6);
        if (!r4.equals(view)) {
            view.addOnLayoutChangeListener(r7);
        }
        view.setOnTouchListener(r8);
        linkedHashMap.put(view, new st7(r4, foreground, r6, r7, r8));
    }

    public final void d() {
        a aVar;
        qt7 qt7Var;
        for (MaterialCardView materialCardView : this.d) {
            View childAt = materialCardView.getChildAt(0);
            if (childAt != null && materialCardView.getVisibility() != childAt.getVisibility()) {
                materialCardView.setVisibility(childAt.getVisibility());
            }
        }
        ArrayList arrayListA = a();
        ArrayList arrayList = new ArrayList();
        for (Object obj : arrayListA) {
            if (((MaterialCardView) obj).getVisibility() != 8) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayListA2 = a();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayListA2) {
            if (((MaterialCardView) obj2).getVisibility() == 8) {
                arrayList2.add(obj2);
            }
        }
        Iterator it = arrayList2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            MaterialCardView materialCardView2 = (MaterialCardView) it.next();
            ViewGroup.LayoutParams layoutParams = materialCardView2.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            if (marginLayoutParams != null && marginLayoutParams.bottomMargin != 0) {
                marginLayoutParams.bottomMargin = 0;
                materialCardView2.setLayoutParams(marginLayoutParams);
            }
        }
        int i = 0;
        for (Object obj3 : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            MaterialCardView materialCardView3 = (MaterialCardView) obj3;
            if (arrayList.size() == 1) {
                aVar = a.Single;
            } else if (i == 0) {
                aVar = a.Top;
            } else {
                aVar = i == arrayList.size() - 1 ? a.Bottom : a.Middle;
            }
            int i3 = org.swiftapps.swiftbackup.views.a.a[aVar.ordinal()];
            float f = this.a;
            if (i3 != 1) {
                float f2 = this.b;
                if (i3 == 2) {
                    qt7Var = new qt7(f, f, f2, f2);
                } else if (i3 == 3) {
                    qt7Var = new qt7(f2, f2, f2, f2);
                } else {
                    if (i3 != 4) {
                        q.j();
                        return;
                    }
                    qt7Var = new qt7(f2, f2, f, f);
                }
            } else {
                qt7Var = new qt7(f, f, f, f);
            }
            sb7 sb7VarM = materialCardView3.getShapeAppearanceModel().m();
            sb7VarM.a = xh8.e(0);
            sb7VarM.e = new f3(qt7Var.a);
            sb7VarM.b = xh8.e(0);
            sb7VarM.f = new f3(qt7Var.b);
            sb7VarM.c = xh8.e(0);
            sb7VarM.g = new f3(qt7Var.c);
            sb7VarM.d = xh8.e(0);
            sb7VarM.h = new f3(qt7Var.d);
            materialCardView3.setShapeAppearanceModel(sb7VarM.a());
            int i4 = (aVar == a.Bottom || aVar == a.Single) ? 0 : this.c;
            ViewGroup.LayoutParams layoutParams2 = materialCardView3.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            if (marginLayoutParams2 != null && marginLayoutParams2.bottomMargin != i4) {
                marginLayoutParams2.bottomMargin = i4;
                materialCardView3.setLayoutParams(marginLayoutParams2);
            }
            i = i2;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        d();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        d();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialCardView) {
            this.d.remove(view);
        }
        d();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SwiftSegmentedCardGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SwiftSegmentedCardGroup(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ SwiftSegmentedCardGroup(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
