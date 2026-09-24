package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.swiftapps.swiftbackup.R;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o85 extends LinearLayout {
    public static final Object L = new Object();
    public final HashMap G;
    public final HashMap H;
    public final ArrayList I;
    public final ArrayList J;
    public final ArrayList K;
    public int a;
    public final ArrayList b;
    public final fu c;
    public final l85 d;
    public Integer[] e;
    public mm7 f;
    public nm7 k;
    public int n;
    public pm7 p;
    public boolean q;
    public final int r;
    public final boolean t;
    public final MaterialButton x;
    public final l90 y;

    /* JADX WARN: Type inference failed for: r0v3, types: [l85] */
    public o85(Context context, AttributeSet attributeSet, int i) {
        mm7 mm7VarB;
        int next;
        int next2;
        super(zm5.J(context, attributeSet, i, R.style.Widget_Material3_MaterialButtonGroup), attributeSet, i);
        this.a = 0;
        this.b = new ArrayList();
        this.c = new fu(this);
        this.d = new Comparator() { // from class: l85
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int iCompareTo = Boolean.valueOf(materialButton.M).compareTo(Boolean.valueOf(materialButton2.M));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                if (iCompareTo2 != 0) {
                    return iCompareTo2;
                }
                o85 o85Var = this.a;
                return Integer.compare(o85Var.indexOfChild(materialButton), o85Var.indexOfChild(materialButton2));
            }
        };
        this.q = true;
        this.G = new HashMap();
        this.H = new HashMap();
        this.I = new ArrayList();
        this.J = new ArrayList();
        this.K = new ArrayList();
        Context context2 = getContext();
        TypedArray typedArrayB = jd4.B(context2, attributeSet, td6.w, i, R.style.Widget_Material3_MaterialButtonGroup, new int[0]);
        if (typedArrayB.hasValue(2)) {
            int resourceId = typedArrayB.getResourceId(2, 0);
            pm7 pm7Var = null;
            if (resourceId != 0 && context2.getResources().getResourceTypeName(resourceId).equals("xml")) {
                try {
                    XmlResourceParser xml = context2.getResources().getXml(resourceId);
                    try {
                        pm7 pm7Var2 = new pm7();
                        pm7Var2.c = new int[10][];
                        pm7Var2.d = new vk9[10];
                        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                        do {
                            next2 = xml.next();
                            if (next2 == 2) {
                                break;
                            }
                        } while (next2 != 1);
                        if (next2 != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml.getName().equals("selector")) {
                            pm7Var2.a(context2, xml, attributeSetAsAttributeSet, context2.getTheme());
                        }
                        xml.close();
                        pm7Var = pm7Var2;
                    } catch (Throwable th) {
                        if (xml == null) {
                            throw th;
                        }
                        try {
                            xml.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
                }
            }
            this.p = pm7Var;
        }
        if (typedArrayB.hasValue(6)) {
            nm7 nm7VarH = nm7.h(context2, typedArrayB, 6);
            this.k = nm7VarH;
            if (nm7VarH == null) {
                this.k = new yl2(tb7.g(context2, typedArrayB.getResourceId(6, 0), typedArrayB.getResourceId(7, 0)).a()).b();
            }
        }
        if (typedArrayB.hasValue(3)) {
            f3 f3Var = new f3(0.0f);
            int resourceId2 = typedArrayB.getResourceId(3, 0);
            if (resourceId2 != 0 && context2.getResources().getResourceTypeName(resourceId2).equals("xml")) {
                try {
                    XmlResourceParser xml2 = context2.getResources().getXml(resourceId2);
                    try {
                        mm7 mm7Var = new mm7();
                        AttributeSet attributeSetAsAttributeSet2 = Xml.asAttributeSet(xml2);
                        do {
                            next = xml2.next();
                            if (next == 2) {
                                break;
                            }
                        } while (next != 1);
                        if (next != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml2.getName().equals("selector")) {
                            mm7Var.d(context2, xml2, attributeSetAsAttributeSet2, context2.getTheme());
                        }
                        xml2.close();
                        mm7VarB = mm7Var;
                    } catch (Throwable th3) {
                        if (xml2 == null) {
                            throw th3;
                        }
                        try {
                            xml2.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused2) {
                    mm7VarB = mm7.b(f3Var);
                }
            } else {
                mm7VarB = mm7.b(tb7.k(typedArrayB, 3, f3Var));
            }
            this.f = mm7VarB;
        }
        this.n = typedArrayB.getDimensionPixelSize(1, 0);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayB.getBoolean(0, true));
        int i2 = 5;
        setOverflowMode(typedArrayB.getInt(5, 0));
        this.r = getResources().getDimensionPixelOffset(R.dimen.m3_btn_group_overflow_item_icon_horizontal_padding);
        if (!(this instanceof MaterialButtonToggleGroup)) {
            Drawable drawable = typedArrayB.getDrawable(4);
            MaterialButton materialButton = (MaterialButton) LayoutInflater.from(context2).inflate(R.layout.m3_button_group_overflow_button, (ViewGroup) this, false);
            this.x = materialButton;
            materialButton.setTag(L);
            setOverflowButtonIcon(drawable);
            if (this.x.getContentDescription() == null) {
                this.x.setContentDescription(getResources().getString(R.string.mtrl_button_overflow_icon_content_description));
            }
            this.x.setVisibility(8);
            l90 l90Var = new l90(getContext(), this.x, 17, 0, jm1.U(this, R.attr.materialButtonGroupPopupMenuStyle).data);
            this.y = l90Var;
            qc5 qc5Var = (qc5) l90Var.d;
            qc5Var.h = true;
            oc5 oc5Var = qc5Var.j;
            if (oc5Var != null) {
                oc5Var.q(true);
            }
            this.x.setOnClickListener(new zf1(this, i2));
            addView(this.x);
            this.t = true;
        }
        typedArrayB.recycle();
    }

    public static LinearLayout.LayoutParams d(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new n85(layoutParams.width, layoutParams.height);
    }

    public static n85 f(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            n85 n85Var = new n85((LinearLayout.LayoutParams) layoutParams);
            n85Var.a = null;
            n85Var.b = null;
            return n85Var;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            n85 n85Var2 = new n85((ViewGroup.MarginLayoutParams) layoutParams);
            n85Var2.a = null;
            n85Var2.b = null;
            return n85Var2;
        }
        n85 n85Var3 = new n85(layoutParams);
        n85Var3.a = null;
        n85Var3.b = null;
        return n85Var3;
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (i(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (i(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(View.generateViewId());
        }
    }

    public final void a() {
        int iMin;
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            View childAt2 = getChildAt(i - 1);
            if ((childAt instanceof MaterialButton) && (childAt2 instanceof MaterialButton)) {
                MaterialButton materialButton = (MaterialButton) childAt;
                MaterialButton materialButton2 = (MaterialButton) childAt2;
                if (this.n <= 0) {
                    iMin = Math.min(materialButton.getStrokeWidth(), materialButton2.getStrokeWidth());
                    materialButton.setShouldDrawSurfaceColorStroke(true);
                    materialButton2.setShouldDrawSurfaceColorStroke(true);
                } else {
                    materialButton.setShouldDrawSurfaceColorStroke(false);
                    materialButton2.setShouldDrawSurfaceColorStroke(false);
                    iMin = 0;
                }
            } else {
                iMin = 0;
            }
            LinearLayout.LayoutParams layoutParamsD = d(childAt);
            if (getOrientation() == 0) {
                layoutParamsD.setMarginEnd(0);
                layoutParamsD.setMarginStart(this.n - iMin);
                layoutParamsD.topMargin = 0;
            } else {
                layoutParamsD.bottomMargin = 0;
                layoutParamsD.topMargin = this.n - iMin;
                layoutParamsD.setMarginStart(0);
            }
            childAt.setLayoutParams(layoutParamsD);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParamsD2 = d((MaterialButton) getChildAt(firstVisibleChildIndex));
        if (getOrientation() == 1) {
            layoutParamsD2.topMargin = 0;
            layoutParamsD2.bottomMargin = 0;
        } else {
            layoutParamsD2.setMarginEnd(0);
            layoutParamsD2.setMarginStart(0);
            layoutParamsD2.leftMargin = 0;
            layoutParamsD2.rightMargin = 0;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonGroup", "Child views must be of type MaterialButton.");
            return;
        }
        k();
        this.q = true;
        int iIndexOfChild = indexOfChild(this.x);
        if (iIndexOfChild < 0 || i != -1) {
            super.addView(view, i, layoutParams);
        } else {
            super.addView(view, iIndexOfChild, layoutParams);
        }
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        materialButton.setOnPressedChangeListenerInternal(this.c);
        this.b.add(materialButton.getShapeAppearance());
        materialButton.setEnabled(isEnabled());
    }

    public final void b() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        if (firstVisibleChildIndex == -1 || this.p == null) {
            return;
        }
        if (this.a != 2) {
            c(firstVisibleChildIndex, lastVisibleChildIndex);
            return;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = this.K;
            if (i >= arrayList.size()) {
                return;
            }
            c(((Integer) arrayList.get(i)).intValue(), (i == arrayList.size() + (-1) ? getChildCount() : ((Integer) arrayList.get(i + 1)).intValue()) - 1);
            i++;
        }
    }

    public final void c(int i, int i2) {
        float fMax;
        if (i == i2) {
            ((MaterialButton) getChildAt(i)).setWidthChangeDirection(k85.a);
            return;
        }
        int iMin = Integer.MAX_VALUE;
        int i3 = i;
        while (i3 <= i2) {
            if (i(i3)) {
                ((MaterialButton) getChildAt(i3)).setWidthChangeDirection(i3 == i ? k85.c : i3 == i2 ? k85.b : k85.d);
                int iMin2 = 0;
                if (i(i3) && this.p != null) {
                    MaterialButton materialButton = (MaterialButton) getChildAt(i3);
                    pm7 pm7Var = this.p;
                    int width = materialButton.getWidth();
                    int i4 = -width;
                    for (int i5 = 0; i5 < pm7Var.a; i5++) {
                        om7 om7Var = (om7) pm7Var.d[i5].b;
                        int i6 = om7Var.a;
                        float f = om7Var.b;
                        if (i6 == 2) {
                            fMax = Math.max(i4, f);
                        } else {
                            if (i6 == 1) {
                                fMax = Math.max(i4, width * f);
                            }
                        }
                        i4 = (int) fMax;
                    }
                    int iMax = Math.max(0, i4);
                    MaterialButton materialButtonH = h(i3);
                    int allowedWidthDecrease = materialButtonH == null ? 0 : materialButtonH.getAllowedWidthDecrease();
                    MaterialButton materialButtonG = g(i3);
                    iMin2 = Math.min(iMax, allowedWidthDecrease + (materialButtonG != null ? materialButtonG.getAllowedWidthDecrease() : 0));
                }
                if (i3 != i && i3 != i2) {
                    iMin2 /= 2;
                }
                iMin = Math.min(iMin, iMin2);
            }
            i3++;
        }
        while (i <= i2) {
            if (i(i)) {
                MaterialButton materialButton2 = (MaterialButton) getChildAt(i);
                materialButton2.setSizeChange(this.p);
                materialButton2.setWidthChangeMax(iMin * 2);
            }
            i++;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof n85;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.d);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put((MaterialButton) getChildAt(i), Integer.valueOf(i));
        }
        this.e = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final n85 generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        n85 n85Var = new n85(context, attributeSet);
        n85Var.a = null;
        n85Var.b = null;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.x);
        n85Var.a = typedArrayObtainStyledAttributes.getDrawable(0);
        n85Var.b = typedArrayObtainStyledAttributes.getText(1);
        typedArrayObtainStyledAttributes.recycle();
        return n85Var;
    }

    public final MaterialButton g(int i) {
        int childCount = getChildCount();
        int i2 = i + 1;
        while (true) {
            if (i2 >= childCount) {
                i2 = -1;
                break;
            }
            if (i(i2)) {
                break;
            }
            i2++;
        }
        ArrayList arrayList = this.K;
        if (!arrayList.isEmpty()) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                int iIntValue = ((Integer) arrayList.get(i3)).intValue();
                int iIntValue2 = i3 == arrayList.size() + (-1) ? childCount - 1 : ((Integer) arrayList.get(i3 + 1)).intValue() - 1;
                if (i >= iIntValue && i <= iIntValue2 && (i2 < iIntValue || i2 > iIntValue2)) {
                    return null;
                }
                i3++;
            }
        }
        if (i2 == -1) {
            return null;
        }
        return (MaterialButton) getChildAt(i2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new n85(-2, -2);
    }

    public pm7 getButtonSizeChange() {
        return this.p;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.e;
        if (numArr != null && i2 < numArr.length) {
            return numArr[i2].intValue();
        }
        Log.w("MButtonGroup", "Child order wasn't updated");
        return i2;
    }

    public lx1 getInnerCornerSize() {
        return this.f.b;
    }

    public mm7 getInnerCornerSizeStateList() {
        return this.f;
    }

    public Drawable getOverflowButtonIcon() {
        return this.x.getIcon();
    }

    public int getOverflowMode() {
        return this.a;
    }

    public tb7 getShapeAppearance() {
        nm7 nm7Var = this.k;
        if (nm7Var == null) {
            return null;
        }
        return nm7Var.i();
    }

    public int getSpacing() {
        return this.n;
    }

    public nm7 getStateListShapeAppearance() {
        return this.k;
    }

    public final MaterialButton h(int i) {
        int childCount = getChildCount();
        int i2 = i - 1;
        while (true) {
            if (i2 < 0) {
                i2 = -1;
                break;
            }
            if (i(i2)) {
                break;
            }
            i2--;
        }
        ArrayList arrayList = this.K;
        if (!arrayList.isEmpty()) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                int iIntValue = ((Integer) arrayList.get(i3)).intValue();
                int iIntValue2 = i3 == arrayList.size() + (-1) ? childCount : ((Integer) arrayList.get(i3 + 1)).intValue();
                if (i >= iIntValue && i < iIntValue2 && (i2 < iIntValue || i2 >= iIntValue2)) {
                    return null;
                }
                i3++;
            }
        }
        if (i2 == -1) {
            return null;
        }
        return (MaterialButton) getChildAt(i2);
    }

    public final boolean i(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    public final int j(boolean z, Button button, int i, int i2) {
        int i3;
        int i4;
        measureChild(button, i, i2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        int measuredWidth = z ? button.getMeasuredWidth() : button.getMeasuredHeight();
        if (z) {
            i3 = layoutParams.leftMargin;
            i4 = layoutParams.rightMargin;
        } else {
            i3 = layoutParams.topMargin;
            i4 = layoutParams.bottomMargin;
        }
        int i5 = i3 + i4;
        if (measuredWidth == 0) {
            measuredWidth = z ? button.getMinimumWidth() : button.getMinimumHeight();
        }
        return measuredWidth + i5;
    }

    public final void k() {
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i);
            LinearLayout.LayoutParams layoutParams = materialButton.U;
            if (layoutParams != null) {
                materialButton.setLayoutParams(layoutParams);
                materialButton.U = null;
                materialButton.R = -2.14748365E9f;
            }
        }
    }

    public final void l() {
        int i;
        if (!(this.f == null && this.k == null) && this.q) {
            this.q = false;
            int childCount = getChildCount();
            int firstVisibleChildIndex = getFirstVisibleChildIndex();
            int lastVisibleChildIndex = getLastVisibleChildIndex();
            int i2 = 0;
            while (i2 < childCount) {
                MaterialButton materialButton = (MaterialButton) getChildAt(i2);
                if (materialButton.getVisibility() != 8) {
                    boolean z = i2 == firstVisibleChildIndex;
                    boolean z2 = i2 == lastVisibleChildIndex;
                    rb7 rb7Var = this.k;
                    ArrayList arrayList = this.b;
                    if (rb7Var == null || (!z && !z2)) {
                        rb7Var = (rb7) arrayList.get(i2);
                    }
                    yl2 yl2Var = !(rb7Var instanceof nm7) ? new yl2((tb7) arrayList.get(i2)) : ((nm7) rb7Var).j();
                    boolean z3 = getOrientation() == 0;
                    boolean z4 = getLayoutDirection() == 1;
                    if (z3) {
                        i = z ? 5 : 0;
                        if (z2) {
                            i |= 10;
                        }
                        if (z4) {
                            i = ((i & 5) << 1) | ((i & 10) >> 1);
                        }
                    } else {
                        i = z ? 3 : 0;
                        if (z2) {
                            i |= 12;
                        }
                    }
                    int i3 = ~i;
                    mm7 mm7Var = this.f;
                    if ((i3 | 1) == i3) {
                        yl2Var.e = mm7Var;
                    }
                    if ((i3 | 2) == i3) {
                        yl2Var.f = mm7Var;
                    }
                    if ((i3 | 4) == i3) {
                        yl2Var.g = mm7Var;
                    }
                    if ((i3 | 8) == i3) {
                        yl2Var.h = mm7Var;
                    }
                    nm7 nm7VarB = yl2Var.b();
                    boolean zF = nm7VarB.f();
                    nm7 nm7VarI = nm7VarB;
                    if (!zF) {
                        nm7VarI = nm7VarB.i();
                    }
                    materialButton.setShapeAppearance(nm7VarI);
                }
                i2++;
            }
        }
    }

    public final void m() {
        for (Map.Entry entry : this.H.entrySet()) {
            Button button = (Button) entry.getKey();
            MenuItem menuItem = (MenuItem) entry.getValue();
            if (entry.getKey() instanceof MaterialButton) {
                MaterialButton materialButton = (MaterialButton) button;
                menuItem.setCheckable(materialButton.j());
                menuItem.setChecked(materialButton.M);
            }
            menuItem.setEnabled(button.isEnabled());
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            k();
            b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0230  */
    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int paddingTop;
        HashMap map;
        ic5 ic5Var;
        a();
        if (this.a != 2) {
            paddingTop = 0;
        } else {
            if (getOrientation() == 1) {
                c6.f("The wrap overflow mode is not compatible to the vertical orientation.");
                return;
            }
            if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
                c6.f("The wrap overflow mode is not compatible with wrap_content layout width.");
                return;
            }
            ArrayList arrayList = this.K;
            arrayList.clear();
            int size = View.MeasureSpec.getSize(i);
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int i3 = 0;
            int iMax = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                if (i(i5)) {
                    View view = (MaterialButton) getChildAt(i5);
                    measureChild(view, i, i2);
                    int measuredWidth = view.getMeasuredWidth();
                    int measuredHeight = view.getMeasuredHeight();
                    if (measuredWidth > 0) {
                        LinearLayout.LayoutParams layoutParamsD = d(view);
                        if (i3 + measuredWidth + (arrayList2.isEmpty() ? 0 : this.n) > size || arrayList2.isEmpty()) {
                            if (!arrayList2.isEmpty()) {
                                arrayList3.add(Integer.valueOf(i3));
                            }
                            i4 += iMax + (arrayList.isEmpty() ? 0 : this.n);
                            arrayList.add(Integer.valueOf(i5));
                            layoutParamsD.setMarginStart(-i3);
                            arrayList2.clear();
                            i3 = 0;
                            iMax = 0;
                        }
                        i3 += measuredWidth + (i3 == 0 ? 0 : this.n);
                        iMax = Math.max(iMax, measuredHeight);
                        arrayList2.add(Integer.valueOf(i5));
                        layoutParamsD.topMargin += i4;
                        view.setLayoutParams(layoutParamsD);
                    }
                }
            }
            arrayList3.add(Integer.valueOf(i3));
            int iIntValue = ((Integer) Collections.max(arrayList3)).intValue();
            int i6 = 0;
            for (int i7 = 0; i7 < arrayList.size(); i7++) {
                int iIntValue2 = ((Integer) arrayList.get(i7)).intValue();
                int iIntValue3 = ((Integer) arrayList3.get(i7)).intValue();
                MaterialButton materialButton = (MaterialButton) getChildAt(iIntValue2);
                LinearLayout.LayoutParams layoutParamsD2 = d(materialButton);
                int i8 = layoutParamsD2.gravity & 8388615;
                int absoluteGravity = Gravity.getAbsoluteGravity(i8, getLayoutDirection());
                int i9 = iIntValue - iIntValue3;
                if (i8 != 8388611) {
                    if (absoluteGravity == 1) {
                        i9 /= 2;
                    }
                    layoutParamsD2.setMarginStart((layoutParamsD2.getMarginStart() + i9) - i6);
                    materialButton.setLayoutParams(layoutParamsD2);
                    i6 = i9;
                }
            }
            paddingTop = getPaddingTop() + i4 + iMax + getPaddingBottom();
        }
        if (this.t) {
            int i10 = this.a;
            Button button = this.x;
            if (i10 != 1) {
                button.setVisibility(8);
            } else {
                boolean z = getOrientation() == 0;
                ArrayList arrayList4 = this.I;
                arrayList4.clear();
                int size2 = z ? View.MeasureSpec.getSize(i) : View.MeasureSpec.getSize(i2);
                int iJ = j(z, button, i, i2);
                int i11 = 0;
                int iJ2 = 0;
                while (true) {
                    if (i11 >= getChildCount() - 1) {
                        button.setVisibility(8);
                        arrayList4.clear();
                        break;
                    }
                    MaterialButton materialButton2 = (MaterialButton) getChildAt(i11);
                    iJ2 += j(z, materialButton2, i, i2);
                    if (iJ2 + iJ > size2) {
                        arrayList4.add(materialButton2);
                    }
                    if (iJ2 > size2) {
                        for (int i12 = i11 + 1; i12 < getChildCount() - 1; i12++) {
                            arrayList4.add((MaterialButton) getChildAt(i12));
                        }
                        button.setVisibility(0);
                        break;
                    }
                    i11++;
                }
                ArrayList<Button> arrayList5 = this.J;
                if (!arrayList4.equals(arrayList5)) {
                    int i13 = 0;
                    while (true) {
                        int childCount = getChildCount() - 1;
                        map = this.H;
                        if (i13 >= childCount) {
                            break;
                        }
                        MaterialButton materialButton3 = (MaterialButton) getChildAt(i13);
                        if (map.containsKey(materialButton3)) {
                            materialButton3.setVisibility(0);
                        }
                        i13++;
                    }
                    arrayList5.clear();
                    arrayList5.addAll(arrayList4);
                    fc5 fc5Var = (fc5) this.y.c;
                    HashMap map2 = this.G;
                    map2.clear();
                    map.clear();
                    fc5Var.clear();
                    for (Button button2 : arrayList5) {
                        if (button2.getLayoutParams() instanceof n85) {
                            n85 n85Var = (n85) button2.getLayoutParams();
                            CharSequence contentDescription = n85Var.b;
                            if (TextUtils.isEmpty(contentDescription)) {
                                if (button2 instanceof MaterialButton) {
                                    MaterialButton materialButton4 = (MaterialButton) button2;
                                    if (TextUtils.isEmpty(materialButton4.getText())) {
                                        contentDescription = button2.getContentDescription();
                                    } else {
                                        contentDescription = materialButton4.getText();
                                    }
                                } else {
                                    contentDescription = button2.getContentDescription();
                                }
                            }
                            Drawable drawable = n85Var.a;
                            ic5 ic5VarA = fc5Var.a(0, 0, 0, contentDescription);
                            if (drawable != null) {
                                int i14 = this.r;
                                ic5VarA.setIcon(new InsetDrawable(drawable, i14, 0, i14, 0));
                            }
                            ic5VarA.H = new m85(button2, 0);
                            ic5Var = ic5VarA;
                        } else {
                            ic5Var = null;
                        }
                        if (ic5Var != null) {
                            map2.put(Integer.valueOf(ic5Var.a), button2);
                            map.put(button2, ic5Var);
                            button2.setVisibility(8);
                        }
                    }
                    m();
                }
            }
        }
        l();
        super.onMeasure(i, i2);
        if (this.a != 2 || paddingTop == getMeasuredHeight()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), paddingTop);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.b.remove(iIndexOfChild);
        }
        this.q = true;
        l();
        k();
        a();
    }

    public void setButtonSizeChange(pm7 pm7Var) {
        if (this.p != pm7Var) {
            this.p = pm7Var;
            b();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i = 0; i < getChildCount(); i++) {
            ((MaterialButton) getChildAt(i)).setEnabled(z);
        }
    }

    public void setInnerCornerSize(lx1 lx1Var) {
        this.f = mm7.b(lx1Var);
        this.q = true;
        l();
        invalidate();
    }

    public void setInnerCornerSizeStateList(mm7 mm7Var) {
        this.f = mm7Var;
        this.q = true;
        l();
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (getOrientation() != i) {
            this.q = true;
        }
        super.setOrientation(i);
    }

    public void setOverflowButtonIcon(Drawable drawable) {
        this.x.setIcon(drawable);
    }

    public void setOverflowButtonIconResource(int i) {
        this.x.setIconResource(i);
    }

    public void setOverflowMode(int i) {
        if (this.a != i) {
            this.a = i;
            requestLayout();
            invalidate();
        }
    }

    public void setShapeAppearance(tb7 tb7Var) {
        this.k = new yl2(tb7Var).b();
        this.q = true;
        l();
        invalidate();
    }

    public void setSpacing(int i) {
        this.n = i;
        invalidate();
        requestLayout();
    }

    public void setStateListShapeAppearance(nm7 nm7Var) {
        this.k = nm7Var;
        this.q = true;
        l();
        invalidate();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return f(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new n85(-2, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return f(layoutParams);
    }
}
