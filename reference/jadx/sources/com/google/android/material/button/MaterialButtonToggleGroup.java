package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import defpackage.dl8;
import defpackage.f3;
import defpackage.jd4;
import defpackage.mm7;
import defpackage.o85;
import defpackage.q85;
import defpackage.r85;
import defpackage.td6;
import defpackage.zm5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialButtonToggleGroup extends o85 {
    public static final /* synthetic */ int S = 0;
    public final LinkedHashSet M;
    public boolean N;
    public boolean O;
    public boolean P;
    public final int Q;
    public HashSet R;

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet, i);
        this.M = new LinkedHashSet();
        this.N = false;
        this.R = new HashSet();
        TypedArray typedArrayB = jd4.B(getContext(), attributeSet, td6.y, i, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        setSingleSelection(typedArrayB.getBoolean(7, false));
        this.Q = typedArrayB.getResourceId(2, -1);
        this.P = typedArrayB.getBoolean(4, false);
        if (this.f == null) {
            this.f = mm7.b(new f3(0.0f));
        }
        setEnabled(typedArrayB.getBoolean(0, true));
        typedArrayB.recycle();
        setImportantForAccessibility(1);
    }

    private String getChildrenA11yClassName() {
        return (this.O ? RadioButton.class : ToggleButton.class).getName();
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && getChildAt(i2).getVisibility() != 8) {
                i++;
            }
        }
        return i;
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setA11yClassName(getChildrenA11yClassName());
    }

    @Override // defpackage.o85, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setupButtonChild(materialButton);
        n(materialButton.getId(), materialButton.M);
        dl8.n(materialButton, new q85(this));
    }

    public int getCheckedButtonId() {
        if (!this.O || this.R.isEmpty()) {
            return -1;
        }
        return ((Integer) this.R.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            if (this.R.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    public final void n(int i, boolean z) {
        if (i == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i);
            return;
        }
        HashSet hashSet = new HashSet(this.R);
        if (z && !hashSet.contains(Integer.valueOf(i))) {
            if (this.O && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i));
        } else {
            if (z || !hashSet.contains(Integer.valueOf(i))) {
                return;
            }
            if (!this.P || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i));
            }
        }
        o(hashSet);
    }

    public final void o(Set set) {
        HashSet hashSet = this.R;
        this.R = new HashSet(set);
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            boolean zContains = set.contains(Integer.valueOf(id));
            View viewFindViewById = findViewById(id);
            if (viewFindViewById instanceof MaterialButton) {
                this.N = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.N = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                boolean zContains2 = set.contains(Integer.valueOf(id));
                Iterator it = this.M.iterator();
                while (it.hasNext()) {
                    ((r85) it.next()).a(id, zContains2);
                }
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i = this.Q;
        if (i != -1) {
            o(Collections.singleton(Integer.valueOf(i)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, getVisibleButtonCount(), false, this.O ? 1 : 2));
    }

    public void setSelectionRequired(boolean z) {
        this.P = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.O != z) {
            this.O = z;
            o(new HashSet());
        }
        String childrenA11yClassName = getChildrenA11yClassName();
        for (int i = 0; i < getChildCount(); i++) {
            ((MaterialButton) getChildAt(i)).setA11yClassName(childrenA11yClassName);
        }
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    public MaterialButtonToggleGroup(Context context) {
        this(context, null);
    }
}
