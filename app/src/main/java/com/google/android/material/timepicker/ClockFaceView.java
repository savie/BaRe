package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.jcraft.jsch.Argon2;
import defpackage.c95;
import defpackage.ca1;
import defpackage.da1;
import defpackage.dl8;
import defpackage.ga1;
import defpackage.it1;
import defpackage.jt1;
import defpackage.k55;
import defpackage.lb;
import defpackage.m38;
import defpackage.nt1;
import defpackage.td6;
import defpackage.vi6;
import defpackage.yc;
import defpackage.zh8;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ClockFaceView extends ConstraintLayout implements ga1 {
    public final yc I;
    public int J;
    public final c95 K;
    public final ClockHandView L;
    public final Rect M;
    public final RectF N;
    public final Rect O;
    public final SparseArray P;
    public final da1 Q;
    public final int[] R;
    public final float[] S;
    public final int T;
    public final int U;
    public final int V;
    public final int W;
    public String[] a0;
    public float b0;
    public final ColorStateList c0;
    public lb d0;

    public ClockFaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        c95 c95Var = new c95();
        this.K = c95Var;
        c95Var.setShapeAppearanceModel(c95Var.b.a.e(new vi6(0.5f)));
        this.K.t(ColorStateList.valueOf(-1));
        setBackground(this.K);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.N, i, 0);
        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.I = new yc(this, 5);
        typedArrayObtainStyledAttributes.recycle();
        this.M = new Rect();
        this.N = new RectF();
        this.O = new Rect();
        this.P = new SparseArray();
        this.S = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, td6.j, i, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListM = k55.m(context, typedArrayObtainStyledAttributes2, 1);
        this.c0 = colorStateListM;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.L = clockHandView;
        this.T = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = colorStateListM.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListM.getDefaultColor());
        this.R = new int[]{colorForState, colorForState, colorStateListM.getDefaultColor()};
        clockHandView.q.add(this);
        int defaultColor = zh8.q(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListM2 = k55.m(context, typedArrayObtainStyledAttributes2, 0);
        setBackgroundColor(colorStateListM2 != null ? colorStateListM2.getDefaultColor() : defaultColor);
        typedArrayObtainStyledAttributes2.recycle();
        setOutlineProvider(new ca1());
        setFocusable(true);
        setClipToOutline(true);
        this.Q = new da1(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        o(0, strArr);
        this.U = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.V = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.W = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }

    @Override // defpackage.ga1
    public final void a(float f, boolean z) {
        if (Math.abs(this.b0 - f) > 0.001f) {
            this.b0 = f;
            n();
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(View.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            yc ycVar = this.I;
            handler.removeCallbacks(ycVar);
            handler.post(ycVar);
        }
    }

    public final void n() {
        SparseArray sparseArray;
        Rect rect;
        RectF rectF;
        RectF rectF2 = this.L.y;
        float f = Float.MAX_VALUE;
        TextView textView = null;
        int i = 0;
        while (true) {
            sparseArray = this.P;
            int size = sparseArray.size();
            rect = this.M;
            rectF = this.N;
            if (i >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float fHeight = rectF.height() * rectF.width();
                if (fHeight < f) {
                    textView = textView2;
                    f = fHeight;
                }
            }
            i++;
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            TextView textView3 = (TextView) sparseArray.get(i2);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                Rect rect2 = this.O;
                textView3.getLineBounds(0, rect2);
                rectF.inset(rect2.left, rect2.top);
                textView3.getPaint().setShader(RectF.intersects(rectF2, rectF) ? new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.R, this.S, Shader.TileMode.CLAMP) : null);
                textView3.invalidate();
            }
        }
    }

    public final void o(int i, String[] strArr) {
        this.a0 = strArr;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        SparseArray sparseArray = this.P;
        int size = sparseArray.size();
        boolean z = false;
        for (int i2 = 0; i2 < Math.max(this.a0.length, size); i2++) {
            TextView textView = (TextView) sparseArray.get(i2);
            if (i2 >= this.a0.length) {
                removeView(textView);
                sparseArray.remove(i2);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i2, textView);
                    addView(textView);
                }
                textView.setText(this.a0[i2]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i2));
                int i3 = (i2 / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i3));
                if (i3 > 1) {
                    z = true;
                }
                dl8.n(textView, this.Q);
                textView.setTextColor(this.c0);
                if (i != 0) {
                    textView.setContentDescription(getResources().getString(i, this.a0[i2]));
                }
            }
        }
        ClockHandView clockHandView = this.L;
        if (clockHandView.p && !z) {
            clockHandView.M = 1;
        }
        clockHandView.p = z;
        clockHandView.invalidate();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        p();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, this.a0.length, false, 1));
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        int iIntValue;
        m38 m38Var;
        int length;
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.P;
            if (i2 >= sparseArray.size()) {
                iIntValue = -1;
                break;
            }
            TextView textView = (TextView) sparseArray.valueAt(i2);
            if (textView.isSelected()) {
                iIntValue = ((Integer) textView.getTag(R.id.material_value_index)).intValue();
                break;
            }
            i2++;
        }
        if (!isShown() || iIntValue == -1) {
            return super.onKeyDown(i, keyEvent);
        }
        if (i != 66) {
            switch (i) {
                case Argon2.V13 /* 19 */:
                case 22:
                    length = (iIntValue + 1) % this.a0.length;
                    break;
                case 20:
                case 21:
                    String[] strArr = this.a0;
                    length = ((iIntValue - 1) + strArr.length) % strArr.length;
                    break;
                case 23:
                    break;
                default:
                    return super.onKeyDown(i, keyEvent);
            }
            if (length == iIntValue) {
                return super.onKeyDown(i, keyEvent);
            }
            int i3 = (length / 12) + 1;
            ClockHandView clockHandView = this.L;
            if (i3 != clockHandView.M) {
                clockHandView.M = i3;
                clockHandView.invalidate();
            }
            clockHandView.b((length % 12) * 30.0f, false);
            n();
            return true;
        }
        lb lbVar = this.d0;
        if (lbVar != null) {
            TimePickerView timePickerView = (TimePickerView) lbVar.a;
            if (timePickerView.J.isChecked() && (m38Var = timePickerView.O) != null) {
                m38Var.d(12, true);
            }
        }
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        n();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (this.W / Math.max(Math.max(this.U / displayMetrics.heightPixels, this.V / displayMetrics.widthPixels), 1.0f));
        if (View.MeasureSpec.getMode(i) != 0) {
            iMax = Math.min(iMax, View.MeasureSpec.getSize(i));
        }
        if (View.MeasureSpec.getMode(i2) != 0) {
            iMax = Math.min(iMax, View.MeasureSpec.getSize(i2));
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
        ClockHandView clockHandView = this.L;
        int i3 = ((iMax / 2) - clockHandView.r) - this.T;
        int i4 = this.J;
        if (i3 != i4 && i3 != i4) {
            this.J = i3;
            p();
            clockHandView.L = this.J;
            clockHandView.invalidate();
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            yc ycVar = this.I;
            handler.removeCallbacks(ycVar);
            handler.post(ycVar);
        }
    }

    public final void p() {
        nt1 nt1Var = new nt1();
        nt1Var.b(this);
        HashMap map = new HashMap();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int i2 = (Integer) childAt.getTag(R.id.material_clock_level);
                if (i2 == null) {
                    i2 = 1;
                }
                if (!map.containsKey(i2)) {
                    map.put(i2, new ArrayList());
                }
                ((List) map.get(i2)).add(childAt);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iRound = this.J;
            if (iIntValue == 2) {
                iRound = Math.round(iRound * 0.66f);
            }
            Iterator it = list.iterator();
            float size = 0.0f;
            while (it.hasNext()) {
                int id = ((View) it.next()).getId();
                Integer numValueOf = Integer.valueOf(id);
                HashMap map2 = nt1Var.c;
                if (!map2.containsKey(numValueOf)) {
                    map2.put(Integer.valueOf(id), new it1());
                }
                jt1 jt1Var = ((it1) map2.get(Integer.valueOf(id))).d;
                jt1Var.z = R.id.circle_center;
                jt1Var.A = iRound;
                jt1Var.B = size;
                size += 360.0f / list.size();
            }
        }
        nt1Var.a(this);
        setConstraintSet(null);
        requestLayout();
        int i3 = 0;
        while (true) {
            SparseArray sparseArray = this.P;
            if (i3 >= sparseArray.size()) {
                return;
            }
            ((TextView) sparseArray.get(i3)).setVisibility(0);
            i3++;
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        this.K.t(ColorStateList.valueOf(i));
    }

    public ClockFaceView(Context context) {
        this(context, null);
    }

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialClockStyle);
    }
}
